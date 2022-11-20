//==========================================================================
// dut.cpp
//==========================================================================
// @brief: A convolution kernel for CNN on digit recognition

#include "pca.h"
#include <fstream>
#include <iostream>
#include <iomanip>
#include "hls_linear_algebra.h"
#include "svd.h"

using namespace std;

//----------------------------------------------------------
// Top function
//----------------------------------------------------------

void dut(
    hls::stream<float> &strm_in,
    hls::stream<float> &strm_out
)
{
  float XXT[VEC_SIZE][VEC_SIZE];
  float S[VEC_SIZE][VEC_SIZE];
  float U[VEC_SIZE][VEC_SIZE];
  float V[VEC_SIZE][VEC_SIZE];

  for (int i=0; i<VEC_SIZE; i++){
    for (int j=0; j<VEC_SIZE; j++){
      XXT[i][j] = strm_in.read();
    }
  }

  hls::svd<VEC_SIZ,VEC_SIZ,float,float>(XXT,S,U,V);

  for (int i=0; i<VEC_SIZE; i++){
    for (int j=0; j<VEC_SIZE; j++){
      S[i][j] = strm_out.write();
    }
  }
  for (int i=0; i<VEC_SIZE; i++){
    for (int j=0; j<VEC_SIZE; j++){
      U[i][j] = strm_out.write();
    }
  }
}

