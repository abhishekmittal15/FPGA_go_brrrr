#include<hls_vector.h>

#define DATAWIDTH 16
typedef hls::vector<float, DATAWIDTH> float_16;
#define M 256
#define BUFFER_SIZE 32
const unsigned int c_m = M;
const unsigned int c_size = BUFFER_SIZE;

extern "C"{
    void krnl(
        const float_16 *a,
        const float_16 *b,
        float *result,
        unsigned int N
    ){
        float_16 db_2_vecs[BUFFER_SIZE];
        float_16 src_vec[16];
        read_src:
        for (unsigned int i = 0; i < 16;i++){
            src_vec[i] = b[i];
        }
        outer:
        for (unsigned int i = 0; i < N; i += 2)
        {
            float sum1 = 0.0, sum2 = 0.0;
#pragma HLS LOOP TRIPCOUNT min=N/2 max=N/2
        read_db:
        for (unsigned int j = 0; j < BUFFER_SIZE;j++){
#pragma HLS LOOP TRIPCOUNT min = c_size max = c_size
            db_2_vecs[j] = a[i + j];
        }      
        dot_1:
        for (unsigned int j = 0; j < BUFFER_SIZE/2;j+=DATAWIDTH){
            #pragma HLS PIPELINE 
            macc:
            for (unsigned int k = 0; k < DATAWIDTH;k++){
#pragma HLS unroll faxtor=16
                sum1 += db_2_vecs[j+k] * src[j+k];
            }
        }
        dot_2:
        for (unsigned int j = BUFFER_SIZE/2; j < BUFFER_SIZE; j += DATAWIDTH)
        {
#pragma HLS PIPELINE
            macc:
            for (unsigned int k = 0; k < DATAWIDTH; k++)
            {
#pragma HLS unroll faxtor = 16
                sum2 += db_2_vecs[j + k] * src[j + k];
            }
        }
        }
    }
}