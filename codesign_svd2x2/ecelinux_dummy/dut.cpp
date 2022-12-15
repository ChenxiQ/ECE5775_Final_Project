//==========================================================================
// dut.cpp
//==========================================================================
// @brief: A convolution kernel for CNN on digit recognition

#include "pca.h"
#include <fstream>
#include <iostream>
#include <iomanip>
// #include "hls_linear_algebra.h"
#include "svd.h"
#include "dut.h"

using namespace std;

//----------------------------------------------------------
// Top function
//----------------------------------------------------------


void dut(
    hls::stream<flt32_t> &strm_in,
    hls::stream<flt32_t> &strm_out
)
{
  float input_l;
  input_l = strm_in.read();
  //1 = svd,
  switch ((int)input_l){
    case 1:{
      svd::calc_svd<VEC_SIZ,VEC_SIZ,MY_CONFIG_SVD>(strm_in, strm_out);
    break;
    }
    default:
    break;
  }
}