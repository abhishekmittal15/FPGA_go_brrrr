#include<iostream>
#include "xilinx_ocl_helper.hpp"
#include<memory>
#include<string>

using std::cin;
using std::cout;
using std::endl;
#define Alignment_memory 4096

void init(uint32_t *a, uint32_t *b, uint32_t *c, uint32_t *d, uint32_t num_elements){
    for (uint32_t i = 0; i < num_elements;i++){
        a[i] = std::rand() / 2;
        b[i] = std::rand() / 2;
        c[i] = 0;
        d[i] = 0;
    }
}

void host_comp(uint32_t *a,uint32_t *b,uint32_t *d){
    for (uint32_t i = 0; i < num_elements;i++)
        d[i] = a[i] + b[i];
}

int main(int argc, char *argv[])
{
    if(argc!=3){
        cout << "Insufficient Arguments" << endl;
    }
    std::string xclbin_file = argv[2];
    uint32_t num_elements = std::stoi(argv[1]);

    EventTimer et;

    cout << "Loading the xclbin file to the board" << endl
         << endl;
    
    et.add("OpenCl Initialisation");
    xilinx::example_utils::XilinxOCLHelper xocl;
    xocl.initialize(xclbin_file);
    cl::CommandQueue q = xocl.get_command_queue();
    cl::Kernel kernel = xocl.get_kernel("krnl");
    et.finish();

    et.add("Allocating Memory Buffer");
    uint32_t *a, *b, *c, *d = NULL;
    posix_memalign((void **)&a, Alignment_memory, num_elements * sizeof(uint32_t));
    posix_memalign((void **)&b, Alignment_memory, num_elements * sizeof(uint32_t));
    posix_memalign((void **)&c, Alignment_memory, num_elements * sizeof(uint32_t));
    posix_memalign((void **)&d, Alignment_memory, num_elements * sizeof(uint32_t));
    et.finish();

    et.add("Populating the Buffers");
    init(a, b, c, d, num_elements);
    et.finish();

    et.add("Software VADD run: ");
    host_comp(a, b, d, num_elements);
    et.finish();

    et.add("Map Host Buffers to the OPENCL Buffers");
    uint32_t size_bytes = num_elements * sizeof(uint32_t);
    cl::Buffer a_to_device(xocl.get_context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR), size_bytes, a,NULL);
    cl::Buffer b_to_device(xocl.get_context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR), size_bytes, b,NULL);
    cl::Buffer c_to_device(xocl.get_context, static_cast<cl_mem_flags>(CL_MEM_WRITE_ONLY | CL_MEM_USE_HOST_PTR), size_bytes, c,NULL);
    et.finish();

    et.add("Migrating the data from the host to the device");
    std::vector<cl::Memory> input,output;
    input.push_back(a_to_device);
    input.push_back(b_to_device);
    output.push_back(c_to_device);
    cl::Event sp;
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects(input), 0, NULL ,&event_sp);
    et.finish();


}