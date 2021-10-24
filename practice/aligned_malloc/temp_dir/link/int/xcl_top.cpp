#include "libspir_types.h"
#include "hls_stream.h"
#include "xcl_top_defines.h"
#include "ap_axi_sdata.h"
#define EXPORT_PIPE_SYMBOLS 1
#include "cpu_pipes.h"
#undef EXPORT_PIPE_SYMBOLS
#include "xcl_half.h"
#include <cstddef>
#include <vector>
#include <complex>
#include <pthread.h>
using namespace std;

extern "C" {

void krnl_vmult(size_t a, size_t b, size_t out_r, unsigned int num_elements);

static pthread_mutex_t __xlnx_cl_krnl_vmult_mutex = PTHREAD_MUTEX_INITIALIZER;
void __stub____xlnx_cl_krnl_vmult(char **argv) {
  void **args = (void **)argv;
  size_t a = *((size_t*)args[0+1]);
  size_t b = *((size_t*)args[1+1]);
  size_t out_r = *((size_t*)args[2+1]);
  unsigned int num_elements = *((unsigned int*)args[3+1]);
 pthread_mutex_lock(&__xlnx_cl_krnl_vmult_mutex);
  krnl_vmult(a, b, out_r, num_elements);
  pthread_mutex_unlock(&__xlnx_cl_krnl_vmult_mutex);
}
}
