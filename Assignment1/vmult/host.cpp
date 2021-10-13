#include "event_timer.hpp"

#include <iostream>
#include <memory>
#include <string>

// Xilinx OpenCL and XRT includes
#include "xilinx_ocl.hpp"

using std::cin;
using std::cout;
using std::endl;

void init(uint32_t *a,uint32_t* b,uint32_t *c,uint32_t* d,unsigned int n){
    for (unsigned int i = 0;i<n;i++){
        a[i] = (int)((double)(std::rand())/(double)(sqrt(RAND_MAX)-5));
        b[i] = (int)((double)(std::rand())/(double)(sqrt(RAND_MAX)-5));
        c[i] = 0;
        d[i] = 0;
    }
}

void vmult_sw(uint32_t *a, uint32_t *b, uint32_t *c, unsigned int size)
{
    for (unsigned int i = 0; i < size; i++) {
        c[i] = a[i] * b[i];
    }
}

int main(int argc, char *argv[])
{
    // Initialize an event timer we'll use for monitoring the application
    EventTimer et;
    // Check if the binary file is passed as argument
    if (argc != 4) {
        cout << "Insufficient arguments" << endl;
        return EXIT_FAILURE;
    }
    // Copy binary name
    char* binaryName = argv[3];
    // Get target and set BUFSIZE 1024 times bigger for hw runs
    // std::string target = getenv("XCL_EMULATION_MODE");
    // const uint32_t BUFSIZE = (target.compare("hw") == 0) ? (1024 * 1024 * 32) : (1024 * 32);
    unsigned int BUFSIZE = std::stoi(argv[1]);
    std::string debug_arg = argv[2];
    bool debug = false;
    if(debug_arg.compare("true")==0)
        debug = true;

    std::cout << "-- Parallelizing the Data Path --" << std::endl << std::endl;

    // Initialize the runtime (including a command queue) and load the
    // FPGA image
    std::cout << "Loading " << binaryName << " to program the board" << std::endl << std::endl;
    et.add("OpenCL Initialization");

    // This application will use the first Xilinx device found in the system
    swm::XilinxOcl xocl;
    xocl.initialize(binaryName);

    cl::CommandQueue q = xocl.get_command_queue();
    cl::Kernel krnl    = xocl.get_kernel("wide_vadd");
    et.finish();

    /// New code for example 01
    std::cout << "Running kernel test XRT-allocated buffers and wide data path:" << std::endl
              << std::endl;

    // Map our user-allocated buffers as OpenCL buffers using a shared
    // host pointer
    et.add("Allocate contiguous OpenCL buffers");
    cl_mem_ext_ptr_t bank_ext;
    bank_ext.flags = 2 | XCL_MEM_TOPOLOGY;
    bank_ext.obj   = NULL;
    bank_ext.param = 0;
    cl::Buffer a_buf(xocl.get_context(),
                     static_cast<cl_mem_flags>(CL_MEM_READ_ONLY),
                     BUFSIZE * sizeof(uint32_t),
                     NULL,
                     NULL);
    cl::Buffer b_buf(xocl.get_context(),
                     static_cast<cl_mem_flags>(CL_MEM_READ_ONLY),
                     BUFSIZE * sizeof(uint32_t),
                     NULL,
                     NULL);
    cl::Buffer c_buf(xocl.get_context(),
                     static_cast<cl_mem_flags>(CL_MEM_READ_WRITE),
                     BUFSIZE * sizeof(uint32_t),
                     NULL,
                     NULL);
    cl::Buffer d_buf(xocl.get_context(),
                     static_cast<cl_mem_flags>(CL_MEM_READ_WRITE |
                                               CL_MEM_ALLOC_HOST_PTR |
                                               CL_MEM_EXT_PTR_XILINX),
                     BUFSIZE * sizeof(uint32_t),
                     &bank_ext,
                     NULL);
    et.finish();

    // Set vadd kernel arguments. We do this before mapping the buffers to allow XRT
    // to allocate the buffers in the appropriate memory banks for the selected
    // kernels. For buffer 'd' we explicitly set a bank above, but this buffer is
    // never migrated to the Alveo card so this mapping is theoretical.
    et.add("Set kernel arguments");
    krnl.setArg(0, a_buf);
    krnl.setArg(1, b_buf);
    krnl.setArg(2, c_buf);
    krnl.setArg(3, BUFSIZE);

    et.add("Map buffers to user space pointers");
    uint32_t *a = (uint32_t *)q.enqueueMapBuffer(a_buf,
                                                 CL_TRUE,
                                                 CL_MAP_WRITE,
                                                 0,
                                                 BUFSIZE * sizeof(uint32_t));
    uint32_t *b = (uint32_t *)q.enqueueMapBuffer(b_buf,
                                                 CL_TRUE,
                                                 CL_MAP_WRITE,
                                                 0,
                                                 BUFSIZE * sizeof(uint32_t));
    uint32_t *d = (uint32_t *)q.enqueueMapBuffer(d_buf,
                                                 CL_TRUE,
                                                 CL_MAP_WRITE | CL_MAP_READ,
                                                 0,
                                                 BUFSIZE * sizeof(uint32_t));
    et.finish();

    et.add("Populating buffer inputs");
    init(a, b, c, d, BUFSIZE);
    et.finish();

    // For comparison, let's have the CPU calculate the result
    et.add("Software VADD run");
    vadd_sw(a, b, d, BUFSIZE);
    et.finish();

    // Send the buffers down to the Alveo card
    et.add("Memory object migration enqueue");
    cl::Event event_sp;
    q.enqueueMigrateMemObjects({a_buf, b_buf}, 0, NULL, &event_sp);
    clWaitForEvents(1, (const cl_event *)&event_sp);

    et.add("OCL Enqueue task");

    q.enqueueTask(krnl, NULL, &event_sp);
    et.add("Wait for kernel to complete");
    clWaitForEvents(1, (const cl_event *)&event_sp);

    // Migrate memory back from device
    et.add("Read back computation results");
    uint32_t *c = (uint32_t *)q.enqueueMapBuffer(c_buf,
                                                 CL_TRUE,
                                                 CL_MAP_READ,
                                                 0,
                                                 BUFSIZE * sizeof(uint32_t));
    et.finish();


    // Verify the results
    bool verified = true;
    for (uint32_t i = 0; i < BUFSIZE; i++) {
        if (c[i] != d[i]) {
            verified = false;
            std::cout << "ERROR: software and hardware vadd do not match: "
                      << c[i] << "!=" << d[i] << " at position " << i << std::endl;
            break;
        }
    }

    if (verified) {
        std::cout
            << std::endl
            << "OCL-mapped contiguous buffer example complete successfully!"
            << std::endl
            << std::endl;
    }
    else {
        std::cout
            << std::endl
            << "OCL-mapped contiguous buffer example complete! (with errors)"
            << std::endl
            << std::endl;
    }

    std::cout << "--------------- Key execution times ---------------" << std::endl;


    q.enqueueUnmapMemObject(a_buf, a);
    q.enqueueUnmapMemObject(b_buf, b);
    q.enqueueUnmapMemObject(c_buf, c);
    q.enqueueUnmapMemObject(d_buf, d);
    q.finish();


    et.print();
}