//==========================================================================
// dut.cpp
//==========================================================================
// @brief: A convolution kernel for CNN on digit recognition

#include "pca.h"
#include <fstream>
#include <iostream>
#include <iomanip>
#include "hls_linear_algebra.h"


using namespace std;

#define IMG_NUM 200
#define IMG_H 28
#define IMG_W 28
const int VEC_SIZ = IMG_H * IMG_W; 
//----------------------------------------------------------
// Top function
//----------------------------------------------------------

void dut(
    hls::stream<bit32_t> &strm_in,
    hls::stream<bit32_t> &strm_out
)
{
  fix32_t** input;
  bit32_t input_l;
  bit32_t output;

  input = new fix32_t*[IMG_NUM];
  for (int i = 0; i < IMG_NUM; i++)
    input[i] = new fix32_t[VEC_SIZ];

  // read one test image into digit
  for (int test = 0; test < IMG_NUM; test++) {
    for (int i = 0; i < 28*28/4; i++) {
      input_l = strm_in.read();
      for (int j = 0; j < 4; j++) {
        input[test][i*4+j] = 0;
        input[test][i*4+j](31,16) = input_l(j*8+7,j*8);
      }
    }
  }

  // call pca
  pca = PCA(input,output,tsf_mat,VEC_SIZ,IMG_NUM,10);
  pca.normalize();
  pca.apply_svd();
  pca.rank();
  pca.back_pjt();
 
  // write out the result
  strm_out.write(output);
}
