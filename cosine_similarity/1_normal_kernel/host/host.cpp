#include "xcl2.hpp"
#include <iostream>
#include<vector>

using std::cout;
using std::endl;

int main(int argc,char **argv){

    if(argc!=3){
        cout << "insufficient arguments" << endl;
        return EXIT_FAILURE;
    }

    char* kernel_name = "vmult";
    unsigned int num_elements = std::stoi(argv[1]);
    unsigned int size_bytes_input = num_elements * sizeof(uint32_t);
    unsigned int size_bytes_output = num_elements * sizeof(uint64_t);
    char *filename = argv[2];
    auto binaryFile = xcl::read_binary_file(filename);
    cl::Program::Binaries bins{{binaryFile.data(),binaryFile.size()}};

    std::vector<cl::Device> devices=xcl::get_xil_devices();
    cl::Device device= devices[0];
    cl_int err;
    cl::Context context(device, NULL, NULL, NULL, &err);
    cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err);
    cl::Program program(context, {device}, bins,NULL, &err);
    cl::Kernel kernel(program, kernel_name, &err);

    std::vector<uint32_t, aligned_allocator<uint32_t>> a(num_elements);
    std::vector<uint32_t, aligned_allocator<uint32_t>> b(num_elements);
    std::vector<uint64_t, aligned_allocator<uint64_t>> sw(num_elements);
    std::vector<uint64_t, aligned_allocator<uint64_t>> hw(num_elements);

    for (unsigned int i = 0;i<num_elements;i++){
        a[i] = std::rand();
        b[i] = std::rand();
        sw[i] = a[i] * b[i];
        hw[i] = 0;
    }

    cl::Buffer a_buf(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_bytes_input, a.data(), &err);
    cl::Buffer b_buf(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_bytes_input, b.data(), &err);
    cl::Buffer hw_buf(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY), size_bytes_output, hw.data(), &err);

    cl::Event event;
    uint64_t kernel_start, kernel_end, kernel_queue, kernel_submit;

    kernel.setArg(0, hw_buf);
    kernel.setArg(1, a_buf);
    kernel.setArg(2, b_buf);
    kernel.setArg(3, num_elements);

    q.enqueueMigrateMemObjects({a_buf, b_buf}, 0);

    q.enqueueTask(kernel, nullptr, &event);
    q.finish();
    event.getProfilingInfo<uint64_t>(CL_PROFILING_COMMAND_START, &kernel_start);
    event.getProfilingInfo<uint64_t>(CL_PROFILING_COMMAND_END, &kernel_end);
    event.getProfilingInfo<uint64_t>(CL_PROFILING_COMMAND_QUEUED, &kernel_queue);
    event.getProfilingInfo<uint64_t>(CL_PROFILING_COMMAND_SUBMIT, &kernel_submit);

    auto duration = kernel_end - kernel_start;
    cout<<kernel_queue<<endl;
    cout << kernel_submit << endl;
    cout << kernel_start << endl;
    cout << kernel_end << endl;
    cout << duration << endl;

    q.enqueueMigrateMemObjects({hw_buf}, CL_MIGRATE_MEM_OBJECT_HOST);
    q.finish();

    for (unsigned int i = 0; i < num_elements;i++){
        cout <<i<<" : "<< a[i] << " * " << b[i] << " = " << sw[i] << " | " << hw[i] << endl;
        if(sw[i]!=hw[i]){
            cout << "TESTS FAILED" << endl;
            return 1;
        }
    }

    return 0;
}