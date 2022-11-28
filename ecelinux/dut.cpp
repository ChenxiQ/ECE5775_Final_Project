//==========================================================================
// dut.cpp
//==========================================================================
// @brief: A convolution kernel for CNN on digit recognition

//#include "pca.h"
#include <fstream>
#include <iostream>
#include <iomanip>
#include "hls_linear_algebra.h"
#include "dut.h"

using namespace std;


//----------------------------------------------------------
// Top function
//----------------------------------------------------------

void dut(
    hls::stream<float> &strm_in,
    hls::stream<float> &strm_out
)
{
  float XXT[VEC_SIZ][VEC_SIZ];
  float S[VEC_SIZ][VEC_SIZ];
  float U[VEC_SIZ][VEC_SIZ];
  float V[VEC_SIZ][VEC_SIZ];

  for (int i=0; i<VEC_SIZ; i++){
    for (int j=0; j<VEC_SIZ; j++){
      XXT[i][j] = strm_in.read();
    }
  }

  svd::svd_alt<VEC_SIZ,VEC_SIZ,MY_CONFIG_SVD,float,float>(XXT,S,U,V);

  for (int i=0; i<VEC_SIZ; i++){
    for (int j=0; j<VEC_SIZ; j++){
      strm_out.write(S[i][j]);
    }
  }

  for (int i=0; i<VEC_SIZ; i++){
    for (int j=0; j<VEC_SIZ; j++){
      strm_out.write(U[i][j]);
    }
  }


}


