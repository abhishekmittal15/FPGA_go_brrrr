#include<iostream>
#include<vector>
#include "xcl2.hpp"

using std::cout;
using std::endl;

int main(int argc,char **argv){
    
    std::vector<cl::Device> devices=xcl::get_xil_devices();
    for (unsigned int i = 0; i < devices.size();i++){
        device = devices[i];
        cout << "Device Name : " << device.getInfo<CL_DEVICE_NAME>() << endl;
    }
    return EXIT_SUCCESS;
}