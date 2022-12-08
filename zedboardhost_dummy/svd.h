#ifndef SVD_H
#define SVD_H
 
#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
//#include "dut.h"
//#include "ap_fixed.h"
//#include <complex>
#include <cmath>
//#include "hls/linear_algebra/utils/x_hls_matrix_utils.h"
//#include "hls/linear_algebra/utils/x_hls_complex.h"
#include "hls/utils/x_hls_utils.h"
// #include <assert.h>
#include <iostream>
// #include <iomanip>
#include<fstream>

namespace hls {
  template<typename InType>
  bool x_isneg(InType n){
    return n<0;
  }

  template<typename InType>
  InType x_conj(InType n){
    return n;
  }

  template<typename InType>
  InType x_rsqrt(InType n){
    return 1/std::sqrt(n);
  }
  
  template<typename InType>
  InType x_copysign(InType a, InType b){
    if (b>=0) return a>0?a:-a;
    else return a<0?a:-a;
  }

  


  template<typename InType>
  class complex{
    public:
    InType real(){return r;}
    InType imag(){return i;}
    void real(InType rin){r = rin;}
    void imag(InType iin){i=iin;}
    private:
    InType r;
    InType i;

  };
}

//inline float sqrtf(float n){
//  return n;
//}

namespace svd {
 // ===================================================================================================================
  // Default traits struct
  template<
    int RowsA,
    int ColsA,
    typename InputType,
    typename OutputType>
  struct svd_traits {
    typedef OutputType SIntType;
    typedef OutputType UIntType;
    typedef OutputType VIntType;
    typedef OutputType CSIntType;
    static const int NUM_SWEEPS = 10;        // Literature typically suggestions 6 to 10 iterations to successfully converge
    static const int MIN_DIM    = ( RowsA < ColsA ? RowsA : ColsA );
    static const int ARCH               = 1; // Select implementation. 0 = Basic loop engine. 1 = Pairs based engine
    static const int OFF_DIAG_II        = 8; // Specify the pipelining target for the off diagonal loop. Upto 4 memory accesses on single array in one iteration, use mulitple
    static const int DIAG_II            = 8; // Specify the pipelining target for the diagonal loop. >1 enables reuse of operators.
    // IMPLEMENTATION TIP: Potential additional configuration parameters to fully unroll the "Pairs" based engine
    // static const int UNROLL_FACTOR      = (MIN_DIM + 1) / 2; // Specify off-diagonal loop unrolling factor
    // static const int DIAG_UNROLL_FACTOR = (MIN_DIM + 1) / 2; // Specify diagonal loop unrolling factor
  };

  // ===================================================================================================================
  // Helper functions
  
  // Compare 2 values relative magnitude
  // - Replaces a test using EPS as a scaling factor:
  //   abs(b) <= (e*abs(a)) where e = hls::numeric_limits<CSType>::epsilon()/2;
  // - b is within/just outside the representable precision of a
  template<typename T> bool within_precision(T a, T b) {
    fp_struct<T> fs_a = a;
    fp_struct<T> fs_b = b;
    if ( (fs_b.exp + fs_a.SIG_BITS+1) < fs_a.exp || fs_b.exp == 0 ) {
      return false;
    } else {
      return true;
    }
  }

  template<
    typename AType,
    typename BType,
    typename CType> 
  void vm2x1(
    AType a1, BType b1,
    AType a2, BType b2,
    CType &c)
  {
    c = a1*b1 + a2*b2;
  }

    // 2x2 matrix multiply
  template<
    typename AType,
    typename BType,
    typename CType> 
  void mm2x2(
    AType a1, AType a2, AType a3, AType a4, 
    BType b1, BType b2, BType b3, BType b4,
    CType &c1, CType &c2, CType &c3, CType &c4)
  {
    vm2x1(a1,b1,a2,b3,c1);
    vm2x1(a1,b2,a2,b4,c2);
    vm2x1(a3,b1,a4,b3,c3);
    vm2x1(a3,b2,a4,b4,c4);
  }


  // Calculate the sin and cos of the complex input's phase angle and phase angle divided by 2
  template<
    typename InType,
    typename CSType>
  void calc_angle(
    hls::complex<InType> A, 
    CSType &cosThetaA, CSType &sinThetaA,
    CSType &cosThetaAdiv2, CSType &sinThetaAdiv2,
    bool &is_pos_real, bool &is_imag)
  {
    const InType inZERO = 0;
    const CSType csZERO = 0;
    const CSType csONE  = 1;
    // NOTE: Hard single precision floating point value
    const float ONE_OVER_ROOT2 = 1.0f / sqrtf(2.0f);
    
    CSType tanThetaA, cosThetaA_int, sinThetaA_int, tanThetaAdiv2, cosThetaAdiv2_int; 
    
    InType re = A.real();
    InType im = A.imag();
    
    // Helpers to avoid testing the sin and cos outputs for particular characteristics.
    is_pos_real = false;
    is_imag     = false;
    
    // Check for when effectively real only or imag only
    if ( !within_precision(re,im) ) {
      if ( hls::x_isneg(re) ) {
        // 180 degs (half is 90!)
        cosThetaA     = -csONE;
        sinThetaA     = csZERO;
        cosThetaAdiv2 = csZERO;
        sinThetaAdiv2 = csONE;
      } else {
        // 0 degs
        cosThetaA     = csONE;
        sinThetaA     = csZERO;
        cosThetaAdiv2 = csONE;
        sinThetaAdiv2 = csZERO;
        is_pos_real   = true;
      }
    } else if ( !within_precision(im,re) ) {
      is_imag = true;
      if ( hls::x_isneg(im) ) {
        // 270 deg
        cosThetaA     = csZERO;
        sinThetaA     = -csONE;
        cosThetaAdiv2 = -ONE_OVER_ROOT2;
        sinThetaAdiv2 = ONE_OVER_ROOT2;
      } else {
        // 90 deg
        cosThetaA     = csZERO;
        sinThetaA     = csONE;
        cosThetaAdiv2 = ONE_OVER_ROOT2;
        sinThetaAdiv2 = ONE_OVER_ROOT2;
      }
    } else {
      // Basic
      // Full angle values
      tanThetaA = im/re;
      cosThetaA_int = hls::x_copysign(csONE,re) * hls::x_rsqrt(csONE + tanThetaA * tanThetaA);
      cosThetaA     = cosThetaA_int;
      sinThetaA_int = cosThetaA_int * tanThetaA;
      sinThetaA     = sinThetaA_int;
      
      // Half angle values
      // o Select the correct expression to minimize error in tan(thetaA/2)
      //   - Avoid creating near eps values 
      if ( hls::x_isneg(cosThetaA_int) ) {
        tanThetaAdiv2 = (csONE - cosThetaA_int)/ sinThetaA_int;
      } else {
        tanThetaAdiv2 = sinThetaA_int / (csONE + cosThetaA_int);
      }
      cosThetaAdiv2_int = hls::x_rsqrt(csONE + tanThetaAdiv2 * tanThetaAdiv2);
      
      cosThetaAdiv2     = cosThetaAdiv2_int;
      sinThetaAdiv2     = cosThetaAdiv2_int * tanThetaAdiv2;
    }
  }


  // Real 2x2 SVD function
  template <
    typename AInType, 
    typename CSType,
    typename AOutType> 
  void svd2x2(
    AInType  w_in,    AInType  x_in,    AInType  y_in,   AInType  z_in,
    CSType   &uw_out, CSType   &ux_out, CSType &uy_out,  CSType   &uz_out,
    CSType   &vw_out, CSType   &vx_out, CSType &vy_out,  CSType   &vz_out,
    AOutType &w_out,  AOutType &x_out,  AOutType &y_out, AOutType &z_out) 
  {
    Function_svd2x2_real:;
    // Inline to bring common lower level functions to this level of hierarchy to simplify the application
    // of resource sharing directives.
    #pragma HLS inline
    
    const AOutType     outZERO = 0;
    CSType             s1, c1, s2, c2;
    AInType            u1, u2;
    hls::complex<AInType> A, B;
    CSType             cosA_full, sinA_full, cosA_half, sinA_half;
    CSType             cosB_full, sinB_full, cosB_half, sinB_half;
    bool               A_is_pos_real, A_is_imag;
    bool               B_is_pos_real, B_is_imag;
    CSType             uw_int, ux_int, uy_int, uz_int;
    CSType             vw_int, vx_int, vy_int, vz_int;
    AOutType           w_out1, w_out2, z_out1, z_out2,
                       w_out_int, z_out_int;
    
    // Determine first half angle required to zero off-diagonal values
    u1 = z_in - w_in;
    u2 = y_in + x_in;
    A.imag(u2);
    A.real(u1);
    calc_angle(A, cosA_full, sinA_full, cosA_half, sinA_half, A_is_pos_real, A_is_imag);
    
    // Determine second half angle
    u1 = z_in + w_in;
    u2 = y_in - x_in;
    B.imag(u2);
    B.real(u1);
    calc_angle(B,cosB_full, sinB_full, cosB_half, sinB_half, B_is_pos_real, B_is_imag);

    // Combine half angles to produce left and right rotations
    // IMPLEMENTATION TIP: There are common products in the following calculations. For parallel implementations these should be shared. 
    // Consider in-lining these function calls.
    vm2x1(cosA_half,cosB_half,sinA_half,sinB_half,c1);
    vm2x1(sinA_half,cosB_half,-cosA_half,sinB_half,s1);
    vm2x1(cosA_half,cosB_half,-sinA_half,sinB_half,c2);
    vm2x1(sinA_half,cosB_half,cosA_half,sinB_half,s2);
    
    // Build full U and V matrix
    uw_int = c1;
    ux_int = s1;
    uy_int = -s1;
    uz_int = c1;
    
    vw_int = c2;
    vx_int = s2;
    vy_int = -s2;
    vz_int = c2;
    
    // Apply rotation
    // - Uses the transpose version of U
    // w_out
    vm2x1(w_in,vw_int,x_in,vy_int,w_out1);
    vm2x1(y_in,vw_int,z_in,vy_int,w_out2);
    vm2x1(uw_int,w_out1,uy_int,w_out2,w_out_int);
    // z_out
    vm2x1(w_in,vx_int,x_in,vz_int,z_out1);
    vm2x1(y_in,vx_int,z_in,vz_int,z_out2);
    vm2x1(ux_int,z_out1,uz_int,z_out2,z_out_int);
    x_out = outZERO;
    y_out = outZERO;
    
    // Ensure singular values are positive
    if (hls::x_isneg(w_out_int)) {
      w_out = -w_out_int;
      vw_int = -c2;
      vy_int = s2;
    } else {
      w_out = w_out_int;
    }
    if (hls::x_isneg(z_out_int)) {
      z_out = -z_out_int;
      vx_int = -s2;
      vz_int = -c2;
    } else {
      z_out = z_out_int;
    }
    
    // Assign outputs
    uw_out = uw_int;
    ux_out = ux_int;
    uy_out = uy_int;
    uz_out = uz_int;
    vw_out = vw_int;
    vx_out = vx_int;
    vy_out = vy_int;
    vz_out = vz_int;
    
  }


  inline void init_block_index(int & top_left, int & bottom_right, int idx1, int idx2){
    top_left = idx1;
    bottom_right = idx2;

    if (top_left > bottom_right){
      int temp = bottom_right;
      bottom_right = top_left;
      top_left = temp;
    }
  }

  template<
  int RowsA,
  int ColsA,
  class SVDTraits,
  typename InputType,
  typename OutputType>
  void svd_alt( const InputType A[RowsA][ColsA],
                      OutputType S[RowsA][ColsA],
                      OutputType U[RowsA][RowsA],
                      OutputType V[ColsA][ColsA],
                      int fdw, int fdr) 
  {
    // Initially only supporting square matrix
    // #ifndef __SYNTHESIS__
    // assert(RowsA==ColsA);
    // #endif

    // Internal memories for partial results
    typename SVDTraits::SIntType s_in[RowsA][ColsA];
    typename SVDTraits::UIntType u_in[RowsA][ColsA];
    typename SVDTraits::VIntType v_in[RowsA][ColsA];

    // Current S,U,V values being worked on
    typename SVDTraits::SIntType w_in, x_in, y_in, z_in;
    typename SVDTraits::SIntType w_out, x_out, y_out, z_out;
    typename SVDTraits::UIntType uw_in, ux_in, uy_in, uz_in;
    typename SVDTraits::UIntType uw_out, ux_out, uy_out, uz_out;
    typename SVDTraits::VIntType vw_in, vx_in, vy_in, vz_in;
    typename SVDTraits::VIntType vw_out, vx_out, vy_out, vz_out;

    // 2x2 Rotation values
    typename SVDTraits::CSIntType uw_new, ux_new, uy_new, uz_new;
    typename SVDTraits::CSIntType vw_new, vx_new, vy_new, vz_new;

    const int is_odd = ColsA % 2 == 0 ? 0 : 1;
    const int n_proc = (RowsA+is_odd)/2;

    float input;
    float output;
    
    //for(int i=0; i<RowsA; i++){
    //  rd_buffer:for(int j=0; j<ColsA; j++){
    //    S[i][j] = A[i][j];
    //    U[i][j] = i==j?1:0;
    //    V[i][j] = i==j?1:0;
    //  }
    //}

    sweep_loop: for(int sweepnum = 0; sweepnum < SVDTraits::NUM_SWEEPS; sweepnum++) {
      // NOTE: Using the minimum dimension. i.e. will process a square matrix

      //loop index (round-robin ordering)
      int diag_1[n_proc];
      int diag_2[n_proc];

      //init ordering
      for (int proc = 0; proc < n_proc; proc++){
        diag_1[proc] = 2*proc;
        diag_2[proc] = 2*proc+1;
      }

      for (int step = 0; step < RowsA-1; step ++){
        
        std::cout << "sweep=" << sweepnum << " step=" << step << '\r';
        //init buffers
        InputType S_block_buffer[n_proc][2][2];
        InputType U_block_buffer[n_proc][2][2];
        InputType V_block_buffer[n_proc][2][2];

        InputType S_r_buffer[n_proc][2][ColsA];

        InputType S_c_buffer[n_proc][RowsA][2];
        InputType U_c_buffer[n_proc][RowsA][2];
        InputType V_c_buffer[n_proc][RowsA][2];

        InputType J2x2[n_proc][2][2];
        InputType K2x2[n_proc][2][2];

        int top_left;
        int bottom_right;


        //calc svd, update col
        input = 1;
        write (fdw, (void*)&(input), sizeof(input));
        for (int proc = 0; proc < n_proc; proc++){
          init_block_index(top_left, bottom_right, diag_1[proc], diag_2[proc]);
          if (top_left == RowsA || bottom_right == RowsA) continue;

          // Fetch w,x,y,z values
          //input = 1;
          write (fdw, (void*)&(input), sizeof(input));
          //input = 1;
          write (fdw, (void*)&(input), sizeof(input));
          //input = 1;
          write (fdw, (void*)&(input), sizeof(input));
          //input = 1;
          write (fdw, (void*)&(input), sizeof(input));
        }

        //dut(pca_in, pca_out);

        for (int proc = 0; proc < n_proc; proc++){
          init_block_index(top_left, bottom_right, diag_1[proc], diag_2[proc]);
          if (top_left == RowsA || bottom_right == RowsA) continue;

          // Update S on diagonal
          read (fdr, (void*)&output, sizeof(output));
          w_out = output;
          read (fdr, (void*)&output, sizeof(output));
          x_out = output;
          read (fdr, (void*)&output, sizeof(output));
          y_out = output;
          read (fdr, (void*)&output, sizeof(output));
          z_out = output;

          //log J,k
          read (fdr, (void*)&output, sizeof(output));
          //uw_new = output;
          read (fdr, (void*)&output, sizeof(output));
          //ux_new = output;
          read (fdr, (void*)&output, sizeof(output));
          //uy_new = output;
          read (fdr, (void*)&output, sizeof(output));
          //uz_new = output;

          read (fdr, (void*)&output, sizeof(output));
          //vw_new = output;
          read (fdr, (void*)&output, sizeof(output));
          //vx_new = output;
          read (fdr, (void*)&output, sizeof(output));
          //vy_new = output;
          read (fdr, (void*)&output, sizeof(output));
          //vz_new = output;
        }

      }
    }
    std::cout << std::endl;
  }


  // ===================================================================================================================
  // SVD_TOP: Top level function that selects implementation architecture and internal types based on the 
  // traits class provided via the SVDTraits template parameter.
  // o Call this function directly if you wish to override the default architecture choice or internal types
  template<
    int RowsA,
    int ColsA,
    class SVDTraits,
    typename InputType,
    typename OutputType>
  void svd_top( const InputType  A[RowsA][ColsA],
                      OutputType S[RowsA][ColsA],
                      OutputType U[RowsA][RowsA],
                      OutputType V[ColsA][ColsA],
                      int fdw, int fdr) {

    svd_alt<RowsA,ColsA,SVDTraits,InputType,OutputType>(A,S,U,V,fdw,fdr);

  }
}



#endif