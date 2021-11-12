/**********
Copyright (c) 2019, Xilinx, Inc.
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

#include <array>
#include<vector>
#include <iostream>
#include <memory>
#include <string>
#include <omp.h>

// Xilinx OpenCL and XRT includes
#include "xilinx_ocl_helper.hpp"
using std::cout;
using std::endl;
// #define BUFSIZE (1024 * 1024 * 32)
#define NUM_BUFS 8
xilinx::example_utils::XilinxOclHelper xocl;
cl::CommandQueue q;
cl::Kernel krnl;

void vadd_sw(uint32_t *a, uint32_t *b, uint32_t *c, uint32_t size)
{
#pragma omp parallel for 
    for (int i = 0; i < size; i++)
    {
        c[i] = a[i] + b[i];
    }
}

int subdivide_buffer(std::vector<cl::Buffer> &divided,
                     cl::Buffer buf_in,
                     cl_mem_flags flags,
                     int num_divisions)
{
    // Get the size of the buffer
    size_t size;
    size = buf_in.getInfo<CL_MEM_SIZE>();

    if (size / num_divisions <= 4096)
    {
        return -1;
    }

    cl_buffer_region region;

    int err;
    region.origin = 0;
    region.size = size / num_divisions;

    // Round region size up to nearest 4k for efficient burst behavior
    if (region.size % 4096 != 0)
    {
        region.size += (4096 - (region.size % 4096));
    }

    for (int i = 0; i < num_divisions; i++)
    {
        if (i == num_divisions - 1)
        {
            if ((region.origin + region.size) > size)
            {
                region.size = size - region.origin;
            }
        }
        cl::Buffer buf = buf_in.createSubBuffer(flags,
                                                CL_BUFFER_CREATE_TYPE_REGION,
                                                &region,
                                                &err);
        if (err != CL_SUCCESS)
        {
            return err;
        }
        divided.push_back(buf);
        region.origin += region.size;
    }

    return 0;
}

int enqueue_subbuf_vadd(cl::CommandQueue &q,
                        cl::Kernel &krnl,
                        cl::Event &event,
                        cl::Buffer a,
                        cl::Buffer b,
                        cl::Buffer c)
{
    // Get the size of the buffer
    cl::Event k_event, m_event;
    std::vector<cl::Event> krnl_events;

    static std::vector<cl::Event> tx_events, rx_events;

    std::vector<cl::Memory> c_vec;
    size_t size;
    size = a.getInfo<CL_MEM_SIZE>();

    std::vector<cl::Memory> in_vec;
    in_vec.push_back(a);
    in_vec.push_back(b);
    q.enqueueMigrateMemObjects(in_vec, 0, &tx_events, &m_event);
    krnl_events.push_back(m_event);
    tx_events.push_back(m_event);
    if (tx_events.size() > 1)
    {
        tx_events[0] = tx_events[1];
        tx_events.pop_back();
    }

    krnl.setArg(0, a);
    krnl.setArg(1, b);
    krnl.setArg(2, c);
    krnl.setArg(3, (uint32_t)(size / sizeof(uint32_t)));

    q.enqueueTask(krnl, &krnl_events, &k_event);
    krnl_events.push_back(k_event);
    if (rx_events.size() == 1)
    {
        krnl_events.push_back(rx_events[0]);
        rx_events.pop_back();
    }
    c_vec.push_back(c);
    q.enqueueMigrateMemObjects(c_vec,
                               CL_MIGRATE_MEM_OBJECT_HOST,
                               &krnl_events,
                               &event);
    rx_events.push_back(event);

    return 0;
}

std::vector<float> f(unsigned int BUFSIZE){
    EventTimer et;

    std::cout << "-- Example 5: Pipelining Kernel Execution --" << std::endl
              << std::endl;

    /// New code for example 01
    std::cout << std::endl
              << std::endl;
    std::cout << " -- Running kernel test with XRT-allocated contiguous buffers" << std::endl;
    std::cout << "    and wide VADD (16 values/clock)" << std::endl;

    // Map our user-allocated buffers as OpenCL buffers using a shared
    // host pointer
    try
    {
        et.add("Allocate contiguous OpenCL buffers");
        cl::Buffer a_buf(xocl.get_context(),
                         static_cast<cl_mem_flags>(CL_MEM_READ_ONLY),
                         BUFSIZE * sizeof(uint32_t),
                         NULL,
                         NULL);
        cl::Buffer b_buf(xocl.get_context(),
                         static_cast<cl_mem_flags>(CL_MEM_READ_ONLY),
                         BUFSIZE * sizeof(uint32_t),
                         NULL,
                         NULL);
        cl::Buffer c_buf(xocl.get_context(),
                         static_cast<cl_mem_flags>(CL_MEM_READ_WRITE),
                         BUFSIZE * sizeof(uint32_t),
                         NULL,
                         NULL);
        uint32_t *d = new uint32_t[BUFSIZE];
        et.finish();

        // Although we'll change these later, we'll set the buffers as kernel
        // arguments prior to mapping so that XRT can resolve the physical memory
        // in which they need to be allocated
        krnl.setArg(0, a_buf);
        krnl.setArg(1, b_buf);
        krnl.setArg(2, c_buf);

        et.add("Map buffers to userspace pointers");
        uint32_t *a = (uint32_t *)q.enqueueMapBuffer(a_buf,
                                                     CL_TRUE,
                                                     CL_MAP_WRITE,
                                                     0,
                                                     BUFSIZE * sizeof(uint32_t));
        cout << "a success" << endl;
        uint32_t *b = (uint32_t *)q.enqueueMapBuffer(b_buf,
                                                     CL_TRUE,
                                                     CL_MAP_WRITE,
                                                     0,
                                                     BUFSIZE * sizeof(uint32_t));
        cout << "b success" << endl;
        uint32_t *c = (uint32_t *)q.enqueueMapBuffer(c_buf,
                                                     CL_TRUE,
                                                     CL_MAP_READ,
                                                     0,
                                                     BUFSIZE * sizeof(uint32_t));
        cout << "c success" << endl;
        et.finish();

        et.add("Populating buffer inputs");
        for (int i = 0; i < BUFSIZE; i++)
        {
            a[i] = i;
            b[i] = 2 * i;
        }
        cout << "Initialisation success" << endl;
        et.finish();

        // For comparison, let's have the CPU calculate the result
        et.add("Software VADD run");
        vadd_sw(a, b, d, BUFSIZE);
        cout<<"Hello there host side success"<<endl;
        et.finish();

        // Send the buffers down to the Alveo card
        et.add("Memory object migration enqueue");
        q.enqueueUnmapMemObject(a_buf, a);
        q.enqueueUnmapMemObject(b_buf, b);

        std::vector<cl::Buffer> a_bufs, b_bufs, c_bufs;
        subdivide_buffer(a_bufs, a_buf, CL_MEM_READ_ONLY, NUM_BUFS);
        cout << "a subdivide success" << endl;
        subdivide_buffer(b_bufs, b_buf, CL_MEM_READ_ONLY, NUM_BUFS);
        cout << "b subdivide success" << endl;
        subdivide_buffer(c_bufs, c_buf, 
        CL_MEM_WRITE_ONLY, NUM_BUFS);
        cout << "c subdivide success" << endl;

        std::array<cl::Event, NUM_BUFS> kernel_events;
        // std::vector<cl::Event> kernel_events(NUM_BUFS);
        cout << "Array created" << endl;
        for (int i = 0; i < NUM_BUFS; i++)
        {
            enqueue_subbuf_vadd(q, krnl, kernel_events[i], a_bufs[i], b_bufs[i], c_bufs[i]);
            cout << "Enqueue " << i << " successfull" << endl;
        }

        et.add("Wait for kernels to complete");
        clWaitForEvents(NUM_BUFS, (const cl_event *)&kernel_events);
        cout << "Kernels ki liye wait" << endl;

        et.finish();

        // Verify the results
        bool verified = true;
        for (int i = 0; i < BUFSIZE; i++)
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
                << "OCL-mapped contiguous buffer example complete!"
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

        std::cout << "--------------- Key execution times for "<<BUFSIZE<<" ---------------" << std::endl;

        q.enqueueUnmapMemObject(c_buf, c);
        free(d);
        q.finish();

        et.print();
        return et.times;
    }
    catch (cl::Error &e)
    {
        std::cout << "ERROR: " << e.what() << std::endl;
        exit(1);
    }
}

int main(int argc, char *argv[])
{
    char *filename = argv[1];
    std::cout << "Loading alveo_examples.xclbin to program the Alveo board" << std::endl<< std::endl;
    std::string binaryFile(filename);
    xocl.initialize(binaryFile);

    std::string kernel_name = "krnl";
    q = xocl.get_command_queue();
    krnl = xocl.get_kernel(kernel_name);
    unsigned int n = 1 << 15;    
    unsigned int num_loops=3;
    std::vector<std::vector<float>> times;
    for(unsigned int i=0;i<num_loops;i++){
        std::vector<float> timestamps = f(n);
        times.push_back(timestamps);
        n *= 2;
    }
    cout << "[" << endl;
    for(unsigned int i=0;i<num_loops;i++){
        cout << "[";
        for (unsigned int j = 0;j<times[i].size();j++){
            cout << times[i][j] << ",";
        }
        cout << "]"<<endl;
    }
    cout << "]";
    return 0;
}