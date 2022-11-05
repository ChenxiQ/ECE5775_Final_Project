//===========================================================================
// pca.h
//===========================================================================
// @brief: TODO

#ifndef PCA_H
#define PCA_H

#include "typedefs.h"

#define IMG_NUM 200
#define IMG_H 28
#define IMG_W 28
#define K 10
static const int VEC_SIZ = IMG_H * IMG_W; 

class PCA {
  public:
  fix32_t X[IMG_NUM][VEC_SIZ];
  fix32_t Y[IMG_NUM][K];
  fix32_t V[VEC_SIZ][VEC_SIZ];
  fix32_t S[IMG_NUM][VEC_SIZ];
  fix32_t tsf_mat[K][VEC_SIZ];
  int vec_size;
  int vec_num;
  int k;

  PCA(fix32_t** X, fix32_t** Y, fix32_t** tsf_mat, int VEC_SIZ, int VEC_NUM, int k);
  ~PCA();

  void normalize();
  void apply_svd();
  bool cmp(int a, int b);
  void rank();
  void back_pjt();

  private:
  fix32_t A[IMG_NUM][VEC_SIZ];
  int* sorted_idx[VEC_SIZ];
};

#endif
