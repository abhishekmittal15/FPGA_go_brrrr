#include <stdio.h>

#define M 256
#define BUFFER_SIZE 256
const unsigned int c_len = BUFFER_SIZE;
const unsigned int c_m = M;

extern "C"
{
    void krnl(
        const float *a,
        const float *b,
        const unsigned int N,
        float *result)
    {

#pragma HLS INTERFACE m_axi port = a max_read_burst_length = 32 offset = slave bundle = gmem0
#pragma HLS INTERFACE m_axi port = b max_read_burst_length = 32 offset = slave bundle = gmem1
#pragma HLS INTERFACE m_axi port = result max_write_burst_length = 32 offset = slave bundle = gmem2
#pragma HLS INTERFACE s_axilite port = a bundle = control
#pragma HLS INTERFACE s_axilite port = b bundle = control
#pragma HLS INTERFACE s_axilite port = result bundle = control
#pragma HLS INTERFACE s_axilite port = N bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

        float db_vec[BUFFER_SIZE];
        float src_vec[M];
        float sum[N];
        float max_val = 0.0;
        float record_no = 0;
    read_src:
        for (unsigned int i = 0; i < M; i++)
        {
            #pragma HLS LOOP TRIPCOUNT min=c_m max=c_m 
            src_vec[i] = b[i];
        }
    outer:
        for (unsigned int i = 0; i < M; i++)
        {
            #pragma HLS LOOP TRIPCOUNT min=M max=M 
            for (unsigned int j = 0; j < N; j += BUFFER_SIZE)
            {
                #pragma HLS LOOP TRIPCOUNT min=N/c_m max=N/c_m
                unsigned int chunk_sz = (N - j < BUFFER_SIZE) ? N - j : BUFFER_SIZE;
            read_db:
                for (unsigned int k = 0; k < chunk_sz; k++)
                {
                    #pragma HLS LOOP TRIPCOUNT min=1 max=c_m
                    db_vec[k] = a[i * N + j + k];
                }
            pipeline_sum:
                for (unsigned int k = 0; k < chunk_sz; k++)
                {
                    #pragma HLS PIPELINE
                    #pragma HLS LOOP TRIPCOUNT min=1 max=chunk_sz
                    sum[j + k] += db_vec[k] * src_vec[i];
                }
            }
        }
    max_compute:
        for (unsigned int i = 0; i < N; i++)
        {
            #pragma HLS LOOP TRIPCOUNT min=N max=N
            if (max_val < sum[i])
            {
                max_val = sum[i];
                record_no = i;
            }
        }
        result[1] = max_val;
        result[0] = record_no;
    }
}