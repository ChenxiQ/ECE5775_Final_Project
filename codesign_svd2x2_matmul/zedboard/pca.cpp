//==========================================================================
// pca.cpp
//==========================================================================
// @brief: pca class implementation

#include <iostream>
#include "pca.h"
//#include <fstream>
using namespace std;


PCA::PCA(int VEC_SIZ, int VEC_NUM, int ka, hls::stream<float> & pca_in_, hls::stream<float> & pca_out_){
  vec_size  = VEC_SIZ;
  k         = ka; 
  vec_num   = VEC_NUM;
  pca_in    = &pca_in_;
  pca_out   = &pca_out_;

  for(int i=0; i<VEC_SIZ; i++)
    sorted_idx[i] = i;
  
}

PCA::~PCA(){
}

void PCA::normalize(flt32_t X[VEC_SIZ][IMG_NUM],flt32_t mean[VEC_SIZ]){
  
  //center x so that each x has a zero mean
  for(int j = 0; j < vec_size; j++){
    flt32_t sum = 0;
    for(int i = 0; i < vec_num; i++){
      sum += X[j][i];
    }
    mean[j] = sum/(flt32_t)vec_num;
    for(int i = 0; i < vec_num; i++){
      X[j][i] -= mean[j];
    }
  }
}

void PCA::cov(flt32_t X[VEC_SIZ][IMG_NUM], flt32_t XXT[VEC_SIZ][VEC_SIZ]){
  flt32_t XT[IMG_NUM][VEC_SIZ];
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0;j<IMG_NUM;j++){
      XT[j][i] = X[i][j];
    }
  }

  pca_in->write(4);
  for (int i = 0; i < VEC_SIZ; i++) {
    for (int j = 0; j < VEC_SIZ; j++) {
      for (int n = 0; n < IMG_NUM; n++) {
        if (j == 0)
          pca_in->write(X[i][n]);
        pca_in->write(XT[n][j]);
      }
    }
  }

  dut(*pca_in, *pca_out);

  for (int i = 0; i < VEC_SIZ; i++) {
    for (int j = 0; j < VEC_SIZ; j++) {
      XXT[i][j] = pca_out->read()/(IMG_NUM-1);
    }
  }
}

void PCA::apply_svd(flt32_t XXT[VEC_SIZ][VEC_SIZ], flt32_t S[VEC_SIZ][VEC_SIZ],flt32_t U[VEC_SIZ][VEC_SIZ],flt32_t V[VEC_SIZ][VEC_SIZ]){
  svd::svd_top<VEC_SIZ,VEC_SIZ,MY_CONFIG_SVD,flt32_t,flt32_t>(XXT,S,U,V,*pca_in, *pca_out);
}

void PCA::rank(flt32_t tsf_mat[K][VEC_SIZ], flt32_t S[VEC_SIZ][VEC_SIZ], flt32_t U[VEC_SIZ][VEC_SIZ]){

  this->find_max(S);

  for (int i = 0; i < k; i++) {
    for (int j = 0; j < vec_size; j++) {
      tsf_mat[i][j] = U[j][sorted_idx[i]];
    }
  }

}

void PCA::back_pjt(flt32_t tsf_mat[K][VEC_SIZ], flt32_t X[VEC_SIZ][IMG_NUM], flt32_t Y[K][IMG_NUM]){
  pca_in->write(5);
  for (int i = 0; i < K; i++) {

    for (int j = 0; j < IMG_NUM; j++) {
      for (int n = 0; n < VEC_SIZ; n++) {
        if (j == 0)
          pca_in->write(tsf_mat[i][n]);
        pca_in->write(X[n][j]);
      }
    }
  }

  dut(*pca_in, *pca_out);

  for (int i = 0; i < K; i++) {
    for (int j = 0; j < IMG_NUM; j++) {
      Y[i][j] = pca_out->read();
    }
  }
}


// A utility function to swap two elements
void PCA::swap(int* a, int* b) {
  int t = *a;
  *a = *b;
  *b = t;
}

int PCA::partition(int arr[], int l, int h, flt32_t S[VEC_SIZ][VEC_SIZ]) {
    int x = arr[h];
    int i = (l - 1);
 
    for (int j = l; j <= h - 1; j++) {
      if (S[arr[j]][arr[j]] > S[x][x]) {
        i++;
        swap(&arr[i], &arr[j]);
      }
    }
    swap(&arr[i + 1], &arr[h]);
    return i + 1;
}

/* A[] --> Array to be sorted,
l --> Starting index,
h --> Ending index */
void PCA::quickSort(int arr[], int l, int h, flt32_t S[VEC_SIZ][VEC_SIZ]) {
  // Create an auxiliary stack
  int stack[h - l + 1];

  // initialize top of stack
  int top = -1;

  // push initial values of l and h to stack
  stack[++top] = l;
  stack[++top] = h;

  // Keep popping from stack while is not empty
  while (top >= 0) {
    // Pop h and l
    h = stack[top--];
    l = stack[top--];

    // Set pivot element at its correct position
    // in sorted array
    int p = partition(arr, l, h, S);

    // If there are elements on left side of pivot,
    // then push left side to stack
    if (p - 1 > l) {
      stack[++top] = l;
      stack[++top] = p - 1;
    }

    // If there are elements on right side of pivot,
    // then push right side to stack
    if (p + 1 < h) {
      stack[++top] = p + 1;
      stack[++top] = h;
    }
  }
}

void PCA::find_max(flt32_t S[VEC_SIZ][VEC_SIZ]) {
  PCA::quickSort(sorted_idx, 0, VEC_SIZ-1, S);
}
