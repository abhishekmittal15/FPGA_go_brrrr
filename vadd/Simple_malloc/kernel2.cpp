extern "C"{
    void krnl_vadd(
        int *a,
        int *b,
        int *c,
        unsigned int num_elements
    ){
        for (unsigned int i = 0; i < num_elements;i++)
            c[i] = a[i] + b[i];
    }
}