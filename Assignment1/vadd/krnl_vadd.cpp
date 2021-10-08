
#define BUFFER_SIZE 256
#define DATA_SIZE 4096

const unsigned int c_len=DATA_SIZE/BUFFER_SIZE
const unsigned int c_size=BUFFER_SIZE

extern "C"{
void krnl_vadd(
    int *in1,
    int *in2,
    int *out,
    unsigned int size
){

    // Burst reading one vector to buffer and then reading buffer 
    int v1_buffer[BUFFER_SIZE];
    for (unsigned int i = 0; i < size;i+=BUFFER_SIZE){
        # pragma HLS LOOP_TRIPCOUNT min=c_len max=c_len
        unsigned int chunk_size=BUFFER_SIZE;

        if((i+BUFFER_SIZE)<size)
            chunk_size = size - i;
        
        read1:
            for (unsigned int j = 0; j < chunk_size;j++){
                #pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
                v1_buffer[j] = in1[i + j];
            }
        
        write_output:
            for (unsigned int j = 0; j < chunk_size;j++){
                #pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
                out[i + j] = in1[i + j] + v1_buffer[j];
            }
    }
}
}