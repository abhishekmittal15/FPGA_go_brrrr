#include <iostream>
#include <vector>
#include <math.h>
#include "xcl2.hpp"
#include "event_timer.hpp"

using std::cout;
using std::endl;

unsigned int N = 1;
#define M 256

const std::string kernel_name = "krnl";
float sw_max_val;
unsigned int sw_ans;

void generate_database(float *database, unsigned int N)
{
    for (unsigned int i = 0; i < N; i++)
    {
        // cout << "Record : " << i << endl;
        float sum = 0.0;
        for (unsigned int j = 0; j < M; j++)
        {
            float random_number = (float)(std::rand()) / (float)(RAND_MAX);
            sum += (random_number * random_number);
            database[i * M + j] = random_number;
            // cout << random_number << endl;
        }
        for (unsigned int j = 0; j < M; j++)
            database[i * M + j] /= sum;
        // cout << "-------------------" << endl;
    }
    // cout << "Created Database" << endl;
}

void generate_source(float *source)
{
    float sum = 0.0;
    // cout << "Source vector" << endl;
    for (unsigned int j = 0; j < M - 1; j++)
    {
        float random_number = (float)(std::rand()) / (float(RAND_MAX));
        sum += (random_number * random_number);
        source[j] = random_number;
        // cout<<random_number<<endl;
    }
    for (unsigned int j = 0; j < M; j++)
        source[j] /= sum;
    // cout << "-----------------------" << endl;
    // cout << "Created source successfully" << endl;
}

void generate_results(float *database, float *source, unsigned int N)
{
    for (unsigned int i = 0; i < N; i++)
    {
        float sum = 0.0;
        for (unsigned int j = 0; j < M; j++)
        {
            unsigned int index = i * M + j;
            sum += database[index] * source[j];
        }
        if (sum > sw_max_val)
        {
            sw_max_val = sum;
            sw_ans = i;
        }
    }
    cout << "Generated the results successfully" << endl;
}

int main(int argc, char **argv)
{

    EventTimer et;

    et.add("OpenCL Initialisation");
    char *filename = argv[2];
    N = std::stoi(argv[1]);
    std::vector<float, aligned_allocator<float>> database(N * M);
    std::vector<float, aligned_allocator<float>> source(M);
    std::vector<float, aligned_allocator<float>> result(2);
    const unsigned int size_database = N * M * 4;
    const unsigned int size_input_vector = M * 4;
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
    generate_database(database.data(), N);
    generate_source(source.data());
    et.finish();

    et.add("Buffer Creation");
    cl::Buffer a(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_database, database.data(), &err);
    cl::Buffer b(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY), size_input_vector, source.data(), &err);
    cl::Buffer r(context, static_cast<cl_mem_flags>(CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY), 2 * sizeof(float), result.data(), &err);

    et.add("Set the kernel arguments");
    krnl.setArg(0, a);
    krnl.setArg(1, b);
    krnl.setArg(2, N);
    krnl.setArg(3, r);

    q.enqueueMigrateMemObjects({a, b}, 0);
    et.add("Migrate the input buffers to the device");
    q.finish();
    et.finish();

    et.add("Host side");
    generate_results(database.data(), source.data(), N);
    et.finish();

    q.enqueueTask(krnl);
    et.add("Launching the kernel");
    q.finish();
    et.finish();

    q.enqueueMigrateMemObjects({r}, CL_MIGRATE_MEM_OBJECT_HOST);
    et.add("Migrate the output buffers from the device");
    q.finish();
    et.finish();

    cout << "Host results" << endl;
    cout << sw_ans << " " << sw_max_val << endl;

    cout << "Hardware results" << endl;
    cout << result[0] << " " << result[1] << endl;

    bool verify = (sw_ans == result[0]) & (result[1] == sw_max_val);
    if (verify)
    {
        cout << "------------------------------------------------" << endl;
        cout << "TESTS PASSED" << endl;
        cout << "------------------------------------------------" << endl;
    }
    else
    {
        cout << "------------------------------------------------" << endl;
        cout << "TESTS FAILED" << endl;
        cout << "------------------------------------------------" << endl;
    }
    et.print();
    return EXIT_SUCCESS;
}