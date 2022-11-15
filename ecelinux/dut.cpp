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
    hls::stream<fix32_t> &strm_in,
    hls::stream<fix32_t> &strm_out
)
{
  float input_l;
  input_l = strm_in.read();
  //1 = svd,
  switch ((int)input_l){
    case 1:{
    float top_left      = strm_in.read();
    float bottom_right  = strm_in.read();

    float s_temp[2][2];
    float u_temp[2][2];
    float v_temp[2][2];
    s_temp[0][0] = strm_in.read();
    s_temp[0][1] = strm_in.read();
    s_temp[1][0] = strm_in.read();
    s_temp[1][1] = strm_in.read();
    u_temp[0][0] = strm_in.read();
    u_temp[0][1] = strm_in.read();
    u_temp[1][0] = strm_in.read();
    u_temp[1][1] = strm_in.read();
    v_temp[0][0] = strm_in.read();
    v_temp[0][1] = strm_in.read();
    v_temp[1][0] = strm_in.read();
    v_temp[1][1] = strm_in.read();

    float u_row_temp[VEC_SIZ][2];
    float v_row_temp[VEC_SIZ][2];
    for(int i=0;i<VEC_SIZ;i++){
      u_row_temp[i][0] = strm_in.read();
      u_row_temp[i][1] = strm_in.read();
      v_row_temp[i][0] = strm_in.read();
      v_row_temp[i][1] = strm_in.read();
    }

    float new_j[2][2];
    float new_k[2][2];
    svd::calc_svd_update_on_diag_s_off_diag_vd
    <VEC_SIZ,VEC_SIZ,MY_CONFIG_SVD>
    (top_left, bottom_right, 
    s_temp, u_temp, v_temp,
    u_row_temp, v_row_temp,
    new_j, new_k);

    //wb to buffer
    strm_out.write(s_temp[0][0]);
    strm_out.write(s_temp[0][1]);
    strm_out.write(s_temp[1][0]);
    strm_out.write(s_temp[1][1]);
    strm_out.write(u_temp[0][0]);
    strm_out.write(u_temp[0][1]);
    strm_out.write(u_temp[1][0]);
    strm_out.write(u_temp[1][1]);
    strm_out.write(v_temp[0][0]);
    strm_out.write(v_temp[0][1]);
    strm_out.write(v_temp[1][0]);
    strm_out.write(v_temp[1][1]);

    off_row_wb_uv: for (int off_row = 0; off_row < VEC_SIZ; off_row++) {
      if (off_row == top_left || off_row == bottom_right) continue;
      strm_out.write(v_row_temp[off_row][0]);
      strm_out.write(v_row_temp[off_row][1]);
      strm_out.write(u_row_temp[off_row][0]);
      strm_out.write(u_row_temp[off_row][1]); 
    }

    strm_out.write(new_j[0][0]);
    strm_out.write(new_j[0][1]);
    strm_out.write(new_j[1][0]);
    strm_out.write(new_j[1][1]);
    
    strm_out.write(new_k[0][0]);
    strm_out.write(new_k[0][1]);
    strm_out.write(new_k[1][0]);
    strm_out.write(new_k[1][1]);
    break;
    }
    case 2:{
    float top_left      = strm_in.read();
    float bottom_right  = strm_in.read();

    float new_j[2][2];
    float new_k[2][2];

    float s_col_temp[2][VEC_SIZ];
    for(int i=0;i<VEC_SIZ;i++){
      s_col_temp[0][i] = strm_in.read();
      s_col_temp[1][i] = strm_in.read();
    }

    float s_row_temp[VEC_SIZ][2];
    for(int i=0;i<VEC_SIZ;i++){
      s_row_temp[i][0] = strm_in.read();
      s_row_temp[i][1] = strm_in.read();
    }

    new_j[0][0] = strm_in.read();
    new_j[0][1] = strm_in.read();
    new_j[1][0] = strm_in.read();
    new_j[1][1] = strm_in.read();
    
    new_k[0][0] = strm_in.read();
    new_k[0][1] = strm_in.read();
    new_k[1][0] = strm_in.read();
    new_k[1][1] = strm_in.read();

    svd::update_off_diag_s<VEC_SIZ,VEC_SIZ,MY_CONFIG_SVD>
    (top_left, bottom_right, new_j,new_k, s_col_temp,s_row_temp);
    
    //wb
    off_col_wb: for (int off_col = 0; off_col < VEC_SIZ; off_col++) {
      if (off_col == top_left || off_col == bottom_right) continue;
      strm_out.write(s_col_temp[0][off_col]);
      strm_out.write(s_col_temp[1][off_col]);
    }
    
    
    off_row_wb_s: for (int off_row = 0; off_row < VEC_SIZ; off_row++) {
      if (off_row == top_left || off_row == bottom_right) continue;
      strm_out.write(s_row_temp[off_row][0]);
      strm_out.write(s_row_temp[off_row][1]);
    }
    break;
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

