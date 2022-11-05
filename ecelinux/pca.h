//===========================================================================
// pca.h
//===========================================================================
// @brief: TODO

#ifndef PCA_H
#define PCA_H

#include "typedefs.h"

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

  PCA(fix32_t** X, fix32_t** Y, fix32_t** tsf_mat, int VEC_SIZ, int VEC_NUM, int k);
  ~PCA();

  void normalize();
  void apply_svd();
  bool cmp(int a, int b);
  void rank();
  void back_pjt();

  private:
  fix32_t **A;
  int* sorted_idx;
};

#endif
