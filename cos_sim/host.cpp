#include<iostream>
#include<vector>
#include "xcl2.hpp"

using std::cout;
using std::endl;

int N = 1;
#define M 256
#define size_database N*M*4
#define size_input_vector M*4
#define size_result N*M*4
#define factor_10 (int)(1e4)
const std::string kernel_name = "normal";
std::vector<uint32_t, aligned_allocator<uint32_t>> database(N*M);
std::vector<uint32_t, aligned_allocator<uint32_t>> source(M);
std::vector<uint32_t, aligned_allocator<uint32_t>> result(N*M);
std::vector<uint32_t, aligned_allocator<uint32_t>> sw(N*M);

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

    char *filename=argv[1];
    auto fileBuf = xcl::read_binary_file(filename);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device=devices[0];
    cl_int err;
    cl::Context context(device, NULL, NULL, NULL, &err);
    cl::CommandQueue q(context,CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_ENABLE,device,NULL,&err);
    cl::Program program(context, {device}, bins, NULL, &err);
    cl::Kernel kernel(program,kernel_name.c_str(),&err);

    generate_database();
    generate_source();
    generate_results();

    cl::Buffer a(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_database, database.data(), );
    cl::buffer b(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_input_vector, source.data(), );
    cl::buffer c(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_result, result.data(), );

    kernel.setArg(0, a);
    kernel.setArg(1, b);
    kernel.setArg(2, c);
    kernel.setArg(3, N);

    q.enqueueMigrateMemObjects({database, source});

    q.enqueueTask(kernel, nullptr, &event_sp);

    q.enqueueMigrateMemObjects({result});

    for (unsigned int i = 0; i < N;i++){
        for (unsigned int j = 0;j<M;j++){
            unsigned int index = i * M + j;
            if(result[index]!=sw[index]){
                cout << i << " : " << j << " " << database[index] << " * " << source[index] << " = " << database[index] << " | " << result[index] << endl;
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