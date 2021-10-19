#define BUFFER_SIZE 256

extern "C"{
    void krnl_vadd(
        int *in1,
        int *in2,
        int *out,
        unsigned int num_elements
    ){
        int v1_local[BUFFER_SIZE],v2_local[BUFFER_SIZE],out_local[BUFFER_SIZE];

        for (unsigned int i = 0; i < num_elements;i+=BUFFER_SIZE){

            unsigned int chunk_size = BUFFER_SIZE;
            if(i+BUFFER_SIZE>num_elements)
                chunk_size=num_elements-i;
            read1:
                for (unsigned int j = 0; j < chunk_size;j++)
                    v1_local[j] = in1[i + j];
            read2:
                for (unsigned int j = 0; j < chunk_size;j+++)
                    v2_local[j] = in2[i + j];

            compute:
                for (unsigned int j = 0; j < chunk_size;j++)
                    out_local[j] = v1_local[j] + v2_local[j];
            
            write:
                for (unsigned int j = 0; j < chunk_size;j++)
                    out[i + j] = out_local[j];
        }
    }
}