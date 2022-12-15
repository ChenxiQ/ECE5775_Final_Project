//=========================================================================
// pca_test.cpp
//=========================================================================
// @brief: entrance for PCA image compression

#include <iostream>
#include <fstream>
#include "pca.h"
#include "timer.h"
#include "typedefs.h"
#include <stdint.h>

using namespace std;

//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------

void read_test_images(uint8_t test_images[IMG_NUM][VEC_SIZ]) {
  std::ifstream infile("data/image.dat");
  if (infile.is_open()) {
    for (int index = 0; index < IMG_NUM; index++) {
      for (int pixel = 0; pixel < VEC_SIZ; pixel++) {
        int i;
        infile >> i;
        test_images[index][pixel] = i;
      }
    }
    infile.close();
  }
}

void read_test_labels(uint8_t test_labels[IMG_NUM]) {
  std::ifstream infile("data/label.dat");
  if (infile.is_open()) {
    for (int index = 0; index < IMG_NUM; index++) {
      infile >> test_labels[index];
    }
    infile.close();
  }
}

void write_test_result(float Y[K][IMG_NUM], float tsf_mat[K][VEC_SIZ], float mean[VEC_SIZ]){
  cout << "write y" << endl;
  ofstream fy("data/result.dat", ios_base::out);
  for(int i = 0; i < K; i++){
    for(int j = 0; j < IMG_NUM; j++){
      fy << Y[i][j] << "\t";
    }
    fy << endl;
  }
  fy.close();

  cout<<"write tsf"<<endl;
  ofstream ftsf("data/tsf.dat", ios_base::out);
  for(int i=0;i<K;i++){
    for(int j=0;j<VEC_SIZ;j++){
      ftsf << tsf_mat[i][j] << "\t";
    }
    ftsf << endl;
  }
  ftsf.close();

  cout<<"write mean"<<endl;
  ofstream fm("data/mean.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    fm << mean[i] << endl;
  }
  fm.close();
  
}

void run_pca(uint8_t test_imgs[IMG_NUM][VEC_SIZ],   
hls::stream<float> & pca_in, hls::stream<float> & pca_out){
  flt32_t X[VEC_SIZ][IMG_NUM];
  flt32_t Y[K][IMG_NUM];
  flt32_t tsf_mat[K][VEC_SIZ];
  PCA pca(VEC_SIZ, IMG_NUM, K, pca_in, pca_out);
  flt32_t S[VEC_SIZ][VEC_SIZ];
  flt32_t U[VEC_SIZ][VEC_SIZ];
  flt32_t V[VEC_SIZ][VEC_SIZ];
  flt32_t XXT[VEC_SIZ][VEC_SIZ];
  flt32_t mean[VEC_SIZ];

  for(int i=0;i<IMG_NUM;i++){
    for(int j=0;j<VEC_SIZ;j++){
      X[j][i] = (float)test_imgs[i][j];
    }
  }
  for (int i = 0; i < VEC_SIZ; i++) {
    for (int j = 0; j < VEC_SIZ; j++) {
      S[i][j] = 0;
      U[i][j] = 0;
      V[i][j] = 0;
      XXT[i][j] = 0;
    }
  }
  cout << "calculating norm..." << endl;
  pca.normalize(X, mean);
  cout << "calculating cov..." << endl;
  pca.cov(X, XXT);
  cout << "calculating svd..." << endl;
  pca.apply_svd(XXT,S,U,V);
  cout << "ranking..." << endl;
  pca.rank(tsf_mat, S, U);
  cout << "back projecting..." << endl;
  pca.back_pjt(tsf_mat, X, Y);
  cout << "transfering output..." << endl;
  cout<<"writing files..."<<endl;
  write_test_result(Y,tsf_mat,mean);
}

//------------------------------------------------------------------------
// pca testbench
//------------------------------------------------------------------------

int main(){
  // HLS streams for communicating with the cordic block
  hls::stream<float> pca_in("pca in");
  hls::stream<float> pca_out("pca out");
  
  uint8_t test_images[IMG_NUM][VEC_SIZ];
  uint8_t test_labels[IMG_NUM];
  
  // read test images and labels
  read_test_images(test_images);
  read_test_labels(test_labels);
  uint8_t test_image;
  float correct = 0.0;
  
  // Timer
  Timer timer("pca");
  timer.start();
  int counter = 0;
  run_pca(test_images,pca_in, pca_out);
  timer.stop();
  return 0;
}
