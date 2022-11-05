//===========================================================================
// dut.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef DUT
#define DUT
#include "typedefs.h"
#include <hls_stream.h>

// Top function for synthesis
void dut (
  hls::stream<bit32_t> &strm_in,
  hls::stream<bit32_t> &strm_out
);

#endif
