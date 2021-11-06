#include<iostream>
#include<vector>
#include<math.h>
#include "xcl2.hpp"
#include "event_timer.hpp"

using std::cout;
using std::endl;

unsigned int N=1;
#define M 256
#define size_database N*M*4
#define size_input_vector M*4
#define size_result N*M*4

const std::string kernel_name = "krnl";
std::vector<float, aligned_allocator<float>> database(N*M);
std::vector<float, aligned_allocator<float>> source(M);
std::vector<float, aligned_allocator<float>> result(N*M);
std::vector<float, aligned_allocator<float>> sw(N *M);
float max_val;
unsigned int ans;
float sw_max_val;
unsigned int sw_ans;

void generate_database(){
    for (unsigned int i = 0; i < N;i++){
        float sum = 0.0;
        for (unsigned int j = 0; j < M-1;j++){
            float random_number = (float)(std::rand()) / (float(RAND_MAX));
            sum += (random_number * random_number);
            database[i * M + j] = random_number;
        }
        float last_entry = sqrt(1 - sum);
        database[N*M-1] = last_entry;
    }
}

void generate_source(){
    float sum = 0.0;
    for (unsigned int j = 0; j < M - 1; j++)
    {
        float random_number = (float)(std::rand()) / (float(RAND_MAX));
        sum += (random_number * random_number);
        source[j] = random_number ;
    }
    float last_entry = sqrt(1 - sum);
    source[M - 1] = last_entry ;
}

void generate_results(){
    for (unsigned int i = 0; i < N;i++){
        float sum = 0.0;
        for (unsigned int j = 0; j < M;j++){
            unsigned int index = i * M + j;
            sum+= = database[index] * source[j];
        }
        if(sum>max_val){
            sum = max_val;
            sw_ans = i;
        }
    }
}

int main(int argc,char **argv){

    EventTimer et;

    et.add("OpenCL Initialisation");
    char *filename=argv[2];
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
    et.finish();

    et.add("populating vectors");
    generate_database();
    generate_source();
    generate_results();
    et.finish();

    et.add("Buffer Creation");
    cl::Buffer a(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_database, database.data(),&err );
    cl::Buffer b(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_input_vector, source.data(),&err );

    et.add("Set the kernel arguments");
    kernel.setArg(0, a);
    kernel.setArg(1, b);
    kernel.setArg(2, N);
    kernel.setArg(3, max_val);
    kernel.setArg(4, ans);

    q.enqueueMigrateMemObjects({a, b},0);
    et.add("Migrate the input buffers to the device");
    q.finish();
    et.finish();

    q.enqueueTask(kernel);
    et.add("Launching the kernel");
    q.finish();
    et.finish();

    q.enqueueMigrateMemObjects({c},CL_MIGRATE_MEM_OBJECT_HOST);
    et.add("Migrate the output from the device");
    q.finish();
    et.finish();

    bool verify = (sw_ans == ans) & (max_val == sw_max_val);
    if(verify){
    cout << "------------------------------------------------" << endl;
    cout <<"TESTS PASSED"<<endl;
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