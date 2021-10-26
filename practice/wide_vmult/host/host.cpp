#include<iostream>
#include<vector>
#include "xcl2.hpp"
#include "event_timer.hpp"

using std::cout;
using std::endl;

void init(float *a,float *b,float *sw,float *hw,unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++){
        a[i] = (float)(std::rand()) /(float)(RAND_MAX);
        b[i] = (float)(std::rand()) / (float)(RAND_MAX);
        sw[i] = 0.0;
        hw[i] = 0.0;
    }
}

void host_side_comp(float* a,float* b,float* sw,unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++)
        sw[i] = a[i] * b[i];
}

int main(int argc,char **argv){

    EventTimer et;

    if(argc!=3){
        cout<<"Insufficient Arguments"<<endl;
        return EXIT_FAILURE;
    }

    unsigned int num_elements = std::stoi(argv[1]);
    unsigned int size_bytes = num_elements * sizeof(float);
    char *filename = argv[2];
    auto BinaryFile = xcl::read_binary_file(filename);
    cl::Program::Binaries bins{{BinaryFile.data(), BinaryFile.size()}};

    et.add("OPENCL Initialisation started");

    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Kernel kernel;
    cl::Program program;
    cl::Event event_sp;
    cl_int err;

    bool valid_device = false;

    std::vector<cl::Device> devices = xcl::get_xil_devices();
    for(unsigned int i=0;i<devices.size();i++){
        device=devices[i];
        OCL_CHECK(err,context=cl::Context(device,NULL,NULL,NULL,&err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err));
        cout << "Trying to program the device [" << i << "] : " << device.getInfo<CL_DEVICE_NAME>() << endl;
        program = cl::Program(context, {device},bins, NULL, &err);

        if(err!=CL_SUCCESS){
            cout << "Unable to program the device[" << i << "] : " << device.getInfo<CL_DEVICE_NAME>() << endl;
            return EXIT_FAILURE;
        }
        else{
            cout<<"Successfully programmed the device ["<<i<<"] : "<<device.getInfo<CL_DEVICE_NAME>()<<endl;
            cout << "Trying to create the Kernel" << endl;
            OCL_CHECK(err, kernel = cl::Kernel(program, "wide_krnl", &err));
            cout << "Successfully created the Kernel" << endl;
            valid_device = true;
            break;
        }
    }
    if(valid_device==false){
        cout << "No device was successfully programmed" << endl;
        return EXIT_FAILURE;
    }

    // cout<<"OPENCL Initialisation ended"<<endl;

    et.add("Buffer creation started");

    OCL_CHECK(err, cl::Buffer a_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, &err));
    OCL_CHECK(err, cl::Buffer b_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, &err));
    OCL_CHECK(err, cl::Buffer sw_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_WRITE | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, &err));
    OCL_CHECK(err, cl::Buffer hw_buf(context, static_cast<cl_mem_flags>(CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, &err));

    // cout << "Buffers creation ended" << endl;

    et.add("Setting the Kernel arguments");

    unsigned int nargs = 0;
    OCL_CHECK(err, kernel.setArg(nargs++, a_buf));
    OCL_CHECK(err, kernel.setArg(nargs++, b_buf));
    OCL_CHECK(err, kernel.setArg(nargs++, hw_buf));
    OCL_CHECK(err, kernel.setArg(nargs++, num_elements));

    // cout<<"Set the Kernel Arguments"<<endl;

    et.add("Mapping the buffers to the user space pointer");

    float *a = (float *)q.enqueueMapBuffer(a_buf, CL_TRUE, CL_MAP_WRITE, 0, size_bytes);
    float *b = (float *)q.enqueueMapBuffer(b_buf, CL_TRUE, CL_MAP_WRITE, 0, size_bytes);
    float *sw = (float *)q.enqueueMapBuffer(sw_buf,CL_TRUE,CL_MAP_WRITE | CL_MAP_READ,0,size_bytes);
    // float *hw = (float *)q.enqueueMapBuffer(hw_buf, CL_TRUE, CL_MAP_READ, 0, size_bytes);
    // cout<<"Finished mapping the buffers to the user space pointers"<<endl;

    et.add("Filling data in the user space pointers");
    // init(a, b, sw, hw, num_elements);
    float *temp = new float[num_elements];
    init(a, b, sw,temp, num_elements);
    // cout << "Finished filling the data in the host memory" << endl;

    et.add("Starting Host Side Computation");
    host_side_comp(a, b, sw, num_elements);
    // cout << "Finished host side computation" << endl;

    std::vector<cl::Memory> inBuf, outBuf;

    et.add("Migrating the memory objects from the host to the device");
    inBuf.push_back(a_buf);
    inBuf.push_back(b_buf);

    OCL_CHECK(err, q.enqueueMigrateMemObjects(inBuf, 0,NULL,&event_sp));
    clWaitForEvents(1, (const cl_event *)&event_sp);
    // cout << "Finished migrating the memories from the host side to the device" << endl;
    et.finish();

    q.enqueueTask(kernel, NULL, &event_sp);
    et.add("Launching the Kernel");
    clWaitForEvents(1, (const cl_event *)&event_sp);
    // cout << "Finished the kernel execution" << endl;

    et.add("Mapping the output buffer into the host pointer");
    // outBuf.push_back(hw_buf);
    // q.enqueueMigrateMemObjects(outBuf, CL_MIGRATE_MEM_OBJECT_HOST, NULL, &event_sp);
    // clWaitForEvents(1, (const cl_event *)&event_sp);
    // cout << "Fetched the results from the device to the host" << endl;

    float *hw = (float *)q.enqueueMapBuffer(hw_buf, CL_TRUE, CL_MAP_READ, 0, size_bytes);
    et.finish();

    bool verified = true;
    for (unsigned int i = 0; i < num_elements;i++){
        if (sw[i] != hw[i])
        {
            cout << i << " : " << a[i] << " * " << b[i] << " = " << sw[i] << " | " << hw[i] << endl;
            cout << "Results dont match" << endl;
            break;
            verified = false;
        }
    }

    et.add("Unmapping or freeing all the buffers");
    q.enqueueUnmapMemObject(a_buf, a);
    q.enqueueUnmapMemObject(b_buf, b);
    q.enqueueUnmapMemObject(sw_buf, sw);
    q.enqueueUnmapMemObject(hw_buf, hw);
    q.finish(); // Add this to avoid getting segmentation fault
    et.finish();

    et.print();
    
    return (verified == true) ? EXIT_SUCCESS : EXIT_FAILURE;
}
