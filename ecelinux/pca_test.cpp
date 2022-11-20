//=========================================================================
// bnn_test.cpp
//=========================================================================
// @brief: testbench for Binarized Neural Betwork(BNN) digit recongnition application

#include <iostream>
#include <fstream>
#include "pca.h"
#include "timer.h"
#include "hls_linear_algebra.h"
#include "typedefs.h"
#include <cstdlib>

using namespace std;

// Number of test instances
//const int IMG_NUM = 100;
//const int K = 10;
//const int VEC_SIZ = 784;
//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------

void read_cov_mat(fix32_t XXT[VEC_SIZ][VEC_SIZ]) {
  std::ifstream infile("data/image.dat");
  if (infile.is_open()) {
    for (int i = 0; i < VEC_SIZ; i++) {
      for (int j = 0; j < VEC_SIZ; j++) {
        fix32_t p;
        infile >> p;
        XXT[index][pixel] = p;
      }
    }
    infile.close();
  }
}

void read_test_mat(float S_test[VEC_SIZ][VEC_SIZ],float U_test[VEC_SIZ][VEC_SIZ]){
  std::ifstream infile_s("data/S_test.dat");
  if (infile_s.is_open()) {
    for (int i = 0; i < VEC_SIZ; i++) {
      for (int j = 0; j < VEC_SIZ; j++) {
        infile_s >> S_test[i][j];
      }
    }
    infile_s.close();
  }

  std::ifstream infile_u("data/U_test.dat");
  if (infile_u.is_open()) {
    for (int i = 0; i < VEC_SIZ; i++) {
      for (int j = 0; j < VEC_SIZ; j++) {
        infile_u >> U_test[i][j];
      }
    }
    infile_u.close();
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

  //int count = 0;
  cout<<"write tsf"<<endl;
  ofstream ftsf("data/tsf.dat", ios_base::out);
  for(int i=0;i<K;i++){
    for(int j=0;j<VEC_SIZ;j++){
      //cout << tsf_mat[i][j] << "\t";
      //cout<< '\r' << count;
      //count ++;
      ftsf << tsf_mat[i][j] << "\t";
    }
    ftsf << endl;
    //cout << endl;
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
  fix32_t X[VEC_SIZ][IMG_NUM];
  fix32_t Y[K][IMG_NUM];
  fix32_t tsf_mat[K][VEC_SIZ];
  PCA pca(VEC_SIZ, IMG_NUM, K, pca_in, pca_out);
  fix32_t S[VEC_SIZ][VEC_SIZ];
  fix32_t U[VEC_SIZ][VEC_SIZ];
  fix32_t V[VEC_SIZ][VEC_SIZ];
  fix32_t XXT[VEC_SIZ][VEC_SIZ];
  fix32_t mean[VEC_SIZ];

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
  

  fix32_t S_test[IMG_NUM];
  fix32_t U_test[IMG_NUM];
  
  fix32_t XXT[VEC_SIZ][VEC_SIZ];
  fix32_t S[VEC_SIZ][VEC_SIZ];
  fix32_t U[VEC_SIZ][VEC_SIZ];
  fix32_t V[VEC_SIZ][VEC_SIZ];

  // read test images and labels
  read_cov_mat(XXT);
  read_test_mat(S_test,U_test);
  bit32_t test_image;
  float correct = 0.0;
  
  // Timer
  Timer timer("svd");
  timer.start();
  
  for(int i=0; i<VEC_SIZ; i++){
    for(int j=0; j<VEC_SIZ; j++){
      pca_in.write(XXT[i][j]);
    }
  }

  dut(pca_in, pca_out);

  for(int i=0; i<VEC_SIZ; i++){
    for(int j=0; j<VEC_SIZ; j++){
      S[i][j] = pca_out.read();
      if (abs(abs(S[i][j]) - abs(S_test[i][j])) > 1e-1){
        print("Error found in S: %f, %f", S[i][j], S_test[i][j]);
      }
    }
  }

  for(int i=0; i<VEC_SIZ; i++){
    for(int j=0; j<VEC_SIZ; j++){
      U[i][j] = pca_out.read();
      if (abs(abs(U[i][j]) - abs(U_test[i][j])) > 1e-1){
        print("Error found in U: %f, %f", U[i][j], U_test[i][j]);
      }
    }
  }

  timer.stop();

  // Calculate accuracy
  // std::cout << "Accuracy: " << correct/IMG_NUM << std::endl;
  
  return 0;
}
