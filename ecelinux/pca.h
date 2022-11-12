//===========================================================================
// pca.h
//===========================================================================
// @brief: TODO

#ifndef PCA_H
#define PCA_H

#include "typedefs.h"
#include <fstream>

#define IMG_NUM 200
#define IMG_H 28
#define IMG_W 28
#define K 20
const int VEC_SIZ = IMG_H * IMG_W; 

class PCA {
  public:
  /*
  fix32_t X[VEC_SIZ][IMG_NUM];
  fix32_t Y[K][IMG_NUM];
  fix32_t V[VEC_SIZ][VEC_SIZ];
  fix32_t S[IMG_NUM][VEC_SIZ];
  fix32_t tsf_mat[K][VEC_SIZ];*/

  int vec_size;
  int vec_num;
  int k;

  //PCA(fix32_t X[VEC_SIZ][IMG_NUM], fix32_t Y[VEC_SIZ][IMG_NUM], fix32_t tsf_mat[K][VEC_SIZ], int VEC_SIZ, int VEC_NUM, int k);
  PCA(int VEC_SIZ, int VEC_NUM, int k);
  ~PCA();

  void normalize(fix32_t X[VEC_SIZ][IMG_NUM], fix32_t mean[VEC_SIZ]);
  void cov(fix32_t X[VEC_SIZ][IMG_NUM], fix32_t XXT[VEC_SIZ][VEC_SIZ]);
  void apply_svd(fix32_t XXT[VEC_SIZ][VEC_SIZ], fix32_t S[VEC_SIZ][VEC_SIZ],fix32_t U[VEC_SIZ][VEC_SIZ],fix32_t V[VEC_SIZ][VEC_SIZ]);
  bool cmp(int a, int b);
  void rank(fix32_t tsf_mat[K][VEC_SIZ], fix32_t S[VEC_SIZ][VEC_SIZ], fix32_t V[VEC_SIZ][VEC_SIZ]);
  void back_pjt(fix32_t tsf_mat[K][VEC_SIZ], fix32_t X[VEC_SIZ][IMG_NUM], fix32_t Y[K][IMG_NUM]);

  private:
  //fix32_t A[IMG_NUM][VEC_SIZ];
  int sorted_idx[VEC_SIZ];
  void find_max(fix32_t S[VEC_SIZ][VEC_SIZ]);
  void swap(int* a, int* b);
  int partition(int arr[], int l, int h, fix32_t S[VEC_SIZ][VEC_SIZ]);
  void quickSort(int arr[], int l, int h, fix32_t S[VEC_SIZ][VEC_SIZ]);
};

#endif
