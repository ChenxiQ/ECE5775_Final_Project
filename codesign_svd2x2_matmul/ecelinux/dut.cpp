//==========================================================================
// dut.cpp
//==========================================================================
// @brief: FPGA entrance

#include "pca.h"
#include <fstream>
#include <iostream>
#include <iomanip>
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

    case 2:{
    svd::update_off_diag_r<VEC_SIZ,VEC_SIZ,MY_CONFIG_SVD>(strm_in, strm_out);
    break;
    }
    
    case 3:{
    svd::update_off_diag_c<VEC_SIZ,VEC_SIZ,MY_CONFIG_SVD>(strm_in, strm_out);
    break;
    }

    // Calculate covairance matrix multiplication
    case 4:{ 
      matmul(strm_in, strm_out);
      break;
    }

    // Back projection
    case 5:{
      backproj(strm_in, strm_out);
    }

    default:
    break;
  }
}

void matmul(hls::stream<flt32_t> &strm_in, hls::stream<flt32_t> &strm_out) {
  float result = 0;
  float A[IMG_NUM];

  LOOP_ROW:
  for (int i = 0; i < VEC_SIZ; i++) {
    LOOP_COL:
    for (int j = 0; j < VEC_SIZ; j++) {
      // calculate A[j] dot B[j]
      LOOP_DOT_PROD:
      for (int k = 0; k < IMG_NUM; k++) {
        if (j == 0){
          A[k] = strm_in.read();
        }
        if (k == 0)
          result = A[k] * strm_in.read();
        else
          result += A[k] * strm_in.read();
        // write back result XXT[i][j]
        if (k == IMG_NUM-1)  strm_out.write(result);
      }
    }
  }
}

void backproj(hls::stream<flt32_t> &strm_in, hls::stream<flt32_t> &strm_out) {
  float result = 0;
  float A[VEC_SIZ];

  LOOP_ROW:
  for (int i = 0; i < K; i++) {
    LOOP_COL:
    for (int j = 0; j < IMG_NUM; j++) {
      // calculate A[j] dot B[j]
      LOOP_DOT_PROD:
      for (int k = 0; k < VEC_SIZ; k++) {
        if (j == 0) {
          A[k] = strm_in.read();
        }
        if (k == 0) {
          result = 0;
        }
        result += A[k] * strm_in.read();
        // write back result XXT[i][j]
        if (k == VEC_SIZ-1)  strm_out.write(result);
      }
    }
  }
}
