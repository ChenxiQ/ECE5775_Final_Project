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

//----------------------------------------------------------
// Top function
//----------------------------------------------------------

void dut(
    hls::stream<bit32_t> &strm_in,
    hls::stream<fix32_t> &strm_out
)
{
  fix32_t X[VEC_SIZ][IMG_NUM];
  bit32_t input_l;
  fix32_t Y[K][IMG_NUM];
  fix32_t tsf_mat[K][VEC_SIZ];
  int counter = 0;
  // read one test image into digit
  for (int test = 0; test < IMG_NUM; test++) {
    for (int i = 0; i < 28*28/4; i++) {
      input_l = strm_in.read();
      counter++;
      //cout<<"dut "<<counter<<endl;
      for (int j = 0; j < 4; j++) {
        //X[i*4+j][test] = 0;
        //X[i*4+j][test](31,16) = input_l(j*8+7,j*8);
        X[i*4+j][test] = (float)input_l(j*8+7,j*8);
      }
    }
  }

  // call pca
  PCA pca(VEC_SIZ, IMG_NUM, K);
  fix32_t S[VEC_SIZ][VEC_SIZ];
  fix32_t U[VEC_SIZ][VEC_SIZ];
  fix32_t V[VEC_SIZ][VEC_SIZ];
  fix32_t XXT[VEC_SIZ][VEC_SIZ];
  fix32_t mean[VEC_SIZ];
  for (int i = 0; i < VEC_SIZ; i++) {
    for (int j = 0; j < VEC_SIZ; j++) {
      S[i][j] = 0;
      U[i][j] = 0;
      V[i][j] = 0;
      XXT[i][j] = 0;
    }
  }
  //cout << "norm" << endl;
  pca.normalize(X, mean);
  //cout << "cov" << endl;
  pca.cov(X, XXT);
  //cout << "svd" << endl;
  pca.apply_svd(XXT,S,U,V);
  //cout << "rank" << endl;
  pca.rank(tsf_mat, S, U);
  //cout << "back_pjt" << endl;
  pca.back_pjt(tsf_mat, X, Y);
  //cout << "transfer output" << endl;

  for (int i = 0; i < K; i++) {
    for (int j = 0; j < IMG_NUM; j++) {
      strm_out.write(Y[i][j]);
    }
  }

  for (int i = 0; i < K; i++) {
    for (int j = 0; j < VEC_SIZ; j++) {
      strm_out.write(tsf_mat[i][j]);
      //cout << tsf_mat[i][j] << '\t';
    }
    //cout << endl;
  }

  for (int i = 0; i<VEC_SIZ; i++){
    strm_out.write(mean[i]);

  }
  
  // cout<< "end" <<endl;
}
