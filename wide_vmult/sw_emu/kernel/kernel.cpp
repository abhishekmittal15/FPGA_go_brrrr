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

#pragma HLS INTERFACE m_axi port = a max_read_burst_length = 32 offset = slave bundle = gmem0
#pragma HLS INTERFACE m_axi port = b max_read_burst_length = 32 offset = slave bundle = gmem1
#pragma HLS INTERFACE m_axi port = c max_write_burst_length = 32 offset = slave bundle = gmem2
#pragma HLS INTERFACE s_axilite port = a bundle = control
#pragma HLS INTERFACE s_axilite port = b bundle = control
#pragma HLS INTERFACE s_axilite port = c bundle = control
#pragma HLS INTERFACE s_axilite port = num_elements bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

        float_16 v1_local[BUFFER_SIZE];
        float_16 v2_local[BUFFER_SIZE];
        float_16 v3_local[BUFFER_SIZE];
        unsigned int loops = num_elements / 16;
        const unsigned int c_len = loops / BUFFER_SIZE;
    outer:
        for (unsigned int i = 0; i < loops; i += BUFFER_SIZE)
        {
#pragma HLS LOOP_TRIPCOUNT min=c_len max=c_len
                read:
                    for (unsigned int j = 0; j < BUFFER_SIZE;j++){
#pragma HLS LOOP_TRIPCOUNT min = read_burst max = read_burst
                        v1_local[j]=a[i+j];
                        v2_local[j] = b[i + j];
                    }
                compute:
                    for (unsigned int j = 0; j < BUFFER_SIZE;j++){
#pragma HLS LOOP_TRIPCOUNT min = read_burst max = read_burst
                        v3_local[i + j] = v1_local[j] * v2_local[j];
                    }
                write:
                    for (unsigned int j = 0; j < BUFFER_SIZE;j++){
#pragma HLS LOOP_TRIPCOUNT min = read_burst max = read_burst
                        c[i + j] = v3_local[j];
                    }
                }
    }
}