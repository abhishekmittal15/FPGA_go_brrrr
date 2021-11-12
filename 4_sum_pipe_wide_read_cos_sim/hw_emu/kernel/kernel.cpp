#include <stdio.h>
#include<hls_vector.h>

#define DATAWIDTH 16
typedef hls::vector<float, DATAWIDTH> float_16;
#define M 256
#define max_n 1024
#define BUFFER_SIZE 64
const unsigned int c_max_n_wide = max_n / DATAWIDTH;
const unsigned int buf = BUFFER_SIZE;
const unsigned int c_len = BUFFER_SIZE;
const unsigned int c_m = M;
const unsigned int c_m_wide = M / DATAWIDTH;

extern "C"
{
    void krnl(
        const float_16 *a,
        const float *b,
        const unsigned int N,
        float_16 *result)
    {
        for (unsigned int i = 0; i < 10; i++)
            printf("HEYYYYYYY\n");
#pragma HLS INTERFACE m_axi port = a max_read_burst_length = 32 offset = slave bundle = gmem0
#pragma HLS INTERFACE m_axi port = b max_read_burst_length = 32 offset = slave bundle = gmem1
#pragma HLS INTERFACE m_axi port = result max_write_burst_length = 32 offset = slave bundle = gmem2
#pragma HLS INTERFACE s_axilite port = a bundle = control
#pragma HLS INTERFACE s_axilite port = b bundle = control
#pragma HLS INTERFACE s_axilite port = result bundle = control
#pragma HLS INTERFACE s_axilite port = N bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control
        const unsigned int c_n_wide = N / DATAWIDTH;
        float_16 db_vec[BUFFER_SIZE];
        float src_vec[M];
        float_16 sum[c_max_n_wide];
    read_src:
        for (unsigned int i = 0; i < M; i++)
        {
            #pragma HLS LOOP TRIPCOUNT min=c_m_wide max=c_m_wide
            src_vec[i] = b[i];
            // read_datwidth:
            // for(unsigned int j=0;j<DATAWIDTH;j++){
            //     #pragma HLS PIPELINE
            //     #pragma HLS unroll
            //     src_vec[i][j] = b[i];
            // }
        }
    outer_1:
        for (unsigned int i = 0; i < M; i++)
        {
            #pragma HLS LOOP TRIPCOUNT min=M max=M
            // printf("-----------------%d-----------------\n",i);
        outer_2:
            for (unsigned int j = 0; j < c_n_wide; j += BUFFER_SIZE)
            {
                #pragma HLS LOOP TRIPCOUNT min=1 max=c_max_n_wide
                unsigned int chunk_sz = (c_n_wide - j < BUFFER_SIZE) ? c_n_wide - j : BUFFER_SIZE;
                // printf("-----------------%d-----------------\n",j);
            read_db:
                for (unsigned int k = 0; k < chunk_sz; k++)
                {
                    // printf("-----------------%d-----------------\n", k);
#pragma HLS LOOP TRIPCOUNT min=1 max=buf
                    db_vec[k] = a[i * c_n_wide + j + k];
                }
            pipeline_sum:
                for (unsigned int k = 0; k < chunk_sz; k++)
                {
                    #pragma HLS PIPELINE
                    #pragma HLS LOOP TRIPCOUNT min=1 max=buf
                    // printf("-----------------%d-----------------\n", k);
                    pipeline_sum_parallel:
                    for(unsigned int l=0;l<DATAWIDTH;l++){
                        #pragma HLS unroll
                        #pragma HLS LOOP TRIPCOUNT min=1 max=16
                        // printf("-----------------%d-----------------\n", j+k);
                        sum[j + k][l] += db_vec[k][l] * src_vec[i];
                    }
                }
            }
        }
    write_sum:
        for (unsigned int i = 0; i < c_n_wide; i+=BUFFER_SIZE)
        {
#pragma HLS LOOP TRIPCOUNT min = 1 max = c_max_n_wide/buf
#pragma HLS PIPELINE
            unsigned int chunk_sz = (c_n_wide - i < BUFFER_SIZE) ? c_n_wide - i : BUFFER_SIZE;
            for (unsigned int j = 0; j < chunk_sz; j++){
#pragma HLS LOOP TRIPCOUNT min=1 max=buf
            //     for (unsigned int k = 0; k < DATAWIDTH; k++)
                    // printf("%d : %f\n", i * DATAWIDTH + j * DATAWIDTH + k, sum[i * DATAWIDTH + j * DATAWIDTH][k]);
            result[i+j] = sum[i+j];
            }
            // sum_write_parallel:
            // for(unsigned int j=0;j<DATAWIDTH;j++)
        }
    }
}