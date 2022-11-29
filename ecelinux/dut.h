//===========================================================================
// dut.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef DUT
#define DUT
#include "typedefs.h"
#include <hls_stream.h>
#include "svd.h"

#define IMG_NUM 100
#define IMG_H 4
#define IMG_W 4
#define K 10
const int VEC_SIZ = IMG_H * IMG_W; 

// Top function for synthesis
void dut (
  hls::stream<float> &strm_in,
  hls::stream<float> &strm_out
);

struct MY_CONFIG_SVD : svd::svd_traits<VEC_SIZ,VEC_SIZ,fix32_t,fix32_t>{
 static const int NUM_SWEEPS = 6;
 static const int DIAG_II = 100;
 static const int OFF_DIAG_II = 100;
 static const int ARCH = 0;
};


#endif
