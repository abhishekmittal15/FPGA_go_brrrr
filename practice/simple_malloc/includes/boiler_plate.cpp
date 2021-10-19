if(argc!=3){
        cout << "Insufficient Arguments" << endl;
        return EXIT_FAILURE;
    }

    unsigned int num_elements = std::stoi(argv[1]);
    unsigned size_bytes = num_elements * sizeof(unsigned int);
    std::string binaryFile = argv[2];
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bin{{fileBuf.data(), fileBuf.size()}};

    cl::Device device;
    cl::CommandQueue q;
    cl::Context context;
    cl::Kernel kernel;
    cl::Program program;
    cl_int err;

    std::vector<cl::Devices> devices = xcl::get_xil_devices();
    for (int i = 0; i < devices;i++){
        device = devices[i];
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_ENABLE, &err));
        cout << "Trying to program the device[" << i << "] : " << cl::get_device_info<CL_DEVICE_NAME>() << endl;
        cl::Program program(context,{device},bins,NULL,&err);
        if(err==CL_SUCCESS){
            OCL_CHECK(err, kernel = cl::Kernel(program, kernel_name, &err));
            valid_device = true;
            break;
        }
        else{
            cout << "Failed to program the device[" << i << "] : " << cl::get_device_info<CL_DEVICE_NAME>() << endl;
        }
    }
    if(valid_device==false){
        cout << "Unable to program any device" << endl;
        return EXIT_FAILURE;
    }