#include<iostream>
#include<vector>
#include "event_timer.hpp"
#include "xcl2.hpp"

using std::cout;
using std::endl;

void init(int *a,int *b,int *sw,int *hw,unsigned int num_elements){

    for (unsigned int i = 0; i < num_elements;i++){
        a[i]=(std::rand()%2)*std::rand();
        b[i] = (std::rand() % 2) * std::rand();
        sw[i]=0;
        hw[i] = 0;
    }
}

void host(int *a,int *b, int *sw, unsigned int num_elements){
    for (unsigned int i = 0; i < num_elements;i++)
        sw[i] = a[i] + b[i];
}

std::vector<float> f(char *filename,unsigned int num_elements){

    EventTimer et;
    auto binaryFile=xcl::read_binary_file(filename);
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
    std::vector<cl::Device> devices=xcl::get_xil_devices();
    device = devices[0];
    context=cl::Context(device,NULL,NULL,NULL,&err);
    q=cl::CommandQueue(context,device,CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err);
    program=cl::Program(context,{device},bins,NULL,&err);
    kernel = cl::Kernel(program, "krnl", &err);
    et.finish();

    et.add("BufAlloc");
    cl::Buffer a_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, &err);
    cl::Buffer b_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, &err);
    cl::Buffer sw_buf(context, static_cast<cl_mem_flags>(CL_MEM_READ_WRITE | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, &err);
    cl::Buffer hw_buf(context, static_cast<cl_mem_flags>(CL_MEM_WRITE_ONLY | CL_MEM_ALLOC_HOST_PTR), size_bytes, NULL, &err);
    et.finish();

    et.add("SetArg");
    kernel.setArg(0,a_buf);
    kernel.setArg(1, b_buf);
    kernel.setArg(2, hw_buf);
    kernel.setArg(3, num_elements);
    et.finish();

    et.add("Map");
    int *a  = (int*)(q.enqueueMapBuffer(a_buf,CL_TRUE,CL_MAP_WRITE,0, size_bytes));
    int *b = (int *)(q.enqueueMapBuffer(b_buf, CL_TRUE, CL_MAP_WRITE, 0, size_bytes));
    int *sw = (int *)(q.enqueueMapBuffer(sw_buf, CL_TRUE, CL_MAP_READ | CL_MAP_WRITE, 0, size_bytes));
    int *hw = (int *)(q.enqueueMapBuffer(hw_buf, CL_TRUE, CL_MAP_READ, 0, size_bytes));
    et.finish();

    et.add("Populate");
    init(a, b, sw, hw, num_elements);
    et.finish();

    et.add("Host");
    host(a, b, sw, num_elements);
    et.finish();

    q.enqueueMigrateMemObjects({a_buf, b_buf}, 0, NULL, &event);
    et.add("H2f");
    clWaitForEvents(1, (const cl_event *)&event);
    et.finish();

    q.enqueueTask(kernel, NULL, &event);
    et.add("Kernel");
    clWaitForEvents(1, (const cl_event *)&event);
    et.finish();

    q.enqueueMigrateMemObjects({hw_buf}, CL_MIGRATE_MEM_OBJECT_HOST, NULL, &event);
    et.add("F2h");
    clWaitForEvents(1, (const cl_event *)&event);
    et.finish();

    cout << "----------------------------------------------" << endl;
    cout << "For " << num_elements << " elements" << endl;
    et.print();
    cout << "----------------------------------------------" << endl;

    return et.times;
}

int main(int argc,char **argv){

    char *filename = argv[1];
    std::vector<std::vector<float>> times;
    unsigned int n = (int)(1e3);
    int num_loops = 1;
    for (unsigned int i = 0; i < num_loops; i++)
    {
        std::vector<float> time_n=f(filename, n);
        times.push_back(time_n);
        n += (int)(1e5);
    }
    cout << "[" << endl;
    for (int i = 0; i < num_loops;i++){
        cout << "[";
        for (unsigned int j = 0; j < times[i].size();j++){
            cout << times[i][j] << ",";
        }
        cout << "]," << endl;
    }
    cout << "]" << endl;
}