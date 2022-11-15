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


#endif
