/**
 * Copyright (C) 2019-2021 Xilinx, Inc
 *
 * Licensed under the Apache License, Version 2.0 (the "License"). You may
 * not use this file except in compliance with the License. A copy of the
 * License is located at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

/*******************************************************************************
Description:
    C Kernel Example of Matrix Multiplication to demonstrate without array
partition.
*******************************************************************************/

// Includes
#include <stdio.h>
#include <string.h>

#define MAX_N 10
#define MAX_Q 2
#define M 256

// TRIPCOUNT identifiers
const unsigned int c_n = MAX_N;
const unsigned int c_m=M;
const unsigned int c_q = MAX_Q;
// const unsigned int c_dim = MAX_SIZE;

extern "C"
{
    // Naive implementation of matrix multiplication
    // In this implementation array partition is not done
    void krnl(float *in1, float *in2, float *out_r,const unsigned int n,const unsigned int q,const unsigned int rep_count)
    {
        // Local buffers to hold input data
        float A[c_n][c_m];
        float B[c_m][c_q];
        float C[c_n][c_q];
        float temp_sum[c_q];

#pragma HLS ARRAY_PARTITION variable = B dim = 2 complete
#pragma HLS ARRAY_PARTITION variable = C dim = 2 complete
#pragma HLS ARRAY_PARTITION variable = temp_sum dim = 1 complete

        unsigned int record_no[c_q];
        float max_val[c_q];
        for (unsigned int i = 0; i <c_q;i++){
            record_no[i] = 0;
            max_val[i] = 0.0;
        }

        readA:
            for (int itr = 0, i = 0, j = 0; itr < n * M; itr++, j++)
            {
#pragma HLS LOOP_TRIPCOUNT min = c_n*c_m max = c_n*c_m
            if (j == M)
            {
                j = 0;
                i++;
            }
            A[i][j] = in1[itr];
        }
    readB:
        for (int itr = 0, i = 0, j = 0; itr < M*q; itr++, j++)
        {
#pragma HLS LOOP_TRIPCOUNT min = c_m *c_q max = c_m * c_q
            if (j == q)
            {
                j = 0;
                i++;
            }
            B[i][j] = in2[itr];
        }

    count_loop:
        for (int i = 0; i < rep_count; i++)
        {
        nopart1:
            for (int row = 0; row < n; row++)
            {
#pragma HLS LOOP_TRIPCOUNT min = c_n max = c_n
            nopart2:
                for (int col = 0; col < c_m; col++)
                {
#pragma HLS LOOP_TRIPCOUNT min = c_m max = c_m
                nopart3:
                    for (int j = 0; j < c_q; j++)
                    {
#pragma HLS LOOP_TRIPCOUNT min = c_q max = c_q
                        float result = (col == 0) ? 0.0 : temp_sum[j];
                        result += A[row][col] * B[col][j];
                        temp_sum[j] = result;
                        if (col == c_m - 1)
                            C[row][j] = result;
                    }
                }
            }
        }

    max_compute:
        for(unsigned int i=0;i<c_n;i++){
            for(unsigned int j=0;j<c_q;j++){
                if(max_val[j]<C[i][j]){
                    max_val[j]=C[i][j];
                    record_no[j] = i;
                }
            }
        }
    write:
        for(unsigned int i=0;i<c_q;i++){
            out_r[i*2]=max_val[i];
            out_r[i*2 + 1] = record_no[i];
        }
    }
}