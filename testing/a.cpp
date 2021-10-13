#include<stdint.h>
#include<iostream>
using namespace std;

int main(){
    int *ptr[2];
    int a[3] = {1, 2, 3};
    int b[3] = {4, 5, 6};
    ptr[0] = a;
    ptr[1] = b;
    for (int i = 0; i < 2;i++)
        cout << ptr[i][0] << " " << ptr[i][1] << " " << ptr[i][2] << endl;
    return 0;
}