#include<iostream>
#include<vector>
#include<ctime>
using namespace std;

void loop_sequential_sw(const std::vector<uint32_t> &A,
                        const std::vector<uint32_t> &B,
                        std::vector<uint64_t> &RES)
{
    int n = A.size();
    for (int i = 0; i < n; i++)
    {
        RES[i] = A[i] * (B[i]);
    }
}

int main(int argc,char **argv){

    srand(time(NULL));
    std::vector<uint32_t> a(10);
    std::vector<uint32_t> b(10);
    std::vector<uint64_t> res(10);

    for(unsigned int i=0;i<10;i++){
        a[i]=std::rand()*std::rand();
        b[i] = std::rand()*std::rand();
    }

    loop_sequential_sw(a, b, res);

    // for (unsigned int i = 0;i<10;i++)
    //     cout << a[i] << " * " << b[i] << " = " << res[i] << " | " << ((uint64_t)(a[i]) * b[i]) % 4294967295 << endl;

    cout << ((UINT32_MAX) * UINT32_MAX) << endl;
    return 0;

}