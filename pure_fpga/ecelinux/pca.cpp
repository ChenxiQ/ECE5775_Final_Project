//==========================================================================
// pca.cpp
//==========================================================================
// @brief: pca class implementation

#include <cmath>
#include <iostream>
#include <algorithm>
#include "hls_linear_algebra.h"
#include "pca.h"
#include <fstream>
#include "dut.h"
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
  
  std::ofstream fx("data/x.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0; j<IMG_NUM;j++){
      fx << X[i][j] << "\t";
    }
    fx <<endl;
  }
  fx.close();
  
  
  //center x so that each x has a zero mean
  pca_in->write(3);
  for(int j = 0; j < vec_size; j++){
    for(int i = 0; i < vec_num; i++){
      pca_in->write(X[j][i]);
    }
  }
  for(int j = 0; j < vec_size; j++){
    dut(*pca_in, *pca_out);
  }
  for(int j = 0; j < vec_size; j++){
    for(int i = 0; i < vec_num; i++){
      X[j][i] = pca_out->read();
    }
  }
  
  
  std::ofstream fn("data/mean.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    fn << mean[i] << endl;
  }
  fn.close();

  std::ofstream fmean("data/xn.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    fmean << mean[i] << "\t";
  }
  fmean.close();
  
}

void PCA::cov(flt32_t X[VEC_SIZ][IMG_NUM], flt32_t XXT[VEC_SIZ][VEC_SIZ]){
  flt32_t XT[IMG_NUM][VEC_SIZ];
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0;j<IMG_NUM;j++){
      XT[j][i] = X[i][j];
    }
  }
  hls::matrix_multiply<hls::NoTranspose,hls::NoTranspose,VEC_SIZ,
  IMG_NUM,IMG_NUM,VEC_SIZ,VEC_SIZ,VEC_SIZ,flt32_t,flt32_t>(X,XT,XXT);


  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0; j<VEC_SIZ;j++){
      XXT[i][j] = XXT[i][j]/(IMG_NUM-1);
    }
  }

  
  std::ofstream fxxt("data/xxt.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0; j<VEC_SIZ;j++){
      fxxt << XXT[i][j] << "\t";
    }
    fxxt <<endl;
  }
  fxxt.close();
  

}

void PCA::apply_svd(flt32_t XXT[VEC_SIZ][VEC_SIZ], flt32_t S[VEC_SIZ][VEC_SIZ],flt32_t U[VEC_SIZ][VEC_SIZ],flt32_t V[VEC_SIZ][VEC_SIZ]){
  svd::svd_top<VEC_SIZ,VEC_SIZ,MY_CONFIG_SVD,flt32_t,flt32_t>(XXT,S,U,V,*pca_in, *pca_out);
  
  std::ofstream fs("data/s.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0; j<VEC_SIZ;j++){
      fs << S[i][j] << "\t";
    }
    fs <<endl;
  }
  fs.close();
  
  std::ofstream fu("data/u.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0; j<VEC_SIZ;j++){
      fu << U[i][j] << "\t";
    }
    fu <<endl;
  }
  fu.close();

  std::ofstream fv("data/v.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0; j<VEC_SIZ;j++){
      fv << V[i][j] << "\t";
    }
    fv <<endl;
  }
  fv.close();
  
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
  hls::matrix_multiply_top<hls::NoTranspose,hls::NoTranspose,
  K,VEC_SIZ,VEC_SIZ,IMG_NUM,K,IMG_NUM,MY_CONFIG_MULT,flt32_t,flt32_t>(tsf_mat,X,Y);
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
