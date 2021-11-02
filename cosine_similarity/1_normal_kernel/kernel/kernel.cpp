#include<stdint.h>

#define M 256
#define BUFFER_SIZE 16

extern "C"{
    void krnl(
        const uint32_t* a,
        const uint32_t* b,
        uint32_t* result,
        unsigned int N
    ){

        database:
        for (unsigned int i = 0; i < N;i++){
#pragma HLS loop_tripcount min=N max=N
            // uint32_t sum = 0;
            single:
            for (unsigned int j = 0;j<M;j+=BUFFER_SIZE){
#pragma HLS loop_tripcount min = 16 max = 16
                buffer:
                for (unsigned int k = 0; k < BUFFER_SIZE;k++){
#pragma HLS loop_tripcount min = 16 max = 16
                    result[i * M + j + k] = a[i * M + j + k] * b[j + k];
                }
            }
        }   
    }
}