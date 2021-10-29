// #include <hls_vector.h>

// using vint16 = hls::vector<int, 16>;

// extern "C"{
// void krnl(vint16 *a, vint16 *b, vint16 *c, int size)
// {
// #pragma HLS INTERFACE m_axi bundle = in_a port = a depth = 1024
// #pragma HLS INTERFACE m_axi bundle = in_b port = b depth = 1024
// #pragma HLS INTERFACE m_axi bundle = out_c port = c depth = 1024

//     for (int i = 0; i < (size / 16); i++)
//     {
//         c[i] = a[i] + b[i];
//     }
// }
// }

// ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Including to use ap_uint<> datatype
#include <ap_int.h>
#include <stdio.h>
#include <string.h>

#define BUFFER_SIZE 64
#define DATAWIDTH 512
#define VECTOR_SIZE (DATAWIDTH / 32) // vector size is 16 (512/32 = 16)
typedef ap_uint<DATAWIDTH> uint512_dt;

const unsigned int c_chunk_sz = BUFFER_SIZE;
const unsigned int c_size = VECTOR_SIZE;

extern "C"
{
    void krnl(
        const uint512_dt *in1, // Read-Only Vector 1
        const uint512_dt *in2, // Read-Only Vector 2
        uint512_dt *out,       // Output Result
        int size               // Size in integer
    )
    {
#pragma HLS INTERFACE m_axi port = in1 max_read_burst_length = 32 offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = in2 max_read_burst_length = 32 offset = slave bundle = gmem1
#pragma HLS INTERFACE m_axi port = out max_write_burst_length = 32 offset = slave bundle = gmem2
#pragma HLS INTERFACE s_axilite port = in1 bundle = control
#pragma HLS INTERFACE s_axilite port = in2 bundle = control
#pragma HLS INTERFACE s_axilite port = out bundle = control
#pragma HLS INTERFACE s_axilite port = size bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

        uint512_dt v1_local[BUFFER_SIZE]; // Local memory to store vector1
        uint512_dt v2_local[BUFFER_SIZE];

        // Input vector size for integer vectors. However kernel is directly
        // accessing 512bit data (total 16 elements). So total number of read
        // from global memory is calculated here:
        int size_in16 = (size - 1) / VECTOR_SIZE + 1;

        // Per iteration of this loop perform BUFFER_SIZE vector addition
        for (int i = 0; i < size_in16; i += BUFFER_SIZE)
        {
//#pragma HLS PIPELINE
#pragma HLS DATAFLOW
#pragma HLS stream variable = v1_local depth = 64
#pragma HLS stream variable = v2_local depth = 64

            int chunk_size = BUFFER_SIZE;

            // boundary checks
            if ((i + BUFFER_SIZE) > size_in16)
                chunk_size = size_in16 - i;

        // burst read from both input vectors at the same time from global memory to local memory
        v1_rd:
            for (int j = 0; j < chunk_size; j++)
            {
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 64
                v1_local[j] = in1[i + j];
                v2_local[j] = in2[i + j];
            }

        // burst read second vector and perform vector addition
        v2_rd_add:
            for (int j = 0; j < chunk_size; j++)
            {
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 64
                uint512_dt tmpV1 = v1_local[j];
                uint512_dt tmpV2 = v2_local[j];
                uint512_dt tmpV3 = 0;
            vec_sum:
                for (unsigned int s = 0; s < DATAWIDTH; s += 32)
                {
#pragma HLS unroll
                    // add the 32-bit elements individually and compose the output vector
                    tmpV3(s + 31, s) = tmpV1(s + 31, s) + tmpV2(s + 31, s);
                }
                out[i + j] = tmpV3;
            }
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


