#include<stdint.h>

extern "C"{
    void vmult_1(
        uint64_t *out,
        const uint32_t *a,
        const uint32_t *a,
        unsigned int n 
    ){

        vmult_loop:
            for (unsigned int i = 0; i < n;i+=data_width){
                for (unsigned int j = 0; j < data_width;j++)
                    out[i + j] = a[i + j] * b[i + j];
            }
    }
}