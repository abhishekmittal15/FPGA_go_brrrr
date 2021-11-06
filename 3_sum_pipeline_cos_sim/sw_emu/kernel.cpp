#include<stdio.h>

#define M 256
#define BUFFER_SIZE 256
const unsigned int c_len = BUFFER_SIZE;
const unsigned int c_m = M;

extern "C"{
    void krnl(
        const float *a,
        const float *b,
        const unsigned int N,
        float *result
    ){
        float db_vec[BUFFER_SIZE];
        float src_vec[M];
        float sum[N];
        float max_val=0.0;
        float record_no = 0;
        read_src:
            for (unsigned int i = 0; i < M; i++)
            {
                src_vec[i] = b[i];
            }
        outer:
        for (unsigned int i = 0; i < M;i++){
            for (unsigned int j = 0; j < N;j+=BUFFER_SIZE){
                unsigned int chunk_sz = (N - j < BUFFER_SIZE) ? N - j : BUFFER_SIZE;
                read_db:
                    for (unsigned int k = 0; k < chunk_sz;k++){
                        db_vec[k] = a[i*N + j + k];
                    }
                pipeline_sum:
                    for (unsigned int k = 0; k < chunk_sz;k++){
                        sum[j+k] += db_vec[k] * src_vec[i];
                    }
            }
        }
        max_compute:
        for (unsigned int i = 0;i<N;i++){
            if(max_val>sum){
                max_val = sum;
                record_no = i;
            }
        }
        result[0]=max_val;
        result[1] = record_no;
    }
}