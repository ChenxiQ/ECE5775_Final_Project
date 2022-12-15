//===========================================================================
// pca.h
//===========================================================================
// @brief: pca module definition

#ifndef PCA_H
#define PCA_H

#include "typedefs.h"
#include "svd.h"

#define IMG_NUM 100
#define IMG_H 10
#define IMG_W 10
#define K 10
const int VEC_SIZ = IMG_H * IMG_W; 

class PCA {
  public:

  int vec_size;
  int vec_num;
  int k;
  hls::stream<float> *pca_in;
  hls::stream<float> *pca_out;

  //PCA(flt32_t X[VEC_SIZ][IMG_NUM], flt32_t Y[VEC_SIZ][IMG_NUM], flt32_t tsf_mat[K][VEC_SIZ], int VEC_SIZ, int VEC_NUM, int k);
  PCA(int VEC_SIZ, int VEC_NUM, int k, hls::stream<float> & pca_in_, hls::stream<float> & pca_out_);
  ~PCA();

  void normalize(flt32_t X[VEC_SIZ][IMG_NUM], flt32_t mean[VEC_SIZ]);
  void cov(flt32_t X[VEC_SIZ][IMG_NUM], flt32_t XXT[VEC_SIZ][VEC_SIZ]);
  void apply_svd(flt32_t XXT[VEC_SIZ][VEC_SIZ], flt32_t S[VEC_SIZ][VEC_SIZ],flt32_t U[VEC_SIZ][VEC_SIZ],flt32_t V[VEC_SIZ][VEC_SIZ]);
  bool cmp(int a, int b);
  void rank(flt32_t tsf_mat[K][VEC_SIZ], flt32_t S[VEC_SIZ][VEC_SIZ], flt32_t V[VEC_SIZ][VEC_SIZ]);
  void back_pjt(flt32_t tsf_mat[K][VEC_SIZ], flt32_t X[VEC_SIZ][IMG_NUM], flt32_t Y[K][IMG_NUM]);

  private:
  //flt32_t A[IMG_NUM][VEC_SIZ];
  int sorted_idx[VEC_SIZ];
  void find_max(flt32_t S[VEC_SIZ][VEC_SIZ]);
  void swap(int* a, int* b);
  int partition(int arr[], int l, int h, flt32_t S[VEC_SIZ][VEC_SIZ]);
  void quickSort(int arr[], int l, int h, flt32_t S[VEC_SIZ][VEC_SIZ]);
};

struct MY_CONFIG_SVD : svd::svd_traits<VEC_SIZ,VEC_SIZ,flt32_t,flt32_t>{
 static const int NUM_SWEEPS = 6;
 static const int DIAG_II = 100;
 static const int OFF_DIAG_II = 100;
 static const int ARCH = 0;
};


#endif
