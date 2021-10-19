#include<iostream>
#include<string>
#include "xcl2.hpp"
#include<CL/cl_ext_xilinx.h>

using std::cin;
using std::cout;
using std::endl;
int main(int argc,char *argv[]){
    #include "boiler_plate.cpp"
    string kernel_name = "krnl_vadd";

    int *a = new int[num_elements];
    int *b = new int[num_elements];
    int *sw = new int[num_elements];
    int *hw = new int[num_elements];

    init(a, b, sw, hw, num_elements);

    host_side_comp(a, b, sw, num_elements);

    OCL_CHECK(err,cl::Buffer a_buf(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes, a, &err));
    OCL_CHECK(err, cl::Buffer b_buf(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes, b, &err));
    OCL_CHECK(err, cl::Buffer hw_buf(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes, hw, &err));

    unsigned int nargs = 0;
    OCL_CHECK(err, kernel.setArgs(nargs++, a_buf));
    OCL_CHECK(err, kernel.setArgs(nargs++, b_buf));
    OCL_CHECK(err, kernel.setArgs(nargs++, hw_buf));
    OCL_CHECK(err, kernel.setArgs(nargs++, num_elements));

    std::vector<cl::Memory> inBuf,outBuf;
    inBuf.push_back(a_buf);
    inBuf.push_back(b_buf);
    outBuf.push_back(hw_buf);

    OCL_CHECK(err, q.enqueueMigrateMemObjects(inBuf, 0));
    OCL_CHECK(err, q.finish());

    OCL_CHECK(err, q.enqueueTask(kernel));
    OCL_CHECK(err, q.finish());

    OCL_CHECK(err, q.enqueueMigrateMemObjects(outBuf, CL_MIGRATE_MEM_OBJECT_HOST));
    OCL_CHECK(err, q.finish());

    for (unsigned in i = 0; i < num_elements;i++)
        if(hw[i]!=sw[i]){
            cout << a[i] << " + " << b[i] < < < " = " << hw[i] << " | " << sw[i] << endl;
            return EXIT_FAILURE;
        }

    return EXIT_SUCCESS;
}   