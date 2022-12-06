//=========================================================================
// bnn_test.cpp
//=========================================================================
// @brief: testbench for Binarized Neural Betwork(BNN) digit recongnition application

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
#include<math.h>
#include<assert.h>

#include <iostream>
#include <fstream>
#include "pca.h"
#include "timer.h"
//#include "hls_linear_algebra.h"
#include "typedefs.h"
#include <stdint.h>

using namespace std;

// Number of test instances
//const int IMG_NUM = 100;
//const int K = 10;
//const int VEC_SIZ = 784;
//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------

void read_test_images(uint8_t test_images[IMG_NUM][VEC_SIZ]) {
  std::ifstream infile("data/image_ds.dat");
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
  // Open channels to the FPGA board.
  // These channels appear as files to the Linux OS
  int fdr = open("/dev/xillybus_read_32", O_RDONLY);
  int fdw = open("/dev/xillybus_write_32", O_WRONLY);

  // Check that the channels are correctly opened
  if ((fdr < 0) || (fdw < 0)) {
    fprintf (stderr, "Failed to open Xillybus device channels\n");
    exit(-1);
  }
  
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
  /*
  // pack images to 32-bit and transmit to dut function 
  for (int test = 0; test < IMG_NUM; test++) {
    for (int i = 0; i < 28 * 28 / 4; i++) {
      for (int j = 0; j < 4; j++) {
        test_image(j*8+7,j*8) = test_images[test][i*4+j];
      }
      pca_in.write(test_image);
      counter++;
      //cout<<"test "<<counter<<endl;
    }
    // perform prediction
  
    //cout<<"dut run "<<counter<<endl;
    // check results
    // if (pca_out.read() == test_labels[test]) correct += 1.0;
  }*/
  //dut(pca_in, pca_out);
  run_pca(test_images,pca_in, pca_out);

  /*
  cout<<"read fifo"<< endl;
  float Y[K][IMG_NUM];
  float mean[VEC_SIZ];
  float tsf_mat[K][VEC_SIZ];

  for (int i = 0; i < K; i++) {
    for (int test = 0; test < IMG_NUM; test++) {
      Y[i][test] = pca_out.read();
    }
  }

  for (int i=0;i<K;i++){
    for (int j=0;j<VEC_SIZ;j++){
      tsf_mat[i][j] = pca_out.read();
    }
  }

  for (int i=0;i<VEC_SIZ;i++){
    mean[i] = pca_out.read();
  }
  write_test_result(Y,tsf_mat,mean);
  */
  timer.stop();

  // Calculate accuracy
  // std::cout << "Accuracy: " << correct/IMG_NUM << std::endl;
  
  return 0;
}
