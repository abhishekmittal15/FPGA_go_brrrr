#include<stdint.h>

extern "C"{
    void vmult(
        uint64_t *out,
        const uint32_t *a,
        const uint32_t *b,
        unsigned int num_elements     
    ){
    
    vadd_loop:
        for (int x = 0; x < num_elements; ++x)
        {
#pragma HLS LOOP_TRIPCOUNT min = num_elements max = num_elements
            out[x] = a[x] * b[x];
        }
    }
}