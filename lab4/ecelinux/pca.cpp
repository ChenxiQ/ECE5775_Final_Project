//==========================================================================
// layer.cpp
//==========================================================================
// @brief: this file contains all layers

#include "layer.h"
#include "model.h"
#include <cmath>
#include <iostream>
#include <algorithm>
#include "hls_linear_algebra.h"

using namespace std;

class PCA {
  public:
  fix32_t** X;
  fix32_t** A;
  fix32_t** V;
  fix32_t** S;
  fix32_t** tsf_mat;
  int vec_size;
  int vec_num;
  int k;


  PCA(fix32_t** X, fix32_t** Y, fix32_t** tsf_mat, int VEC_SIZ, int VEC_NUM, int k){
    this->X = X;
    this->Y = Y;
    this->vec_size = VEC_SIZ;
    this->k = k; 
    this->vec_num = VEC_NUM
    this->tsf_mat = tsf_mat;

    this->A = new fix32_t*[VEC_NUM];
    for(int i=0; i<VEC_NUM; i++)
      this->A[i] = new fix32_t[VEC_SIZ];
    
    this->V = new fix32_t*[VEC_SIZ];
    for(int i=0; i<VEC_SIZ; i++)
      this->V[i] = new fix32_t[VEC_SIZ];

    this->S = new fix32_t*[VEC_NUM];
    for(int i=0; i<VEC_SIZ; i++)
      this->S[i] = new fix32_t[VEC_SIZ];

    this->sorted_idx = new int[k];
    for(int i=0; i<VEC_SIZ; i++)
      this->sorted_idx[i] = i;
  }

  ~PCA(){
    VEC_NUM = this->vec_num;
    VEC_SIZ = this->vec_size;
    for(int i=0; i<VEC_NUM; i++)
      this->A[i] = delete fix32_t[VEC_SIZ];
    this->A = delete fix32_t*[VEC_NUM];
    
    for(int i=0; i<VEC_SIZ; i++)
      this->V[i] = delete fix32_t[VEC_SIZ];
    this->V = delete fix32_t*[VEC_SIZ];

    for(int i=0; i<VEC_SIZ; i++)
      this->S[i] = delete fix32_t[VEC_SIZ];
    this->S = delete fix32_t*[VEC_NUM];

    for(int i=0; i<VEC_SIZ; i++)
      this->sorted_idx[i] = i;
    this->sorted_idx = delete int[k];
  }

  void normalize(){
    //center x so that each x has a zero mean
    for(int i = 0; i < this->vec_num; i++){
      fix32_t sum = 0;
      for(int j = 0; j < this->vec_size; j++){
        sum += X[j][i];
      }
      fix32_t mean = sum/(fix32_t)this->vec_size;
      for(int j = 0; j < this->vec_size; j++){
        this->X[j][i] -= mean;
      }
    }
  }

  void apply_svd(){
    //set A = X^T
    for(int i = 0; i < this->vec_num; i++){
      for(int j = 0; j < this->vec_size; j++){
        this->A[i][j] = this->X[j][i] * hls::fxp_sqrt((fix32_t)this->vec_num);
      }
    }

    fix32_t** U = new fix32_t*[VEC_NUM];
    for(int i=0; i<VEC_NUM; i++)
      this->U[i] = new fix32_t[VEC_NUM];
    
    hls::svd<vec_num,vec_size,fix32_t,fix32_t>(this->A,this->S,U,this->V);

  }

  bool cmp(int a, int b){
    return self.V[a][a] > self.V[b][b];
  }

  void rank(){
    sort(this->sorted_idx, this->sorted_idx+this->k, this->cmp);
    for(int i=0; i<this->k; i++){
      for(int j=0; j<this->vec_size; j++){
        this->tsf_mat[i][j] = this->V[i][j];
      }
    }
  }

  void back_pjt(){
    hls::matrix_multiply<hls::NoTranspose,hls::NoTranspose,this->k,
    this->vec_size,this->vec_size,this->vec_num,this->k,this->vec_num,fix32_t,fix32_t>(this->tsf_mat,this->X,this->Y);
  }

  private:
  fix32_t **A;
  int* sorted_idx;
};
