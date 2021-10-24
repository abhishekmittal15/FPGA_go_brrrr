#include<iostream>
#include<vector>
#include "xcl2.hpp"
#include "event_timer.hpp"

using std::cout;
using std::endl;

void init(int *a,int *b,int *sw,unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++){
        a[i] = std::rand() % 1000;
        b[i] = std::rand() % 1000;
        sw[i] = 0;
    }
}

void host_side_comp(int *a,int *b,int *sw,unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++){
        sw[i] = a[i] * b[i];
    }
}

int main(int argc,char **argv){

    if(argc!=3){
        cout << "Insufficient arguments" << endl;
        return EXIT_FAILURE;
    }

    unsigned int num_elements = std::stoi(argv[1]);
    unsigned int size_bytes = num_elements * sizeof(int);
    char *filename = argv[2];
    auto fileBuf = xcl::read_binary_file(filename);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    cout << "Read the binary File :  " << filename << endl;


    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Program program;
    cl::Kernel kernel;
    cl_int err;

    cout << "OpenCL Initialisation" << endl;
    std::vector<cl::Device> devices=xcl::get_xil_devices();
    for (unsigned int i = 0; i < devices.size();i++){
        device=devices[i];
        OCL_CHECK(err,context=cl::Context(device,NULL,NULL,NULL,&err));
        OCL_CHECK(err, q = cl::CommandQueue(device, context, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_ENABLE, &err));
        cout << "Trying to program the device [" << i << "] : " << device.getInfo<CL_DEVICE_NAME>() << endl;
        program = cl::Program(context, {device}, bins, &err);
        if(err==CL_SUCCESS){
            cout << "Successfully programmed the device [" << i << "] : " << device.getInfo<CL_DEVICE_NAME>() << endl;
            OCL_CHECK(err, kernel = cl::Kernel(device, context, &err));
            cout << "Successfully created the Kernel" << endl;
            valid_device = true;
            break;
        }
        else{
            cout << "Unable to program the device [" << i << "] : " << device.getInfo<CL_DEVICE_NAME>() << endl;
        }
    }
    if(valid_device==false){
        cout << "Unable to program any device successfully"<<endl;
        return EXIT_FAILURE;
    }

    std::vector<cl::Memory> inBuf, outBuf;

    cout << "Creating the buffers without allocating memory in host" << endl;

    cl::Buffer a_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL);
    cl::Buffer b_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL);
    cl::Buffer sw_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_WRITE | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL);
    cl::Buffer hw_buf(context, static_cast<cl_mem_flags>(CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL);

    inBuf.push_back(a_buf);
    inBuf.push_back(b_buf);
    outBuf.push_back(hw_buf);

    cout << "Mapping the opencl buffers to the userspace pointers" << endl;
    int *a = (int *)q.enqueueMapBuffer(a_buf, CL_TRUE, CL_MAP_WRITE, 0, size_bytes);
    int *b = (int *)q.enqueueMapBuffer(b_buf, CL_TRUE, CL_MAP_WRITE, 0, size_bytes);
    int *sw = (int *)q.enqueueMapBuffer(sw_buf, CL_TRUE, CL_MAP_WRITE | CL_MAP_READ, 0, size_bytes);

    cout << "Initialising the Vectors now" << endl;
    init(a, b, sw, num_elements);
    cout << "Done with the initialisation" << endl;

    cout << "Performing the host side computation" << endl;
    host_side_comp(a, b, sw, num_elements);
    cout << "Finished the host side computation" << endl;

    cout << "Setting the Kernel arguments" << endl;
    unsigned int nargs = 0;
    OCL_CHECK(err, err = kernel.setArg(nargs++, a_buf));
    OCL_CHECK(err, err = kernel.setArg(nargs++, b_buf));
    OCL_CHECK(err, err = kernel.setArg(nargs++, hw_buf));
    OCL_CHECK(err, err = kernel.setArg(nargs++, num_elements));
    cout << "Finished setting the kernel arguments" << endl;

    cout << "Migrating the vectors on the host to the device" << endl;
    q.enqueueMigrateMemObjects(inBuf, 0);
    q.finish();
    cout << "Finished Migrating the input vectors" << endl;

    cout << "Lanuching the kernel" << endl;
    q.enqueueTask(kernel, NULL, NULL);
    q.finish();
    cout << "Kernel has finished execution" << endl;

    cout << "Fetching the results from the device onto the host" << endl;
    int *hw = (int *)q.enqueueMapBuffer(hw_buf, CL_TRUE, CL_MAP_READ, 0, size_bytes);
    cout << "Fetch the output from the device" << endl;

    bool verified = true;
    for (unsigned int i = 0; i < num_elements;i++){
        if(sw[i]!=hw[i]){
            verified = false;
            cout << "Software and hardware results dont match" << endl;
        }
        cout << i << " " << a[i] << " + " << b[i] << " = " << sw[i] << " | " << hw[i] << endl;
    }

    q.enqueueUnmapMemObject(a_buf, a);
    q.enqueueUnmapMemObject(b_buf, b);
    q.enqueueUnmapMemObject(sw_buf, sw);
    q.enqueueUnmapMemObject(hw_buf, hw);
    q.finish();

    return (verified) ? EXIT_SUCCESS : EXIT_FAILURE;
}