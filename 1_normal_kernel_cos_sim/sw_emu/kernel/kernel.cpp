
#define M 256

const unsigned int c_size = M;

extern "C"{
    void krnl(
        const float *a,
        const float *b,
        float *result,
        unsigned int N
    ){

#pragma HLS INTERFACE mode = m_axi port = a max_read_burst_length = 32 offset = slave bundle = gmem0
#pragma HLS INTERFACE mode = m_axi port = b max_read_burst_length = 32 offset = slave bundle = gmem1
#pragma HLS INTERFACE mode = s_axilite port= a
#pragma HLS INTERFACE mode = s_axilite port = b
#pragma HLS INTERFACE mode = s_axilite port = N
#pragma HLS INTERFACE mode = s_axilite port = result
#pragma HLS INTERFACE mode = s_axilite port = return

        float db_vec[M];
        unsigned int record_no = 0;
        float max_val = 0.0;
        float src_vec[M];
        read_src:
        for (unsigned int i = 0; i < M;i++)
            src_vec[i] = b[i];
        outer:
        for (unsigned int i = 0; i < N * M; i += M)
        {
            #pragma HLS LOOP TRIPCOUNT min=N max=N
            float sum = 0.0;
            read_db:for (unsigned int j = 0; j < M;j++){
                #pragma HLS LOOP TRIPCOUNT min=c_size max=c_size
                db_vec[j] = a[i + j];
            }
            macc:
            for (unsigned int j = 0; j < M;j++){
                #pragma HLS LOOP TRIPCOUNT min=c_size max=c_size
                sum += db_vec[j] * b[j];
            }
            if(sum>max_val){
                max_val = sum;
                record_no = i / M;
            }
        }
        result[0] = max_val;
        result[1] = record_no;
    }
}