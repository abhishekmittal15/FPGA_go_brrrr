// #define BUFFER_SIZE 256

// extern "C"{
//     void krnl_vadd(
//         int *in1,
//         int *in2,
//         int *out,
//         unsigned int num_elements
//     ){
//         int v1_local[BUFFER_SIZE],v2_local[BUFFER_SIZE],out_local[BUFFER_SIZE];

//         for (unsigned int i = 0; i < num_elements;i+=BUFFER_SIZE){

//             unsigned int chunk_size = BUFFER_SIZE;
            
//             if(i+BUFFER_SIZE>num_elements)
//                 chunk_size=num_elements-i;

//             read1: for (unsigned int j = 0; j < chunk_size;j++)
//                     v1_local[j] = in1[i + j];
            
//             read2: for (unsigned int j = 0; j < chunk_size;j+++)
//                     v2_local[j] = in2[i + j];

//             compute: for (unsigned int j = 0; j < chunk_size;j++)
//                     out_local[j] = v1_local[j] + v2_local[j];
            
//             write: for (unsigned int j = 0; j < chunk_size;j++)
//                     out[i + j] = out_local[j];
//         }
//     }
// }

#define BUFFER_SIZE 256
#define DATA_SIZE 4096
// TRIPCOUNT identifier
const unsigned int c_len = DATA_SIZE / BUFFER_SIZE;
const unsigned int c_size = BUFFER_SIZE;

/**
 * @brief      Simple Vector Addition Kernel Implementation
 *
 *
 * @param[in]  in1   Read-Only Input Vector1
 * @param[in]  in2   Read-Only Input Vector2
 * @param[out] out_r Output Result Vector
 * @param[in]  size  Number of elements in the vectors
 */

extern "C"
{
    void krnl_vadd(int *in1,
                   int *in2,
                   int *out_r,
                   unsigned int size)
    {

        int v1_buffer[BUFFER_SIZE]; // Local memory to store vector1

        // Per iteration of this loop perform BUFFER_SIZE vector addition
        for (unsigned int i = 0; i < size; i += BUFFER_SIZE)
        {
#pragma HLS LOOP_TRIPCOUNT min = c_len max = c_len
            unsigned int chunk_size = BUFFER_SIZE;
            // boundary checks
            if ((i + BUFFER_SIZE) > size)
                chunk_size = size - i;

        read1:
            for (unsigned int j = 0; j < chunk_size; j++)
            {
#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
                v1_buffer[j] = in1[i + j];
            }

        // Burst reading B and calculating C and Burst writing
        //  to  Global memory
        vadd_writeC:
            for (unsigned int j = 0; j < chunk_size; j++)
            {
#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
                // perform vector addition
                out_r[i + j] = v1_buffer[j] + in2[i + j];
            }
        }
    }
}