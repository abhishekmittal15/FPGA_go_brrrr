/**********
Copyright (c) 2020, Xilinx, Inc.
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

#include <algorithm>
#include <cstring>
#include <iostream>
#include <string>
#include <thread>
#include <unistd.h>
#include <vector>
#include <iomanip>

// This extension file is required for stream APIs
#include "CL/cl_ext_xilinx.h"
// This file is required for OpenCL C++ wrapper APIs
#include "xcl2.hpp"
#include "event_timer.hpp"

void vectors_init(int *buffer_a, int *buffer_b, int *sw_results, unsigned int num_elements)
{
    // Fill the input vectors with random data
    for (size_t i = 0; i < num_elements; i++)
    {
        buffer_a[i] = std::rand() * ((std::rand() % 2) ? 1 : -1);
        buffer_b[i] = std::rand() * ((std::rand() % 2) ? 1 : -1);
        sw_results[i] = 0;
    }
}

void host_side_comp(int *buffer_a,int *buffer_b,int *sw_results,unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++){
        sw_results[i] = buffer_a[i] + buffer_b[i];
    }
}

bool verify(int *buffer_a,int *buffer_b,int *sw_results, int *hw_results, int num_elements)
{
    bool match = true;
    for (int i = 0; i < num_elements; i++)
    {
        if (sw_results[i] != hw_results[i])
        {
            std::cout << "Failed at :" << std::endl;
            std::cout << i << " " << buffer_a[i] << " + " << buffer_b[i] << " = " << sw_results[i] << " | " << hw_results[i] << std::endl;
            match = false;
            break;
        }
    }
    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl;
    return match;
}

int main(int argc, char **argv)
{
    EventTimer et;

    // Check input arguments
    if(argc!=3){
        std::cout << "Insufficient Arguments" << std::endl;
        return EXIT_FAILURE;
    }
    // Read FPGA binary file
    char * binaryFile = argv[2];
    unsigned int num_elements = std::stoi(argv[1]);
    unsigned int size_bytes = num_elements * sizeof(int);

    // OpenCL Host Code Begins.
    // OpenCL objects
    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Program program;
    cl::Kernel kernel;
    cl_int err;

    // get_xil_devices() is a utility API which will find the Xilinx
    // platforms and will return list of devices connected to Xilinx platform

    et.add("Opencl Intialisation");
    std::vector<cl::Device> devices = xcl::get_xil_devices();
    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++)
    {
        device = devices[i];
        // Creating Context and Command Queue for selected Device
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
            // Creating Kernel
            OCL_CHECK(err, kernel = cl::Kernel(program, "wide_krnl", &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device)
    {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }
    et.finish();

    et.add("Allocate contiguous OpenCL buffers");
    // cl_mem_ext_ptr_t bank_ext;
    // bank_ext.flags = 2 | XCL_MEM_TOPOLOGY;
    // bank_ext.obj = NULL;
    // bank_ext.param = 0;
    cl::Buffer a_buf(context,
                     static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR),
                     size_bytes,
                     NULL,
                     NULL);
    cl::Buffer b_buf(context,
                     static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR),
                     size_bytes,
                     NULL,
                     NULL);
    cl::Buffer hw_buf(context,
                     static_cast<cl_mem_flags>(CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR),
                     size_bytes,
                     NULL,
                     NULL);
    cl::Buffer sw_buf(context,
                     static_cast<cl_mem_flags>(CL_MEM_READ_WRITE |
                                               CL_MEM_ALLOC_HOST_PTR),
                     size_bytes,
                     NULL,
                     NULL);
    et.finish();

    et.add("Map buffers to user space pointers");
    int *a = (int *)q.enqueueMapBuffer(a_buf,
                                        CL_TRUE,
                                        CL_MAP_WRITE,
                                        0,
                                        size_bytes);
    int *b = (int *)q.enqueueMapBuffer(b_buf,
                                        CL_TRUE,
                                        CL_MAP_WRITE,
                                        0,
                                        size_bytes);
    int *sw = (int *)q.enqueueMapBuffer(sw_buf,
                                        CL_TRUE,
                                        CL_MAP_WRITE | CL_MAP_READ,
                                        0,
                                        size_bytes);
    et.finish();

    // Initialize the data vectors
    et.add("Initializing the input vectors");
    vectors_init(a, b, sw, num_elements);
    et.finish();

    et.add("Performing the host side computation");
    host_side_comp(a, b, sw, num_elements);
    et.finish();

    // Allocate Buffer in Global Memory
    // Buffers are allocated using CL_MEM_USE_HOST_PTR for efficient memory and
    // Device-to-host communication

    // Setting Kernel Arguments krnl_vadd
    OCL_CHECK(err, err = krnl_vadd.setArg(0, a_buf));
    OCL_CHECK(err, err = krnl_vadd.setArg(1, b_buf));
    OCL_CHECK(err, err = krnl_vadd.setArg(2, hw_buf));
    OCL_CHECK(err, err = krnl_vadd.setArg(3, num_elements));

    // Copy input data to device global memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({a_buf, b_buf}, 0 /* 0 means from host*/));
    OCL_CHECK(err, err = q.finish());

    // Launching the Kernels
    OCL_CHECK(err, err = q.enqueueTask(kernel));
    et.add("Kernel took ");
    // wait for the kernel to finish their operations
    OCL_CHECK(err, err = q.finish());
    et.finish();

    // Copy Result from Device Global Memory to Host Local Memory
    et.add("Fetching data from the device");
    int *hw = (int *)q.enqueueMapBuffer(
        hw_buf,
        CL_TRUE,
        CL_MAP_READ,
        0,
        size_bytes);
    et.finish();
    
    OCL_CHECK(err, err = q.finish());

    // Compare the device results with software results
    bool match = verify(sw_results.data(), hw_results.data(), num_elements);

    return (match ? EXIT_SUCCESS : EXIT_FAILURE);
}