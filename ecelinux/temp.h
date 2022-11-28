#ifndef SVD_H
#define SVD_H

#include "ap_fixed.h"
#include <complex>
#include "hls/linear_algebra/utils/x_hls_matrix_utils.h"
#include "hls/utils/x_hls_utils.h"
#include "hls/linear_algebra/utils/x_hls_complex.h"
#include <assert.h>

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
    std::complex<InType> A, 
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
    std::complex<AInType> A, B;
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



// ===================================================================================================================
// SVD_BASIC: Top level function taking a SVDTraits template parameter to defines internal types
  template<
  int RowsA,
  int ColsA,
  class SVDTraits,
  typename InputType,
  typename OutputType>
  void svd_basic( const InputType A[RowsA][ColsA],
                      OutputType S[RowsA][ColsA],
                      OutputType U[RowsA][RowsA],
                      OutputType V[ColsA][ColsA] ) 
  {
  // Initially only supporting square matrix
  #ifndef __SYNTHESIS__
  assert(RowsA==ColsA);
  #endif

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

  sweep_loop: for(int sweepnum = 0; sweepnum < SVDTraits::NUM_SWEEPS; sweepnum++) {
      // NOTE: Using the minimum dimension. i.e. will process a square matrix
      row_loop: for(int top_left = 0; top_left < SVDTraits::MIN_DIM; top_left++) {
        col_loop: for(int bottom_right = top_left+1; bottom_right< SVDTraits::MIN_DIM; bottom_right++) {
          // Fetch w,x,y,z values
          if (sweepnum == 0 && top_left == 0) {
            if (bottom_right == 1) {
            w_in =A[top_left]    [top_left];
            x_in =A[top_left]    [bottom_right];
            y_in =A[bottom_right][top_left];
            } else {
            // Now revist values already updated in first diagonal pass
            w_in =s_in[top_left]    [top_left];
            x_in =s_in[top_left]    [bottom_right];
            y_in =s_in[bottom_right][top_left];
            }
            z_in =A[bottom_right][bottom_right];
          } else {
            w_in =s_in[top_left]    [top_left];
            x_in =s_in[top_left]    [bottom_right];
            y_in =s_in[bottom_right][top_left];
            z_in =s_in[bottom_right][bottom_right];
          }

          // Diagonal
          svd2x2(w_in, x_in, y_in, z_in, uw_new, ux_new, uy_new, uz_new, vw_new, vx_new, vy_new, vz_new, w_out, x_out, y_out, z_out);

          // Update S on diagonal
          s_in[top_left]    [top_left]     = w_out;
          s_in[top_left]    [bottom_right] = x_out;
          s_in[bottom_right][top_left]     = y_out;
          s_in[bottom_right][bottom_right] = z_out;
          if (sweepnum == SVDTraits::NUM_SWEEPS-1) {
            S[top_left]    [top_left]     = w_out;
            S[top_left]    [bottom_right] = x_out;
            S[bottom_right][top_left]     = y_out;
            S[bottom_right][bottom_right] = z_out;
          }

          // Update U & V
          // o On the diagonal use a 2x2 as per the sigma
          // o Need to create the indentity in U & V at the start
          if (sweepnum == 0 && top_left == 0) {
            if (bottom_right==1) {
            uw_in = 1;
            vw_in = 1;
            } else {
            // Now re-visiting diagonal values where I has been set
            uw_in = u_in[top_left][top_left];
            vw_in = v_in[top_left][top_left];
            }

            ux_in = 0;
            uy_in = 0;
            uz_in = 1;

            vx_in = 0;
            vy_in = 0;
            vz_in = 1;
          } else {
            uw_in = u_in[top_left]    [top_left];
            ux_in = u_in[top_left]    [bottom_right];
            uy_in = u_in[bottom_right][top_left];
            uz_in = u_in[bottom_right][bottom_right];
            vw_in = v_in[top_left]    [top_left];
            vx_in = v_in[top_left]    [bottom_right];
            vy_in = v_in[bottom_right][top_left];
            vz_in = v_in[bottom_right][bottom_right];
          }

          mm2x2(uw_in, ux_in, uy_in, uz_in, uw_new, ux_new, uy_new, uz_new, uw_out, ux_out, uy_out, uz_out);
          mm2x2(vw_in, vx_in, vy_in, vz_in, vw_new, vx_new, vy_new, vz_new, vw_out, vx_out, vy_out, vz_out);

          u_in[top_left]    [top_left]     = uw_out;
          u_in[top_left]    [bottom_right] = ux_out;
          u_in[bottom_right][top_left]     = uy_out;
          u_in[bottom_right][bottom_right] = uz_out;
          v_in[top_left]    [top_left]     = vw_out;
          v_in[top_left]    [bottom_right] = vx_out;
          v_in[bottom_right][top_left]     = vy_out;
          v_in[bottom_right][bottom_right] = vz_out;
          if (sweepnum == SVDTraits::NUM_SWEEPS-1) {
            U[top_left]    [top_left]     = uw_out;
            U[top_left]    [bottom_right] = ux_out;
            U[bottom_right][top_left]     = uy_out;
            U[bottom_right][bottom_right] = uz_out;
            V[top_left]    [top_left]     = vw_out;
            V[top_left]    [bottom_right] = vx_out;
            V[bottom_right][top_left]     = vy_out;
            V[bottom_right][bottom_right] = vz_out;
          }

          // Off-diagonal
          // Col updates
          off_col: for (int off_col = 0; off_col < SVDTraits::MIN_DIM; off_col++) {
            #pragma HLS PIPELINE //II = SVDTraits::OFF_DIAG_II
            if (off_col != bottom_right && off_col != top_left) {
              if (sweepnum == 0 && top_left == 0 && bottom_right == 1) {
              w_in =A[top_left][off_col];
              } else {
              w_in =s_in[top_left][off_col];
              }
              if (sweepnum == 0 && top_left == 0 && off_col > bottom_right) {
              y_in =A[bottom_right][off_col];
              } else {
              y_in =s_in[bottom_right][off_col];
              }

              // U must be Hermitian transposed before it is applied to A
              vm2x1(hls::x_conj(uw_new),w_in,hls::x_conj(uy_new),y_in,w_out);
              vm2x1(hls::x_conj(ux_new),w_in,hls::x_conj(uz_new),y_in,y_out);

              //Store off-diagonal updates
              s_in[top_left]    [off_col] = w_out;
              s_in[bottom_right][off_col] = y_out;
              if (sweepnum == SVDTraits::NUM_SWEEPS-1) {
              S[top_left]    [off_col] = w_out;
              S[bottom_right][off_col] = y_out;
              }
            }
          }
          // Row update
          off_row: for (int off_row = 0; off_row < SVDTraits::MIN_DIM; off_row++) {
            #pragma HLS PIPELINE //II = SVDTraits::OFF_DIAG_II
            if (off_row != bottom_right && off_row != top_left) {
              if (sweepnum == 0 && top_left== 0 && bottom_right == 1) {
                w_in =A[off_row][top_left];
                vw_in = 0;
                uw_in = 0;
              } else {
                w_in =  s_in[off_row][top_left];
                vw_in = v_in[off_row][top_left];
                uw_in = u_in[off_row][top_left];
              }
              if (sweepnum == 0 && top_left == 0 && off_row > bottom_right) {
                x_in = A[off_row][bottom_right];
              } else {
                x_in = s_in[off_row][bottom_right];
              }
              if (sweepnum == 0 && top_left == 0) {
                vx_in = 0;
                ux_in = 0;
              } else {
                vx_in = v_in[off_row][bottom_right];
                ux_in = u_in[off_row][bottom_right];
              }

              vm2x1(w_in,vw_new,x_in,vy_new,w_out);
              vm2x1(w_in,vx_new,x_in,vz_new,x_out);

              vm2x1(vw_in,vw_new,vx_in,vy_new,vw_out);
              vm2x1(vw_in,vx_new,vx_in,vz_new,vx_out);

              vm2x1(uw_in,uw_new,ux_in,uy_new,uw_out);
              vm2x1(uw_in,ux_new,ux_in,uz_new,ux_out);

              //Store off-diagonal updates
              s_in[off_row][top_left]     = w_out;
              s_in[off_row][bottom_right] = x_out;
              v_in[off_row][top_left]     = vw_out;
              v_in[off_row][bottom_right] = vx_out;
              u_in[off_row][top_left]     = uw_out;
              u_in[off_row][bottom_right] = ux_out;
              if (sweepnum==SVDTraits::NUM_SWEEPS-1) {
                S[off_row][top_left]     = w_out;
                S[off_row][bottom_right] = x_out;
                V[off_row][top_left]     = vw_out;
                V[off_row][bottom_right] = vx_out;
                U[off_row][top_left]     = uw_out;
                U[off_row][bottom_right] = ux_out;
              }
            }
          }
        }
      }
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
                      OutputType V[ColsA][ColsA] ) 
  {
    // Initially only supporting square matrix
    #ifndef __SYNTHESIS__
    assert(RowsA==ColsA);
    #endif

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

    for(int i=0; i<RowsA; i++){
      for(int j=0; j<ColsA; j++){
        S[i][j] = A[i][j];
        U[i][j] = i==j?1:0;
        V[i][j] = i==j?1:0;
      }
    }

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
        //init buffers
        InputType S_block_buffer[n_proc][2][2];
        InputType U_block_buffer[n_proc][2][2];
        InputType V_block_buffer[n_proc][2][2];

        InputType S_r_buffer[n_proc][2][ColsA];

        InputType S_c_buffer[n_proc][RowsA][2];
        InputType U_c_buffer[n_proc][RowsA][2];
        InputType V_c_buffer[n_proc][RowsA][2];

        InputType J2x2[n_proc][2][2];

        //update loop sequence
        int temp_diag = diag_1[1];
        for (int proc = 1; proc < n_proc-1; proc++){
          diag_1[proc] = diag_1[proc+1];
        }
        diag_1[n_proc-1] = diag_2[n_proc-1];
        for (int proc = n_proc-1; proc > 0; proc--){
          diag_2[proc] = diag_2[proc-1];
        }
        diag_2[0] = temp_diag;

        //read diag and cols
        svd_rd_1:for (int proc = 0; proc < n_proc; proc++){
          
          int top_left = diag_1[proc];
          int bottom_right = diag_2[proc];
          if (top_left == RowsA || bottom_right == RowsA) continue;

          if (top_left > bottom_right){
            int temp = bottom_right;
            bottom_right = top_left;
            top_left = temp;
          }

          S_block_buffer[proc][0][0] = S[top_left][top_left];
          U_block_buffer[proc][0][0] = U[top_left][top_left];
          V_block_buffer[proc][0][0] = V[top_left][top_left];
          
          S_block_buffer[proc][0][1] = S[top_left][bottom_right];
          U_block_buffer[proc][0][1] = U[top_left][bottom_right];
          V_block_buffer[proc][0][1] = V[top_left][bottom_right];

          S_block_buffer[proc][1][0] = S[bottom_right][top_left];
          U_block_buffer[proc][1][0] = U[bottom_right][top_left];
          V_block_buffer[proc][1][0] = V[bottom_right][top_left];

          S_block_buffer[proc][1][1] = S[bottom_right][bottom_right];
          U_block_buffer[proc][1][1] = U[bottom_right][bottom_right];
          V_block_buffer[proc][1][1] = V[bottom_right][bottom_right];

          for (int i=0; i<ColsA; i++){
            if (i != bottom_right && i != top_left) {
              S_c_buffer[proc][i][0] = S[i][top_left];
              U_c_buffer[proc][i][0] = U[i][top_left];
              V_c_buffer[proc][i][0] = V[i][top_left];
              S_c_buffer[proc][i][1] = S[i][bottom_right];
              U_c_buffer[proc][i][1] = U[i][bottom_right];
              V_c_buffer[proc][i][1] = V[i][bottom_right];
            }
          }
        }

        //calc svd, update col
        svd_calc_1:for (int proc = 0; proc < n_proc; proc++){
          int top_left = diag_1[proc];
          int bottom_right = diag_2[proc];
          if (top_left == RowsA || bottom_right == RowsA) continue;
          if (top_left > bottom_right){
            int temp = bottom_right;
            bottom_right = top_left;
            top_left = temp;
          }

          // Fetch w,x,y,z values
          w_in =S_block_buffer[proc][0][0];
          x_in =S_block_buffer[proc][0][1];
          y_in =S_block_buffer[proc][1][0];
          z_in =S_block_buffer[proc][1][1];

          // Diagonal
          svd2x2(w_in, x_in, y_in, z_in, uw_new, ux_new, uy_new, uz_new, vw_new, vx_new, vy_new, vz_new, w_out, x_out, y_out, z_out);

          // Update S on diagonal
          S_block_buffer[proc][0][0] = w_out;
          S_block_buffer[proc][0][1] = x_out;
          S_block_buffer[proc][1][0] = y_out;
          S_block_buffer[proc][1][1] = z_out;

          //log J
          J2x2[proc][0][0] = uw_new;
          J2x2[proc][0][1] = ux_new;
          J2x2[proc][1][0] = uy_new;
          J2x2[proc][1][1] = uz_new;

          // Update U & V
          // o On the diagonal use a 2x2 as per the sigma
          // o Need to create the indentity in U & V at the start

          uw_in = U_block_buffer[proc][0][0];
          ux_in = U_block_buffer[proc][0][1];
          uy_in = U_block_buffer[proc][1][0];
          uz_in = U_block_buffer[proc][1][1];
          vw_in = V_block_buffer[proc][0][0];
          vx_in = V_block_buffer[proc][0][1];
          vy_in = V_block_buffer[proc][1][0];
          vz_in = V_block_buffer[proc][1][1];

          mm2x2(uw_in, ux_in, uy_in, uz_in, uw_new, ux_new, uy_new, uz_new, uw_out, ux_out, uy_out, uz_out);
          mm2x2(vw_in, vx_in, vy_in, vz_in, vw_new, vx_new, vy_new, vz_new, vw_out, vx_out, vy_out, vz_out);

          U_block_buffer[proc][0][0] = uw_out;
          U_block_buffer[proc][0][1] = ux_out;
          U_block_buffer[proc][1][0] = uy_out;
          U_block_buffer[proc][1][1] = uz_out;
          V_block_buffer[proc][0][0] = vw_out;
          V_block_buffer[proc][0][1] = vx_out;
          V_block_buffer[proc][1][0] = vy_out;
          V_block_buffer[proc][1][1] = vz_out;

          // Row update
          off_row: for (int off_row = 0; off_row < SVDTraits::MIN_DIM; off_row++) {
            //#pragma HLS PIPELINE //II = SVDTraits::OFF_DIAG_II
            if (off_row != bottom_right && off_row != top_left) {
              w_in  = S_c_buffer[proc][off_row][0];
              vw_in = V_c_buffer[proc][off_row][0];
              uw_in = U_c_buffer[proc][off_row][0];
              x_in  = S_c_buffer[proc][off_row][1];
              vx_in = V_c_buffer[proc][off_row][1];
              ux_in = U_c_buffer[proc][off_row][1];

              vm2x1(w_in,vw_new,x_in,vy_new,w_out);
              vm2x1(w_in,vx_new,x_in,vz_new,x_out);

              vm2x1(vw_in,vw_new,vx_in,vy_new,vw_out);
              vm2x1(vw_in,vx_new,vx_in,vz_new,vx_out);

              vm2x1(uw_in,uw_new,ux_in,uy_new,uw_out);
              vm2x1(uw_in,ux_new,ux_in,uz_new,ux_out);

              //Store off-diagonal updates
              S_c_buffer[proc][off_row][0] = w_out;
              S_c_buffer[proc][off_row][1] = x_out;
              V_c_buffer[proc][off_row][0] = vw_out;
              V_c_buffer[proc][off_row][1] = vx_out;
              U_c_buffer[proc][off_row][0] = uw_out;
              U_c_buffer[proc][off_row][1] = ux_out;
            }
          }
        }

        //write back diag and cols
        svd_wb_1:for (int proc = 0; proc < n_proc; proc++){
          int top_left = diag_1[proc];
          int bottom_right = diag_2[proc];
          if (top_left == RowsA || bottom_right == RowsA) continue;
          if (top_left > bottom_right){
            int temp = bottom_right;
            bottom_right = top_left;
            top_left = temp;
          }

          S[top_left][top_left] = S_block_buffer[proc][0][0];
          U[top_left][top_left] = U_block_buffer[proc][0][0];
          V[top_left][top_left] = V_block_buffer[proc][0][0];
          
          S[top_left][bottom_right] = S_block_buffer[proc][0][1];
          U[top_left][bottom_right] = U_block_buffer[proc][0][1];
          V[top_left][bottom_right] = V_block_buffer[proc][0][1];

          S[bottom_right][top_left] = S_block_buffer[proc][1][0];
          U[bottom_right][top_left] = U_block_buffer[proc][1][0];
          V[bottom_right][top_left] = V_block_buffer[proc][1][0];

          S[bottom_right][bottom_right] = S_block_buffer[proc][1][1];
          U[bottom_right][bottom_right] = U_block_buffer[proc][1][1];
          V[bottom_right][bottom_right] = V_block_buffer[proc][1][1];

          for (int i=0; i<ColsA; i++){
            if (i != bottom_right && i != top_left) {
              S[i][top_left] = S_c_buffer[proc][i][0];
              U[i][top_left] = U_c_buffer[proc][i][0];
              V[i][top_left] = V_c_buffer[proc][i][0];
              S[i][bottom_right] = S_c_buffer[proc][i][1];
              U[i][bottom_right] = U_c_buffer[proc][i][1];
              V[i][bottom_right] = V_c_buffer[proc][i][1];
            }
          }
        }

        //read rows
        svd_rd_2:for (int proc = 0; proc < proc; proc++){
          int top_left = diag_1[proc];
          int bottom_right = diag_2[proc];
          if (top_left == RowsA || bottom_right == RowsA) continue;
          if (top_left > bottom_right){
            int temp = bottom_right;
            bottom_right = top_left;
            top_left = temp;
          }

          for (int i=0; i<ColsA; i++){
            if (i != bottom_right && i != top_left) {
              S_r_buffer[proc][0][i] = S[top_left]    [i]; 
              S_r_buffer[proc][1][i] = S[bottom_right][i]; 
            }
          }
        }
        
        //update rows
        svd_calc_2:for (int proc = 0; proc < n_proc; proc++){
          int top_left = diag_1[proc];
          int bottom_right = diag_2[proc];
          if (top_left == RowsA || bottom_right == RowsA) continue;
          if (top_left > bottom_right){
            int temp = bottom_right;
            bottom_right = top_left;
            top_left = temp;
          }
          // Off-diagonal
          // Col updates
          off_col: for (int off_col = 0; off_col < SVDTraits::MIN_DIM; off_col++) {
            //#pragma HLS PIPELINE //II = SVDTraits::OFF_DIAG_II
            if (off_col != bottom_right && off_col != top_left) {

              uw_new = J2x2[proc][0][0];
              ux_new = J2x2[proc][0][1];
              uy_new = J2x2[proc][1][0];
              uz_new = J2x2[proc][1][1];

              w_in = S_r_buffer[proc][0][off_col];
              y_in = S_r_buffer[proc][1][off_col];

              // U must be Hermitian transposed before it is applied to A
              vm2x1(hls::x_conj(uw_new),w_in,hls::x_conj(uy_new),y_in,w_out);
              vm2x1(hls::x_conj(ux_new),w_in,hls::x_conj(uz_new),y_in,y_out);

              //Store off-diagonal updates
              S_r_buffer[proc][0][off_col] = w_out;
              S_r_buffer[proc][1][off_col] = y_out;
            }
          }
        }

        //write back rows
        svd_wb_2:for (int proc = 0; proc < n_proc; proc++){
          int top_left = diag_1[proc];
          int bottom_right = diag_2[proc];
          if (top_left == RowsA || bottom_right == RowsA) continue;
          if (top_left > bottom_right){
            int temp = bottom_right;
            bottom_right = top_left;
            top_left = temp;
          }

          for (int i=0; i<ColsA; i++){
            if (i != bottom_right && i != top_left) {
              S[top_left]    [i] = S_r_buffer[proc][0][i]; 
              S[bottom_right][i] = S_r_buffer[proc][1][i]; 
            }
          }
        }
      }
    }
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
                      OutputType V[ColsA][ColsA] ) {
    switch(SVDTraits::ARCH) {
    case 0:
      svd_basic<RowsA,ColsA,SVDTraits,InputType,OutputType>(A,S,U,V);
      break;
    case 1:
      svd_basic<RowsA,ColsA,SVDTraits,InputType,OutputType>(A,S,U,V);
      break;
    default:
      svd_basic<RowsA,ColsA,SVDTraits,InputType,OutputType>(A,S,U,V);
      break;
    }
  }
}



#endif