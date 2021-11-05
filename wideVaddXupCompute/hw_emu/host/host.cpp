/**********
Copyright (c) 2019-2020, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/

#include "event_timer.hpp"

#include <iostream>
#include <memory>
#include <string>
using std::cout;
using std::endl;

// Xilinx OpenCL and XRT includes
#include "xcl2.hpp"

void vectors_init(uint32_t *a, uint32_t *b,uint32_t *d,unsigned int num_elements){
    for (unsigned int i = 0;i<num_elements;i++){
        a[i] = std::rand();
        b[i] = std::rand();
        d[i] = 0;
    }
}

void vadd_sw(uint32_t *a, uint32_t *b, uint32_t *c, uint32_t size)
{
    for (uint32_t i = 0; i < size; i++)
    {
        c[i] = a[i] + b[i];
    }
}

std::vector<float> f(int num_elements,char *binaryFile){
    EventTimer et;

    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Program program;
    cl::Kernel krnl;
    cl_int err;
    std::string kernel_name = "krnl1";
    et.add("OpenCl Initialisation");
    auto devices = xcl::get_xil_devices();

    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++)
    {
        device = devices[i];
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err,
                  q = cl::CommandQueue(context, device,
                                       CL_QUEUE_PROFILING_ENABLE |
                                           CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE,
                                       &err));
        std::cout << "Trying to program device[" << i
                  << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, NULL, &err);
        if (err != CL_SUCCESS)
        {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        }
        else
        {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, krnl = cl::Kernel(program, kernel_name.c_str(), &err));
            valid_device = true;
            break;
        }
    }
    et.finish();
    if (!valid_device)
    {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    et.add("Allocate contiguous OpenCL buffers");
    cl_mem_ext_ptr_t bank_ext;
    bank_ext.flags = 2 | XCL_MEM_TOPOLOGY;
    bank_ext.obj = NULL;
    bank_ext.param = 0;
    cl::Buffer a_buf(context,
                     static_cast<cl_mem_flags>(CL_MEM_READ_ONLY),
                     num_elements * sizeof(uint32_t),
                     NULL,
                     NULL);
    cl::Buffer b_buf(context,
                     static_cast<cl_mem_flags>(CL_MEM_READ_ONLY),
                     num_elements * sizeof(uint32_t),
                     NULL,
                     NULL);
    cl::Buffer c_buf(context,
                     static_cast<cl_mem_flags>(CL_MEM_READ_WRITE),
                     num_elements * sizeof(uint32_t),
                     NULL,
                     NULL);
    cl::Buffer d_buf(context,
                     static_cast<cl_mem_flags>(CL_MEM_READ_WRITE |
                                               CL_MEM_ALLOC_HOST_PTR |
                                               CL_MEM_EXT_PTR_XILINX),
                     num_elements * sizeof(uint32_t),
                     &bank_ext,
                     NULL);
    et.finish();

    // Set vadd kernel arguments. We do this before mapping the buffers to allow XRT
    // to allocate the buffers in the appropriate memory banks for the selected
    // kernels. For buffer 'd' we explicitly set a bank above, but this buffer is
    // never migrated to the Alveo card so this mapping is theoretical.
    et.add("Set kernel arguments");
    krnl.setArg(0, a_buf);
    krnl.setArg(1, b_buf);
    krnl.setArg(2, c_buf);
    krnl.setArg(3, num_elements);

    et.add("Map buffers to user space pointers");
    uint32_t *a = (uint32_t *)q.enqueueMapBuffer(a_buf,
                                                 CL_TRUE,
                                                 CL_MAP_WRITE,
                                                 0,
                                                 num_elements * sizeof(uint32_t));
    uint32_t *b = (uint32_t *)q.enqueueMapBuffer(b_buf,
                                                 CL_TRUE,
                                                 CL_MAP_WRITE,
                                                 0,
                                                 num_elements * sizeof(uint32_t));
    uint32_t *d = (uint32_t *)q.enqueueMapBuffer(d_buf,
                                                 CL_TRUE,
                                                 CL_MAP_WRITE | CL_MAP_READ,
                                                 0,
                                                 num_elements * sizeof(uint32_t));
    et.finish();

    et.add("Populating buffer inputs");
    vectors_init(a, b, d, num_elements);
    et.finish();

    // For comparison, let's have the CPU calculate the result
    et.add("Software VADD run");
    vadd_sw(a, b, d, num_elements);
    et.finish();

    // Send the buffers down to the Alveo card
    et.add("Memory object migration enqueue");
    cl::Event event_sp;
    q.enqueueMigrateMemObjects({a_buf, b_buf}, 0, NULL, &event_sp);
    clWaitForEvents(1, (const cl_event *)&event_sp);

    et.add("OCL Enqueue task");

    q.enqueueTask(krnl, NULL, &event_sp);
    et.add("Wait for kernel to complete");
    clWaitForEvents(1, (const cl_event *)&event_sp);

    // Migrate memory back from device
    et.add("Read back computation results");
    uint32_t *c = (uint32_t *)q.enqueueMapBuffer(c_buf,
                                                 CL_TRUE,
                                                 CL_MAP_READ,
                                                 0,
                                                 num_elements * sizeof(uint32_t));
    et.finish();

    // Verify the results
    bool verified = true;
    for (uint32_t i = 0; i < num_elements  ; i++)
    {
        if (c[i] != d[i])
        {
            verified = false;
            std::cout << "ERROR: software and hardware vadd do not match: "
                    << c[i] << "!=" << d[i] << " at position " << i << std::endl;
            break;
        }
    }

    if (verified)
    {
        std::cout
            << std::endl
            << "OCL-mapped contiguous buffer example complete successfully!"
            << std::endl
            << std::endl;
    }
    else
    {
        std::cout
            << std::endl
            << "OCL-mapped contiguous buffer example complete! (with errors)"
            << std::endl
            << std::endl;
    }

    std::cout << "--------------- Key execution times for "<<num_elements<<" ---------------" << std::endl;

    q.enqueueUnmapMemObject(a_buf, a);
    q.enqueueUnmapMemObject(b_buf, b);
    q.enqueueUnmapMemObject(c_buf, c);
    q.enqueueUnmapMemObject(d_buf, d);
    q.finish();

    et.print();

    return et.times;
}

int main(int argc, char *argv[])
{
    char *filename = argv[1];
    unsigned int n = 1 << 12;
    unsigned int num_loops = 1;
    std::vector<std::vector<float>> times;
    for (unsigned int i = 0; i < num_loops; i++)
    {
        std::vector<float> timestamps = f(n, filename);
        n *= 2;
        cout << "____________________________________________________________________" << endl;
        cout << "____________________________________________________________________" << endl;
        cout << "____________________________________________________________________" << endl;
        times.push_back(timestamps);
    }
    cout << "[" << endl;
    for (unsigned int i = 0; i < num_loops; i++)
    {
        cout << "[";
        for (unsigned int j = 0; j < times[i].size(); j++)
        {
            cout << times[i][j] << ",";
        }
        cout << "]";
    }
    cout << "]" << endl;
    return 0;
}