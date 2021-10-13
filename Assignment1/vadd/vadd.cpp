#include<algorithm>
#include<vector>
#include<iostream>
#include<string>
#include<thread>
#include<iomanip>
#include<cstring>
#include<unistd.h>

#include "CL/cl_ext_xilinx.h"
#include "xcl2.hpp"

using std::cerr;
using std::cin;
using std::cout;
using std::endl;

void vectors_init(int *buffer_a,int *buffer_b, int *sw_results,int *hw_results,unsigned int num_elements){
    for (size_t i = 0; i < num_elements;i++){
        buffer_a[i] = std::rand() * ((std::rand() % 2) ? 1 : -1);
        buffer_b[i] = std::rand() * ((std::rand() % 2) ? 1 : -1);
        hw_results[i] = 0;
        sw_results[i] = 0;
    }
}

void vectors_add_sw(int *buffer_a,int *buffer_b,int *sw_results,unsigned int num_elements){
    for (size_t i = 0; i < num_elements;i++){
        sw_results[i] = buffer_a[i] + buffer_b[i];
    }
}

bool verify(int *hw_results,int *sw_results,unsigned int num_elements){
    for (size_t i = 0; i < num_elements;i++){
        if(sw_results[i]!=hw_results[i]){
            cout << "TESTS : FAILED" << endl;
            return false;
        }
    }
    cout << "TESTS : PASSED" << endl;
    return true;
}

int main(int argc,char **argv){
    if(argc<2 || argc>4){
        cout << "Usage: " << argv[0] << " <XCLBIN File> <#elements(optional)> <debug(optional)>" << endl;
        return EXIT_FAILURE;
    }
    auto binaryFile = argv[1];
    unsigned int num_elements = 4096;
    bool user_size = false;
    bool debug = false;
    if(argc>=3){
        user_size = true;
        unsigned int val;
        try{
            val = std::stoi(argv[2]);
        }
        catch(const std::invalid_argument val){
            cerr << "Invalid Argument in position 2(" << argv[2] << ") program expects an integer as number of elements" << endl;
            return EXIT_FAILURE;
        }
        catch (const std::out_of_range val){
            cerr << "Number of elements must not exceed 2147483648"<<endl;
            return EXIT_FAILURE;
        }
        num_elements = val;
        cout << "User has set the number of elements in the vector to : " << num_elements << endl;
    }
    
    if(argc==4){
        std::string debug_arg = argv[3];
        if(debug_arg=="debug"){
            debug = true;
            cout<<"User has enabled debug"<<endl;
        }
    }

    if(user_size==false){
        if(xcl::is_hw_emulation())
            num_elements = 4096;
        else if(xcl::is_emulation())
            num_elements=4096*8;
        else
            num_elements = 4096 * 4096;
    }
    cl::Device device;
    cl::CommandQueue q;
    cl::Context context;
    cl::Program program;
    cl::Kernel krnl_vadd;
    cl_int err;

    auto devices = xcl::get_xil_devices();

    auto fileBuf = xcl::read_binary_file(binaryFile);

    cl::Program::Binaries bins{{fileBuf.data(),fileBuf.size()}};

    bool valid_device = false;

    for (unsigned int i = 0; i < devices.size();i++){
        device = devices[i];
        OCL_CHECK(err,context=cl::Context(device,NULL,NULL,NULL,&err));
        OCL_CHECK(err,q=cl::CommandQueue(context,device,CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE));
        cout << "Trying to program device[" << i << "] : " << device.getInfo<CL_DEVICE_NAME>() << endl;
        cl::Program program(context, {device}, bins, NULL, &err);
        if(err!=CL_SUCCESS){
            cout << "Failed to program device[" << i << "]" << endl;
        }
        else{
            cout << "Device[" << i << "] has been successfuly programmed" << endl;
            OCL_CHECK(err, krnl_vadd = cl::Kernel(program, "krnl_vadd", &err));
            valid_device = true;
        }
        if(valid_device==true)
            break;
    }

    if(valid_device==false){
        cout<<"None of the devices were successfully programmed"<<endl;
        return EXIT_FAILURE;
    }

    cout << "Running vector add with " << num_elements << " elements" << endl;

    std::vector<int, aligned_allocator<int>> buffer_a(num_elements);
    std::vector<int, aligned_allocator<int>> buffer_b(num_elements);
    std::vector<int, aligned_allocator<int>> hw_results(num_elements);
    std::vector<int, aligned_allocator<int>> sw_results(num_elements);

    vectors_init(buffer_a.data(), buffer_b.data(), sw_results.data(), hw_results.data(), num_elements);
    
    unsigned int size_bytes = num_elements * sizeof(int);

    cout << "Running Application on host : " << endl;
    vectors_add_sw(buffer_a.data(),buffer_b.data(),sw_results.data(),num_elements);
    cout << "Application has finished executing on host" << endl;

    cout << "Running the application on the FPGA chip" << endl;
    OCL_CHECK(err, cl::Buffer buffer_input1(context, CL_MEM_USE_HOST_PTR or CL_MEM_READ_ONLY, size_bytes, buffer_a.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_input2(context, CL_MEM_USE_HOST_PTR or CL_MEM_READ_ONLY, size_bytes, buffer_b.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR or CL_MEM_WRITE_ONLY, size_bytes, hw_results.data(), &err));

    OCL_CHECK(err, err = krnl_vadd.setArg(0, buffer_input1));
    OCL_CHECK(err, err = krnl_vadd.setArg(1, buffer_input2));
    OCL_CHECK(err, err = krnl_vadd.setArg(2, buffer_output));
    OCL_CHECK(err, err = krnl_vadd.setArg(3, num_elements));

    OCL_CHECK(err,err=q.enqueueMigrateMemObjects({buffer_input1,buffer_input2},0));
    OCL_CHECK(err, err = q.finish());

    cout<<"Launching Hardware Kernels"<<endl;
    OCL_CHECK(err,err=q.enqueueTask(krnl_vadd));
    OCL_CHECK(err,err=q.finish());

    std::cout<<"Getting results from the hardware"<<endl;
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));
    OCL_CHECK(err,err=q.finish());

    bool match=verify(sw_results.data(),hw_results.data(),num_elements);

    if(debug){
        for (unsigned int i = 0; i < num_elements;i++){
            cout << "Idx [" << std::setw(6) << i << "]" << std::setw(14) << buffer_a[i] << " + " ;
            cout << std::setw(14) << buffer_b[i] << "\t sw_result=" << std::setw(14) << sw_results[i];
            cout<<"\t hw_result="<<std::setw(14)<<hw_results[i];
            cout << "\t equal" << ((hw_results[i] == sw_results[i]) ? "True" : "False") << endl;
        }
    }
    return match ? EXIT_SUCCESS : EXIT_FAILURE;
}