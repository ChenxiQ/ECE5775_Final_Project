//=========================================================================
// bnn_test.cpp
//=========================================================================
// @brief: testbench for Binarized Neural Betwork(BNN) digit recongnition application

#include <iostream>
#include <fstream>
#include "bnn.h"
#include "timer.h"

using namespace std;

// Number of test instances
const int TEST_SIZE = 200;

//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------

void read_test_images(int8_t test_images[TEST_SIZE][784]) {
  std::ifstream infile("data/image.dat");
  if (infile.is_open()) {
    for (int index = 0; index < TEST_SIZE; index++) {
      for (int pixel = 0; pixel < 784; pixel++) {
        int i;
        infile >> i;
        test_images[index][pixel] = i;
      }
    }
    infile.close();
  }
}

void read_test_labels(int test_labels[TEST_SIZE]) {
  std::ifstream infile("data/label.dat");
  if (infile.is_open()) {
    for (int index = 0; index < TEST_SIZE; index++) {
      infile >> test_labels[index];
    }
    infile.close();
  }
}

//------------------------------------------------------------------------
// pca testbench
//------------------------------------------------------------------------

int main(){
  // HLS streams for communicating with the cordic block
  hls::stream<bit32_t> pca_in;
  hls::stream<bit32_t> pca_out;
  
  int test_images[TEST_SIZE][784];
  int test_labels[TEST_SIZE];
  
  // read test images and labels
  read_test_images(test_images);
  read_test_labels(test_labels);
  bit32_t test_image;
  float correct = 0.0;
  
  // Timer
  Timer timer("pca");
  timer.start();
  
  // pack images to 32-bit and transmit to dut function 
  for (int test = 0; test < TEST_SIZE; test++) {
    for (int i = 0; i < 28 * 28 / 4; i++) {
      for (int j = 0; j < 4; j++) {
        test_image(j*8+7,j*8) = test_images[test][i*4+j];
      }
      pca_in.write(test_image);
    }
    
    // perform prediction
    dut(pca_in, pca_out);
  
    // check results
    // if (pca_out.read() == test_labels[test]) correct += 1.0;
  }
  timer.stop();

  // Calculate accuracy
  // std::cout << "Accuracy: " << correct/TEST_SIZE << std::endl;
  
  return 0;
}
