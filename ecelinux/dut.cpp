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
    hls::stream<fix32_t> &strm_in,
    hls::stream<fix32_t> &strm_out
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


  /*
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
  */

}

void matmul(hls::stream<fix32_t> &strm_in, hls::stream<fix32_t> &strm_out) {
  float result = 0;
  float A[IMG_NUM];

  LOOP_ROW:
  for (int i = 0; i < VEC_SIZ; i++) {
    // store A[i]
    /*
    LOOP_ST_A:
    for (int m = 0; m < 100; m++) {
      A[m] = strm_in.read();
    }*/
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
  // // Store a
  // for (int i = 0; i < 100; i++ ) {

  // }

  // for (int input_num = 0; input_num < 100; input_num++) {
  //   a[] = strm_in.read();
  //   b = strm_in.read();
  //   #pragma HLS unroll
  //   buffer += a * b;
  // }
  // strm_out.write(buffer);
}

void backproj(hls::stream<fix32_t> &strm_in, hls::stream<fix32_t> &strm_out) {
  float result = 0;
  float A[VEC_SIZ];

  LOOP_ROW:
  for (int i = 0; i < K; i++) {
    // store A[i]
    /*
    LOOP_ST_A:
    for (int m = 0; m < 784; m++) {
      A[m] = strm_in.read();
    }*/
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
