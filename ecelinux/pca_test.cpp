//=========================================================================
// bnn_test.cpp
//=========================================================================
// @brief: testbench for Binarized Neural Betwork(BNN) digit recongnition application

#include <iostream>
#include <fstream>
#include "dut.h"
#include "timer.h"
#include "hls_linear_algebra.h"
#include "typedefs.h"
#include <cstdlib>
#include <algorithm>

using namespace std;


// Number of test instances
//const int IMG_NUM = 100;
//const int K = 10;
//const int VEC_SIZ = 784;
//------------------------------------------------------------------------
// Helper function for reading images and labels
//------------------------------------------------------------------------

// A utility function to swap two elements
void swap(int* a, int* b) {
  int t = *a;
  *a = *b;
  *b = t;
}

int partition(int arr[], int l, int h, fix32_t S[VEC_SIZ][VEC_SIZ]) {
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

void quickSort(int arr[], int l, int h, fix32_t S[VEC_SIZ][VEC_SIZ]) {
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

void read_cov_mat(fix32_t XXT[VEC_SIZ][VEC_SIZ]) {
  std::ifstream infile("data/xxt.dat");
  if (infile.is_open()) {
    for (int i = 0; i < VEC_SIZ; i++) {
      for (int j = 0; j < VEC_SIZ; j++) {
        fix32_t p;
        infile >> p;
        XXT[i][j] = p;
      }
    }
    infile.close();
  }
}

void read_test_mat(float S_test[K],float U_test[K][VEC_SIZ]){
  std::ifstream infile_s("data/S_test.dat");
  if (infile_s.is_open()) {
    for (int i = 0; i < K; i++) {
  
      infile_s >> S_test[i];
      //cout << S_test[i] << endl;
    }
    infile_s.close();
  }

  std::ifstream infile_u("data/U_test.dat");
  if (infile_u.is_open()) {
    for (int i = 0; i < K; i++) {
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


//------------------------------------------------------------------------
// svd testbench
//------------------------------------------------------------------------

int main(){
  // HLS streams for communicating with the cordic block
  hls::stream<float> pca_in("pca in");
  hls::stream<float> pca_out("pca out");
  

  fix32_t S_test[K];
  fix32_t U_test[K][VEC_SIZ];
  
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
      //if (abs(abs(S[i][j]) - abs(S_test[i][j])) > 1e-1)
        //print("Error found in S: %f, %f", S[i][j], S_test[i][j]);
    }
  }

  for(int i=0; i<VEC_SIZ; i++){
    for(int j=0; j<VEC_SIZ; j++){
      U[i][j] = pca_out.read();
      //if (abs(abs(U[i][j]) - abs(U_test[i][j])) > 1e-1)
        //print("Error found in U: %f, %f", U[i][j], U_test[i][j]);
    }
  }

  int sorted_idx[VEC_SIZ];
  for (int i=0;i<VEC_SIZ;i++){
    sorted_idx[i] = i;
  }

  quickSort(sorted_idx, 0, VEC_SIZ-1, S);
  
  std::ofstream fs("data/s.dat", ios_base::out);
  for(int i=0;i<VEC_SIZ;i++){
    for(int j=0;j<VEC_SIZ;j++){
      fs << S[i][j] << "\t";
    }
    fs << endl;
  }
  fs.close();
  

  int counter=0;
  for(int i=0;i<10;i++){
    if (abs((S[sorted_idx[i]][sorted_idx[i]] - S_test[i])/(S[sorted_idx[i]][sorted_idx[i]]))>0.01) counter ++;
    
  }

  timer.stop();

  // Calculate accuracy
  std::cout << "Number of Eigenvalues with error larger than 1%: " << counter << std::endl;
  
  return 0;
}
