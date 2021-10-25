#define buf_size 256

extern "C"{
    void wide_krnl(
        float* a,
        float* b,
        float* out,
        unsigned int num_elements
    ){
        for (unsigned int i = 0; i < num_elements;i++){

            unsigned int chunk_size = buf_size;
            if((num_elements-i)<chunk_size)
                chunk_size = num_elements - i;

            for (unsigned int j = 0; j < chunk_size;j++){
                out[i + j] = a[i+j] + b[i+j];
            }
        }
    }
}