; ModuleID = '/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sweep_loop_step_loop_str = internal unnamed_addr constant [21 x i8] c"sweep_loop_step_loop\00"
@off_diag_px_off_diag_loop_str = internal unnamed_addr constant [26 x i8] c"off_diag_px_off_diag_loop\00"
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1973]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@dut_str = internal unnamed_addr constant [4 x i8] c"dut\00"
@col_store_row_store_str = internal unnamed_addr constant [20 x i8] c"col_store_row_store\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@a_row_loop_b_col_loop_str = internal unnamed_addr constant [22 x i8] c"a_row_loop_b_col_loop\00"
@a_col_loop_a_row_loop_b_col_lo = internal unnamed_addr constant [33 x i8] c"a_col_loop_a_row_loop_b_col_loop\00"
@p_str1819 = private unnamed_addr constant [10 x i8] c"row_store\00", align 1
@p_str1817 = private unnamed_addr constant [14 x i8] c"off_diag_loop\00", align 1
@p_str1815 = private unnamed_addr constant [8 x i8] c"diag_px\00", align 1
@p_str1814 = private unnamed_addr constant [18 x i8] c"diag_index_update\00", align 1
@p_str1813 = private unnamed_addr constant [10 x i8] c"step_loop\00", align 1
@p_str1811 = private unnamed_addr constant [9 x i8] c"row_load\00", align 1
@p_str1810 = private unnamed_addr constant [9 x i8] c"col_load\00", align 1
@p_str1809 = private unnamed_addr constant [11 x i8] c"b_col_loop\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc void @dut_svd_pairs([614656 x float]* nocapture %A, [614656 x float]* nocapture %S, [614656 x float]* nocapture %U, [614656 x float]* nocapture %V) {
  %diag1_i = alloca [784 x i32], align 4
  %diag2_i = alloca [784 x i32], align 4
  %s_col1 = alloca [614656 x float], align 4
  %s_col2 = alloca [614656 x float], align 4
  %u_col1 = alloca [614656 x float], align 4
  %u_col2 = alloca [614656 x float], align 4
  %v_col1 = alloca [614656 x float], align 4
  %v_col2 = alloca [614656 x float], align 4
  %diag_w_out = alloca [392 x float], align 16
  %diag_x_out = alloca [392 x float], align 16
  %diag_y_out = alloca [392 x float], align 16
  %diag_z_out = alloca [392 x float], align 16
  %uw_new = alloca [392 x float], align 16
  %ux_new = alloca [392 x float], align 16
  %uy_new = alloca [392 x float], align 16
  %uz_new = alloca [392 x float], align 16
  %vw_new = alloca [392 x float], align 16
  %vx_new = alloca [392 x float], align 16
  %vy_new = alloca [392 x float], align 16
  %vz_new = alloca [392 x float], align 16
  br label %1

; <label>:1                                       ; preds = %4, %0
  %col = phi i9 [ 0, %0 ], [ %col_1, %4 ]
  %phi_mul1 = phi i20 [ 0, %0 ], [ %next_mul1, %4 ]
  %next_mul1 = add i20 %phi_mul1, 1568
  %exitcond9 = icmp eq i9 %col, -120
  %col_1 = add i9 %col, 1
  br i1 %exitcond9, label %.preheader12.preheader, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 392, i64 392, i64 392)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1810) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1810)
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %col, i1 false)
  %tmp_cast = zext i10 %tmp to i32
  %tmp_1 = zext i9 %col to i64
  %diag2_i_addr = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_1
  %diag1_i_addr = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_1
  store i32 %tmp_cast, i32* %diag1_i_addr, align 4
  %tmp_2 = or i10 %tmp, 1
  %tmp_2_cast = zext i10 %tmp_2 to i32
  store i32 %tmp_2_cast, i32* %diag2_i_addr, align 4
  %tmp_3_cast = zext i10 %tmp to i20
  %tmp_4_cast = zext i10 %tmp_2 to i20
  br label %3

; <label>:3                                       ; preds = %ifBlock, %2
  %row = phi i10 [ 0, %2 ], [ %row_1, %ifBlock ]
  %phi_mul = phi i20 [ 0, %2 ], [ %next_mul, %ifBlock ]
  %exitcond8 = icmp eq i10 %row, -240
  %row_1 = add i10 %row, 1
  br i1 %exitcond8, label %4, label %ifBlock

ifBlock:                                          ; preds = %3
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1811) nounwind
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1811)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_7_cast = zext i10 %row to i20
  %next_mul = add i20 %phi_mul, 784
  %tmp_14 = add i20 %phi_mul, %tmp_3_cast
  %tmp_31_cast = zext i20 %tmp_14 to i64
  %A_addr = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_31_cast
  %tmp_15 = add i20 %phi_mul, %tmp_4_cast
  %tmp_37_cast = zext i20 %tmp_15 to i64
  %A_addr_1 = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_37_cast
  %tmp_16 = add i20 %phi_mul1, %tmp_7_cast
  %tmp_38_cast = zext i20 %tmp_16 to i64
  %s_col1_addr = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_38_cast
  %s_col2_addr = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_38_cast
  %A_load = load float* %A_addr, align 4
  store float %A_load, float* %s_col1_addr, align 4
  %A_load_1 = load float* %A_addr_1, align 4
  store float %A_load_1, float* %s_col2_addr, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1811, i32 %tmp_12)
  br label %3

; <label>:4                                       ; preds = %3
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1810, i32 %tmp_5)
  br label %1

.preheader12.preheader:                           ; preds = %1, %30
  %indvar_flatten1 = phi i13 [ %indvar_flatten_next2, %30 ], [ 0, %1 ]
  %sweepnum = phi i4 [ %sweepnum_cast_mid2_v, %30 ], [ 0, %1 ]
  %step = phi i10 [ %step_1, %30 ], [ 0, %1 ]
  %exitcond_flatten1 = icmp eq i13 %indvar_flatten1, -362
  %indvar_flatten_next2 = add i13 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %.preheader.preheader, label %.preheader12

; <label>:5                                       ; preds = %12, %.preheader12
  %px = phi i9 [ 0, %.preheader12 ], [ %px_1, %12 ]
  %exitcond5 = icmp eq i9 %px, -120
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 392, i64 392, i64 392)
  %px_1 = add i9 %px, 1
  br i1 %exitcond5, label %.preheader11, label %6

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str1814) nounwind
  %tmp_17 = icmp eq i9 %px, 0
  br i1 %tmp_17, label %7, label %8

; <label>:7                                       ; preds = %6
  %diag1_i_load = load i32* %diag1_i_addr_1, align 16
  store i32 %diag1_i_load, i32* %diag1_i_addr_2, align 16
  %diag2_i_load = load i32* %diag2_i_addr_1, align 16
  store i32 %diag2_i_load, i32* %diag1_i_addr_3, align 4
  br label %12

; <label>:8                                       ; preds = %6
  %tmp_18 = icmp eq i9 %px, -121
  br i1 %tmp_18, label %9, label %10

; <label>:9                                       ; preds = %8
  %diag1_i_load_2 = load i32* %diag1_i_addr_5, align 4
  store i32 %diag1_i_load_2, i32* %diag2_i_addr_3, align 4
  %diag2_i_load_2 = load i32* %diag2_i_addr_4, align 4
  store i32 %diag2_i_load_2, i32* %diag2_i_addr_5, align 8
  br label %11

; <label>:10                                      ; preds = %8
  %tmp_23_cast = zext i9 %px to i10
  %tmp_47 = add i10 %tmp_8_cast1, %tmp_23_cast
  %tmp_141_cast = zext i10 %tmp_47 to i64
  %diag2_i_addr_6 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_141_cast
  %diag1_i_addr_6 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_141_cast
  %diag1_i_load_3 = load i32* %diag1_i_addr_6, align 4
  %tmp_25_cast = zext i9 %px_1 to i10
  %tmp_48 = add i10 %tmp_10_cast1, %tmp_25_cast
  %tmp_142_cast = zext i10 %tmp_48 to i64
  %diag1_i_addr_7 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_142_cast
  store i32 %diag1_i_load_3, i32* %diag1_i_addr_7, align 4
  %diag2_i_load_3 = load i32* %diag2_i_addr_6, align 4
  %tmp_26 = add i9 %px, -1
  %tmp_27_cast = zext i9 %tmp_26 to i10
  %tmp_55 = add i10 %tmp_10_cast1, %tmp_27_cast
  %tmp_143_cast = zext i10 %tmp_55 to i64
  %diag2_i_addr_7 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_143_cast
  store i32 %diag2_i_load_3, i32* %diag2_i_addr_7, align 4
  br label %11

; <label>:11                                      ; preds = %10, %9
  br label %12

; <label>:12                                      ; preds = %11, %7
  br label %5

.preheader11:                                     ; preds = %5, %"svd2x2<float, float, float>.exit"
  %px1 = phi i9 [ %px_3, %"svd2x2<float, float, float>.exit" ], [ 0, %5 ]
  %exitcond4 = icmp eq i9 %px1, -120
  %px_3 = add i9 %px1, 1
  br i1 %exitcond4, label %.preheader10.preheader, label %_ifconv

.preheader10.preheader:                           ; preds = %.preheader11
  %tmp_23 = trunc i10 %step_mid2 to i4
  %tmp_13 = or i4 %tmp_23, %sweepnum_cast_mid2_v
  %tmp_24 = call i6 @_ssdm_op_PartSelect.i6.i10.i32.i32(i10 %step_mid2, i32 4, i32 9)
  %tmp_19 = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_24, i4 %tmp_13)
  %tmp_20 = icmp eq i10 %tmp_19, 0
  %sel_tmp2 = xor i1 %tmp_20, true
  br label %24

_ifconv:                                          ; preds = %.preheader11
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 392, i64 392, i64 392)
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @p_str1815) nounwind
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([8 x i8]* @p_str1815)
  call void (...)* @_ssdm_op_SpecPipeline(i32 8, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_21 = zext i9 %px1 to i64
  %tmp_21_cast = zext i9 %px1 to i10
  %tmp_27 = add i10 %tmp_8_cast1, %tmp_21_cast
  %tmp_135_cast = zext i10 %tmp_27 to i64
  %diag2_i_addr_2 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_135_cast
  %tmp_28 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %px1, i1 %INPUT_BANK)
  %tmp_137_cast = zext i10 %tmp_28 to i21
  %tmp_29 = mul i21 784, %tmp_137_cast
  %diag1_i_addr_4 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_135_cast
  %d1_i_3 = load i32* %diag1_i_addr_4, align 4
  %d2_i = load i32* %diag2_i_addr_2, align 4
  %tmp_22 = icmp slt i32 %d1_i_3, %d2_i
  %tmp_30 = trunc i32 %d1_i_3 to i21
  %tmp_31 = trunc i32 %d2_i to i21
  %tmp_32 = select i1 %tmp_22, i21 %tmp_30, i21 %tmp_31
  %tmp_33 = add i21 %tmp_29, %tmp_32
  %tmp_139_cast = sext i21 %tmp_33 to i64
  %s_col1_addr_2 = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_139_cast
  %s_col2_addr_2 = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_139_cast
  %w_in_7 = load float* %s_col1_addr_2, align 4
  %x_in = load float* %s_col2_addr_2, align 4
  %tmp_35 = select i1 %tmp_22, i21 %tmp_31, i21 %tmp_30
  %tmp_37 = add i21 %tmp_29, %tmp_35
  %tmp_140_cast = sext i21 %tmp_37 to i64
  %s_col1_addr_3 = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_140_cast
  %s_col2_addr_3 = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_140_cast
  %y_in_7 = load float* %s_col1_addr_3, align 4
  %z_in = load float* %s_col2_addr_3, align 4
  %z_in_1 = select i1 %tmp_22, float %z_in, float %y_in_7
  %y_in = select i1 %tmp_22, float %y_in_7, float %z_in
  %x_in_1 = select i1 %tmp_22, float %x_in, float %w_in_7
  %w_in = select i1 %tmp_22, float %w_in_7, float %x_in
  %uw_new_addr = getelementptr inbounds [392 x float]* %uw_new, i64 0, i64 %tmp_21
  %ux_new_addr = getelementptr inbounds [392 x float]* %ux_new, i64 0, i64 %tmp_21
  %uy_new_addr = getelementptr inbounds [392 x float]* %uy_new, i64 0, i64 %tmp_21
  %uz_new_addr = getelementptr inbounds [392 x float]* %uz_new, i64 0, i64 %tmp_21
  %vw_new_addr = getelementptr inbounds [392 x float]* %vw_new, i64 0, i64 %tmp_21
  %vx_new_addr = getelementptr inbounds [392 x float]* %vx_new, i64 0, i64 %tmp_21
  %vy_new_addr = getelementptr inbounds [392 x float]* %vy_new, i64 0, i64 %tmp_21
  %vz_new_addr = getelementptr inbounds [392 x float]* %vz_new, i64 0, i64 %tmp_21
  %diag_w_out_addr = getelementptr inbounds [392 x float]* %diag_w_out, i64 0, i64 %tmp_21
  %diag_x_out_addr = getelementptr inbounds [392 x float]* %diag_x_out, i64 0, i64 %tmp_21
  %diag_y_out_addr = getelementptr inbounds [392 x float]* %diag_y_out, i64 0, i64 %tmp_21
  %diag_z_out_addr = getelementptr inbounds [392 x float]* %diag_z_out, i64 0, i64 %tmp_21
  %u1 = fsub float %z_in_1, %w_in
  %u2 = fadd float %y_in, %x_in_1
  %p_Val2_s = bitcast float %u1 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30)
  %p_Val2_3 = bitcast float %u2 to i32
  %p_Result_15 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_3, i32 31)
  %loc_V_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_3, i32 23, i32 30)
  %lhs_V_cast = zext i8 %loc_V_1 to i9
  %r_V = add i9 24, %lhs_V_cast
  %tmp_41_cast = zext i8 %loc_V to i9
  %tmp_40 = icmp ult i9 %r_V, %tmp_41_cast
  %tmp_41 = icmp eq i8 %loc_V_1, 0
  %or_cond = or i1 %tmp_40, %tmp_41
  br i1 %or_cond, label %.critedge, label %"within_precision<float>.exit"

.critedge:                                        ; preds = %_ifconv
  %sinA_half_i = select i1 %p_Result_s, float 1.000000e+00, float 0.000000e+00
  %cosA_half_i = select i1 %p_Result_s, float 0.000000e+00, float 1.000000e+00
  br label %"calc_angle<float, float>.exit"

"within_precision<float>.exit":                   ; preds = %_ifconv
  %r_V_1 = add i9 %tmp_41_cast, 24
  %tmp_43 = icmp ult i9 %r_V_1, %lhs_V_cast
  %tmp_46 = icmp eq i8 %loc_V, 0
  %or_cond1 = or i1 %tmp_43, %tmp_46
  br i1 %or_cond1, label %.critedge294, label %"within_precision<float>.exit111"

.critedge294:                                     ; preds = %"within_precision<float>.exit"
  %cosA_half = select i1 %p_Result_15, float 0xBFE6A09E60000000, float 0x3FE6A09E60000000
  br label %"calc_angle<float, float>.exit"

"within_precision<float>.exit111":                ; preds = %"within_precision<float>.exit"
  %tanThetaA = fdiv float %u2, %u1
  %p_Result_16 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %p_Result_s, i31 1065353216)
  %ret_0_i = bitcast i32 %p_Result_16 to float
  %tmp_49 = fmul float %tanThetaA, %tanThetaA
  %x_assign = fadd float %tmp_49, 1.000000e+00
  %tmp_50 = call float @_ssdm_op_FRSqrt(float %x_assign) nounwind
  %cosThetaA_int = fmul float %ret_0_i, %tmp_50
  %sinThetaA_int = fmul float %cosThetaA_int, %tanThetaA
  %p_Val2_5 = bitcast float %cosThetaA_int to i32
  %p_Result_17 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_5, i32 31)
  br i1 %p_Result_17, label %13, label %14

; <label>:13                                      ; preds = %"within_precision<float>.exit111"
  %tmp_51 = fsub float 1.000000e+00, %cosThetaA_int
  %tanThetaAdiv2 = fdiv float %tmp_51, %sinThetaA_int
  br label %15

; <label>:14                                      ; preds = %"within_precision<float>.exit111"
  %tmp_53 = fadd float %cosThetaA_int, 1.000000e+00
  %tanThetaAdiv2_1 = fdiv float %sinThetaA_int, %tmp_53
  br label %15

; <label>:15                                      ; preds = %14, %13
  %tanThetaAdiv2_0_i = phi float [ %tanThetaAdiv2, %13 ], [ %tanThetaAdiv2_1, %14 ]
  %tmp_59 = fmul float %tanThetaAdiv2_0_i, %tanThetaAdiv2_0_i
  %x_assign_2 = fadd float %tmp_59, 1.000000e+00
  %cosThetaAdiv2_int = call float @_ssdm_op_FRSqrt(float %x_assign_2) nounwind
  %tmp_60 = fmul float %cosThetaAdiv2_int, %tanThetaAdiv2_0_i
  br label %"calc_angle<float, float>.exit"

"calc_angle<float, float>.exit":                  ; preds = %15, %.critedge294, %.critedge
  %a2_assign_s = phi float [ %sinA_half_i, %.critedge ], [ 0x3FE6A09E60000000, %.critedge294 ], [ %tmp_60, %15 ]
  %a1_assign_s = phi float [ %cosA_half_i, %.critedge ], [ %cosA_half, %.critedge294 ], [ %cosThetaAdiv2_int, %15 ]
  %u1_1 = fadd float %z_in_1, %w_in
  %u2_1 = fsub float %y_in, %x_in_1
  %p_Val2_12 = bitcast float %u1_1 to i32
  %p_Result_10 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_12, i32 31)
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_12, i32 23, i32 30)
  %p_Val2_11 = bitcast float %u2_1 to i32
  %p_Result_18 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_11, i32 31)
  %loc_V_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_11, i32 23, i32 30)
  %lhs_V_4_cast = zext i8 %loc_V_3 to i9
  %r_V_2 = add i9 %lhs_V_4_cast, 24
  %tmp_64_cast = zext i8 %loc_V_2 to i9
  %tmp_65 = icmp ult i9 %r_V_2, %tmp_64_cast
  %tmp_66 = icmp eq i8 %loc_V_3, 0
  %or_cond2 = or i1 %tmp_65, %tmp_66
  br i1 %or_cond2, label %.critedge295, label %"within_precision<float>.exit166"

.critedge295:                                     ; preds = %"calc_angle<float, float>.exit"
  %sinB_half_i = select i1 %p_Result_10, float 1.000000e+00, float 0.000000e+00
  %cosB_half_i = select i1 %p_Result_10, float 0.000000e+00, float 1.000000e+00
  br label %"calc_angle<float, float>.exit44"

"within_precision<float>.exit166":                ; preds = %"calc_angle<float, float>.exit"
  %r_V_3 = add i9 %tmp_64_cast, 24
  %tmp_72 = icmp ult i9 %r_V_3, %lhs_V_4_cast
  %tmp_74 = icmp eq i8 %loc_V_2, 0
  %or_cond3 = or i1 %tmp_72, %tmp_74
  br i1 %or_cond3, label %.critedge296, label %"within_precision<float>.exit208"

.critedge296:                                     ; preds = %"within_precision<float>.exit166"
  %cosB_half = select i1 %p_Result_18, float 0xBFE6A09E60000000, float 0x3FE6A09E60000000
  br label %"calc_angle<float, float>.exit44"

"within_precision<float>.exit208":                ; preds = %"within_precision<float>.exit166"
  %tanThetaA_1 = fdiv float %u2_1, %u1_1
  %p_Result_19 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %p_Result_10, i31 1065353216)
  %ret_0_i1 = bitcast i32 %p_Result_19 to float
  %tmp_83 = fmul float %tanThetaA_1, %tanThetaA_1
  %x_assign_5 = fadd float %tmp_83, 1.000000e+00
  %tmp_84 = call float @_ssdm_op_FRSqrt(float %x_assign_5) nounwind
  %cosThetaA_int_1 = fmul float %ret_0_i1, %tmp_84
  %sinThetaA_int_1 = fmul float %cosThetaA_int_1, %tanThetaA_1
  %p_Val2_14 = bitcast float %cosThetaA_int_1 to i32
  %p_Result_20 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_14, i32 31)
  br i1 %p_Result_20, label %16, label %17

; <label>:16                                      ; preds = %"within_precision<float>.exit208"
  %tmp_94 = fsub float 1.000000e+00, %cosThetaA_int_1
  %tanThetaAdiv2_2 = fdiv float %tmp_94, %sinThetaA_int_1
  br label %18

; <label>:17                                      ; preds = %"within_precision<float>.exit208"
  %tmp_95 = fadd float %cosThetaA_int_1, 1.000000e+00
  %tanThetaAdiv2_3 = fdiv float %sinThetaA_int_1, %tmp_95
  br label %18

; <label>:18                                      ; preds = %17, %16
  %tanThetaAdiv2_0_i1 = phi float [ %tanThetaAdiv2_2, %16 ], [ %tanThetaAdiv2_3, %17 ]
  %tmp_97 = fmul float %tanThetaAdiv2_0_i1, %tanThetaAdiv2_0_i1
  %x_assign_7 = fadd float %tmp_97, 1.000000e+00
  %cosThetaAdiv2_int_1 = call float @_ssdm_op_FRSqrt(float %x_assign_7) nounwind
  %tmp_98 = fmul float %cosThetaAdiv2_int_1, %tanThetaAdiv2_0_i1
  br label %"calc_angle<float, float>.exit44"

"calc_angle<float, float>.exit44":                ; preds = %18, %.critedge296, %.critedge295
  %b2_assign_1 = phi float [ %sinB_half_i, %.critedge295 ], [ 0x3FE6A09E60000000, %.critedge296 ], [ %tmp_98, %18 ]
  %b1_assign = phi float [ %cosB_half_i, %.critedge295 ], [ %cosB_half, %.critedge296 ], [ %cosThetaAdiv2_int_1, %18 ]
  %tmp_111 = fmul float %a1_assign_s, %b1_assign
  %tmp_112 = fmul float %a2_assign_s, %b2_assign_1
  %c1 = fadd float %tmp_111, %tmp_112
  %a2_assign_11_to_int = bitcast float %a1_assign_s to i32
  %a2_assign_11_neg = xor i32 %a2_assign_11_to_int, -2147483648
  %a2_assign_2 = bitcast i32 %a2_assign_11_neg to float
  %tmp_113 = fmul float %a2_assign_s, %b1_assign
  %tmp_114 = fmul float %b2_assign_1, %a2_assign_2
  %s1 = fadd float %tmp_113, %tmp_114
  %a2_assign_12_to_int = bitcast float %a2_assign_s to i32
  %a2_assign_12_neg = xor i32 %a2_assign_12_to_int, -2147483648
  %a2_assign_3 = bitcast i32 %a2_assign_12_neg to float
  %tmp_115 = fmul float %b2_assign_1, %a2_assign_3
  %c2 = fadd float %tmp_111, %tmp_115
  %tmp_116 = fmul float %a1_assign_s, %b2_assign_1
  %s2 = fadd float %tmp_113, %tmp_116
  %uy_int_to_int = bitcast float %s1 to i32
  %uy_int_neg = xor i32 %uy_int_to_int, -2147483648
  %uy_int = bitcast i32 %uy_int_neg to float
  %vy_int_to_int = bitcast float %s2 to i32
  %vy_int_neg = xor i32 %vy_int_to_int, -2147483648
  %vy_int = bitcast i32 %vy_int_neg to float
  %tmp_117 = fmul float %w_in, %c2
  %tmp_118 = fmul float %x_in_1, %vy_int
  %w_out1 = fadd float %tmp_117, %tmp_118
  %tmp_119 = fmul float %y_in, %c2
  %tmp_120 = fmul float %z_in_1, %vy_int
  %w_out2 = fadd float %tmp_119, %tmp_120
  %tmp_121 = fmul float %c1, %w_out1
  %tmp_122 = fmul float %w_out2, %uy_int
  %w_out_int = fadd float %tmp_121, %tmp_122
  %tmp_123 = fmul float %w_in, %s2
  %tmp_124 = fmul float %x_in_1, %c2
  %z_out1 = fadd float %tmp_123, %tmp_124
  %tmp_125 = fmul float %y_in, %s2
  %tmp_126 = fmul float %z_in_1, %c2
  %z_out2 = fadd float %tmp_125, %tmp_126
  %tmp_127 = fmul float %s1, %z_out1
  %tmp_128 = fmul float %c1, %z_out2
  %z_out_int = fadd float %tmp_127, %tmp_128
  store float 0.000000e+00, float* %diag_x_out_addr, align 4
  store float 0.000000e+00, float* %diag_y_out_addr, align 4
  %p_Val2_15 = bitcast float %w_out_int to i32
  %p_Result_21 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_15, i32 31)
  br i1 %p_Result_21, label %19, label %20

; <label>:19                                      ; preds = %"calc_angle<float, float>.exit44"
  %tmp_144_neg = xor i32 %p_Val2_15, -2147483648
  %tmp_129 = bitcast i32 %tmp_144_neg to float
  store float %tmp_129, float* %diag_w_out_addr, align 4
  %vw_int_to_int = bitcast float %c2 to i32
  %vw_int_neg = xor i32 %vw_int_to_int, -2147483648
  %vw_int = bitcast i32 %vw_int_neg to float
  br label %21

; <label>:20                                      ; preds = %"calc_angle<float, float>.exit44"
  store float %w_out_int, float* %diag_w_out_addr, align 4
  br label %21

; <label>:21                                      ; preds = %20, %19
  %vw_int_0_i = phi float [ %vw_int, %19 ], [ %c2, %20 ]
  %vy_int_0_i = phi float [ %s2, %19 ], [ %vy_int, %20 ]
  %p_Val2_16 = bitcast float %z_out_int to i32
  %p_Result_22 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_16, i32 31)
  br i1 %p_Result_22, label %22, label %23

; <label>:22                                      ; preds = %21
  %tmp_150_neg = xor i32 %p_Val2_16, -2147483648
  %tmp_130 = bitcast i32 %tmp_150_neg to float
  store float %tmp_130, float* %diag_z_out_addr, align 4
  %vz_int_to_int = bitcast float %c2 to i32
  %vz_int_neg = xor i32 %vz_int_to_int, -2147483648
  %vz_int = bitcast i32 %vz_int_neg to float
  br label %"svd2x2<float, float, float>.exit"

; <label>:23                                      ; preds = %21
  store float %z_out_int, float* %diag_z_out_addr, align 4
  br label %"svd2x2<float, float, float>.exit"

"svd2x2<float, float, float>.exit":               ; preds = %23, %22
  %vx_int_0_i = phi float [ %vy_int, %22 ], [ %s2, %23 ]
  %vz_int_0_i = phi float [ %vz_int, %22 ], [ %c2, %23 ]
  store float %c1, float* %uw_new_addr, align 4
  store float %s1, float* %ux_new_addr, align 4
  store float %uy_int, float* %uy_new_addr, align 4
  store float %c1, float* %uz_new_addr, align 4
  store float %vw_int_0_i, float* %vw_new_addr, align 4
  store float %vx_int_0_i, float* %vx_new_addr, align 4
  store float %vy_int_0_i, float* %vy_new_addr, align 4
  store float %vz_int_0_i, float* %vz_new_addr, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([8 x i8]* @p_str1815, i32 %tmp_25)
  br label %.preheader11

; <label>:24                                      ; preds = %ifBlock1, %.preheader10.preheader
  %indvar_flatten = phi i18 [ 0, %.preheader10.preheader ], [ %indvar_flatten_next, %ifBlock1 ]
  %px2 = phi i9 [ 0, %.preheader10.preheader ], [ %p_v, %ifBlock1 ]
  %off_px = phi i9 [ 0, %.preheader10.preheader ], [ %off_px_1, %ifBlock1 ]
  %tmp_28_cast = zext i9 %px2 to i10
  %tmp_42 = add i10 %tmp_8_cast1, %tmp_28_cast
  %tmp_144_cast = zext i10 %tmp_42 to i64
  %diag2_i_addr_8 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_144_cast
  %diag1_i_addr_8 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_144_cast
  %c1_i_2 = load i32* %diag1_i_addr_8, align 4
  %c2_i = load i32* %diag2_i_addr_8, align 4
  %slt = icmp slt i32 %c1_i_2, %c2_i
  %rev = xor i1 %slt, true
  %tmp_34 = icmp eq i9 %px2, 0
  %px_2 = add i9 %px2, 1
  %tmp_35_cast = zext i9 %px_2 to i10
  %tmp_36 = icmp eq i9 %px2, -121
  %exitcond_flatten = icmp eq i18 %indvar_flatten, -108480
  %indvar_flatten_next = add i18 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %30, label %.preheader10

; <label>:25                                      ; preds = %.preheader10
  store float %x_out_0_w_out, float* %s_col1_addr_6, align 4
  store float %w_out_0_x_out, float* %s_col1_addr_7, align 4
  store float %z_out_0_y_out, float* %s_col1_addr_8, align 4
  store float %y_out_0_z_out, float* %s_col1_addr_9, align 4
  store float %ux_out_0_uw_out, float* %u_col1_addr_3, align 4
  store float %uw_out_0_ux_out, float* %u_col1_addr_4, align 4
  store float %uz_out_0_uy_out, float* %u_col1_addr_5, align 4
  store float %uy_out_0_uz_out, float* %u_col1_addr_6, align 4
  store float %vx_out_0_vw_out, float* %v_col1_addr_3, align 4
  store float %vw_out_0_vx_out, float* %v_col1_addr_4, align 4
  store float %vz_out_0_vy_out, float* %v_col1_addr_5, align 4
  store float %vy_out_0_vz_out, float* %v_col1_addr_6, align 4
  br label %ifBlock1

; <label>:26                                      ; preds = %.preheader10
  br i1 %tmp_36_mid2, label %27, label %28

; <label>:27                                      ; preds = %26
  store float %x_out_0_w_out, float* %s_col2_addr_6, align 4
  store float %w_out_0_x_out, float* %s_col2_addr_7, align 4
  store float %z_out_0_y_out, float* %s_col2_addr_8, align 4
  store float %y_out_0_z_out, float* %s_col2_addr_9, align 4
  store float %ux_out_0_uw_out, float* %u_col2_addr_3, align 4
  store float %uw_out_0_ux_out, float* %u_col2_addr_4, align 4
  store float %uz_out_0_uy_out, float* %u_col2_addr_5, align 4
  store float %uy_out_0_uz_out, float* %u_col2_addr_6, align 4
  store float %vx_out_0_vw_out, float* %v_col2_addr_3, align 4
  store float %vw_out_0_vx_out, float* %v_col2_addr_4, align 4
  store float %vz_out_0_vy_out, float* %v_col2_addr_5, align 4
  br label %29

; <label>:28                                      ; preds = %26
  store float %x_out_0_w_out, float* %s_col1_addr_7, align 4
  store float %w_out_0_x_out, float* %s_col2_addr_7, align 4
  store float %z_out_0_y_out, float* %s_col1_addr_9, align 4
  store float %y_out_0_z_out, float* %s_col2_addr_9, align 4
  store float %ux_out_0_uw_out, float* %u_col1_addr_4, align 4
  store float %uw_out_0_ux_out, float* %u_col2_addr_4, align 4
  store float %uz_out_0_uy_out, float* %u_col1_addr_6, align 4
  store float %uy_out_0_uz_out, float* %u_col2_addr_6, align 4
  store float %vx_out_0_vw_out, float* %v_col1_addr_4, align 4
  store float %vw_out_0_vx_out, float* %v_col2_addr_4, align 4
  store float %vz_out_0_vy_out, float* %v_col1_addr_6, align 4
  br label %29

; <label>:29                                      ; preds = %28, %27
  store float %vy_out_0_vz_out, float* %v_col2_addr_6, align 4
  br label %ifBlock1

ifBlock1:                                         ; preds = %29, %25
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str1817, i32 %tmp_54)
  %off_px_1 = add i9 %off_px_mid2, 1
  br label %24

.preheader10:                                     ; preds = %24
  call void (...)* @_ssdm_op_SpecLoopName([26 x i8]* @off_diag_px_off_diag_loop_str)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 153664, i64 153664, i64 153664)
  %exitcond2 = icmp eq i9 %off_px, -120
  %off_px_mid2 = select i1 %exitcond2, i9 0, i9 %off_px
  %tmp_56 = add i10 %tmp_35_cast, %tmp_8_cast1
  %tmp_145_cast = zext i10 %tmp_56 to i64
  %diag2_i_addr_10 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_145_cast
  %diag1_i_addr_10 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_145_cast
  %p_v = select i1 %exitcond2, i9 %px_2, i9 %px2
  %tmp_131 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %p_v, i1 %INPUT_BANK)
  %tmp_147_cast = zext i10 %tmp_131 to i21
  %tmp_132 = mul i21 784, %tmp_147_cast
  %tmp_133 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %p_v, i1 %OUTPUT_BANK)
  %tmp_149_cast = zext i10 %tmp_133 to i21
  %tmp_134 = mul i21 784, %tmp_149_cast
  %diag1_i_load_5 = load i32* %diag1_i_addr_10, align 4
  %diag2_i_load_5 = load i32* %diag2_i_addr_10, align 4
  %slt1 = icmp slt i32 %diag1_i_load_5, %diag2_i_load_5
  %rev1 = xor i1 %slt1, true
  %not_tmp_mid2 = select i1 %exitcond2, i1 %rev1, i1 %rev
  %uw_new_px_mid2_cast = zext i9 %p_v to i64
  %uw_new_addr_1 = getelementptr [392 x float]* %uw_new, i64 0, i64 %uw_new_px_mid2_cast
  %uw_new_load = load float* %uw_new_addr_1, align 4
  %ux_new_addr_1 = getelementptr [392 x float]* %ux_new, i64 0, i64 %uw_new_px_mid2_cast
  %ux_new_load = load float* %ux_new_addr_1, align 4
  %uy_new_addr_1 = getelementptr [392 x float]* %uy_new, i64 0, i64 %uw_new_px_mid2_cast
  %uy_new_load = load float* %uy_new_addr_1, align 4
  %uz_new_addr_1 = getelementptr [392 x float]* %uz_new, i64 0, i64 %uw_new_px_mid2_cast
  %uz_new_load = load float* %uz_new_addr_1, align 4
  %tmp_34_mid1 = icmp eq i9 %px_2, 0
  %tmp_34_mid2 = select i1 %exitcond2, i1 %tmp_34_mid1, i1 %tmp_34
  %px_2_mid1 = add i9 2, %px2
  %tmp_135 = select i1 %exitcond2, i9 %px_2_mid1, i9 %px_2
  %tmp_136 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp_135, i1 %OUTPUT_BANK)
  %tmp_152_cast = zext i10 %tmp_136 to i21
  %tmp_137 = mul i21 784, %tmp_152_cast
  %tmp_36_mid1 = icmp eq i9 %px_2, -121
  %tmp_36_mid2 = select i1 %exitcond2, i1 %tmp_36_mid1, i1 %tmp_36
  %tmp_38_mid2_v_v = zext i9 %p_v to i10
  %tmp_38_mid2_v = add i10 -1, %tmp_38_mid2_v_v
  %tmp_138 = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_38_mid2_v, i1 %OUTPUT_BANK)
  %tmp_155_cast = sext i11 %tmp_138 to i21
  %tmp_139 = mul i21 784, %tmp_155_cast
  %diag_w_out_addr_1 = getelementptr [392 x float]* %diag_w_out, i64 0, i64 %uw_new_px_mid2_cast
  %diag_w_out_load = load float* %diag_w_out_addr_1, align 4
  %diag_x_out_addr_1 = getelementptr [392 x float]* %diag_x_out, i64 0, i64 %uw_new_px_mid2_cast
  %diag_x_out_load = load float* %diag_x_out_addr_1, align 4
  %diag_y_out_addr_1 = getelementptr [392 x float]* %diag_y_out, i64 0, i64 %uw_new_px_mid2_cast
  %diag_y_out_load = load float* %diag_y_out_addr_1, align 4
  %diag_z_out_addr_1 = getelementptr [392 x float]* %diag_z_out, i64 0, i64 %uw_new_px_mid2_cast
  %diag_z_out_load = load float* %diag_z_out_addr_1, align 4
  %vw_new_addr_1 = getelementptr [392 x float]* %vw_new, i64 0, i64 %uw_new_px_mid2_cast
  %vw_new_load = load float* %vw_new_addr_1, align 4
  %vx_new_addr_1 = getelementptr [392 x float]* %vx_new, i64 0, i64 %uw_new_px_mid2_cast
  %vx_new_load = load float* %vx_new_addr_1, align 4
  %vy_new_addr_1 = getelementptr [392 x float]* %vy_new, i64 0, i64 %uw_new_px_mid2_cast
  %vy_new_load = load float* %vy_new_addr_1, align 4
  %vz_new_addr_1 = getelementptr [392 x float]* %vz_new, i64 0, i64 %uw_new_px_mid2_cast
  %vz_new_load = load float* %vz_new_addr_1, align 4
  %sel_tmp3_mid2 = and i1 %not_tmp_mid2, %sel_tmp2
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1817) nounwind
  %tmp_54 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str1817)
  call void (...)* @_ssdm_op_SpecPipeline(i32 8, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_44 = zext i9 %off_px_mid2 to i64
  %tmp_44_cast = zext i9 %off_px_mid2 to i10
  %tmp_140 = add i10 %tmp_44_cast, %tmp_8_cast1
  %tmp_157_cast = zext i10 %tmp_140 to i64
  %diag2_i_addr_9 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_157_cast
  %diag1_i_addr_9 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_157_cast
  %d1_i = load i32* %diag1_i_addr_9, align 4
  %d2_i_3 = load i32* %diag2_i_addr_9, align 4
  %tmp_45 = icmp slt i32 %d1_i, %d2_i_3
  %tmp_52 = icmp eq i9 %p_v, %off_px_mid2
  %vz_in = select i1 %tmp_52, float 1.000000e+00, float 0.000000e+00
  %tmp_141 = trunc i32 %d1_i to i21
  %tmp_142 = trunc i32 %d2_i_3 to i21
  %tmp_143 = select i1 %tmp_45, i21 %tmp_141, i21 %tmp_142
  %tmp_144 = add i21 %tmp_143, %tmp_132
  %tmp_158_cast = zext i21 %tmp_144 to i64
  %v_col1_addr_1 = getelementptr [614656 x float]* %v_col1, i64 0, i64 %tmp_158_cast
  %tmp_145 = add i21 %tmp_143, %tmp_134
  %tmp_159_cast = zext i21 %tmp_145 to i64
  %v_col1_addr_3 = getelementptr [614656 x float]* %v_col1, i64 0, i64 %tmp_159_cast
  %tmp_146 = add i21 %tmp_143, %tmp_137
  %tmp_160_cast = zext i21 %tmp_146 to i64
  %v_col1_addr_4 = getelementptr [614656 x float]* %v_col1, i64 0, i64 %tmp_160_cast
  %s_col1_addr_4 = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_158_cast
  %s_col1_addr_6 = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_159_cast
  %s_col1_addr_7 = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_160_cast
  %v_col2_addr_1 = getelementptr [614656 x float]* %v_col2, i64 0, i64 %tmp_158_cast
  %v_col2_addr_3 = getelementptr [614656 x float]* %v_col2, i64 0, i64 %tmp_159_cast
  %tmp_147 = add i21 %tmp_143, %tmp_139
  %tmp_161_cast = sext i21 %tmp_147 to i64
  %v_col2_addr_4 = getelementptr [614656 x float]* %v_col2, i64 0, i64 %tmp_161_cast
  %u_col1_addr_1 = getelementptr [614656 x float]* %u_col1, i64 0, i64 %tmp_158_cast
  %u_col1_addr_3 = getelementptr [614656 x float]* %u_col1, i64 0, i64 %tmp_159_cast
  %u_col1_addr_4 = getelementptr [614656 x float]* %u_col1, i64 0, i64 %tmp_160_cast
  %u_col2_addr_1 = getelementptr [614656 x float]* %u_col2, i64 0, i64 %tmp_158_cast
  %u_col2_addr_3 = getelementptr [614656 x float]* %u_col2, i64 0, i64 %tmp_159_cast
  %u_col2_addr_4 = getelementptr [614656 x float]* %u_col2, i64 0, i64 %tmp_161_cast
  %s_col2_addr_4 = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_158_cast
  %s_col2_addr_6 = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_159_cast
  %s_col2_addr_7 = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_161_cast
  %uw_in = load float* %u_col2_addr_1, align 4
  %ux_in = load float* %u_col1_addr_1, align 4
  %tmp_148 = select i1 %tmp_45, i21 %tmp_142, i21 %tmp_141
  %tmp_149 = add i21 %tmp_148, %tmp_132
  %tmp_162_cast = zext i21 %tmp_149 to i64
  %v_col1_addr_2 = getelementptr [614656 x float]* %v_col1, i64 0, i64 %tmp_162_cast
  %tmp_150 = add i21 %tmp_148, %tmp_134
  %tmp_163_cast = zext i21 %tmp_150 to i64
  %v_col1_addr_5 = getelementptr [614656 x float]* %v_col1, i64 0, i64 %tmp_163_cast
  %tmp_151 = add i21 %tmp_148, %tmp_137
  %tmp_164_cast = zext i21 %tmp_151 to i64
  %v_col1_addr_6 = getelementptr [614656 x float]* %v_col1, i64 0, i64 %tmp_164_cast
  %s_col1_addr_5 = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_162_cast
  %s_col1_addr_8 = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_163_cast
  %s_col1_addr_9 = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_164_cast
  %v_col2_addr_2 = getelementptr [614656 x float]* %v_col2, i64 0, i64 %tmp_162_cast
  %v_col2_addr_5 = getelementptr [614656 x float]* %v_col2, i64 0, i64 %tmp_163_cast
  %tmp_152 = add i21 %tmp_148, %tmp_139
  %tmp_165_cast = sext i21 %tmp_152 to i64
  %v_col2_addr_6 = getelementptr [614656 x float]* %v_col2, i64 0, i64 %tmp_165_cast
  %u_col1_addr_2 = getelementptr [614656 x float]* %u_col1, i64 0, i64 %tmp_162_cast
  %u_col1_addr_5 = getelementptr [614656 x float]* %u_col1, i64 0, i64 %tmp_163_cast
  %u_col1_addr_6 = getelementptr [614656 x float]* %u_col1, i64 0, i64 %tmp_164_cast
  %u_col2_addr_2 = getelementptr [614656 x float]* %u_col2, i64 0, i64 %tmp_162_cast
  %u_col2_addr_5 = getelementptr [614656 x float]* %u_col2, i64 0, i64 %tmp_163_cast
  %u_col2_addr_6 = getelementptr [614656 x float]* %u_col2, i64 0, i64 %tmp_165_cast
  %s_col2_addr_5 = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_162_cast
  %s_col2_addr_8 = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_163_cast
  %s_col2_addr_9 = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_165_cast
  %uy_in = load float* %u_col2_addr_2, align 4
  %uz_in = load float* %u_col1_addr_2, align 4
  %vw_in = load float* %v_col2_addr_1, align 4
  %vx_in = load float* %v_col1_addr_1, align 4
  %vy_in = load float* %v_col2_addr_2, align 4
  %vz_in_3 = load float* %v_col1_addr_2, align 4
  %sel_tmp = select i1 %tmp_20, float %vz_in, float %vy_in
  %a4_assign_2 = select i1 %sel_tmp3_mid2, float %vz_in_3, float %sel_tmp
  %sel_tmp5 = select i1 %tmp_20, float 0.000000e+00, float %vz_in_3
  %a3_assign_2 = select i1 %sel_tmp3_mid2, float %vy_in, float %sel_tmp5
  %sel_tmp9 = select i1 %tmp_20, float 0.000000e+00, float %vw_in
  %a2_assign_8 = select i1 %sel_tmp3_mid2, float %vx_in, float %sel_tmp9
  %sel_tmp1 = select i1 %tmp_20, float %vz_in, float %vx_in
  %a1_assign_7 = select i1 %sel_tmp3_mid2, float %vw_in, float %sel_tmp1
  %sel_tmp4 = select i1 %tmp_20, float %vz_in, float %uy_in
  %a4_assign_1 = select i1 %sel_tmp3_mid2, float %uz_in, float %sel_tmp4
  %sel_tmp6 = select i1 %tmp_20, float 0.000000e+00, float %uz_in
  %a3_assign_1 = select i1 %sel_tmp3_mid2, float %uy_in, float %sel_tmp6
  %sel_tmp7 = select i1 %tmp_20, float 0.000000e+00, float %uw_in
  %a2_assign_6 = select i1 %sel_tmp3_mid2, float %ux_in, float %sel_tmp7
  %sel_tmp8 = select i1 %tmp_20, float %vz_in, float %ux_in
  %a1_assign_5 = select i1 %sel_tmp3_mid2, float %uw_in, float %sel_tmp8
  %w_in_8 = load float* %s_col2_addr_4, align 4
  %x_in_6 = load float* %s_col1_addr_4, align 4
  %y_in_8 = load float* %s_col2_addr_5, align 4
  %z_in_6 = load float* %s_col1_addr_5, align 4
  %sel_tmp3 = xor i1 %tmp_52, true
  %sel_tmp10 = and i1 %not_tmp_mid2, %sel_tmp3
  %z_in_4 = select i1 %sel_tmp10, float %z_in_6, float %y_in_8
  %z_in_7 = select i1 %tmp_52, float %diag_z_out_load, float %z_in_4
  %y_in_4 = select i1 %sel_tmp10, float %y_in_8, float %z_in_6
  %y_in_9 = select i1 %tmp_52, float %diag_y_out_load, float %y_in_4
  %x_in_4 = select i1 %sel_tmp10, float %x_in_6, float %w_in_8
  %x_in_7 = select i1 %tmp_52, float %diag_x_out_load, float %x_in_4
  %w_in_4 = select i1 %sel_tmp10, float %w_in_8, float %x_in_6
  %w_in_9 = select i1 %tmp_52, float %diag_w_out_load, float %w_in_4
  %tmp_57 = icmp ult i9 %off_px_mid2, %p_v
  %uw_new_addr_2 = getelementptr inbounds [392 x float]* %uw_new, i64 0, i64 %tmp_44
  %uw_new_load_1 = load float* %uw_new_addr_2, align 4
  %uy_new_addr_2 = getelementptr inbounds [392 x float]* %uy_new, i64 0, i64 %tmp_44
  %uy_new_load_1 = load float* %uy_new_addr_2, align 4
  %ux_new_addr_2 = getelementptr inbounds [392 x float]* %ux_new, i64 0, i64 %tmp_44
  %ux_new_load_1 = load float* %ux_new_addr_2, align 4
  %uz_new_addr_2 = getelementptr inbounds [392 x float]* %uz_new, i64 0, i64 %tmp_44
  %uz_new_load_1 = load float* %uz_new_addr_2, align 4
  %tmp_58 = fmul float %uw_new_load_1, %w_in_9
  %tmp_61 = fmul float %uy_new_load_1, %y_in_9
  %w_int1 = fadd float %tmp_58, %tmp_61
  %tmp_62 = fmul float %uw_new_load_1, %x_in_7
  %tmp_63 = fmul float %uy_new_load_1, %z_in_7
  %x_int1 = fadd float %tmp_62, %tmp_63
  %tmp_64 = fmul float %ux_new_load_1, %w_in_9
  %tmp_67 = fmul float %uz_new_load_1, %y_in_9
  %y_int1 = fadd float %tmp_64, %tmp_67
  %tmp_68 = fmul float %ux_new_load_1, %x_in_7
  %tmp_69 = fmul float %uz_new_load_1, %z_in_7
  %z_int1 = fadd float %tmp_68, %tmp_69
  %x_int1_3 = select i1 %tmp_57, float %x_int1, float %x_in_7
  %w_int1_3 = select i1 %tmp_57, float %w_int1, float %w_in_9
  %y_int1_3 = select i1 %tmp_57, float %y_int1, float %y_in_9
  %z_int1_3 = select i1 %tmp_57, float %z_int1, float %z_in_7
  %tmp_70 = fmul float %w_int1_3, %vw_new_load
  %tmp_71 = fmul float %x_int1_3, %vy_new_load
  %w_int2 = fadd float %tmp_70, %tmp_71
  %tmp_73 = fmul float %w_int1_3, %vx_new_load
  %tmp_75 = fmul float %x_int1_3, %vz_new_load
  %x_int2 = fadd float %tmp_73, %tmp_75
  %tmp_76 = fmul float %y_int1_3, %vw_new_load
  %tmp_77 = fmul float %z_int1_3, %vy_new_load
  %y_int2 = fadd float %tmp_76, %tmp_77
  %tmp_78 = fmul float %y_int1_3, %vx_new_load
  %tmp_79 = fmul float %z_int1_3, %vz_new_load
  %z_int2 = fadd float %tmp_78, %tmp_79
  %w_int2_3 = select i1 %tmp_52, float %w_int1_3, float %w_int2
  %x_int2_3 = select i1 %tmp_52, float %x_int1_3, float %x_int2
  %y_int2_3 = select i1 %tmp_52, float %y_int1_3, float %y_int2
  %z_int2_3 = select i1 %tmp_52, float %z_int1_3, float %z_int2
  %tmp_80 = icmp ugt i9 %off_px_mid2, %p_v
  %tmp_81 = fmul float %uw_new_load_1, %w_int2_3
  %tmp_82 = fmul float %uy_new_load_1, %y_int2_3
  %w_out = fadd float %tmp_81, %tmp_82
  %tmp_85 = fmul float %uw_new_load_1, %x_int2_3
  %tmp_86 = fmul float %uy_new_load_1, %z_int2_3
  %x_out = fadd float %tmp_85, %tmp_86
  %tmp_87 = fmul float %ux_new_load_1, %w_int2_3
  %tmp_88 = fmul float %uz_new_load_1, %y_int2_3
  %y_out = fadd float %tmp_87, %tmp_88
  %tmp_89 = fmul float %ux_new_load_1, %x_int2_3
  %tmp_90 = fmul float %uz_new_load_1, %z_int2_3
  %z_out = fadd float %tmp_89, %tmp_90
  %w_out_3 = select i1 %tmp_80, float %w_out, float %w_int2_3
  %x_out_3 = select i1 %tmp_80, float %x_out, float %x_int2_3
  %y_out_3 = select i1 %tmp_80, float %y_out, float %y_int2_3
  %z_out_3 = select i1 %tmp_80, float %z_out, float %z_int2_3
  %tmp_91 = fmul float %a1_assign_5, %uw_new_load
  %tmp_92 = fmul float %a2_assign_6, %uy_new_load
  %ux_out_sel = fadd float %tmp_91, %tmp_92
  %tmp_93 = fmul float %a1_assign_5, %ux_new_load
  %tmp_96 = fmul float %a2_assign_6, %uz_new_load
  %uw_out_sel = fadd float %tmp_93, %tmp_96
  %tmp_99 = fmul float %a3_assign_1, %uw_new_load
  %tmp_100 = fmul float %a4_assign_1, %uy_new_load
  %uz_out_sel = fadd float %tmp_99, %tmp_100
  %tmp_101 = fmul float %a3_assign_1, %ux_new_load
  %tmp_102 = fmul float %a4_assign_1, %uz_new_load
  %uy_out_sel = fadd float %tmp_101, %tmp_102
  %tmp_103 = fmul float %a1_assign_7, %vw_new_load
  %tmp_104 = fmul float %a2_assign_8, %vy_new_load
  %vx_out_sel = fadd float %tmp_103, %tmp_104
  %tmp_105 = fmul float %a1_assign_7, %vx_new_load
  %tmp_106 = fmul float %a2_assign_8, %vz_new_load
  %vw_out_sel = fadd float %tmp_105, %tmp_106
  %tmp_107 = fmul float %a3_assign_2, %vw_new_load
  %tmp_108 = fmul float %a4_assign_2, %vy_new_load
  %vz_out_sel = fadd float %tmp_107, %tmp_108
  %tmp_109 = fmul float %a3_assign_2, %vx_new_load
  %tmp_110 = fmul float %a4_assign_2, %vz_new_load
  %vy_out_sel = fadd float %tmp_109, %tmp_110
  %vy_out_0_vz_out = select i1 %not_tmp_mid2, float %vz_out_sel, float %vy_out_sel
  %vz_out_0_vy_out = select i1 %not_tmp_mid2, float %vy_out_sel, float %vz_out_sel
  %vw_out_0_vx_out = select i1 %not_tmp_mid2, float %vx_out_sel, float %vw_out_sel
  %vx_out_0_vw_out = select i1 %not_tmp_mid2, float %vw_out_sel, float %vx_out_sel
  %uy_out_0_uz_out = select i1 %not_tmp_mid2, float %uz_out_sel, float %uy_out_sel
  %uz_out_0_uy_out = select i1 %not_tmp_mid2, float %uy_out_sel, float %uz_out_sel
  %uw_out_0_ux_out = select i1 %not_tmp_mid2, float %ux_out_sel, float %uw_out_sel
  %ux_out_0_uw_out = select i1 %not_tmp_mid2, float %uw_out_sel, float %ux_out_sel
  %y_out_0_z_out = select i1 %not_tmp_mid2, float %y_out_3, float %z_out_3
  %z_out_0_y_out = select i1 %not_tmp_mid2, float %z_out_3, float %y_out_3
  %w_out_0_x_out = select i1 %not_tmp_mid2, float %w_out_3, float %x_out_3
  %x_out_0_w_out = select i1 %not_tmp_mid2, float %x_out_3, float %w_out_3
  br i1 %tmp_34_mid2, label %25, label %26

; <label>:30                                      ; preds = %24
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1813, i32 %tmp_s)
  %step_1 = add i10 %step_mid2, 1
  br label %.preheader12.preheader

.preheader12:                                     ; preds = %.preheader12.preheader
  %sweepnum_1 = add i4 1, %sweepnum
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @sweep_loop_step_loop_str)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7830, i64 7830, i64 7830)
  %exitcond = icmp eq i10 %step, -241
  %step_mid2 = select i1 %exitcond, i10 0, i10 %step
  %sweepnum_cast_mid2_v = select i1 %exitcond, i4 %sweepnum_1, i4 %sweepnum
  %tmp_3 = trunc i4 %sweepnum_cast_mid2_v to i1
  %tmp_4 = trunc i10 %step_mid2 to i1
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1813) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1813)
  %INPUT_BANK = xor i1 %tmp_3, %tmp_4
  %tmp1 = xor i1 %tmp_4, true
  %OUTPUT_BANK = xor i1 %tmp_3, %tmp1
  %tmp_8_cast1 = select i1 %INPUT_BANK, i10 392, i10 0
  %tmp_8_cast = select i1 %INPUT_BANK, i64 392, i64 0
  %diag2_i_addr_1 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_8_cast
  %tmp_9_cast = select i1 %INPUT_BANK, i64 783, i64 391
  %diag2_i_addr_4 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_9_cast
  %diag1_i_addr_1 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_8_cast
  %diag1_i_addr_5 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_9_cast
  %tmp_10_cast1 = select i1 %OUTPUT_BANK, i10 392, i10 0
  %tmp_10_cast = select i1 %OUTPUT_BANK, i64 392, i64 0
  %tmp_12_cast = select i1 %OUTPUT_BANK, i64 783, i64 391
  %diag2_i_addr_3 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_12_cast
  %tmp_14_cast = select i1 %OUTPUT_BANK, i64 782, i64 390
  %diag2_i_addr_5 = getelementptr [784 x i32]* %diag2_i, i64 0, i64 %tmp_14_cast
  %diag1_i_addr_2 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_10_cast
  %tmp_15_cast = select i1 %OUTPUT_BANK, i64 393, i64 1
  %diag1_i_addr_3 = getelementptr [784 x i32]* %diag1_i, i64 0, i64 %tmp_15_cast
  br label %5

.preheader.preheader:                             ; preds = %.preheader12.preheader, %.preheader
  %indvar_flatten2 = phi i19 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader12.preheader ]
  %col3 = phi i9 [ %tmp_9_mid2_v, %.preheader ], [ 0, %.preheader12.preheader ]
  %row4 = phi i10 [ %row_2, %.preheader ], [ 0, %.preheader12.preheader ]
  %exitcond_flatten2 = icmp eq i19 %indvar_flatten2, -216960
  %indvar_flatten_next1 = add i19 %indvar_flatten2, 1
  br i1 %exitcond_flatten2, label %31, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %col_2 = add i9 %col3, 1
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @col_store_row_store_str)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 307328, i64 307328, i64 307328)
  %exitcond1 = icmp eq i10 %row4, -240
  %row4_mid2 = select i1 %exitcond1, i10 0, i10 %row4
  %tmp_9_mid2_v = select i1 %exitcond1, i9 %col_2, i9 %col3
  %tmp_9_mid2_cast = zext i9 %tmp_9_mid2_v to i20
  %tmp_6 = mul i20 %tmp_9_mid2_cast, 1568
  %tmp_6_mid2_v = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp_9_mid2_v, i1 false)
  %tmp_6_mid2_cast = zext i10 %tmp_6_mid2_v to i20
  %tmp_10_mid2_v = or i10 %tmp_6_mid2_v, 1
  %tmp_10_mid2_cast = zext i10 %tmp_10_mid2_v to i20
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1819) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1819)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_16_cast1 = zext i10 %row4_mid2 to i20
  %tmp_16_cast = zext i10 %row4_mid2 to i20
  %tmp_8 = mul i20 %tmp_16_cast, 784
  %tmp_9 = add i20 %tmp_6_mid2_cast, %tmp_8
  %tmp_132_cast = zext i20 %tmp_9 to i64
  %S_addr = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_132_cast
  %tmp_10 = add i20 %tmp_10_mid2_cast, %tmp_8
  %tmp_133_cast = zext i20 %tmp_10 to i64
  %S_addr_1 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_133_cast
  %U_addr = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_132_cast
  %U_addr_1 = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_133_cast
  %V_addr = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_132_cast
  %V_addr_1 = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_133_cast
  %tmp_11 = add i20 %tmp_16_cast1, %tmp_6
  %tmp_134_cast = zext i20 %tmp_11 to i64
  %v_col1_addr = getelementptr [614656 x float]* %v_col1, i64 0, i64 %tmp_134_cast
  %s_col1_addr_1 = getelementptr [614656 x float]* %s_col1, i64 0, i64 %tmp_134_cast
  %v_col2_addr = getelementptr [614656 x float]* %v_col2, i64 0, i64 %tmp_134_cast
  %u_col1_addr = getelementptr [614656 x float]* %u_col1, i64 0, i64 %tmp_134_cast
  %u_col2_addr = getelementptr [614656 x float]* %u_col2, i64 0, i64 %tmp_134_cast
  %s_col2_addr_1 = getelementptr [614656 x float]* %s_col2, i64 0, i64 %tmp_134_cast
  %s_col1_load = load float* %s_col1_addr_1, align 4
  store float %s_col1_load, float* %S_addr, align 4
  %s_col2_load = load float* %s_col2_addr_1, align 4
  store float %s_col2_load, float* %S_addr_1, align 4
  %u_col1_load = load float* %u_col1_addr, align 4
  store float %u_col1_load, float* %U_addr, align 4
  %u_col2_load = load float* %u_col2_addr, align 4
  store float %u_col2_load, float* %U_addr_1, align 4
  %v_col1_load = load float* %v_col1_addr, align 4
  store float %v_col1_load, float* %V_addr, align 4
  %v_col2_load = load float* %v_col2_addr, align 4
  store float %v_col2_load, float* %V_addr_1, align 4
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1819, i32 %tmp_7)
  %row_2 = add i10 %row4_mid2, 1
  br label %.preheader.preheader

; <label>:31                                      ; preds = %.preheader.preheader
  ret void
}

define internal fastcc void @dut_rank([784 x i32]* nocapture %PCA_sorted_idx, [15680 x float]* nocapture %tsf_mat, [614656 x float]* nocapture %S, [614656 x float]* nocapture %U) {
  br label %._crit_edge1.i

._crit_edge1.i:                                   ; preds = %3, %0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %1, %2, %._crit_edge1.i
  %swap_i = phi i1 [ false, %._crit_edge1.i ], [ true, %2 ], [ %swap_i, %1 ]
  %i_i = phi i10 [ 0, %._crit_edge1.i ], [ %i_1, %2 ], [ %i_1, %1 ]
  %exitcond_i = icmp eq i10 %i_i, -241
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 783, i64 783, i64 783)
  %i_1 = add i10 %i_i, 1
  br i1 %exitcond_i, label %3, label %1

; <label>:1                                       ; preds = %._crit_edge.i
  %tmp_i = zext i10 %i_i to i64
  %PCA_sorted_idx_addr_1 = getelementptr [784 x i32]* %PCA_sorted_idx, i64 0, i64 %tmp_i
  %temp = load i32* %PCA_sorted_idx_addr_1, align 4
  %tmp_159 = trunc i32 %temp to i21
  %tmp_153 = mul i21 785, %tmp_159
  %tmp_166_cast = sext i21 %tmp_153 to i64
  %S_addr = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_166_cast
  %S_load = load float* %S_addr, align 4
  %tmp_180_i = zext i10 %i_1 to i64
  %PCA_sorted_idx_addr_2 = getelementptr [784 x i32]* %PCA_sorted_idx, i64 0, i64 %tmp_180_i
  %PCA_sorted_idx_load_2 = load i32* %PCA_sorted_idx_addr_2, align 4
  %tmp_160 = trunc i32 %PCA_sorted_idx_load_2 to i21
  %tmp_154 = mul i21 785, %tmp_160
  %tmp_167_cast = sext i21 %tmp_154 to i64
  %S_addr_2 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_167_cast
  %S_load_1 = load float* %S_addr_2, align 4
  %S_load_to_int = bitcast float %S_load to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %S_load_to_int, i32 23, i32 30)
  %tmp_161 = trunc i32 %S_load_to_int to i23
  %S_load_1_to_int = bitcast float %S_load_1 to i32
  %tmp_45 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %S_load_1_to_int, i32 23, i32 30)
  %tmp_162 = trunc i32 %S_load_1_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_161, 0
  %tmp_47 = or i1 %notrhs, %notlhs
  %notlhs3 = icmp ne i8 %tmp_45, -1
  %notrhs4 = icmp eq i23 %tmp_162, 0
  %tmp_48 = or i1 %notrhs4, %notlhs3
  %tmp_49 = and i1 %tmp_47, %tmp_48
  %tmp_50 = fcmp olt float %S_load, %S_load_1
  %tmp_51 = and i1 %tmp_49, %tmp_50
  br i1 %tmp_51, label %2, label %._crit_edge.i

; <label>:2                                       ; preds = %1
  store i32 %PCA_sorted_idx_load_2, i32* %PCA_sorted_idx_addr_1, align 4
  store i32 %temp, i32* %PCA_sorted_idx_addr_2, align 4
  br label %._crit_edge.i

; <label>:3                                       ; preds = %._crit_edge.i
  br i1 %swap_i, label %._crit_edge1.i, label %find_max.exit

find_max.exit:                                    ; preds = %.preheader, %3
  %i = phi i5 [ 0, %3 ], [ %i_2, %.preheader ]
  %phi_mul1 = phi i14 [ 0, %3 ], [ %next_mul2, %.preheader ]
  %next_mul2 = add i14 %phi_mul1, 784
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20)
  %exitcond1 = icmp eq i5 %i, -12
  %i_2 = add i5 %i, 1
  br i1 %exitcond1, label %5, label %.preheader.preheader

.preheader.preheader:                             ; preds = %find_max.exit
  %tmp_s = zext i5 %i to i64
  %PCA_sorted_idx_addr = getelementptr [784 x i32]* %PCA_sorted_idx, i64 0, i64 %tmp_s
  br label %.preheader

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j = phi i10 [ %j_1, %4 ], [ 0, %.preheader.preheader ]
  %phi_mul = phi i20 [ %next_mul, %4 ], [ 0, %.preheader.preheader ]
  %phi_mul_cast = zext i20 %phi_mul to i21
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %exitcond = icmp eq i10 %j, -240
  %j_1 = add i10 %j, 1
  br i1 %exitcond, label %find_max.exit, label %4

; <label>:4                                       ; preds = %.preheader
  %PCA_sorted_idx_load = load i32* %PCA_sorted_idx_addr, align 4
  %tmp_163 = trunc i32 %PCA_sorted_idx_load to i21
  %tmp_132_cast = zext i10 %j to i14
  %tmp_155 = add i14 %tmp_132_cast, %phi_mul1
  %tmp_169_cast = zext i14 %tmp_155 to i64
  %tsf_mat_addr = getelementptr [15680 x float]* %tsf_mat, i64 0, i64 %tmp_169_cast
  %next_mul = add i20 784, %phi_mul
  %tmp_156 = add i21 %tmp_163, %phi_mul_cast
  %tmp_171_cast = zext i21 %tmp_156 to i64
  %U_addr = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_171_cast
  %U_load = load float* %U_addr, align 4
  store float %U_load, float* %tsf_mat_addr, align 4
  br label %.preheader

; <label>:5                                       ; preds = %find_max.exit
  ret void
}

define internal fastcc void @dut_normalize([156800 x float]* nocapture %X, [784 x float]* nocapture %mean) {
  br label %.loopexit

.loopexit:                                        ; preds = %3, %0
  %j = phi i10 [ 0, %0 ], [ %j_2, %3 ]
  %phi_mul = phi i18 [ 0, %0 ], [ %next_mul, %3 ]
  %next_mul = add i18 %phi_mul, 200
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %exitcond2 = icmp eq i10 %j, -240
  %j_2 = add i10 %j, 1
  br i1 %exitcond2, label %5, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_s = zext i10 %j to i64
  br label %.preheader

.preheader:                                       ; preds = %1, %.preheader.preheader
  %sum = phi float [ %sum_1, %1 ], [ 0.000000e+00, %.preheader.preheader ]
  %i = phi i8 [ %i_3, %1 ], [ 0, %.preheader.preheader ]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200)
  %exitcond1 = icmp eq i8 %i, -56
  %i_3 = add i8 %i, 1
  br i1 %exitcond1, label %2, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_134_cast = zext i8 %i to i18
  %tmp_157 = add i18 %phi_mul, %tmp_134_cast
  %tmp_172_cast = zext i18 %tmp_157 to i64
  %X_addr = getelementptr [156800 x float]* %X, i64 0, i64 %tmp_172_cast
  %X_load = load float* %X_addr, align 4
  %sum_1 = fadd float %sum, %X_load
  br label %.preheader

; <label>:2                                       ; preds = %.preheader
  %tmp_133 = fdiv float %sum, 2.000000e+02
  %mean_addr = getelementptr [784 x float]* %mean, i64 0, i64 %tmp_s
  store float %tmp_133, float* %mean_addr, align 4
  br label %3

; <label>:3                                       ; preds = %4, %2
  %i1 = phi i8 [ 0, %2 ], [ %i_4, %4 ]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200)
  %exitcond = icmp eq i8 %i1, -56
  %i_4 = add i8 %i1, 1
  br i1 %exitcond, label %.loopexit, label %4

; <label>:4                                       ; preds = %3
  %tmp_135_cast = zext i8 %i1 to i18
  %tmp_158 = add i18 %phi_mul, %tmp_135_cast
  %tmp_173_cast = zext i18 %tmp_158 to i64
  %X_addr_1 = getelementptr [156800 x float]* %X, i64 0, i64 %tmp_173_cast
  %X_load_1 = load float* %X_addr_1, align 4
  %tmp_136 = fsub float %X_load_1, %tmp_133
  store float %tmp_136, float* %X_addr_1, align 4
  br label %3

; <label>:5                                       ; preds = %.loopexit
  ret void
}

define internal fastcc void @dut_matrix_multiply_alt26([156800 x float]* nocapture %A, [156800 x float]* nocapture %B, [614656 x float]* nocapture %C) {
  %sum_mult = alloca [614656 x float], align 4
  br label %1

; <label>:1                                       ; preds = %ifBlock, %0
  %indvar_flatten3 = phi i27 [ 0, %0 ], [ %indvar_flatten_next3, %ifBlock ]
  %Col_assign_2 = phi i8 [ 0, %0 ], [ %tmp_i_i_mid2_v, %ifBlock ]
  %indvar_flatten = phi i20 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ]
  %Row_assign = phi i10 [ 0, %0 ], [ %tmp_133_mid2, %ifBlock ]
  %Col_assign = phi i10 [ 0, %0 ], [ %c, %ifBlock ]
  %exitcond_flatten3 = icmp eq i27 %indvar_flatten3, -11286528
  %indvar_flatten_next3 = add i27 %indvar_flatten3, 1
  br i1 %exitcond_flatten3, label %7, label %.reset7

; <label>:2                                       ; preds = %.reset7
  store float %mult, float* %sum_mult_addr, align 4
  br label %ifBlock

; <label>:3                                       ; preds = %.reset7
  %tmp_135 = fadd float %sum_mult_load, %mult
  br i1 %tmp_mid2_26, label %4, label %5

; <label>:4                                       ; preds = %3
  store float %tmp_135, float* %C_addr, align 4
  br label %6

; <label>:5                                       ; preds = %3
  store float %tmp_135, float* %sum_mult_addr, align 4
  br label %6

; <label>:6                                       ; preds = %5, %4
  br label %ifBlock

ifBlock:                                          ; preds = %6, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1809, i32 %tmp_134)
  %c = add i10 %Col_assign_mid2, 1
  %indvar_flatten_op = add i20 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i20 1, i20 %indvar_flatten_op
  br label %1

.reset7:                                          ; preds = %1
  %k = add i8 %Col_assign_2, 1
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @a_col_loop_a_row_loop_b_col_lo)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 122931200, i64 122931200, i64 122931200)
  %exitcond_flatten = icmp eq i20 %indvar_flatten, -433920
  %Row_assign_mid = select i1 %exitcond_flatten, i10 0, i10 %Row_assign
  %tmp_mid1 = icmp eq i8 %k, 0
  %tmp2 = icmp eq i8 %Col_assign_2, 0
  %tmp_mid2 = select i1 %exitcond_flatten, i1 %tmp_mid1, i1 %tmp2
  %tmp_mid1_25 = icmp eq i8 %k, -57
  %tmp_1 = icmp eq i8 %Col_assign_2, -57
  %tmp_mid2_26 = select i1 %exitcond_flatten, i1 %tmp_mid1_25, i1 %tmp_1
  %tmp_i_i_mid2_v = select i1 %exitcond_flatten, i8 %k, i8 %Col_assign_2
  %tmp_i_i_mid2_cast1 = zext i8 %tmp_i_i_mid2_v to i18
  %tmp_i_i_mid2_cast = zext i8 %tmp_i_i_mid2_v to i18
  %tmp_s = mul i18 %tmp_i_i_mid2_cast, 784
  %not_exitcond_flatten = xor i1 %exitcond_flatten, true
  %exitcond = icmp eq i10 %Col_assign, -240
  %exitcond_mid = and i1 %exitcond, %not_exitcond_flatten
  %r = add i10 %Row_assign_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([22 x i8]* @a_row_loop_b_col_loop_str)
  %tmp_159 = or i1 %exitcond_mid, %exitcond_flatten
  %Col_assign_mid2 = select i1 %tmp_159, i10 0, i10 %Col_assign
  %tmp_133_mid2 = select i1 %exitcond_mid, i10 %r, i10 %Row_assign_mid
  %tmp_133_mid2_cast1 = zext i10 %tmp_133_mid2 to i20
  %tmp_133_mid2_cast = zext i10 %tmp_133_mid2 to i18
  %tmp_160 = mul i18 %tmp_133_mid2_cast, 200
  %tmp_161 = add i18 %tmp_i_i_mid2_cast1, %tmp_160
  %tmp_177_cast = zext i18 %tmp_161 to i64
  %A_addr = getelementptr [156800 x float]* %A, i64 0, i64 %tmp_177_cast
  %tmp_162 = mul i20 %tmp_133_mid2_cast1, 784
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1809) nounwind
  %tmp_134 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1809)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %cast_in_a = load float* %A_addr, align 4
  %tmp_i_i4_cast1 = zext i10 %Col_assign_mid2 to i20
  %tmp_i_i4_cast = zext i10 %Col_assign_mid2 to i18
  %tmp_163 = add i18 %tmp_i_i4_cast, %tmp_s
  %tmp_179_cast = zext i18 %tmp_163 to i64
  %B_addr = getelementptr [156800 x float]* %B, i64 0, i64 %tmp_179_cast
  %tmp_164 = add i20 %tmp_i_i4_cast1, %tmp_162
  %tmp_180_cast = zext i20 %tmp_164 to i64
  %C_addr = getelementptr [614656 x float]* %C, i64 0, i64 %tmp_180_cast
  %sum_mult_addr = getelementptr [614656 x float]* %sum_mult, i64 0, i64 %tmp_180_cast
  %cast_in_b = load float* %B_addr, align 4
  %mult = fmul float %cast_in_a, %cast_in_b
  %sum_mult_load = load float* %sum_mult_addr, align 4
  br i1 %tmp_mid2, label %2, label %3

; <label>:7                                       ; preds = %1
  ret void
}

define internal fastcc void @dut_matrix_multiply_alt2([15680 x float]* nocapture %A, [156800 x float]* nocapture %B, [4000 x float]* nocapture %C) {
  %sum_mult = alloca [4000 x float], align 4
  br label %1

; <label>:1                                       ; preds = %ifBlock, %0
  %indvar_flatten4 = phi i22 [ 0, %0 ], [ %indvar_flatten_next4, %ifBlock ]
  %Col_assign_3 = phi i10 [ 0, %0 ], [ %tmp_i_i_mid2_v, %ifBlock ]
  %indvar_flatten = phi i13 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ]
  %Row_assign = phi i5 [ 0, %0 ], [ %tmp_139_mid2, %ifBlock ]
  %Col_assign = phi i8 [ 0, %0 ], [ %c, %ifBlock ]
  %exitcond_flatten4 = icmp eq i22 %indvar_flatten4, -1058304
  %indvar_flatten_next4 = add i22 %indvar_flatten4, 1
  br i1 %exitcond_flatten4, label %7, label %.reset7

; <label>:2                                       ; preds = %.reset7
  store float %mult, float* %sum_mult_addr, align 4
  br label %ifBlock

; <label>:3                                       ; preds = %.reset7
  %tmp_139 = fadd float %sum_mult_load, %mult
  br i1 %tmp_mid2_29, label %4, label %5

; <label>:4                                       ; preds = %3
  store float %tmp_139, float* %C_addr, align 4
  br label %6

; <label>:5                                       ; preds = %3
  store float %tmp_139, float* %sum_mult_addr, align 4
  br label %6

; <label>:6                                       ; preds = %5, %4
  br label %ifBlock

ifBlock:                                          ; preds = %6, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1809, i32 %tmp_138)
  %c = add i8 %Col_assign_mid2, 1
  %indvar_flatten_op = add i13 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i13 1, i13 %indvar_flatten_op
  br label %1

.reset7:                                          ; preds = %1
  %k = add i10 %Col_assign_3, 1
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @a_col_loop_a_row_loop_b_col_lo)
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3136000, i64 3136000, i64 3136000)
  %exitcond_flatten = icmp eq i13 %indvar_flatten, 4000
  %Row_assign_mid = select i1 %exitcond_flatten, i5 0, i5 %Row_assign
  %tmp_mid1 = icmp eq i10 %k, 0
  %tmp2 = icmp eq i10 %Col_assign_3, 0
  %tmp_mid2 = select i1 %exitcond_flatten, i1 %tmp_mid1, i1 %tmp2
  %tmp_mid1_28 = icmp eq i10 %k, -241
  %tmp_1 = icmp eq i10 %Col_assign_3, -241
  %tmp_mid2_29 = select i1 %exitcond_flatten, i1 %tmp_mid1_28, i1 %tmp_1
  %tmp_i_i_mid2_v = select i1 %exitcond_flatten, i10 %k, i10 %Col_assign_3
  %tmp_i_i_mid2_cast2 = zext i10 %tmp_i_i_mid2_v to i15
  %tmp_i_i_mid2_cast = zext i10 %tmp_i_i_mid2_v to i18
  %tmp_s = mul i18 %tmp_i_i_mid2_cast, 200
  %not_exitcond_flatten = xor i1 %exitcond_flatten, true
  %exitcond = icmp eq i8 %Col_assign, -56
  %exitcond_mid = and i1 %exitcond, %not_exitcond_flatten
  %r = add i5 %Row_assign_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([22 x i8]* @a_row_loop_b_col_loop_str)
  %tmp_165 = or i1 %exitcond_mid, %exitcond_flatten
  %Col_assign_mid2 = select i1 %tmp_165, i8 0, i8 %Col_assign
  %tmp_139_mid2 = select i1 %exitcond_mid, i5 %r, i5 %Row_assign_mid
  %tmp_139_mid2_cast1 = zext i5 %tmp_139_mid2 to i13
  %tmp_139_mid2_cast = zext i5 %tmp_139_mid2 to i15
  %tmp_166 = mul i15 %tmp_139_mid2_cast, 784
  %tmp_167 = add i15 %tmp_i_i_mid2_cast2, %tmp_166
  %tmp_184_cast = sext i15 %tmp_167 to i64
  %A_addr = getelementptr [15680 x float]* %A, i64 0, i64 %tmp_184_cast
  %tmp_168 = mul i13 %tmp_139_mid2_cast1, 200
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1809) nounwind
  %tmp_138 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1809)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %cast_in_a = load float* %A_addr, align 4
  %tmp_i_i4_cast2 = zext i8 %Col_assign_mid2 to i13
  %tmp_i_i4_cast = zext i8 %Col_assign_mid2 to i18
  %tmp_169 = add i18 %tmp_i_i4_cast, %tmp_s
  %tmp_186_cast = zext i18 %tmp_169 to i64
  %B_addr = getelementptr [156800 x float]* %B, i64 0, i64 %tmp_186_cast
  %tmp_170 = add i13 %tmp_i_i4_cast2, %tmp_168
  %tmp_187_cast = sext i13 %tmp_170 to i64
  %C_addr = getelementptr [4000 x float]* %C, i64 0, i64 %tmp_187_cast
  %sum_mult_addr = getelementptr [4000 x float]* %sum_mult, i64 0, i64 %tmp_187_cast
  %cast_in_b = load float* %B_addr, align 4
  %mult = fmul float %cast_in_a, %cast_in_b
  %sum_mult_load = load float* %sum_mult_addr, align 4
  br i1 %tmp_mid2, label %2, label %3

; <label>:7                                       ; preds = %1
  ret void
}

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @dut(i32* %strm_in_V_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %strm_in_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %strm_in_V_V), !map !215
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_out_V), !map !221
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dut_str) nounwind
  %X = alloca [156800 x float], align 4
  %Y_assign = alloca [4000 x float], align 4
  %tsf_mat = alloca [15680 x float], align 4
  %pca_sorted_idx = alloca [784 x i32], align 4
  %S = alloca [614656 x float], align 4
  %U = alloca [614656 x float], align 4
  %V = alloca [614656 x float], align 4
  %XXT = alloca [614656 x float], align 4
  %mean = alloca [784 x float], align 16
  br label %.loopexit5

.loopexit5:                                       ; preds = %.preheader42, %0
  %test = phi i8 [ 0, %0 ], [ %test_1, %.preheader42 ]
  %exitcond1 = icmp eq i8 %test, -56
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200)
  %test_1 = add i8 %test, 1
  br i1 %exitcond1, label %.preheader11, label %.preheader42.preheader

.preheader42.preheader:                           ; preds = %.loopexit5
  %tmp_cast = zext i8 %test to i18
  br label %.preheader42

.preheader42:                                     ; preds = %2, %.preheader42.preheader
  %i = phi i8 [ 0, %.preheader42.preheader ], [ %i_2, %2 ]
  %exitcond2 = icmp eq i8 %i, -60
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 196, i64 196, i64 196)
  %i_2 = add i8 %i, 1
  br i1 %exitcond2, label %.loopexit5, label %1

; <label>:1                                       ; preds = %.preheader42
  %tmp_V = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %strm_in_V_V)
  %tmp_140 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %i, i2 0)
  br label %2

; <label>:2                                       ; preds = %3, %1
  %j = phi i3 [ 0, %1 ], [ %j_1, %3 ]
  %j_cast = zext i3 %j to i10
  %exitcond4 = icmp eq i3 %j, -4
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_1 = add i3 %j, 1
  br i1 %exitcond4, label %.preheader42, label %3

; <label>:3                                       ; preds = %2
  %tmp = trunc i3 %j to i2
  %Lo_assign = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp, i3 0)
  %Hi_assign = or i5 %Lo_assign, 7
  %tmp_164 = icmp ugt i5 %Lo_assign, %Hi_assign
  %tmp_165 = zext i5 %Lo_assign to i6
  %tmp_166 = zext i5 %Hi_assign to i6
  %tmp_167 = call i32 @llvm.part.select.i32(i32 %tmp_V, i32 31, i32 0)
  %tmp_168 = sub i6 %tmp_165, %tmp_166
  %tmp_169 = xor i6 %tmp_165, 31
  %tmp_170 = sub i6 %tmp_166, %tmp_165
  %tmp_172 = select i1 %tmp_164, i6 %tmp_168, i6 %tmp_170
  %tmp_173 = select i1 %tmp_164, i32 %tmp_167, i32 %tmp_V
  %tmp_174 = select i1 %tmp_164, i6 %tmp_169, i6 %tmp_165
  %tmp_175 = sub i6 31, %tmp_172
  %tmp_176 = zext i6 %tmp_174 to i32
  %tmp_177 = zext i6 %tmp_175 to i32
  %tmp_178 = lshr i32 %tmp_173, %tmp_176
  %tmp_179 = lshr i32 -1, %tmp_177
  %p_Result_s = and i32 %tmp_178, %tmp_179
  %tmp_142 = uitofp i32 %p_Result_s to float
  %tmp_143 = add i10 %tmp_140, %j_cast
  %tmp_144_cast = zext i10 %tmp_143 to i18
  %tmp_180 = mul i18 200, %tmp_144_cast
  %tmp_181 = add i18 %tmp_cast, %tmp_180
  %tmp_191_cast = zext i18 %tmp_181 to i64
  %X_addr = getelementptr [156800 x float]* %X, i64 0, i64 %tmp_191_cast
  store float %tmp_142, float* %X_addr, align 4
  br label %2

.preheader11:                                     ; preds = %.loopexit5, %4
  %i_0_i = phi i10 [ %i_1, %4 ], [ 0, %.loopexit5 ]
  %i_0_i_cast8 = zext i10 %i_0_i to i32
  %exitcond10 = icmp eq i10 %i_0_i, -240
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_1 = add i10 %i_0_i, 1
  br i1 %exitcond10, label %PCA.exit, label %4

; <label>:4                                       ; preds = %.preheader11
  %tmp_s = zext i10 %i_0_i to i64
  %pca_sorted_idx_addr = getelementptr [784 x i32]* %pca_sorted_idx, i64 0, i64 %tmp_s
  store i32 %i_0_i_cast8, i32* %pca_sorted_idx_addr, align 4
  br label %.preheader11

PCA.exit:                                         ; preds = %.preheader41, %.preheader11
  %i1 = phi i10 [ 0, %.preheader11 ], [ %i_3, %.preheader41 ]
  %phi_mul = phi i20 [ 0, %.preheader11 ], [ %next_mul, %.preheader41 ]
  %next_mul = add i20 %phi_mul, 784
  %exitcond3 = icmp eq i10 %i1, -240
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_3 = add i10 %i1, 1
  br i1 %exitcond3, label %6, label %.preheader41

.preheader41:                                     ; preds = %PCA.exit, %5
  %j2 = phi i10 [ %j_2, %5 ], [ 0, %PCA.exit ]
  %exitcond6 = icmp eq i10 %j2, -240
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %j_2 = add i10 %j2, 1
  br i1 %exitcond6, label %PCA.exit, label %5

; <label>:5                                       ; preds = %.preheader41
  %tmp_146_cast = zext i10 %j2 to i20
  %tmp_171 = add i20 %phi_mul, %tmp_146_cast
  %tmp_193_cast = zext i20 %tmp_171 to i64
  %S_addr = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_193_cast
  %U_addr = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_193_cast
  %V_addr = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_193_cast
  %XXT_addr = getelementptr [614656 x float]* %XXT, i64 0, i64 %tmp_193_cast
  store float 0.000000e+00, float* %S_addr, align 4
  store float 0.000000e+00, float* %U_addr, align 4
  store float 0.000000e+00, float* %V_addr, align 4
  store float 0.000000e+00, float* %XXT_addr, align 4
  br label %.preheader41

; <label>:6                                       ; preds = %PCA.exit
  call fastcc void @dut_normalize([156800 x float]* %X, [784 x float]* %mean)
  call fastcc void @dut_cov([156800 x float]* %X, [614656 x float]* %XXT)
  call fastcc void @dut_svd_pairs([614656 x float]* %XXT, [614656 x float]* %S, [614656 x float]* %U, [614656 x float]* %V)
  call fastcc void @dut_rank([784 x i32]* %pca_sorted_idx, [15680 x float]* %tsf_mat, [614656 x float]* %S, [614656 x float]* %U)
  call fastcc void @dut_matrix_multiply_alt2([15680 x float]* %tsf_mat, [156800 x float]* %X, [4000 x float]* %Y_assign)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader40, %6
  %i3 = phi i5 [ 0, %6 ], [ %i_4, %.preheader40 ]
  %phi_mul1 = phi i12 [ 0, %6 ], [ %next_mul2, %.preheader40 ]
  %next_mul2 = add i12 %phi_mul1, 200
  %exitcond5 = icmp eq i5 %i3, -12
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20)
  %i_4 = add i5 %i3, 1
  br i1 %exitcond5, label %.preheader39, label %.preheader40

.preheader40:                                     ; preds = %.loopexit, %7
  %j4 = phi i8 [ %j_3, %7 ], [ 0, %.loopexit ]
  %exitcond8 = icmp eq i8 %j4, -56
  %empty_38 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200)
  %j_3 = add i8 %j4, 1
  br i1 %exitcond8, label %.loopexit, label %7

; <label>:7                                       ; preds = %.preheader40
  %tmp_148_cast = zext i8 %j4 to i12
  %tmp_182 = add i12 %phi_mul1, %tmp_148_cast
  %tmp_195_cast = zext i12 %tmp_182 to i64
  %Y_assign_addr = getelementptr [4000 x float]* %Y_assign, i64 0, i64 %tmp_195_cast
  %tmp_183 = load float* %Y_assign_addr, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_183)
  br label %.preheader40

.preheader39:                                     ; preds = %.preheader38, %.loopexit
  %i5 = phi i5 [ 0, %.loopexit ], [ %i_6, %.preheader38 ]
  %phi_mul3 = phi i14 [ 0, %.loopexit ], [ %next_mul4, %.preheader38 ]
  %next_mul4 = add i14 %phi_mul3, 784
  %exitcond7 = icmp eq i5 %i5, -12
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20)
  %i_6 = add i5 %i5, 1
  br i1 %exitcond7, label %.preheader, label %.preheader38

.preheader38:                                     ; preds = %.preheader39, %8
  %j6 = phi i10 [ %j_4, %8 ], [ 0, %.preheader39 ]
  %exitcond9 = icmp eq i10 %j6, -240
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %j_4 = add i10 %j6, 1
  br i1 %exitcond9, label %.preheader39, label %8

; <label>:8                                       ; preds = %.preheader38
  %tmp_150_cast = zext i10 %j6 to i14
  %tmp_185 = add i14 %phi_mul3, %tmp_150_cast
  %tmp_198_cast = zext i14 %tmp_185 to i64
  %tsf_mat_addr = getelementptr [15680 x float]* %tsf_mat, i64 0, i64 %tmp_198_cast
  %tmp_186 = load float* %tsf_mat_addr, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_186)
  br label %.preheader38

.preheader:                                       ; preds = %.preheader39, %9
  %i7 = phi i10 [ %i_5, %9 ], [ 0, %.preheader39 ]
  %exitcond = icmp eq i10 %i7, -240
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_5 = add i10 %i7, 1
  br i1 %exitcond, label %10, label %9

; <label>:9                                       ; preds = %.preheader
  %tmp_149 = zext i10 %i7 to i64
  %mean_addr = getelementptr inbounds [784 x float]* %mean, i64 0, i64 %tmp_149
  %tmp_184 = load float* %mean_addr, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_184)
  br label %.preheader

; <label>:10                                      ; preds = %.preheader
  ret void
}

define internal fastcc void @dut_cov([156800 x float]* nocapture %X, [614656 x float]* nocapture %XXT) align 2 {
  %XT = alloca [156800 x float], align 4
  br label %.loopexit5

.loopexit5:                                       ; preds = %.preheader4, %0
  %i = phi i10 [ 0, %0 ], [ %i_7, %.preheader4 ]
  %phi_mul1 = phi i18 [ 0, %0 ], [ %next_mul2, %.preheader4 ]
  %next_mul2 = add i18 %phi_mul1, 200
  %exitcond3 = icmp eq i10 %i, -240
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_7 = add i10 %i, 1
  br i1 %exitcond3, label %2, label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.loopexit5
  %tmp_cast = zext i10 %i to i18
  br label %.preheader4

.preheader4:                                      ; preds = %1, %.preheader4.preheader
  %j = phi i8 [ %j_5, %1 ], [ 0, %.preheader4.preheader ]
  %phi_mul = phi i18 [ %next_mul, %1 ], [ 0, %.preheader4.preheader ]
  %exitcond2 = icmp eq i8 %j, -56
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200)
  %j_5 = add i8 %j, 1
  br i1 %exitcond2, label %.loopexit5, label %1

; <label>:1                                       ; preds = %.preheader4
  %tmp_151_cast = zext i8 %j to i18
  %tmp_s = add i18 %phi_mul1, %tmp_151_cast
  %tmp_202_cast = zext i18 %tmp_s to i64
  %X_addr = getelementptr [156800 x float]* %X, i64 0, i64 %tmp_202_cast
  %next_mul = add i18 %phi_mul, 784
  %tmp_186 = add i18 %phi_mul, %tmp_cast
  %tmp_204_cast = zext i18 %tmp_186 to i64
  %XT_addr = getelementptr [156800 x float]* %XT, i64 0, i64 %tmp_204_cast
  %X_load = load float* %X_addr, align 4
  store float %X_load, float* %XT_addr, align 4
  br label %.preheader4

; <label>:2                                       ; preds = %.loopexit5
  call fastcc void @dut_matrix_multiply_alt26([156800 x float]* %X, [156800 x float]* %XT, [614656 x float]* %XXT)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %2
  %i1 = phi i10 [ 0, %2 ], [ %i_8, %.preheader ]
  %phi_mul3 = phi i20 [ 0, %2 ], [ %next_mul4, %.preheader ]
  %next_mul4 = add i20 %phi_mul3, 784
  %exitcond1 = icmp eq i10 %i1, -240
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_8 = add i10 %i1, 1
  br i1 %exitcond1, label %4, label %.preheader

.preheader:                                       ; preds = %.loopexit, %3
  %j2 = phi i10 [ %j_6, %3 ], [ 0, %.loopexit ]
  %exitcond = icmp eq i10 %j2, -240
  %empty_44 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %j_6 = add i10 %j2, 1
  br i1 %exitcond, label %.loopexit, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_152_cast = zext i10 %j2 to i20
  %tmp_187 = add i20 %phi_mul3, %tmp_152_cast
  %tmp_205_cast = zext i20 %tmp_187 to i64
  %XXT_addr = getelementptr [614656 x float]* %XXT, i64 0, i64 %tmp_205_cast
  %XXT_load = load float* %XXT_addr, align 4
  %tmp_153 = fdiv float %XXT_load, 1.990000e+02
  store float %tmp_153, float* %XXT_addr, align 4
  br label %.preheader

; <label>:4                                       ; preds = %.loopexit
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_45 = trunc i32 %empty to i8
  ret i8 %empty_45
}

define weak i6 @_ssdm_op_PartSelect.i6.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_46 = trunc i10 %empty to i6
  ret i6 %empty_46
}

declare i4 @_ssdm_op_PartSelect.i4.i10.i32.i32(i10, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i10.i32.i32(i10, i32, i32) nounwind readnone

define weak float @_ssdm_op_FRSqrt(float) nounwind {
entry:
  %empty = call float @llvm.sqrt.f32(float %0)
  %empty_47 = fdiv float 1.000000e+00, %empty
  ret float %empty_47
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_48 = and i32 %0, %empty
  %empty_49 = icmp ne i32 %empty_48, 0
  ret i1 %empty_49
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_50 = zext i3 %1 to i5
  %empty_51 = shl i5 %empty, 3
  %empty_52 = or i5 %empty_51, %empty_50
  ret i5 %empty_52
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone {
entry:
  %empty = zext i1 %0 to i32
  %empty_53 = zext i31 %1 to i32
  %empty_54 = shl i32 %empty, 31
  %empty_55 = or i32 %empty_54, %empty_53
  ret i32 %empty_55
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11
  %empty_56 = zext i1 %1 to i11
  %empty_57 = shl i11 %empty, 1
  %empty_58 = or i11 %empty_57, %empty_56
  ret i11 %empty_58
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone {
entry:
  %empty = zext i9 %0 to i10
  %empty_59 = zext i1 %1 to i10
  %empty_60 = shl i10 %empty, 1
  %empty_61 = or i10 %empty_60, %empty_59
  ret i10 %empty_61
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10
  %empty_62 = zext i2 %1 to i10
  %empty_63 = shl i10 %empty, 2
  %empty_64 = or i10 %empty_63, %empty_62
  ret i10 %empty_64
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6, i4) nounwind readnone {
entry:
  %empty = zext i6 %0 to i10
  %empty_65 = zext i4 %1 to i10
  %empty_66 = shl i10 %empty, 4
  %empty_67 = or i10 %empty_66, %empty_65
  ret i10 %empty_67
}

declare float @_autotb_FifoWrite_float(float*, float)

declare i32 @_autotb_FifoRead_i32(i32*)

declare void @_GLOBAL__I_a1973() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !19, !13, !22, !22, !25, !13, !27, !27, !13, !30, !13, !13, !13, !33, !33, !35, !35, !37, !13, !13, !13, !39, !27, !27, !13, !42, !13, !13, !13, !44, !44, !46, !46, !48, !13, !13, !13, !13, !13, !13, !50, !13, !13, !13, !13, !22, !22, !25, !50, !13, !22, !22, !25, !50, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !52, !52, !52, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !52, !52, !52, !57, !57, !57, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !57, !57, !57, !13, !57, !57, !57, !13, !13, !13, !13, !62, !65, !65, !13, !13, !71, !13, !75, !79, !82, !88, !92, !95, !98, !98, !98, !102, !102, !106, !106, !108, !108, !108, !112, !114, !120, !120, !126, !132, !13, !13, !135, !135, !137, !140, !140, !13, !13, !13, !13, !142, !144, !144, !13, !62, !145, !145, !62, !65, !65, !137, !142, !144, !144, !13, !62, !147, !147, !149, !151, !151, !154, !13, !156, !149, !158, !158, !160, !160, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !162, !132, !132, !168, !171, !13, !13, !13, !13, !62, !62, !173, !175, !175, !13, !13, !176, !178, !178, !62, !62, !179, !181, !181, !13, !13, !182, !184, !184, !149, !13, !156, !13, !13, !185, !168, !187, !27, !27, !13, !189, !190, !191, !193, !193, !194, !13, !13, !13, !144, !144, !184, !184, !196, !198, !13, !13, !13, !44, !44, !200, !200, !13, !13, !132, !202, !204, !13, !13, !206, !206, !206, !106, !106, !22, !22, !25, !13, !27, !27, !30, !13, !13, !13, !33, !33, !35, !35, !37, !13, !13, !13, !39, !42, !13, !13, !13, !44, !44, !46, !46, !48, !13, !13, !13, !13, !13, !13, !50, !13, !13, !13, !13, !22, !22, !25, !50, !13, !22, !22, !25, !50, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !52, !52, !52, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !52, !52, !52, !57, !57, !57, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !57, !57, !57, !13, !57, !57, !57, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!208}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<bit32_t> &", metadata !"hls::stream<fix32_t> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"strm_in", metadata !"strm_out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !26, metadata !6}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!30 = metadata !{null, metadata !1, metadata !2, metadata !31, metadata !4, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !29, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !29, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !21, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !40, metadata !4, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!42 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !32, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!44 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !29, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!46 = metadata !{null, metadata !8, metadata !9, metadata !47, metadata !11, metadata !29, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !21, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !51, metadata !6}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!52 = metadata !{null, metadata !53, metadata !9, metadata !54, metadata !55, metadata !56, metadata !6}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!55 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!57 = metadata !{null, metadata !58, metadata !2, metadata !59, metadata !60, metadata !61, metadata !6}
!58 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!60 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!62 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !64, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!65 = metadata !{null, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !6}
!66 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!67 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!69 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!71 = metadata !{null, metadata !72, metadata !67, metadata !73, metadata !69, metadata !74, metadata !6}
!72 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"VEC_SIZ", metadata !"VEC_NUM", metadata !"ka"}
!75 = metadata !{null, metadata !76, metadata !2, metadata !77, metadata !4, metadata !78, metadata !6}
!76 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [200]*", metadata !"fix32_t*"}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"mean"}
!79 = metadata !{null, metadata !76, metadata !2, metadata !80, metadata !4, metadata !81, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [200]*", metadata !"fix32_t [784]*"}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"XXT"}
!82 = metadata !{null, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !6}
!83 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!84 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*"}
!86 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!87 = metadata !{metadata !"kernel_arg_name", metadata !"XXT", metadata !"S", metadata !"U", metadata !"V"}
!88 = metadata !{null, metadata !89, metadata !67, metadata !90, metadata !69, metadata !91, metadata !6}
!89 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*"}
!91 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"S", metadata !"U"}
!92 = metadata !{null, metadata !89, metadata !67, metadata !93, metadata !69, metadata !94, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [200]*", metadata !"fix32_t [200]*"}
!94 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"X", metadata !"Y"}
!95 = metadata !{null, metadata !53, metadata !9, metadata !96, metadata !11, metadata !97, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*"}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"S"}
!98 = metadata !{null, metadata !89, metadata !67, metadata !99, metadata !100, metadata !101, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const float [784]*", metadata !"const float [200]*", metadata !"float [200]*"}
!100 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"B", metadata !"C"}
!102 = metadata !{null, metadata !66, metadata !67, metadata !103, metadata !104, metadata !105, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const float [200]*", metadata !"uint", metadata !"uint"}
!104 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !""}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"Row", metadata !"Col"}
!106 = metadata !{null, metadata !66, metadata !67, metadata !107, metadata !104, metadata !105, metadata !6}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"const float [784]*", metadata !"uint", metadata !"uint"}
!108 = metadata !{null, metadata !83, metadata !84, metadata !109, metadata !110, metadata !111, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"const float [784]*", metadata !"float [784]*", metadata !"float [784]*", metadata !"float [784]*"}
!110 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !"", metadata !""}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"S", metadata !"U", metadata !"V"}
!112 = metadata !{null, metadata !8, metadata !9, metadata !113, metadata !11, metadata !12, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!114 = metadata !{null, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !6}
!115 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!116 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!118 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!119 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"a3", metadata !"a4", metadata !"b1", metadata !"b2", metadata !"b3", metadata !"b4", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
!120 = metadata !{null, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !6}
!121 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!122 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &"}
!124 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"b1", metadata !"a2", metadata !"b2", metadata !"c"}
!126 = metadata !{null, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !6}
!127 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!128 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!130 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!131 = metadata !{metadata !"kernel_arg_name", metadata !"w_in", metadata !"x_in", metadata !"y_in", metadata !"z_in", metadata !"uw_out", metadata !"ux_out", metadata !"uy_out", metadata !"uz_out", metadata !"vw_out", metadata !"vx_out", metadata !"vy_out", metadata !"vz_out", metadata !"w_out", metadata !"x_out", metadata !"y_out", metadata !"z_out"}
!132 = metadata !{null, metadata !8, metadata !9, metadata !133, metadata !11, metadata !134, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!134 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!135 = metadata !{null, metadata !8, metadata !9, metadata !133, metadata !11, metadata !136, metadata !6}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!137 = metadata !{null, metadata !8, metadata !9, metadata !138, metadata !11, metadata !139, metadata !6}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!139 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!140 = metadata !{null, metadata !8, metadata !9, metadata !138, metadata !11, metadata !141, metadata !6}
!141 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!142 = metadata !{null, metadata !8, metadata !9, metadata !143, metadata !11, metadata !139, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!144 = metadata !{null, metadata !8, metadata !9, metadata !143, metadata !11, metadata !29, metadata !6}
!145 = metadata !{null, metadata !66, metadata !67, metadata !146, metadata !69, metadata !70, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!147 = metadata !{null, metadata !66, metadata !67, metadata !148, metadata !69, metadata !70, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!149 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !150, metadata !6}
!150 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!151 = metadata !{null, metadata !58, metadata !2, metadata !152, metadata !4, metadata !153, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!153 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!154 = metadata !{null, metadata !8, metadata !9, metadata !155, metadata !11, metadata !139, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!156 = metadata !{null, metadata !8, metadata !9, metadata !157, metadata !11, metadata !139, metadata !6}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!158 = metadata !{null, metadata !58, metadata !2, metadata !159, metadata !4, metadata !153, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!160 = metadata !{null, metadata !8, metadata !9, metadata !161, metadata !11, metadata !139, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!162 = metadata !{null, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !6}
!163 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!164 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!165 = metadata !{metadata !"kernel_arg_type", metadata !"x_complex<float>", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"_Bool &", metadata !"_Bool &"}
!166 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!167 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"cosThetaA", metadata !"sinThetaA", metadata !"cosThetaAdiv2", metadata !"sinThetaAdiv2", metadata !"is_pos_real", metadata !"is_imag"}
!168 = metadata !{null, metadata !1, metadata !2, metadata !169, metadata !4, metadata !170, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!170 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!171 = metadata !{null, metadata !1, metadata !2, metadata !169, metadata !4, metadata !172, metadata !6}
!172 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!173 = metadata !{null, metadata !8, metadata !9, metadata !174, metadata !11, metadata !139, metadata !6}
!174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!175 = metadata !{null, metadata !8, metadata !9, metadata !174, metadata !11, metadata !141, metadata !6}
!176 = metadata !{null, metadata !8, metadata !9, metadata !177, metadata !11, metadata !139, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!178 = metadata !{null, metadata !8, metadata !9, metadata !177, metadata !11, metadata !29, metadata !6}
!179 = metadata !{null, metadata !8, metadata !9, metadata !180, metadata !11, metadata !139, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!181 = metadata !{null, metadata !8, metadata !9, metadata !180, metadata !11, metadata !141, metadata !6}
!182 = metadata !{null, metadata !8, metadata !9, metadata !183, metadata !11, metadata !139, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!184 = metadata !{null, metadata !8, metadata !9, metadata !183, metadata !11, metadata !29, metadata !6}
!185 = metadata !{null, metadata !8, metadata !9, metadata !186, metadata !11, metadata !21, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!187 = metadata !{null, metadata !1, metadata !2, metadata !188, metadata !4, metadata !32, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!189 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !21, metadata !6}
!190 = metadata !{null, metadata !8, metadata !9, metadata !183, metadata !11, metadata !21, metadata !6}
!191 = metadata !{null, metadata !1, metadata !2, metadata !192, metadata !4, metadata !41, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!193 = metadata !{null, metadata !8, metadata !9, metadata !161, metadata !11, metadata !29, metadata !6}
!194 = metadata !{null, metadata !1, metadata !2, metadata !195, metadata !4, metadata !32, metadata !6}
!195 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, false> &"}
!196 = metadata !{null, metadata !1, metadata !2, metadata !197, metadata !4, metadata !41, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"int"}
!198 = metadata !{null, metadata !1, metadata !2, metadata !199, metadata !4, metadata !32, metadata !6}
!199 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"const ap_int_base<32, true> &"}
!200 = metadata !{null, metadata !8, metadata !9, metadata !201, metadata !11, metadata !29, metadata !6}
!201 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!202 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !203, metadata !6}
!203 = metadata !{metadata !"kernel_arg_name", metadata !"r"}
!204 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !205, metadata !6}
!205 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!206 = metadata !{null, metadata !89, metadata !67, metadata !207, metadata !100, metadata !101, metadata !6}
!207 = metadata !{metadata !"kernel_arg_type", metadata !"const float [200]*", metadata !"const float [784]*", metadata !"float [784]*"}
!208 = metadata !{metadata !209, [2 x i32]* @llvm_global_ctors_0}
!209 = metadata !{metadata !210}
!210 = metadata !{i32 0, i32 31, metadata !211}
!211 = metadata !{metadata !212}
!212 = metadata !{metadata !"llvm.global_ctors.0", metadata !213, metadata !"", i32 0, i32 31}
!213 = metadata !{metadata !214}
!214 = metadata !{i32 0, i32 1, i32 1}
!215 = metadata !{metadata !216}
!216 = metadata !{i32 0, i32 31, metadata !217}
!217 = metadata !{metadata !218}
!218 = metadata !{metadata !"strm_in.V.V", metadata !219, metadata !"uint32", i32 0, i32 31}
!219 = metadata !{metadata !220}
!220 = metadata !{i32 0, i32 0, i32 1}
!221 = metadata !{metadata !222}
!222 = metadata !{i32 0, i32 31, metadata !223}
!223 = metadata !{metadata !224}
!224 = metadata !{metadata !"strm_out.V", metadata !219, metadata !"float", i32 0, i32 31}
