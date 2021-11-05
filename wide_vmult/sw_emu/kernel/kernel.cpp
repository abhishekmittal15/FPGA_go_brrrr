#include<hls_vector.h>

typedef hls::vector<float, 16> float_16;

#define BUFFER_SIZE 64
const unsigned int read_burst = BUFFER_SIZE;

extern "C"{
    void krnl1(
        const float_16 *a,
        const float_16 *b,
        float_16* c,
        unsigned int num_elements 
    ){
        float_16 v1_local[BUFFER_SIZE];
        float_16 v2_local[BUFFER_SIZE];
        float_16 v3_local[BUFFER_SIZE];
        unsigned int loops = num_elements / 16;
        outer:
            for (unsigned int i = 0; i < loops;i+=BUFFER_SIZE){
                read:
                    for (unsigned int j = 0; j < BUFFER_SIZE;j++){
                        v1_local[j]=a[i+j];
                        v2_local[j] = b[i + j];
                    }
                compute:
                    for (unsigned int j = 0; j < BUFFER_SIZE;j++){
                        v3_local[i + j] = v1_local[j] * v2_local[j];
                    }
                write:
                    for (unsigned int j = 0; j < BUFFER_SIZE;j++){
                        c[i + j] = v3_local[j];
                    }
            }
    }
}