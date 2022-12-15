//===========================================================================
// dut.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef DUT
#define DUT
#include "typedefs.h"
#include <hls_stream.h>
#include "pca.h"

// Top function for synthesis
void dut (
  hls::stream<float> &strm_in,
  hls::stream<float> &strm_out
);

void matmul(hls::stream<flt32_t> &strm_in, hls::stream<flt32_t> &strm_out);
void backproj(hls::stream<flt32_t> &strm_in, hls::stream<flt32_t> &strm_out);


#endif
