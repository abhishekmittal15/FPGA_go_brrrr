#include "event_timer.hpp"

#include <array>
#include <iostream>
#include <memory>
#include <string>
#include <omp.h>
#include <vector>

// Xilinx OpenCL and XRT includes
#include "xilinx_ocl_helper.hpp"

// #define n (1024 * 1024 * 32)
#define NUM_BUFS 10

// void init(int *a, int *b, int *c, int *d,unsigned int num_elements){
//     for (unsigned int i = 0; i < num_elements; i++){
//         a[i] = std::rand()/100;
//         b[i] = std::rand()/100;
//         c[i] = 0;
//         d[i] = 0;
//     }
// }

void init(int *a, int *b, unsigned int num_elements)
{
    for (unsigned int i = 0; i < num_elements; i++)
    {
        a[i] = std::rand() / 100;
        b[i] = std::rand() / 100;
    }
}

void vadd_sw(int *a, int *b,int *c, unsigned int num_elements)
{
    // #pragma omp parallel for
    for (unsigned int i = 0; i < num_elements; i++)
    {
        c[i] = a[i] + b[i];
    }
}

int subdivide_buffer(std::vector<cl::Buffer> &divided,
                     cl::Buffer buf_in,
                     cl_mem_flags flags,
                     int num_divisions)
{
    // Get the size of the buffer
    size_t size;
    size = buf_in.getInfo<CL_MEM_SIZE>();

    if (size / num_divisions <= 4096)
    {
        return -1;
    }

    cl_buffer_region region;

    int err;
    region.origin = 0;
    region.size = size / num_divisions;

    // Round region size up to nearest 4k for efficient burst behavior
    if (region.size % 4096 != 0)
    {
        region.size += (4096 - (region.size % 4096));
    }

    for (int i = 0; i < num_divisions; i++)
    {
        if (i == num_divisions - 1)
        {
            if ((region.origin + region.size) > size)
            {
                region.size = size - region.origin;
            }
        }
        cl::Buffer buf = buf_in.createSubBuffer(flags,
                                                CL_BUFFER_CREATE_TYPE_REGION,
                                                &region,
                                                &err);
        if (err != CL_SUCCESS)
        {
            return err;
        }
        divided.push_back(buf);
        region.origin += region.size;
    }

    return 0;
}

int enqueue_subbuf_vadd(cl::CommandQueue &q,
                        cl::Kernel &krnl,
                        cl::Event &event,
                        cl::Buffer a,
                        cl::Buffer b,
                        cl::Buffer c)
{
    // Get the size of the buffer
    cl::Event k_event, m_event;
    std::vector<cl::Event> krnl_events;

    static std::vector<cl::Event> tx_events, rx_events;

    std::vector<cl::Memory> c_vec;
    size_t size;
    size = a.getInfo<CL_MEM_SIZE>();

    std::vector<cl::Memory> in_vec;
    in_vec.push_back(a);
    in_vec.push_back(b);
    q.enqueueMigrateMemObjects(in_vec, 0, &tx_events, &m_event);
    krnl_events.push_back(m_event);
    tx_events.push_back(m_event);
    if (tx_events.size() > 1)
    {
        tx_events[0] = tx_events[1];
        tx_events.pop_back();
    }

    krnl.setArg(0, a);
    krnl.setArg(1, b);
    krnl.setArg(2, c);
    krnl.setArg(3, (int)(size / sizeof(int)));

    q.enqueueTask(krnl, &krnl_events, &k_event);
    krnl_events.push_back(k_event);
    if (rx_events.size() == 1)
    {
        krnl_events.push_back(rx_events[0]);
        rx_events.pop_back();
    }
    c_vec.push_back(c);
    q.enqueueMigrateMemObjects(c_vec,
                               CL_MIGRATE_MEM_OBJECT_HOST,
                               &krnl_events,
                               &event);
    rx_events.push_back(event);

    return 0;
}

std::vector<float> f(char* filename,int num_elements){
    EventTimer et;

    // const unsigned int NUM_BUFS = std::stoi(argv[1]);
    std::string file(filename);

    std::cout << "-- Example 5: Pipelining Kernel Execution for "<<num_elements<<" elements -- and "<<NUM_BUFS<<" buffers " << std::endl
              << std::endl;

    // Initialize the runtime (including a command queue) and load the
    // FPGA image
    std::cout << "Loading alveo_examples.xclbin to program the Alveo board" << std::endl
              << std::endl;
    et.add("OpenCL Initialization");

    // This application will use the first Xilinx device found in the system
    xilinx::example_utils::XilinxOclHelper xocl;
    xocl.initialize(file);

    cl::CommandQueue q = xocl.get_command_queue();
    cl::Kernel krnl = xocl.get_kernel("krnl");
    et.finish();

    /// New code for example 01
    std::cout << std::endl
              << std::endl;
    std::cout << " -- Running kernel test with XRT-allocated contiguous buffers" << std::endl;
    std::cout << "    and wide VADD (16 values/clock)" << std::endl;

    // Map our user-allocated buffers as OpenCL buffers using a shared
    // host pointer
    try
    {
        et.add("Allocate contiguous OpenCL buffers");
        cl::Buffer a_buf(xocl.get_context(),
                         static_cast<cl_mem_flags>(CL_MEM_READ_ONLY),
                         num_elements * sizeof(int),
                         NULL,
                         NULL);
        cl::Buffer b_buf(xocl.get_context(),
                         static_cast<cl_mem_flags>(CL_MEM_READ_ONLY),
                         num_elements * sizeof(int),
                         NULL,
                         NULL);
        cl::Buffer c_buf(xocl.get_context(),
                         static_cast<cl_mem_flags>(CL_MEM_READ_WRITE),
                         num_elements * sizeof(int),
                         NULL,
                         NULL);
        int *d = new int[num_elements];
        et.finish();

        // Although we'll change these later, we'll set the buffers as kernel
        // arguments prior to mapping so that XRT can resolve the physical memory
        // in which they need to be allocated
        krnl.setArg(0, a_buf);
        krnl.setArg(1, b_buf);
        krnl.setArg(2, c_buf);

        et.add("Map buffers to userspace pointers");
        int *a = (int *)q.enqueueMapBuffer(a_buf,
                                            CL_TRUE,
                                            CL_MAP_WRITE,
                                            0,
                                            num_elements * sizeof(int));
        int *b = (int *)q.enqueueMapBuffer(b_buf,
                                            CL_TRUE,
                                            CL_MAP_WRITE,
                                            0,
                                            num_elements * sizeof(int));
        int *c = (int *)q.enqueueMapBuffer(c_buf,
                                            CL_TRUE,
                                            CL_MAP_READ,
                                            0,
                                            num_elements * sizeof(int));
        et.finish();

        et.add("Populating buffer inputs");
        init(a, b, num_elements);
        et.finish();

        // For comparison, let's have the CPU calculate the result
        et.add("Software VADD run");
        vadd_sw(a, b, d, num_elements);
        et.finish();

        // Send the buffers down to the Alveo card
        et.add("Memory object migration enqueue");
        q.enqueueUnmapMemObject(a_buf, a);
        q.enqueueUnmapMemObject(b_buf, b);

        std::vector<cl::Buffer> a_bufs, b_bufs, c_bufs;
        et.add("Subdividing the buffers");
        subdivide_buffer(a_bufs, a_buf, CL_MEM_READ_ONLY, NUM_BUFS);
        subdivide_buffer(b_bufs, b_buf, CL_MEM_READ_ONLY, NUM_BUFS);
        subdivide_buffer(c_bufs, c_buf, CL_MEM_WRITE_ONLY, NUM_BUFS);
        et.finish();

        std::array<cl::Event, NUM_BUFS> kernel_events;
        // std::vector<cl::Event> kernel_events(NUM_BUFS);

        for (int i = 0; i < NUM_BUFS; i++)
        {
            // std::cout << i << " th buffer is being sent" << std::endl;
            enqueue_subbuf_vadd(q, krnl, kernel_events[i], a_bufs[i], b_bufs[i], c_bufs[i]);
        }

        et.add("Wait for kernels to complete");
        clWaitForEvents(NUM_BUFS, (const cl_event *)&kernel_events);

        et.finish();

        // Verify the results
        bool verified = true;
        for (int i = 0; i < num_elements; i++)
        {
            if (c[i] != d[i])
            {
                verified = false;
                std::cout<<" ERROR: software and hardware vadd do not match: "
                          << c[i] << "!=" << d[i] << " at position " << i << std::endl;
                exit(1);
            }
        }

        if (verified)
        {
            std::cout
                << std::endl
                << "OCL-mapped contiguous buffer example complete!"
                << std::endl
                << std::endl;
        }
        else
        {
            std::cout
                << std::endl
                << "OCL-mapped contiguous buffer example complete! (with errors)"
                << std::endl
                << std::endl;
        }

        std::cout << "--------------- Key execution times ---------------" << std::endl;

        q.enqueueUnmapMemObject(c_buf, c);
        free(d);
        q.finish();

        // cl_int clStatus;
        // clStatus = clReleaseKernel(krnl);
        // clStatus = clReleaseProgram(program);
        // clStatus = clReleaseCommandQueue(q);
        // clStatus = clReleaseContext(xocl.get_context());
        et.print();
    }
    catch (cl::Error &e)
    {
        std::cout << "ERROR: " << e.what() << std::endl;
        exit(1);
    }
    return et.times;
}

int main(int argc, char *argv[])
{

    char *filename = argv[1];
    unsigned int n=std::stoi(argv[2]);
    // unsigned int n=std::stoi(argv[1]);
    // unsigned int increment = n;
    // std::vector<std::vector<float>> times;
    // int num_loops = 1;
    // for (int i = 0; i < num_loops;i++){
    std::vector<float> timestamps=f(filename,n);
    for(int i=0;i<timestamps.size();i++)
        std::cout << timestamps[i] << ",";
    std::cout << std::endl;
    // times.push_back(timestamps);
    // n += increment;
    // }
    // std::cout << "[" << std::endl;
    // for (int i = 0; i < num_loops; i++)
    // {
    //     std::cout << "[";
    //     for (int j = 0; j < times[i].size(); j++)
    //     {
    //         std::cout << times[i][j] << ",";
    //     }
    //     std::cout << "]," << std::endl;
    // }
    // std::cout << "]" << std::endl;

    return EXIT_SUCCESS;
}