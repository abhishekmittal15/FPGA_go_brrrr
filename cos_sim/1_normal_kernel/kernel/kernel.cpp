// #include<stdint.h>

// #define M 256
// #define BUFFER_SIZE 256

// // extern "C"{
// //     void krnl(
// //         const uint32_t* a,
// //         const uint32_t* b,
// //         uint32_t* result,
// //         unsigned int N
// //     ){

// //     for(unsigned int i=0;i<BUFFER_SIZE;i++){
// // #pragma HLS LOOP_TRIPCOUNT min = 256 max = 256
// //         result[i] = a[i] + b[i];
// //     } 
// //     }
// // }

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// #include<stdint.h>

// const unsigned int M=256;
// const unsigned int BUFFER_SIZE = 128;
// const unsigned int x = M / BUFFER_SIZE;

// extern "C"{
//     void krnl(
//         const uint32_t *a,
//         const uint32_t* b,
//         uint32_t* result,
//         unsigned int N
//     ){

//         uint32_t db_vec[M];
//         db_read:
//         for(unsigned int i=0;i<M;i+=BUFFER_SIZE){
//             #pragma HLS LOOP_TRIPCOUNT min=x max=x
//             for(unsigned int j=0;j<BUFFER_SIZE;j++){
//                 #pragma HLS LOOP_TRIPCOUNT min=BUFFER_SIZE max=BUFFER_SIZE
//                 db_vec[i + j] = a[i + j];
//             }
//         }

//         uint32_t src_vec[M];
//         src_read:
//             for (unsigned int i = 0; i < M; i+=BUFFER_SIZE)
//             {
// #pragma HLS LOOP_TRIPCOUNT min = x max = x
//                 for (unsigned int j = 0; j < BUFFER_SIZE; j++)
//                 {
// #pragma HLS LOOP_TRIPCOUNT min = BUFFER_SIZE max = BUFFER_SIZE
//                     src_vec[i + j] = b[i + j];
//                 }
//             }

//         compute_write:
//             for (unsigned int i = 0; i < M; i += BUFFER_SIZE)
//             {
// #pragma HLS LOOP_TRIPCOUNT min = x max = x
//             for (unsigned int j = 0; j < BUFFER_SIZE; j++)
//             {
// #pragma HLS LOOP_TRIPCOUNT min = BUFFER_SIZE max = BUFFER_SIZE
//                 result[i + j] = db_vec[i + j] * src_vec[i+j];
//             }
//         }
// }
// }

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// #include<stdint.h>

// const unsigned int M=256;
// const unsigned int BUFFER_SIZE = 32;
// const unsigned int x = M / BUFFER_SIZE;

// extern "C"{
//     void krnl(
//         const uint32_t *a,
//         const uint32_t* b,
//         uint32_t* result,
//         unsigned int N
//     ){
// #pragma HLS INTERFACE mode = m_axi port = a bundle = gmem0 max_read_burst_length = BUFFER_SIZE
// #pragma HLS INTERFACE mode = m_axi port = b bundle = gmem1 max_read_burst_length = BUFFER_SIZE
// #pragma HLS INTERFACE mode = m_axi port = result bundle = gmem0 max_write_burst_length = BUFFER_SIZE

// // Setting the max burst length to buffer size for now, but will change it later 
//         for(unsigned int i=0;i<M;i+=BUFFER_SIZE){
// #pragma HLS LOOP_TRIPCOUNT min=x max=x
//             for (unsigned int j = 0; j < BUFFER_SIZE; j++)
//             {
// #pragma HLS LOOP_TRIPCOUNT min = BUFFER_SIZE max = BUFFER_SIZE
//                         result[i+j] = a[i+j] * b[i+j];
//             }
//         }
//     }
// }

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#include <stdint.h>

const unsigned int M = 256;
const unsigned int BUFFER_SIZE = 64;
const unsigned int x = M / BUFFER_SIZE;

extern "C"
{
    void krnl(
        const uint32_t *a,
        const uint32_t *b,
        uint32_t *result,
        unsigned int N)
    {
#pragma HLS INTERFACE mode = m_axi port = a bundle = gmem0 max_read_burst_length = BUFFER_SIZE
#pragma HLS INTERFACE mode = m_axi port = b bundle = gmem1 max_read_burst_length = BUFFER_SIZE
#pragma HLS INTERFACE mode = m_axi port = result bundle = gmem2 max_write_burst_length = BUFFER_SIZE

        uint32_t db_vec[M], src_vec[M];

        read:
        for (unsigned int i = 0; i < M; i += BUFFER_SIZE)
        {
#pragma HLS LOOP_TRIPCOUNT min = x max = x
            for (unsigned int j = 0; j < BUFFER_SIZE; j++)
            {
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min = BUFFER_SIZE max = BUFFER_SIZE
                db_vec[i + j] = a[i + j];
                src_vec[i + j] = b[i + j];
            }
        }

        compute_write:
            for (unsigned int i = 0; i < M;i+=BUFFER_SIZE){
#pragma HLS LOOP_TRIPCOUNT min = x max = x
                for (unsigned int j = 0;j<BUFFER_SIZE;j++)
#pragma HLS LOOP_TRIPCOUNT min = BUFFER_SIZE max = BUFFER_SIZE
                    result[i + j] = db_vec[i + j] * src_vec[i + j];
            }
    }
}