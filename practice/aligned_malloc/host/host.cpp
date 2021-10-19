#include<iostream>
#include "xcl2.hpp"
#include<vector>

using std::cin;
using std::cout;
using std::endl;

void init(float *a,float *b,float *sw,float *hw,unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++){
        a[i] = (float)(rand())/(float)(RAND_MAX);
        b[i] = (float)(rand())/(float)(RAND_MAX);
        sw[i] = 0.0;
        hw[i] = 0.0;
    }
}

void host_side_comp(float *a,float *b,float *sw,unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++)
        sw[i] = a[i] * b[i];
}

int main(int argc,char **argv){
    if(argc!=3){
        cout << "Insufficient Arguments" << endl;
        return EXIT_FAILURE;
    }

    unsigned int num_elements = std::stoi(argv[1]);
    char *binaryFile = argv[2];
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Program program;
    cl::Kernel kernel;
    cl_int err;
    bool valid_device = false;

    std::vector<cl::Device> devices = xcl::get_xil_devices();
    for (unsigned int i = 0; i < devices.size();i++){
        device = devices[i];
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err));
        cout << "Trying to program the device[" << i << "] : " << device.getInfo<CL_DEVICE_NAME>() << endl;
        program=cl::Program(context, {device}, bins,NULL, &err);
        if(err==CL_SUCCESS){
            cout << "Successfully programmed the device[" << i << "]" << endl;
            OCL_CHECK(err, kernel = cl::Kernel(program,"krnl_vmult",&err));
            valid_device = true;
            break;
        }
        cout << "Couldnt program the device [" << i << "] : " << device.getInfo<CL_DEVICE_NAME>() << endl;
    }

    if(valid_device==false){
        cout << "Failed to program any of the devices" << endl;
        return EXIT_FAILURE;
    }

    // Step 1: Allocating the memories on the host memory
    float *a = new float[num_elements];
    float *b = new float[num_elements];
    float *sw = new float[num_elements];
    float *hw = new float[num_elements];
    unsigned int size_bytes = num_elements * sizeof(float);

    // Step 2: Align the Memories 

    // Step 3: Initialise the allocated memory
    init(a, b, sw, hw,num_elements);

    // Step 4: Create the opencl Buffers using the host pointers
    OCL_CHECK(err,cl::Buffer a_buf(context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR, size_bytes, a,  &err));
    OCL_CHECK(err,cl::Buffer b_buf(context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR, size_bytes, b,  &err));
    OCL_CHECK(err,cl::Buffer hw_buf(context, CL_MEM_WRITE_ONLY | CL_MEM_USE_HOST_PTR, size_bytes, hw,  &err));

    // Step 5: Run the host side computation and record the time 
    host_side_comp(a,b,sw,num_elements);

    // Step 6: Set the Kernel arguments
    unsigned int nargs = 0;
    OCL_CHECK(err, kernel.setArg(nargs++, a_buf));
    OCL_CHECK(err, kernel.setArg(nargs++, b_buf));
    OCL_CHECK(err, kernel.setArg(nargs++, hw_buf));
    OCL_CHECK(err, kernel.setArg(nargs++, num_elements));

    // Step 7: Push events into the command queue 

    // Step 7a: First of all migrate the memory objects
    OCL_CHECK(err, q.enqueueMigrateMemObjects({a_buf, b_buf}, 0));
    OCL_CHECK(err, err = q.finish());

    // Step 7b: Second of all launch the kernel and wait for it to finish
    OCL_CHECK(err, q.enqueueTask(kernel));
    OCL_CHECK(err, err = q.finish());

    // Step 7c: Thirdly, migrate the results from the device's global memory to the host side
    OCL_CHECK(err, q.enqueueMigrateMemObjects({hw_buf}, CL_MIGRATE_MEM_OBJECT_HOST));
    OCL_CHECK(err, err = q.finish());

    // Step 8: Compare the software and hardware results

    for (unsigned int i = 0; i < num_elements;i++){
        if(sw[i]!=hw[i]){
            cout <<i<<" : " <<a[i] << " * " << b[i] << " = " << hw[i] << " | " << sw[i] << endl;
            cout << "TESTS FAILED" << endl;
            return EXIT_FAILURE;
        }
    }

    cout << "TESTS PASSED" << endl;
    return EXIT_SUCCESS;
}