//==========================================================================
// layer.cpp
//==========================================================================
// @brief: TODO

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
//#include <cmath>
#include <iostream>
//#include <algorithm>
// #include "hls_linear_algebra.h"
#include "pca.h"
#include <fstream>
using namespace std;


PCA::PCA(int VEC_SIZ, int VEC_NUM, int ka, int fdw_, int fdr_){
  vec_size  = VEC_SIZ;
  k         = ka; 
  vec_num   = VEC_NUM;
  fdw    = fdw_;
  fdr    = fdr_;

  for(int i=0; i<VEC_SIZ; i++)
    sorted_idx[i] = i;
  
}

PCA::~PCA(){
}

void PCA::normalize(fix32_t X[VEC_SIZ][IMG_NUM],fix32_t mean[VEC_SIZ]){
  
  // std::ofstream fx("data/x.dat", ios_base::out);
  // for(int i=0;i<VEC_SIZ;i++){
  //   for(int j=0; j<IMG_NUM;j++){
  //     fx << X[i][j] << "\t";
  //   }
  //   fx <<endl;
  // }
  // fx.close();
  
  
  //center x so that each x has a zero mean
  for(int j = 0; j < vec_size; j++){
    fix32_t sum = 0;
    for(int i = 0; i < vec_num; i++){
      sum += X[j][i];
    }
    mean[j] = sum/(fix32_t)vec_num;
    for(int i = 0; i < vec_num; i++){
      X[j][i] -= mean[j];
    }
  }
  
  
  std::ofstream fn("data/mean.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    fn << mean[i] << endl;
  }
  fn.close();

  // std::ofstream fmean("data/xn.dat", ios_base::out);
  // for(int i=0;i<VEC_SIZ;i++){
  //   fmean << mean[i] << "\t";
  // }
  // fmean.close();
  
}

void PCA::cov(fix32_t X[VEC_SIZ][IMG_NUM], fix32_t XXT[VEC_SIZ][VEC_SIZ]){
  float input;
  float output;
  int nbytes;
  fix32_t XT[IMG_NUM][VEC_SIZ];
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0;j<IMG_NUM;j++){
      XT[j][i] = X[i][j];
    }
  }

  input = 4;
  nbytes = write (fdw, (void*)&(input), sizeof(input));
  //std::cout<<nbytes<<std::endl;

  for (int i = 0; i < VEC_SIZ; i++) {
    /*
    for (int m = 0; m < 100; m++) {
      pca_in->write(X[i][m]);
    }*/
    for (int j = 0; j < VEC_SIZ; j++) {
      for (int n = 0; n < IMG_NUM; n++) {
        if (j == 0){
          input = X[i][n];
          nbytes = write (fdw, (void*)&(input), sizeof(input));
          //std::cout<<nbytes<<std::endl;
        }
        input = XT[n][j];
        nbytes = write (fdw, (void*)&(input), sizeof(input));
        //std::cout<<nbytes<<std::endl;
      }
    }
  }

  //dut(*pca_in, *pca_out);

  for (int i = 0; i < VEC_SIZ; i++) {
    for (int j = 0; j < VEC_SIZ; j++) {
      nbytes = read (fdr, (void*)&output, sizeof(output));
      //std::cout<<nbytes<<std::endl;
      XXT[i][j] = output/(IMG_NUM-1);
    }
  }

  // hls::matrix_multiply<hls::NoTranspose,hls::NoTranspose,VEC_SIZ,
  // IMG_NUM,IMG_NUM,VEC_SIZ,VEC_SIZ,VEC_SIZ,fix32_t,fix32_t>(X,XT,XXT);


  // for(int i=0;i<VEC_SIZ;i++){
  //   for(int j=0; j<VEC_SIZ;j++){
  //     XXT[i][j] = XXT[i][j]/(IMG_NUM-1);
  //   }
  // }

  
  std::ofstream fxxt("data/xxt.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0; j<VEC_SIZ;j++){
      fxxt << XXT[i][j] << "\t";
    }
    fxxt <<endl;
  }
  fxxt.close();
  

}

void PCA::apply_svd(fix32_t XXT[VEC_SIZ][VEC_SIZ], fix32_t S[VEC_SIZ][VEC_SIZ],fix32_t U[VEC_SIZ][VEC_SIZ],fix32_t V[VEC_SIZ][VEC_SIZ]){
  svd::svd_top<VEC_SIZ,VEC_SIZ,MY_CONFIG_SVD,fix32_t,fix32_t>(XXT,S,U,V,fdw, fdr);
  //hls::svd<VEC_SIZ,VEC_SIZ,fix32_t,fix32_t>(XXT,S,U,V);
  
  std::ofstream fs("data/s.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0; j<VEC_SIZ;j++){
      fs << S[i][j] << "\t";
    }
    fs <<endl;
  }
  fs.close();
  
  // std::ofstream fu("data/u.dat", ios_base::out);
  // for(int i=0;i<VEC_SIZ;i++){
  //   for(int j=0; j<VEC_SIZ;j++){
  //     fu << U[i][j] << "\t";
  //   }
  //   fu <<endl;
  // }
  // fu.close();

  // std::ofstream fv("data/v.dat", ios_base::out);
  // for(int i=0;i<VEC_SIZ;i++){
  //   for(int j=0; j<VEC_SIZ;j++){
  //     fv << V[i][j] << "\t";
  //   }
  //   fv <<endl;
  // }
  // fv.close();
  
}

void PCA::rank(fix32_t tsf_mat[K][VEC_SIZ], fix32_t S[VEC_SIZ][VEC_SIZ], fix32_t U[VEC_SIZ][VEC_SIZ]){

  /*
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0;j<VEC_SIZ;j++){
      S[i][j] = (float)(i+j);
    }
  }
  */
  this->find_max(S);
  /*
  std::ofstream f("data/test.dat", ios_base::out);
  for(int i=0;i<k;i++){
    f<<sorted_idx[i]<<endl;
  }
  for(int i=0;i<k;i++){
    f<<S[sorted_idx[i]][sorted_idx[i]]<<endl;
  }
  f.close();
  */
  //cout<<"max"<<endl;
  for (int i = 0; i < k; i++) {
    for (int j = 0; j < vec_size; j++) {
      tsf_mat[i][j] = U[j][sorted_idx[i]];
    }
  }
  /*
  std::ofstream ftsf("data/tsf.dat", ios_base::out);
  for(int i = 0; i < K; i++){
    for(int j = 0; j < VEC_SIZ; j++){
      ftsf << tsf_mat[i][j] << "\t";
    }
    ftsf << endl;
  }
  ftsf.close();*/
}

void PCA::back_pjt(fix32_t tsf_mat[K][VEC_SIZ], fix32_t X[VEC_SIZ][IMG_NUM], fix32_t Y[K][IMG_NUM]){
  float input,output;

  input = 5;
  write (fdw, (void*)&(input), sizeof(input));
  for (int i = 0; i < K; i++) {
    /*
    for (int m = 0; m < 784; m++) {
      pca_in->write(tsf_mat[i][m]);
    }*/
    for (int j = 0; j < IMG_NUM; j++) {
      for (int n = 0; n < VEC_SIZ; n++) {
        if (j == 0){
          input = tsf_mat[i][n];
          write (fdw, (void*)&(input), sizeof(input));
        }
        input = X[n][j];
        write (fdw, (void*)&(input), sizeof(input));
      }
    }
  }

  //dut(*pca_in, *pca_out);

  for (int i = 0; i < K; i++) {
    for (int j = 0; j < IMG_NUM; j++) {
      read (fdr, (void*)&output, sizeof(output));
      Y[i][j] = output;
    }
  }
  
  // hls::matrix_multiply_top<hls::NoTranspose,hls::NoTranspose,
  // K,VEC_SIZ,VEC_SIZ,IMG_NUM,K,IMG_NUM,MY_CONFIG_MULT,fix32_t,fix32_t>(tsf_mat,X,Y);
  //hls::matrix_multiply<hls::NoTranspose,hls::NoTranspose,K,
  //VEC_SIZ,VEC_SIZ,IMG_NUM,K,IMG_NUM,fix32_t,fix32_t>(tsf_mat,X,Y);
}

/*
void PCA::find_max(fix32_t S[VEC_SIZ][VEC_SIZ]){
  while(true){
    bool swap = false;
    for(int i = 0; i < VEC_SIZ-1; i++){
      if(S[sorted_idx[i]][sorted_idx[i]]<S[sorted_idx[i+1]][sorted_idx[i+1]]){
        int temp = sorted_idx[i];
        sorted_idx[i] = sorted_idx[i+1];
        sorted_idx[i+1] = temp;
        swap = true;
      }
    }
    if(!swap) break;
  }
}
*/

// A utility function to swap two elements
void PCA::swap(int* a, int* b) {
  int t = *a;
  *a = *b;
  *b = t;
}

int PCA::partition(int arr[], int l, int h, fix32_t S[VEC_SIZ][VEC_SIZ]) {
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
void PCA::quickSort(int arr[], int l, int h, fix32_t S[VEC_SIZ][VEC_SIZ]) {
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

void PCA::find_max(fix32_t S[VEC_SIZ][VEC_SIZ]) {
  PCA::quickSort(sorted_idx, 0, VEC_SIZ-1, S);
}