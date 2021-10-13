#define BUFFER_SIZE 256
// Make this buffer from 1 to size 
//TRIPCOUNT identifier



/**
 * @brief      Simple Vector Addition Kernel Implementation
 *             
 *
 * @param[in]  in1   Read-Only Input Vector1
 * @param[in]  in2   Read-Only Input Vector2
 * @param[out] out_r Output Result Vector
 * @param[in]  size  Number of elements in the vectors
 */

extern "C" {
void krnl_vadd(int *in1,
               int *in2,
               int *out_r,
               unsigned int size
) {

    const unsigned int c_len = size / BUFFER_SIZE;
    const unsigned int c_size = BUFFER_SIZE;
    int v1_buffer[BUFFER_SIZE];   // Local memory to store vector1
    int v2_buffer[BUFFER_SIZE];

    //Per iteration of this loop perform BUFFER_SIZE vector addition
    for (unsigned int i = 0; i < size; i += BUFFER_SIZE) {
       #pragma HLS LOOP_TRIPCOUNT min=c_len max=c_len
        unsigned int chunk_size = BUFFER_SIZE;
        //boundary checks
        if ((i + BUFFER_SIZE) > size)
            chunk_size = size - i;

        read1: for (unsigned int j = 0; j < chunk_size; j++) {
           #pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size
            v1_buffer[j] = in1[i + j];
        }

        read2:
            for (unsigned int j = 0; j < chunk_size; j++){
                #pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
                v2_buffer[j] = in2[i + j];
            }

        //Burst reading B and calculating C and Burst writing 
        // to  Global memory
        vadd_writeC: for (unsigned int j = 0; j < chunk_size; j++) {
           #pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size
            //perform vector addition
            out_r[i+j] = v1_buffer[j] + v2_buffer[j];
        }
    }
}
}