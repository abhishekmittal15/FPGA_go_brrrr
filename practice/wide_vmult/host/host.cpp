#include<iostream>
#include<vector>

using std::cout;
using std::endl;

void init(float *a,float *b,float *sw,float *hw,unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++){
        a[i] = std::rand() / RAND_MAX;
        b[i] = std::rand() / RAND_MAX;
        sw[i] = 0.0;
        hw[i] = 0.0;
    }
}

void host_side_comp(float* a,float* b,float* sw,unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++)
        sw[i] = a[i] + b[i];
}

int main(int argc,char **argv){

    if(argc!=3){
        cout<<"Insufficient Arguments"<<endl;
        return EXIT_FAILURE;
    }

    unsigned int num_elements = std::stoi(argv[1]);
    unsigned int size_bytes = num_elements * sizeof(float);
    char *filename = argv[2];
    auto BinaryFile = xcl::read_binary_file(filename);
    cl::Program::Binaries bins{{BinaryFile.data(), BinaryFile.size()}};

    cout << "OPENCL Initialisation started" << endl;

    std::vector<cl::Device> devices = xcl::get_xil_devices();
    for(unsigned int i=0;i<devices.size();i++){
        device=devices[i];
        OCL_CHECK(err,context=cl::Context(device,NULL,NULL,NULL,&err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err));
        cout<<"Trying to program the device "
        err = cl::Program(context, {device}, NULL, &err);

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

    cout<<"OPENCL Initialisation ended"<<endl;

    cout << "Buffer creation started" << endl;

    OCL_CHECK(err, cl::Buffer a_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL));
    OCL_CHECK(err, cl::Buffer b_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL));
    OCL_CHECK(err, cl::Buffer sw_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_WRITE | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL));
    OCL_CHECK(err, cl::Buffer hw_buf(context, static_cast<cl_mem_flags>(CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL));

    cout << "Buffers creation ended" << endl;

    cout << "Setting the Kernel arguments" << endl;

    unsigned int nargs = 0;
    OCL_CHECK(err, kernel.setArg(nargs++, a_buf));
    OCL_CHECK(err, kernel.setArg(nargs++, b_buf));
    OCL_CHECK(err, kernel.setArg(nargs++, sw_buf));
    OCL_CHECK(err, kernel.setArg(nargs++, hw_buf));

    cout<<"Set the Kernel Arguments"<<endl;

    cout<<"Mapping the buffers to the user space pointer"<<endl;

    float *a = (float *)q.enqueueMapBuffer(a_buf);
    float *b = (float *)q.enqueueMapBuffer(b_buf);
    float *sw = (float *)q.enqueueMapBuffer(sw_buf);
    float *hw = (float *)q.enqueueMapBuffer(hw_buf);

    cout<<"Finished mapping the buffers to the user space pointers"<<endl;

    cout << "Filling data in the user space pointers" << endl;
    init(a, b, sw, hw, num_elements);
    cout << "Finished filling the data in the host memory" << endl;

    cout << "Starting Host Side Computation" << endl;
    host_side_comp(a, b, sw, num_elements);
    cout << "Finished host side computation" << endl;

    cout<<"Migrating the memory objects from the host to the device"<<endl;
    std::vector<cl::Memory> inBuf, outBuf;
    inBuf.push_back(a_buf);
    inBuf.push_back(b_buf);
    cl::Event event_sp;
    OCL_CHECK(err, q.enqueueMigrateMemObjects(inBuf, 0,NULL,&event_sp));
    cl_wait_for_events(&event_sp);
    cout << "Finished migrating the memories from the host side to the device" << endl;

    cout << "Launching the Kernel" << endl;
    q.enqueueTask(kernel,event_sp);
    cl_wait_for_events(event_sp);
    cout << "Finished the kernel execution" << endl;

    cout<<"Migrating the memory objects from the device to the host side"
    outBuf.push_back(hw_buf);
    q.enqueueMigrateMemObjects(outBuf,CL_MEM_HOST_SIDE,NULL,&event_sp);
    cl_wait_for_events(&event_sp);
    cout << "Fetched the results from the device to the host" << endl;

    bool verified = true;
    for (unsigned int i = 0; i < num_elements;i++){
        if(sw[i]!=hw[i]){
            cout << "Results dont match" << endl;
            cout << i << " : " << a[i] << " * " << b[i] << " = " << sw[i] << " | " << hw[i] << endl;
            break;
            verified = false;
        }
    }

    return (verified == true) ? EXIT_SUCCESS : EXIT_FAILURE;
}