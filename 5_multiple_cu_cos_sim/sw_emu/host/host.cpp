#include<iostream>
#include<vector>
#include<ctime>
#include<math.h>
#include "xcl2.hpp"
#include "event_timer.hpp"

using std::cout;
using std::endl;

unsigned int N=1;
#define M 256
#define ncu 4

const std::string kernel_name = "krnl";
float sw_max_val,hw_max_val;
unsigned int sw_ans,hw_ans;

void generate_database(float *database,unsigned int N){
    for (unsigned int i = 0; i < N;i++){
        // cout << "Record : " << i << endl;
        float sum = 0.0;
        for (unsigned int j = 0; j < M;j++){
            float random_number = (float)(std::rand()) / (float)(RAND_MAX);
            sum += (random_number * random_number);
            database[i * M + j] = random_number;
            database[i + j * N] = random_number;
            // cout << random_number << endl;
        }
        for(unsigned int j=0;j<M;j++)
            database[i+j*N] /= sum;
        // cout << "-------------------" << endl;
    }
    // cout << "Created Database" << endl;
}

void generate_source(float *source){
    float sum = 0.0;
    // cout << "Source vector" << endl;
    for (unsigned int j = 0; j < M - 1; j++)
    {
        float random_number = (float)(std::rand()) / (float(RAND_MAX));
        sum += (random_number * random_number);
        source[j] = random_number ;
    }
    for (unsigned int j = 0; j < M; j++)
        source[j] /= sum;
    // cout << "-----------------------" << endl;
    // cout << "Created source successfully" << endl;
}

void generate_results(float *database,float *source,float* sw_result,unsigned int N){
    for (unsigned int i = 0; i < N;i++){
        sw_result[i] = 0.0;
        for (unsigned int j = 0; j < M; j++)
        {
            unsigned int index = i +j*N;
            sw_result[i]+=database[index] * source[j];
        }
        if(sw_result[i]>sw_max_val){
            sw_max_val = sw_result[i];
            sw_ans = i;
        }
    }
    // cout << "Generated the results successfully" << endl;
}

int main(int argc,char **argv){

    EventTimer et;
    srand(time(NULL));
    et.add("OpenCL Initialisation");
    char *filename=argv[2];
    N = std::stoi(argv[1]);
    std::vector<float, aligned_allocator<float>> database(M*N);
    std::vector<float, aligned_allocator<float>> source(M);
    std::vector<std::vector<float, aligned_allocator<float>>> hw_result(4,std::vector<float,aligned_allocator<float>>(N));
    std::vector<float, aligned_allocator<float>> sw_result(N);
    const unsigned int m_per_ncu = M / ncu;
    const unsigned int size_database = N * M * sizeof(float);
    const unsigned int chunk_size_database = N*m_per_ncu*sizeof(float);
    const unsigned int chunk_size_source = m_per_ncu * sizeof(float);
    const unsigned int size_input_vector = M * sizeof(float);
    const unsigned int size_result = N * sizeof(float);
    auto fileBuf = xcl::read_binary_file(filename);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Program program;
    std::vector<cl::Kernel> krnl(ncu);
    cl_int err;

    std::vector<cl::Device> devices = xcl::get_xil_devices();
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++)
    {
        device = devices[i];
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
            for(unsigned int i=0;i<ncu;i++)
                OCL_CHECK(err, krnl[i] = cl::Kernel(program, kernel_name.c_str(), &err));
            valid_device = true;
            break;
        }
    }
    if (!valid_device)
    {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }
    et.finish();

    et.add("populating vectors");
    generate_database(database.data(),N);
    generate_source(source.data());
    et.finish();

    std::vector<cl::Buffer> a(ncu);
    std::vector<cl::Buffer> b(ncu);
    std::vector<cl::Buffer> r(ncu);
    et.add("Buffer Creation");
    for(unsigned int i=0;i<ncu;i++){
        a[i] = cl::Buffer(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), chunk_size_database, database.data()+ i * chunk_size_database,&err );
        cout << "Created the a[" << i << "] buffer" << endl;
        b[i]=cl::Buffer(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), chunk_size_source, source.data()+i*chunk_size_source,&err );
        cout << "Created the a[" << i << "] buffer" << endl;
        r[i] = cl::Buffer(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY), size_result, hw_result[i].data(), &err);
        cout << "Created the r[" << i << "] buffer" << endl;
    }

    for(unsigned int i=0;i<ncu;i++){
        krnl[i].setArg(0, a[i]);
        krnl[i].setArg(1, b[i]);
        krnl[i].setArg(2, N);
        krnl[i].setArg(3, r[i]);
        q.enqueueMigrateMemObjects({a[i], b[i]}, 0);
    }
    et.add("Set the kernel arguments");
    q.finish();
    et.finish();

    // q.enqueueMigrateMemObjects({a, b},0);
    // et.add("Migrate the input buffers to the device");
    // q.finish();
    // et.finish();

    et.add("Host side");
    generate_results(database.data(),source.data(),sw_result.data(),N);
    et.finish();

    for(unsigned int i=0;i<ncu;i++){
        q.enqueueTask(krnl[i]);
    }
    et.add("Launching the kernels");
    q.finish();
    et.finish();

    for(unsigned int i=0;i<ncu;i++){
        cout << "Am i working ?" << endl;
        q.enqueueMigrateMemObjects({r[i]}, CL_MIGRATE_MEM_OBJECT_HOST);
        cout << "Am i working2 ?" << endl;
    }
    et.add("Migrate the output buffers from the device");
    q.finish();
    et.finish();

    for(unsigned int i=0;i<N;i++){
        float hw_res_sum = 0.0;
        cout << "Hello am I working" << endl;
        for (unsigned int j = 0; j < ncu; j++)
            hw_res_sum += hw_result[j][i];
        cout << "Hello am I working2" << endl;
        cout << i << " : " << sw_result[i] << " | " << hw_res_sum << endl;
        if (hw_res_sum > hw_max_val)
        {
            hw_max_val=hw_res_sum;
            hw_ans = i;
        }
    }

    cout<<"Host results"<<endl;
    cout << sw_ans << " " << sw_max_val << endl;

    cout<<"Hardware results"<<endl;
    cout << hw_ans << " " << hw_max_val << endl;

    bool verify = (sw_ans ==hw_ans) & (hw_max_val == sw_max_val);
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