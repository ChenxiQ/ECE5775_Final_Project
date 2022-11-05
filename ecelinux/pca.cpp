//==========================================================================
// layer.cpp
//==========================================================================
// @brief: TODO

#include <cmath>
#include <iostream>
#include <algorithm>
#include "hls_linear_algebra.h"

#include "pca.h"

using namespace std;

PCA::PCA(X[IMG_NUM][VEC_SIZ], fix32_t** Y, fix32_t** tsf_mat, int VEC_SIZ, int VEC_NUM, int k){
  this->X = X;
  this->Y = Y;
  this->vec_size = VEC_SIZ;
  this->k = k; 
  this->vec_num = VEC_NUM;
  this->tsf_mat = tsf_mat;

  for(int i=0; i<VEC_SIZ; i++)
    this->sorted_idx[i] = i;
}

PCA::~PCA(){
}

void PCA::apply_svd(){
  //set A = X^T
  for(int i = 0; i < this->vec_num; i++){
    for(int j = 0; j < this->vec_size; j++){
      this->A[i][j] = this->X[j][i] * hls::fxp_sqrt((fix32_t)this->vec_num);
    }
  }

  fix32_t U[IMG_NUM][IMG_NUM];
  hls::svd<IMG_NUM,VEC_SIZ,fix32_t,fix32_t>(this->A, this->S, U, V);
}

bool PCA::cmp(int a, int b){
  return self.V[a][a] > self.V[b][b];
}

void PCA::rank(){
  sort(this->sorted_idx, this->sorted_idx+this->k, this->cmp);
  for(int i=0; i<this->k; i++){
    for(int j=0; j<this->vec_size; j++){
      this->tsf_mat[i][j] = this->V[sorted_idx[i]][j];
    }
  }
}

void PCA::back_pjt(){
  hls::matrix_multiply<hls::NoTranspose,hls::NoTranspose,this->k,
  this->vec_size,this->vec_size,this->vec_num,this->k,this->vec_num,fix32_t,fix32_t>(this->tsf_mat,this->X,this->Y);
}
