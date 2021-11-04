#include<iostream>
#include<vector>
#include<math.h>
#include "event_timer.hpp"
#include "xcl2.hpp"

using std::cout;
using std::endl;

unsigned int N=1;
#define M 256
#define size_database N*M*4
#define size_input_vector M*4
#define size_result N*M*4
#define factor_10 (int)(1e4)
const std::string kernel_name = "krnl";
std::vector<uint32_t, aligned_allocator<uint32_t>> database(N*M);
std::vector<uint32_t, aligned_allocator<uint32_t>> source(M);
std::vector<uint32_t, aligned_allocator<uint32_t>> result(N*M);
std::vector<uint32_t, aligned_allocator<uint32_t>> sw(N *M);

void generate_database(){
    for (unsigned int i = 0; i < N;i++){
        float sum = 0.0;
        for (unsigned int j = 0; j < M-1;j++){
            float random_number = (float)(std::rand()) / (float(RAND_MAX));
            sum += (random_number * random_number);
            database[i*M+j] = (random_number * factor_10);
        }
        float last_entry = sqrt(1 - sum);
        database[i * M + M-1] = (last_entry * factor_10);
    }
}

void generate_source(){
    float sum = 0.0;
    for (unsigned int j = 0; j < M - 1; j++)
    {
        float random_number = (float)(std::rand()) / (float(RAND_MAX));
        sum += (random_number * random_number);
        source[j] = (random_number * factor_10);
    }
    float last_entry = sqrt(1 - sum);
    source[M - 1] = (last_entry * factor_10);
}

void generate_results(){
    for (unsigned int i = 0; i < N;i++){
        for (unsigned int j = 0; j < M;j++){
            unsigned int index = i * M + j;
            sw[index] = database[index] * source[j];
        }
    }
}

int main(int argc,char **argv){
    EventTimer et;
    char *filename = argv[2];
    N = std::stoi(argv[1]);
    auto fileBuf = xcl::read_binary_file(filename);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device=devices[0];
    cl_int err;
    cl::Context context(device, NULL, NULL, NULL, &err);
    cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err);
    cl::Program program(context, {device}, bins, NULL, &err);
    cl::Kernel kernel(program,kernel_name.c_str(),&err);

    generate_database();
    generate_source();
    generate_results();

    cl::Buffer a(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_database, database.data(),&err );
    cl::Buffer b(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_input_vector, source.data(),&err );
    cl::Buffer c(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY), size_result, result.data(),&err );

    kernel.setArg(0, a);
    kernel.setArg(1, b);
    kernel.setArg(2, c);
    kernel.setArg(3, N);

    q.enqueueMigrateMemObjects({a, b},0);
    q.finish();
    q.enqueueTask(kernel);
    et.add("Kernel Execution");
    q.finish();
    et.finish();
    et.print();
    q.enqueueMigrateMemObjects({c}, CL_MIGRATE_MEM_OBJECT_HOST);
    q.finish();

    for (unsigned int i = 0; i < N;i++){
        for (unsigned int j = 0;j<M;j++){
            unsigned int index = i * M + j;
            if(result[index]!=sw[index]){
                cout << i << " : " << j << " " << database[index] << " * " << source[j] << " = " << sw[index] << " | " << result[index] << endl;
                cout<<"TESTS FAILED"<<endl;
                return EXIT_FAILURE;
            }
        }
    }
    cout << "------------------------------------------------" << endl;
    cout <<"TESTS PASSED"<<endl;
    cout << "------------------------------------------------" << endl;
    return EXIT_SUCCESS; 
}