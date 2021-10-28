#include<iostream>
#include "event_timer.hpp"
#include "xcl2.hpp"

using std::cout;
using std::endl;

std::vector<float> f(char *filename,unsigned int num_elements){

    EventTimer et;
    auto binaryFile=xcl::read_binary_file();
    unsigned int size_bytes = num_elements * sizeof(int);
    cl::Program::Binaries bins{{binaryFile.data(),binaryFile.size()}};
    cl::Device device;
    cl::Context context;
    cl::CommandQueue q;
    cl::Program program;
    cl::Kernel kernel;
    cl::Event event;
    cl_int err;

    et.add("Init");
    std::vector<cl::Device> devices=xcl::get_xil_devices;
    device = devices[0];
    context=cl::Context(device,NULL,NULL,NULL,&err);
    q=cl::CommandQueue(context,device,CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err);
    program=cl::Program(context,{device},bins,NULL,&err);
    kernel = cl::Kernel(program, "kernel", &err);
    et.finish();

    et.add("BufAlloc");
    cl::Buffer a_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL);
    cl::Buffer b_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL);
    cl::Buffer sw_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_WRITE | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL);
    cl::Buffer hw_buf(context, static_cast<cl_mem_flags>(CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, NULL);
    et.finish();

    et.add("SetArg");
    kernel.setArg(0,a_buf);
    kernel.setArg(1, b_buf);
    kernel.setArg(2, hw_buf);
    kernel.setArg(3, num_elements);
    et.finish();

    et.add("Map");
    int *a  = (int*)(q.enqueueMapBuffer(a_buf,CL_TRUE,CL_MAP_READ,0,&err));
    int *b  = (int*)(q.enqueueMapBuffer(b_buf,CL_TRUE,CL_MAP_READ,0,&err));
    int *sw = (int *)(q.enqueueMapBuffer(sw_buf, CL_TRUE, CL_MAP_READ, 0, &err));
    int *hw = (int *)(q.enqueueMapBuffer(hw_buf, CL_TRUE, CL_MAP_READ, 0, &err));
    et.finish();

    et.add("Populate");
    init(a, b, sw, hw, num_elements);
    et.finish();

    et.add("Host");
    host(a, b, sw, num_elements);
    et.finish();

    q.enqueueMigrateMemObjects({a_buf, b_buf}, 0, NULL, &event);
    et.add("H2f");
    clWaitForEvent(1, (const cl::Event *)&event);
    et.finish();

    q.enqueueTask(kernel, NULL, &event);
    et.add("Kernel");
    clWaitForEvent(1, (const cl::Event *)&event);
    et.finish();

    q.enqueueMigrateMemObject({outbuf}, CL_MEM_HOST_SIDE, NULL, &event);
    et.add("F2h");
    clWaitForEvent(1, (const cl::Event *)&event);
    et.finish();

    cout << "----------------------------------------------" << endl;
    cout << "For " << n << " elements" << endl;
    et.print();
    cout << "----------------------------------------------" << endl;

    return et.times;
}

int main(int argc,char **argv){

    char *filename = argv[1];
    unsigned int n = (int)(1e5);
    for (unsigned int i = 0; i < 10;i++){
        std::vector<float> time_n=f(filename, n);
        times.push_back(time_n);
        n += (int)(1e5);
    }
    cout << "[" << endl;
    for (int i = 0; i < 10;i++){
        cout << "[";
        for (int j = 0; j < times[i].size();j++){
            cout << times[i][j] << ",";
        }
        cout << "]," << endl;
    }
    cout << "]" << endl;
}