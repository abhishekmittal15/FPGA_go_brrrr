// parameters 
// 1. Device name 
// 2. Device Vendor 
// 3. Device Max Frequency 
// 4. Device number of compute units 
// 5. Device version 

// void print_device_info(cl_device device_id){
    
//     char queryBuffer[1024];
//     int queryInt;
//     cl_int err;

//     cl_get_device_info(device_id, CL_DEVICE_VERSION, sizeof(queryBuffer), queryBuffer, NULL);
//     cout << "The Device Version is " << queryBuffer << endl;
//     cl_get_device_info(device_id, CL_DEVICE_VERSION, sizeof(queryBuffer), queryBuffer, NULL);
//     cl_get_device_info(device_id, CL_DEVICE_VERSION, sizeof(queryBuffer), queryBuffer, NULL);
//     cl_get_device_info(device_id, CL_DEVICE_VERSION, sizeof(queryBuffer), queryBuffer, NULL);
//     cl_get_device_info(device_id, CL_DEVICE_VERSION, sizeof(queryBuffer), queryBuffer, NULL);
//     cl_get_device_info(device_id, CL_DEVICE_VERSION, sizeof(queryBuffer), queryBuffer, NULL);
// }
#include<iostream>
using namespace std;
int main(){
    char a[5] = {'a', 'b', 'c', 'd','\0'}; 
    cout << a << endl;
    printf("%s", a);
    return 0;
}