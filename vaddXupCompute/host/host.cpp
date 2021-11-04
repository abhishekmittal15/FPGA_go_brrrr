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


void vectors_init(int *buffer_a, int *buffer_b, int *sw_results, int *hw_results, unsigned int num_elements) {
    // Fill the input vectors with random data
    for (size_t i = 0; i < num_elements; i++) {
        buffer_a[i]    = std::rand() * ((std::rand() % 2) ? 1 : -1);
        buffer_b[i]    = std::rand() * ((std::rand() % 2) ? 1 : -1);
        hw_results[i] = 0;
        sw_results[i] = buffer_a[i] + buffer_b[i];
    }
}

bool verify(int *a,int *b,int *sw_results, int *hw_results, int num_elements) {
    bool match = true;
    for (int i = 0; i < num_elements; i++) {
        if (sw_results[i] != hw_results[i]) {
            cout << a[i] << " + " << b[i] << " = " << sw_results[i] << " | " << hw_results[i] << endl;
            match = false;
            break;
        }
    }
    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl;
    return match;
}

int f(unsigned int num_elements,char *binaryFile){
    // I/O Data Vectors
    std::vector<int, aligned_allocator<int>> buffer_a(num_elements);
    std::vector<int, aligned_allocator<int>> buffer_b(num_elements);
    std::vector<int, aligned_allocator<int>> hw_results(num_elements);
    std::vector<int, aligned_allocator<int>> sw_results(num_elements);

    // OpenCL Host Code Begins.
    // OpenCL objects
    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Program program;
    cl::Kernel krnl_vadd;
    cl_int err;

    // get_xil_devices() is a utility API which will find the Xilinx
    // platforms and will return list of devices connected to Xilinx platform
    auto devices = xcl::get_xil_devices();

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
            OCL_CHECK(err, krnl_vadd = cl::Kernel(program, "krnl_vadd", &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device)
    {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    std::cout << "Running Vector add with " << num_elements << " elements" << std::endl;

    // Initialize the data vectors
    vectors_init(buffer_a.data(), buffer_b.data(), sw_results.data(), hw_results.data(), num_elements);

    // Running the kernel
    unsigned int size_bytes = num_elements * sizeof(int);

    // Allocate Buffer in Global Memory
    // Buffers are allocated using CL_MEM_USE_HOST_PTR for efficient memory and
    // Device-to-host communication
    OCL_CHECK(err, cl::Buffer buffer_input1(context,
                                            CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                            size_bytes, buffer_a.data(), &err));

    OCL_CHECK(err, cl::Buffer buffer_input2(context,
                                            CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                            size_bytes, buffer_b.data(), &err));

    OCL_CHECK(err, cl::Buffer buffer_output(context,
                                            CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                            size_bytes, hw_results.data(), &err));

    // Setting Kernel Arguments krnl_vadd
    OCL_CHECK(err, err = krnl_vadd.setArg(0, buffer_input1));
    OCL_CHECK(err, err = krnl_vadd.setArg(1, buffer_input2));
    OCL_CHECK(err, err = krnl_vadd.setArg(2, buffer_output));
    OCL_CHECK(err, err = krnl_vadd.setArg(3, num_elements));

    // Copy input data to device global memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_input1, buffer_input2}, 0 /* 0 means from host*/));
    OCL_CHECK(err, err = q.finish());

    // Launching the Kernels
    std::cout << "Launching Hardware Kernel..." << std::endl;
    OCL_CHECK(err, err = q.enqueueTask(krnl_vadd));
    // wait for the kernel to finish their operations
    OCL_CHECK(err, err = q.finish());

    // Copy Result from Device Global Memory to Host Local Memory
    std::cout << "Getting Hardware Results..." << std::endl;
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));
    OCL_CHECK(err, err = q.finish());

    // OpenCL Host Code Ends

    // Compare the device results with software results
    bool match = verify(sw_results.data(), hw_results.data(), num_elements);

    return 1;
}

int main(int argc, char **argv) {

    char *filename = argv[1];
    unsigned int n = 1<<10;
    unsigned int num_loops = 10;
    std::vector<std::vector<float>> times;
    for (unsigned int i = 0; i < num_loops;i++){
        std::vector<float> timestamps=f(n, filename);
        n *= 2;
        cout << "____________________________________________________________________" << endl;
        cout << "____________________________________________________________________" << endl;
        cout << "____________________________________________________________________" << endl;
        times.push_back(timestamps);
    }
    cout << "[" << endl;
    for (unsigned int i = 0; i < num_loops;i++){
        cout << "[";
        for (unsigned int j = 0; j < times[i].size();i++){
            cout << times[i][j] << ",";
        }
        cout << "]";
    }
    cout << "]" << endl;
    return 0;
}