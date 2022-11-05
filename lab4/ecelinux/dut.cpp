//==========================================================================
// bnn.cpp
//==========================================================================
// @brief: A convolution kernel for CNN on digit recognition

#include "layer.h"
#include "model.h"
#include "bnn.h"
#include <fstream>
#include <iostream>
#include <iomanip>
#include "hls_linear_algebra.h"


using namespace std;

#define IMG_NUM 100
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
  bit input[MAX_FMAP];
  bit32_t input_l;
  bit32_t output;

  //read one test image into digit
  for (int i = 0; i < I_WIDTH1 * I_WIDTH1 / BUS_WIDTH; i++) {
     input_l = strm_in.read();
     for (int j = 0; j < BUS_WIDTH; j++) {
       input[i*BUS_WIDTH+j] = input_l(j,j);
     }
  }
  //call bnn
  pca = PCA(input,output,tsf_mat,VEC_SIZ,IMG_NUM,10);
  pca.normalize();
  pca.apply_svd();
  pca.rank();
  pca.back_pjt();
 
  // write out the result
  strm_out.write(output);
}


