#include<iostream>

using std::cin;
using std::cout;
using std::endl;

int main(int agrc,char *argv[]){

    if(argc!=3){
        cout << "Insufficient Arguments" << endl;
        return EXIT_FAILURE;
    }

    uint32_t num_elements = std::stoi(argv[1]);
    std::string binaryFile = argv[2];

    cl::Device device;
    cl::Kernel kernel;
    cl::CommandQueue q;
    cl::Context context;
    cl::Program program;
    cl_int err;

    auto devices = xcl::xil_get_devices();
    auto fileBuf = xc::readBinary(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

    for (int i = 0; i < devices.size();i++){
        device = devices[i];
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err, q = cl::CommandQueue(device, context, CL_QUEUE_PROFILING | CL_QUEUE_OUT_OF_ORDER_EXEC_ENABLE));
        OCL_CHECK(err, program = cl::Program(device, context, bins));
        if(err==CL_SUCCESS){
            cout << "Device [" << i << "] successfully programmed" << endl;
            OCL_CHECK(err, kernel = cl::Kernel(program, {device}, "krnl_vadd"));
            valid_device = true;
            break;
        }
    }
    if(valid_device==false){
        cout << "Unable to program any of the devices" << endl;
        return EXIT_FAILURE;
    }
    
}