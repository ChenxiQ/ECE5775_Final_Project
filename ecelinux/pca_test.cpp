//=========================================================================
// bnn_test.cpp
//=========================================================================
// @brief: testbench for Binarized Neural Betwork(BNN) digit recongnition application

#include <iostream>
#include <fstream>
#include "dut.h"
#include "timer.h"

using namespace std;

// Number of test instances
const int TEST_SIZE = 200;
const int K = 20;
const int VEC_SIZ = 784;
//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------

void read_test_images(int8_t test_images[TEST_SIZE][VEC_SIZ]) {
  std::ifstream infile("data/image.dat");
  if (infile.is_open()) {
    for (int index = 0; index < TEST_SIZE; index++) {
      for (int pixel = 0; pixel < VEC_SIZ; pixel++) {
        int i;
        infile >> i;
        test_images[index][pixel] = i;
      }
    }
    infile.close();
  }
}

void read_test_labels(int8_t test_labels[TEST_SIZE]) {
  std::ifstream infile("data/label.dat");
  if (infile.is_open()) {
    for (int index = 0; index < TEST_SIZE; index++) {
      infile >> test_labels[index];
    }
    infile.close();
  }
}

void write_test_result(float Y[K][TEST_SIZE], float tsf_mat[K][VEC_SIZ], float mean[VEC_SIZ]){
  cout<<"write y"<<endl;
  ofstream fy("data/result.dat", ios_base::out);
  for(int i=0;i<K;i++){
    for(int j=0;j<TEST_SIZE;j++){
      fy << Y[i][j] << "\t";
    }
    fy << endl;
  }
  fy.close();
  /*
  cout<<"write tsf"<<endl;
  ofstream ftsf("data/tsf.dat", ios_base::out);
  for(int i=0;i<K;i++){
    for(int j=0;j=VEC_SIZ;j++){
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
  */
}

//------------------------------------------------------------------------
// pca testbench
//------------------------------------------------------------------------

int main(){
  // HLS streams for communicating with the cordic block
  hls::stream<bit32_t> pca_in;
  hls::stream<float> pca_out;
  
  int8_t test_images[TEST_SIZE][VEC_SIZ];
  int8_t test_labels[TEST_SIZE];
  
  // read test images and labels
  read_test_images(test_images);
  read_test_labels(test_labels);
  bit32_t test_image;
  float correct = 0.0;
  
  // Timer
  Timer timer("pca");
  timer.start();
  
  int counter = 0;
  // pack images to 32-bit and transmit to dut function 
  for (int test = 0; test < TEST_SIZE; test++) {
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
  }
  dut(pca_in, pca_out);

  cout<<"read fifo"<< endl;
  float Y[K][TEST_SIZE];
  float mean[VEC_SIZ];
  float tsf_mat[K][VEC_SIZ];

  for (int i = 0; i < K; i++) {
    for (int test = 0; test < TEST_SIZE; test++) {
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
  cout<<"write file"<<endl;
  write_test_result(Y,tsf_mat,mean);

  timer.stop();

  // Calculate accuracy
  // std::cout << "Accuracy: " << correct/TEST_SIZE << std::endl;
  
  return 0;
}
