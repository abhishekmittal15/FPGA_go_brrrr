#include<iostream>
#include<vector>
#include<math.h>
#include "xcl2.hpp"
#include "event_timer.hpp"

using std::cout;
using std::endl;

unsigned int N = 3;
unsigned int Q = 1;
#define M 256

const std::string kernel_name = "krnl";

void print_database(std::vector<float,aligned_allocator<float>>& database){
    cout<<"Database"<<endl;
    cout << "------------------" << endl;
    for (unsigned int i = 0; i < N; i++)
    {
        for(unsigned int j=0;j<M;j++){
            cout << database[i*M+j] << " ";
        }
        cout << endl;
    }
    cout << "-------------------" << endl;
}

void print_source(std::vector<float,aligned_allocator<float>>& source){
    cout << "Source" << endl;
    cout << "-----------------" << endl;
    for (unsigned int i = 0;i<Q;i++){
        for (unsigned int j = 0; j < M; j++)
        {
            cout << source[i*M+j] << " ";
        }
        cout << endl;
    }
    cout << "-------------------" << endl;
}

void generate_database(float *database){
    for (unsigned int i = 0; i < N;i++){
        float sum = 0.0;
        for (unsigned int j = 0; j < M;j++){
            float random_number = (float)(std::rand()) / (float)(RAND_MAX);
            sum += (random_number * random_number);
            database[i * M + j] = random_number;
        }
        for(unsigned int j=0;j<M;j++)
            database[i * M + j] /= sqrt(sum);
    }
}

void generate_source(float *source){
    for (unsigned int q = 0; q < Q;q++){
        float sum = 0.0;
        for (unsigned int j = 0; j < M; j++)
        {
            float random_number = (float)(std::rand()) / (float(RAND_MAX));
            sum += (random_number * random_number);
            source[q + j * Q] = random_number;
            // cout<<random_number<<endl;
        }
        for (unsigned int j = 0; j < M; j++)
            source[q+j*Q] /= sqrt(sum);
    }
}

void generate_results(float *database,float *source,float *sw_ans,float *sw_max_val){
    cout << "---------------" << endl;
    for(unsigned int q=0;q<Q;q++){
        for (unsigned int i = 0; i < N; i++)
        {
            float sum = 0.0;
            for (unsigned int j = 0; j < M;j++){
                unsigned int index = i * M + j;
                sum+=database[index] * source[q+j*Q];
            }
            if(sum>sw_max_val[q]){
                sw_max_val[q] = sum;
                sw_ans[q] = i;
            }
        }
    }
}

int main(int argc,char **argv){

    EventTimer et;
    et.add("OpenCL Initialisation");
    char *filename=argv[3];
    N = std::stoi(argv[1]);
    Q = std::stoi(argv[2]);
    std::vector<float, aligned_allocator<float>> database(N * M);
    std::vector<float, aligned_allocator<float>> source(Q*M);
    std::vector<float, aligned_allocator<float>> sw_ans(Q);
    std::vector<float, aligned_allocator<float>> sw_max_val(Q);
    std::vector<float, aligned_allocator<float>> hw_query_results( 2*Q);
    std::vector<float, aligned_allocator<float>> result(2);
    const unsigned int size_database = N * M * 4;
    const unsigned int size_input_vector= Q * M * 4;
    const unsigned int size_results =2*Q * 4;
    unsigned int rep_count = 1;
    auto fileBuf = xcl::read_binary_file(filename);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Program program;
    cl::Kernel krnl;
    cl_int err;

    std::vector<cl::Device> devices = xcl::get_xil_devices();
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
            OCL_CHECK(err, krnl = cl::Kernel(program, kernel_name.c_str(), &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device)
    {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }
    et.finish();

    et.add("populating vectors");
    generate_database(database.data());
    generate_source(source.data());
    et.finish();
    // print_database(database);
    // print_source(source);

    et.add("Buffer Creation");
    cl::Buffer a(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_database, database.data(),&err );
    cl::Buffer b(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_input_vector, source.data(),&err );
    // cl::Buffer r(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY), 2*sizeof(float), result.data(), &err);
    cl::Buffer re(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY), size_results, hw_query_results.data(), &err);

    et.add("Set the kernel arguments");
    krnl.setArg(0, a);
    krnl.setArg(1, b);
    krnl.setArg(2, re);
    krnl.setArg(3, N);
    krnl.setArg(4, Q);
    krnl.setArg(5, rep_count);

    // krnl.setArg(3, r);

    q.enqueueMigrateMemObjects({a, b},0);
    et.add("Migrate the input buffers to the device");
    q.finish();
    et.finish();

    et.add("Host side");
    generate_results(database.data(),source.data(),sw_ans.data(),sw_max_val.data());
    et.finish();

    q.enqueueTask(krnl);
    et.add("Launching the kernel");
    q.finish();
    et.finish();

    q.enqueueMigrateMemObjects({re}, CL_MIGRATE_MEM_OBJECT_HOST);
    et.add("Migrate the output buffers from the device");
    q.finish();
    et.finish();

    cout<<"Host results"<<endl;
    for (unsigned int i = 0; i < Q;i++)
        cout << sw_ans[i] << ":" << sw_max_val[i] << endl;

    cout<<"Hardware results"<<endl;
    // cout << result[0] << " " << result[1] << endl;
    for(unsigned int i=0;i<Q;i++)
    cout << hw_query_results[i*2+1] << ":" << hw_query_results[i*2] << endl;

    // bool verify = (sw_ans ==result[0]) & (result[1] == sw_max_val);
    bool verify=true;
    for(unsigned int i=0;i<Q;i++){
        verify = ((sw_ans[i] == hw_query_results[i * 2 + 1]) & (sw_max_val[i] == hw_query_results[i * 2]));
    }
    // bool verify = (sw_ans == hw_query_results[1]) & (sw_max_val == hw_query_results[0]);
    if (verify)
    {
        cout << "------------------------------------------------" << endl;
        cout << "TESTS PASSED" << endl;
        cout << "------------------------------------------------" << endl;
    }
    else{
        cout << "------------------------------------------------" << endl;
        cout << "TESTS FAILED" << endl;
        cout << "------------------------------------------------" << endl;
    }
    et.print();
    return EXIT_SUCCESS; 
}