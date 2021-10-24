#define BUFFER_SIZE 256

extern "C"
{
    void krnl_vmult(
        float *a,
        float *b,
        float *out,
        unsigned int num_elements)
    {
        float v1_local[BUFFER_SIZE];
        float v2_local[BUFFER_SIZE];
        float v3_local[BUFFER_SIZE];

        for (unsigned int i = 0; i < num_elements; i += BUFFER_SIZE)
        {

            unsigned int chunk_size = BUFFER_SIZE;
            if ((num_elements - i) < BUFFER_SIZE)
                chunk_size = num_elements - i;

        read1:
            for (unsigned int j = 0; j < chunk_size; j++)
            {
                v1_local[j] = a[i + j];
            }

        read2:
            for (unsigned int j = 0; j < chunk_size; j++)
            {
                v2_local[j] = b[i + j];
            }

        compute:
            for (unsigned int j = 0; j < chunk_size; j++)
            {
                v3_local[j] = v1_local[j] * v2_local[j];
            }

        write:
            for (unsigned int j = 0; j < chunk_size; j++)
            {
                out[i + j] = v3_local[j];
            }
        }
    }
}