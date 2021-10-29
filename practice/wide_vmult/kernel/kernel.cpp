#include<hls_vector.h>

using float_16=hls::vector<float, 16>;

extern "C"{
    void krnl(
        const float_16 *a,
        const float_16 *b,
        float_16* out,
        unsigned int num_elements
    ){
        for (unsigned int i = 0; i < num_elements/16;i++){
                out[i] = a[i] * b[i];
        }
    }
}
