#define buffer_size 256

extern "C"{
    void krnl(
        const int *a,
        const int *b,
        int *out,
        const unsigned int num_elements
    ){
        for (unsigned int i = 0; i < num_elements;i+=buffer_size){

            unsigned int chunk_size = buffer_size;
            if((num_elements-i)<chunk_size)
                chunk_size = num_elements - i;

            compute:
                for (unsigned int j = 0; j < chunk_size;j++)
                    out[i + j] = a[i + j] + b[i + j];
        }
    }
}