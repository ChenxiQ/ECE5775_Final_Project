; ModuleID = '/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sweep_loop_row_loop_str = internal unnamed_addr constant [20 x i8] c"sweep_loop_row_loop\00"
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1973]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@dut_str = internal unnamed_addr constant [4 x i8] c"dut\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@a_row_loop_b_col_loop_str = internal unnamed_addr constant [22 x i8] c"a_row_loop_b_col_loop\00"
@a_col_loop_a_row_loop_b_col_lo = internal unnamed_addr constant [33 x i8] c"a_col_loop_a_row_loop_b_col_loop\00"
@p_str1814 = private unnamed_addr constant [8 x i8] c"off_row\00", align 1
@p_str1813 = private unnamed_addr constant [8 x i8] c"off_col\00", align 1
@p_str1812 = private unnamed_addr constant [9 x i8] c"col_loop\00", align 1
@p_str1811 = private unnamed_addr constant [9 x i8] c"row_loop\00", align 1
@p_str1809 = private unnamed_addr constant [11 x i8] c"b_col_loop\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc float @dut_vm2x1_base(float %a1, float %b1, float %a2, float %b2) readnone {
  %b2_read = call float @_ssdm_op_Read.ap_auto.float(float %b2)
  %a2_read = call float @_ssdm_op_Read.ap_auto.float(float %a2)
  %b1_read = call float @_ssdm_op_Read.ap_auto.float(float %b1)
  %a1_read = call float @_ssdm_op_Read.ap_auto.float(float %a1)
  %tmp = fmul float %a1_read, %b1_read
  %tmp_5 = fmul float %a2_read, %b2_read
  %c_write_assign = fadd float %tmp, %tmp_5
  ret float %c_write_assign
}

define internal fastcc void @dut_svd_basic([614656 x float]* nocapture %A, [614656 x float]* nocapture %S, [614656 x float]* nocapture %U, [614656 x float]* nocapture %V) {
  %s_in = alloca [614656 x float], align 4
  %u_in = alloca [614656 x float], align 4
  %v_in = alloca [614656 x float], align 4
  br label %1

; <label>:1                                       ; preds = %11, %0
  %indvar_flatten = phi i13 [ 0, %0 ], [ %indvar_flatten_next, %11 ]
  %sweepnum = phi i3 [ 0, %0 ], [ %sweepnum_mid2, %11 ]
  %top_left = phi i10 [ 0, %0 ], [ %top_left_1, %11 ]
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -3488
  %indvar_flatten_next = add i13 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %12, label %.reset

; <label>:2                                       ; preds = %10, %.reset
  %bottom_right_0_in = phi i32 [ %top_left_cast, %.reset ], [ %bottom_right, %10 ]
  %exitcond2 = icmp eq i32 %bottom_right_0_in, 783
  br i1 %exitcond2, label %11, label %_ifconv2

_ifconv2:                                         ; preds = %2
  %bottom_right = add nsw i32 1, %bottom_right_0_in
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 783, i64 0)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1812) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1812)
  %tmp_1 = icmp eq i32 %bottom_right_0_in, 0
  %w_in = load float* %s_in_addr, align 4
  %tmp_10 = trunc i32 %bottom_right to i21
  %tmp_11 = mul i21 784, %tmp_10
  %tmp_12 = add i21 %tmp_11, %tmp_10
  %tmp_28_cast = sext i21 %tmp_12 to i64
  %A_addr_3 = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_28_cast
  %tmp_23 = add i21 %tmp_s, %tmp_10
  %tmp_29_cast = sext i21 %tmp_23 to i64
  %S_addr_1 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_29_cast
  %tmp_24 = add i21 %tmp_11, %tmp_cast
  %tmp_32_cast = sext i21 %tmp_24 to i64
  %S_addr_2 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_32_cast
  %S_addr_3 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_28_cast
  %U_addr_1 = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_29_cast
  %U_addr_2 = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_32_cast
  %U_addr_3 = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_28_cast
  %V_addr_1 = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_29_cast
  %V_addr_2 = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_32_cast
  %V_addr_3 = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_28_cast
  %v_in_addr_1 = getelementptr [614656 x float]* %v_in, i64 0, i64 %tmp_29_cast
  %v_in_addr_2 = getelementptr [614656 x float]* %v_in, i64 0, i64 %tmp_32_cast
  %v_in_addr_3 = getelementptr [614656 x float]* %v_in, i64 0, i64 %tmp_28_cast
  %u_in_addr_1 = getelementptr [614656 x float]* %u_in, i64 0, i64 %tmp_29_cast
  %u_in_addr_2 = getelementptr [614656 x float]* %u_in, i64 0, i64 %tmp_32_cast
  %u_in_addr_3 = getelementptr [614656 x float]* %u_in, i64 0, i64 %tmp_28_cast
  %s_in_addr_1 = getelementptr [614656 x float]* %s_in, i64 0, i64 %tmp_29_cast
  %s_in_addr_2 = getelementptr [614656 x float]* %s_in, i64 0, i64 %tmp_32_cast
  %s_in_addr_3 = getelementptr [614656 x float]* %s_in, i64 0, i64 %tmp_28_cast
  %x_in = load float* %s_in_addr_1, align 4
  %y_in = load float* %s_in_addr_2, align 4
  %z_in = load float* %s_in_addr_3, align 4
  %w_in_1 = load float* %A_addr, align 4
  %A_addr_1 = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_29_cast
  %A_addr_2 = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_32_cast
  %x_in_1 = load float* %A_addr_1, align 4
  %y_in_1 = load float* %A_addr_2, align 4
  %y_in_2 = select i1 %tmp_1, float %y_in_1, float %y_in
  %x_in_2 = select i1 %tmp_1, float %x_in_1, float %x_in
  %w_in_2 = select i1 %tmp_1, float %w_in_1, float %w_in
  %z_in_1 = load float* %A_addr_3, align 4
  %z_in_2 = select i1 %tmp_9, float %z_in_1, float %z_in
  %y_in_3 = select i1 %tmp_9, float %y_in_2, float %y_in
  %x_in_3 = select i1 %tmp_9, float %x_in_2, float %x_in
  %w_in_3 = select i1 %tmp_9, float %w_in_2, float %w_in
  %u1 = fsub float %z_in_2, %w_in_3
  %u2 = fadd float %y_in_3, %x_in_3
  %call_ret = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1, float %u2)
  %cosA_half = extractvalue { float, float } %call_ret, 0
  %sinA_half = extractvalue { float, float } %call_ret, 1
  %u1_1 = fadd float %z_in_2, %w_in_3
  %u2_1 = fsub float %y_in_3, %x_in_3
  %call_ret1 = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1_1, float %u2_1)
  %cosB_half = extractvalue { float, float } %call_ret1, 0
  %sinB_half = extractvalue { float, float } %call_ret1, 1
  %uz_new = call fastcc float @dut_vm2x1_base(float %cosA_half, float %cosB_half, float %sinA_half, float %sinB_half)
  %tmp_6_to_int = bitcast float %cosA_half to i32
  %tmp_6_neg = xor i32 %tmp_6_to_int, -2147483648
  %a2_assign = bitcast i32 %tmp_6_neg to float
  %ux_new = call fastcc float @dut_vm2x1_base(float %sinA_half, float %cosB_half, float %a2_assign, float %sinB_half)
  %tmp_7_to_int = bitcast float %sinA_half to i32
  %tmp_7_neg = xor i32 %tmp_7_to_int, -2147483648
  %a2_assign_1 = bitcast i32 %tmp_7_neg to float
  %vz_int_1 = call fastcc float @dut_vm2x1_base(float %cosA_half, float %cosB_half, float %a2_assign_1, float %sinB_half)
  %vy_int_1 = call fastcc float @dut_vm2x1_base(float %sinA_half, float %cosB_half, float %cosA_half, float %sinB_half)
  %uy_new_1_0_to_int = bitcast float %ux_new to i32
  %uy_new_1_0_neg = xor i32 %uy_new_1_0_to_int, -2147483648
  %uy_int = bitcast i32 %uy_new_1_0_neg to float
  %vy_int_to_int = bitcast float %vy_int_1 to i32
  %vy_int_neg = xor i32 %vy_int_to_int, -2147483648
  %vy_int = bitcast i32 %vy_int_neg to float
  %w_out1 = call fastcc float @dut_vm2x1_base(float %w_in_3, float %vz_int_1, float %x_in_3, float %vy_int)
  %w_out2 = call fastcc float @dut_vm2x1_base(float %y_in_3, float %vz_int_1, float %z_in_2, float %vy_int)
  %w_out_int = call fastcc float @dut_vm2x1_base(float %uz_new, float %w_out1, float %uy_int, float %w_out2)
  %z_out1 = call fastcc float @dut_vm2x1_base(float %w_in_3, float %vy_int_1, float %x_in_3, float %vz_int_1)
  %z_out2 = call fastcc float @dut_vm2x1_base(float %y_in_3, float %vy_int_1, float %z_in_2, float %vz_int_1)
  %z_out_int = call fastcc float @dut_vm2x1_base(float %ux_new, float %z_out1, float %uz_new, float %z_out2)
  %p_Val2_s = bitcast float %w_out_int to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %w_out_1_neg = xor i32 %p_Val2_s, -2147483648
  %w_out = bitcast i32 %w_out_1_neg to float
  %vw_int_to_int = bitcast float %vz_int_1 to i32
  %vw_int_neg = xor i32 %vw_int_to_int, -2147483648
  %vw_int = bitcast i32 %vw_int_neg to float
  %w_out_2 = select i1 %p_Result_s, float %w_out, float %w_out_int
  %vw_int_3 = select i1 %p_Result_s, float %vw_int, float %vz_int_1
  %vx_int = select i1 %p_Result_s, float %vy_int_1, float %vy_int
  %p_Val2_1 = bitcast float %z_out_int to i32
  %p_Result_1 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_1, i32 31)
  %z_out_1_neg = xor i32 %p_Val2_1, -2147483648
  %z_out = bitcast i32 %z_out_1_neg to float
  %z_out_2 = select i1 %p_Result_1, float %z_out, float %z_out_int
  %vy_int_2 = select i1 %p_Result_1, float %vy_int, float %vy_int_1
  %vz_int = select i1 %p_Result_1, float %vw_int, float %vz_int_1
  store float %w_out_2, float* %s_in_addr, align 4
  store float 0.000000e+00, float* %s_in_addr_1, align 4
  store float 0.000000e+00, float* %s_in_addr_2, align 4
  store float %z_out_2, float* %s_in_addr_3, align 4
  br i1 %tmp_mid2, label %3, label %._crit_edge_ifconv

; <label>:3                                       ; preds = %_ifconv2
  store float %w_out_2, float* %S_addr, align 4
  store float 0.000000e+00, float* %S_addr_1, align 4
  store float 0.000000e+00, float* %S_addr_2, align 4
  store float %z_out_2, float* %S_addr_3, align 4
  br label %._crit_edge_ifconv

._crit_edge_ifconv:                               ; preds = %3, %_ifconv2
  %uw_in = load float* %u_in_addr, align 4
  %ux_in = load float* %u_in_addr_1, align 4
  %uy_in = load float* %u_in_addr_2, align 4
  %uz_in = load float* %u_in_addr_3, align 4
  %vw_in = load float* %v_in_addr, align 4
  %vx_in = load float* %v_in_addr_1, align 4
  %vy_in = load float* %v_in_addr_2, align 4
  %vz_in = load float* %v_in_addr_3, align 4
  %tmp_28 = trunc i32 %bottom_right_0_in to i10
  %tmp_13 = or i10 %tmp_28, %tmp_8
  %tmp_14 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %bottom_right_0_in, i32 10, i32 31)
  %tmp_15 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 %tmp_14, i10 %tmp_13)
  %tmp_16 = icmp eq i32 %tmp_15, 0
  %tmp_17 = or i1 %tmp_16, %tmp_9
  %a4_assign_1 = select i1 %tmp_17, float 1.000000e+00, float %vz_in
  %a3_assign_1 = select i1 %tmp_17, float 0.000000e+00, float %vy_in
  %a2_assign_9 = select i1 %tmp_17, float 0.000000e+00, float %vx_in
  %vw_in_1 = select i1 %tmp_16, float 1.000000e+00, float %vw_in
  %a4_assign = select i1 %tmp_17, float 1.000000e+00, float %uz_in
  %a3_assign = select i1 %tmp_17, float 0.000000e+00, float %uy_in
  %a2_assign_7 = select i1 %tmp_17, float 0.000000e+00, float %ux_in
  %uw_in_1 = select i1 %tmp_16, float 1.000000e+00, float %uw_in
  %uw_out = call fastcc float @dut_vm2x1_base(float %uw_in_1, float %uz_new, float %a2_assign_7, float %uy_int)
  %ux_out = call fastcc float @dut_vm2x1_base(float %uw_in_1, float %ux_new, float %a2_assign_7, float %uz_new)
  %uy_out = call fastcc float @dut_vm2x1_base(float %a3_assign, float %uz_new, float %a4_assign, float %uy_int)
  %uz_out = call fastcc float @dut_vm2x1_base(float %a3_assign, float %ux_new, float %a4_assign, float %uz_new)
  %vw_out = call fastcc float @dut_vm2x1_base(float %vw_in_1, float %vw_int_3, float %a2_assign_9, float %vx_int)
  %vx_out = call fastcc float @dut_vm2x1_base(float %vw_in_1, float %vy_int_2, float %a2_assign_9, float %vz_int)
  %vy_out = call fastcc float @dut_vm2x1_base(float %a3_assign_1, float %vw_int_3, float %a4_assign_1, float %vx_int)
  %vz_out = call fastcc float @dut_vm2x1_base(float %a3_assign_1, float %vy_int_2, float %a4_assign_1, float %vz_int)
  store float %uw_out, float* %u_in_addr, align 4
  store float %ux_out, float* %u_in_addr_1, align 4
  store float %uy_out, float* %u_in_addr_2, align 4
  store float %uz_out, float* %u_in_addr_3, align 4
  store float %vw_out, float* %v_in_addr, align 4
  store float %vx_out, float* %v_in_addr_1, align 4
  store float %vy_out, float* %v_in_addr_2, align 4
  store float %vz_out, float* %v_in_addr_3, align 4
  br i1 %tmp_mid2, label %4, label %._crit_edge18

; <label>:4                                       ; preds = %._crit_edge_ifconv
  store float %uw_out, float* %U_addr, align 4
  store float %ux_out, float* %U_addr_1, align 4
  store float %uy_out, float* %U_addr_2, align 4
  store float %uz_out, float* %U_addr_3, align 4
  store float %vw_out, float* %V_addr, align 4
  store float %vx_out, float* %V_addr_1, align 4
  store float %vy_out, float* %V_addr_2, align 4
  store float %vz_out, float* %V_addr_3, align 4
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %4, %._crit_edge_ifconv
  br label %5

; <label>:5                                       ; preds = %._crit_edge19, %._crit_edge18
  %off_col = phi i10 [ 0, %._crit_edge18 ], [ %off_col_1, %._crit_edge19 ]
  %exitcond1 = icmp eq i10 %off_col, -240
  %off_col_1 = add i10 %off_col, 1
  br i1 %exitcond1, label %.preheader, label %6

; <label>:6                                       ; preds = %5
  %off_col_cast = zext i10 %off_col to i32
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @p_str1813) nounwind
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([8 x i8]* @p_str1813)
  call void (...)* @_ssdm_op_SpecPipeline(i32 100, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_19 = icmp eq i32 %off_col_cast, %bottom_right
  %tmp_20 = icmp eq i10 %off_col, %top_left_mid2
  %or_cond6 = or i1 %tmp_19, %tmp_20
  br i1 %or_cond6, label %._crit_edge19, label %_ifconv

_ifconv:                                          ; preds = %6
  %tmp_23_cast6 = zext i10 %off_col to i21
  %tmp_23_cast = zext i10 %off_col to i20
  %tmp_27 = add i20 %tmp_2, %tmp_23_cast
  %tmp_36_cast = zext i20 %tmp_27 to i64
  %A_addr_4 = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_36_cast
  %tmp_29 = add i21 %tmp_11, %tmp_23_cast6
  %tmp_37_cast = sext i21 %tmp_29 to i64
  %A_addr_6 = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_37_cast
  %S_addr_4 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_36_cast
  %S_addr_5 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_37_cast
  %s_in_addr_4 = getelementptr [614656 x float]* %s_in, i64 0, i64 %tmp_36_cast
  %s_in_addr_5 = getelementptr [614656 x float]* %s_in, i64 0, i64 %tmp_37_cast
  %w_in_4 = load float* %A_addr_4, align 4
  %w_in_5 = load float* %s_in_addr_4, align 4
  %w_in_6 = select i1 %tmp_16, float %w_in_4, float %w_in_5
  %tmp_25 = icmp sgt i32 %off_col_cast, %bottom_right
  %or_cond1 = and i1 %tmp_9, %tmp_25
  %y_in_4 = load float* %A_addr_6, align 4
  %y_in_5 = load float* %s_in_addr_5, align 4
  %y_in_6 = select i1 %or_cond1, float %y_in_4, float %y_in_5
  %w_out_3 = call fastcc float @dut_vm2x1_base(float %uz_new, float %w_in_6, float %uy_int, float %y_in_6)
  %y_out = call fastcc float @dut_vm2x1_base(float %ux_new, float %w_in_6, float %uz_new, float %y_in_6)
  store float %w_out_3, float* %s_in_addr_4, align 4
  store float %y_out, float* %s_in_addr_5, align 4
  br i1 %tmp_mid2, label %7, label %._crit_edge20

; <label>:7                                       ; preds = %_ifconv
  store float %w_out_3, float* %S_addr_4, align 4
  store float %y_out, float* %S_addr_5, align 4
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %7, %_ifconv
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge20, %6
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([8 x i8]* @p_str1813, i32 %tmp_18)
  br label %5

.preheader:                                       ; preds = %5, %._crit_edge21
  %off_row = phi i10 [ %off_row_1, %._crit_edge21 ], [ 0, %5 ]
  %phi_mul = phi i20 [ %next_mul, %._crit_edge21 ], [ 0, %5 ]
  %phi_mul_cast = zext i20 %phi_mul to i21
  %exitcond = icmp eq i10 %off_row, -240
  %off_row_1 = add i10 %off_row, 1
  br i1 %exitcond, label %10, label %8

; <label>:8                                       ; preds = %.preheader
  %off_row_cast = zext i10 %off_row to i32
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @p_str1814) nounwind
  %tmp_26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([8 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecPipeline(i32 100, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_21 = icmp eq i32 %off_row_cast, %bottom_right
  %tmp_22 = icmp eq i10 %off_row, %top_left_mid2
  %or_cond = or i1 %tmp_21, %tmp_22
  %next_mul = add i20 %phi_mul, 784
  br i1 %or_cond, label %._crit_edge21, label %_ifconv1

_ifconv1:                                         ; preds = %8
  %tmp_31 = add i20 %tmp_cast5, %phi_mul
  %tmp_39_cast = zext i20 %tmp_31 to i64
  %A_addr_5 = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_39_cast
  %tmp_32 = add i21 %tmp_10, %phi_mul_cast
  %tmp_40_cast = zext i21 %tmp_32 to i64
  %A_addr_7 = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_40_cast
  %S_addr_6 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_39_cast
  %S_addr_7 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_40_cast
  %U_addr_4 = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_39_cast
  %U_addr_5 = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_40_cast
  %V_addr_4 = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_39_cast
  %V_addr_5 = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_40_cast
  %v_in_addr_4 = getelementptr [614656 x float]* %v_in, i64 0, i64 %tmp_39_cast
  %v_in_addr_5 = getelementptr [614656 x float]* %v_in, i64 0, i64 %tmp_40_cast
  %u_in_addr_4 = getelementptr [614656 x float]* %u_in, i64 0, i64 %tmp_39_cast
  %u_in_addr_5 = getelementptr [614656 x float]* %u_in, i64 0, i64 %tmp_40_cast
  %s_in_addr_6 = getelementptr [614656 x float]* %s_in, i64 0, i64 %tmp_39_cast
  %s_in_addr_7 = getelementptr [614656 x float]* %s_in, i64 0, i64 %tmp_40_cast
  %w_in_7 = load float* %A_addr_5, align 4
  %w_in_8 = load float* %s_in_addr_6, align 4
  %vw_in_2 = load float* %v_in_addr_4, align 4
  %uw_in_2 = load float* %u_in_addr_4, align 4
  %a1_assign_s = select i1 %tmp_16, float 0.000000e+00, float %vw_in_2
  %a1_assign_3 = select i1 %tmp_16, float 0.000000e+00, float %uw_in_2
  %w_in_9 = select i1 %tmp_16, float %w_in_7, float %w_in_8
  %tmp_30 = icmp sgt i32 %off_row_cast, %bottom_right
  %or_cond2 = and i1 %tmp_9, %tmp_30
  %x_in_4 = load float* %A_addr_7, align 4
  %x_in_5 = load float* %s_in_addr_7, align 4
  %x_in_6 = select i1 %or_cond2, float %x_in_4, float %x_in_5
  %vx_in_1 = load float* %v_in_addr_5, align 4
  %ux_in_1 = load float* %u_in_addr_5, align 4
  %a2_assign_s = select i1 %tmp_9, float 0.000000e+00, float %vx_in_1
  %a2_assign_2 = select i1 %tmp_9, float 0.000000e+00, float %ux_in_1
  %w_out_4 = call fastcc float @dut_vm2x1_base(float %w_in_9, float %vw_int_3, float %x_in_6, float %vx_int)
  %x_out = call fastcc float @dut_vm2x1_base(float %w_in_9, float %vy_int_2, float %x_in_6, float %vz_int)
  %vw_out_1 = call fastcc float @dut_vm2x1_base(float %a1_assign_s, float %vw_int_3, float %a2_assign_s, float %vx_int)
  %vx_out_1 = call fastcc float @dut_vm2x1_base(float %a1_assign_s, float %vy_int_2, float %a2_assign_s, float %vz_int)
  %uw_out_1 = call fastcc float @dut_vm2x1_base(float %a1_assign_3, float %uz_new, float %a2_assign_2, float %uy_int)
  %ux_out_1 = call fastcc float @dut_vm2x1_base(float %a1_assign_3, float %ux_new, float %a2_assign_2, float %uz_new)
  store float %w_out_4, float* %s_in_addr_6, align 4
  store float %x_out, float* %s_in_addr_7, align 4
  store float %vw_out_1, float* %v_in_addr_4, align 4
  store float %vx_out_1, float* %v_in_addr_5, align 4
  store float %uw_out_1, float* %u_in_addr_4, align 4
  store float %ux_out_1, float* %u_in_addr_5, align 4
  br i1 %tmp_mid2, label %9, label %._crit_edge23

; <label>:9                                       ; preds = %_ifconv1
  store float %w_out_4, float* %S_addr_6, align 4
  store float %x_out, float* %S_addr_7, align 4
  store float %vw_out_1, float* %V_addr_4, align 4
  store float %vx_out_1, float* %V_addr_5, align 4
  store float %uw_out_1, float* %U_addr_4, align 4
  store float %ux_out_1, float* %U_addr_5, align 4
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %9, %_ifconv1
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge23, %8
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([8 x i8]* @p_str1814, i32 %tmp_26)
  br label %.preheader

; <label>:10                                      ; preds = %.preheader
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1812, i32 %tmp_6)
  br label %2

; <label>:11                                      ; preds = %2
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1811, i32 %tmp_5)
  %top_left_1 = add i10 %top_left_mid2, 1
  br label %1

.reset:                                           ; preds = %1
  %sweepnum_1 = add i3 1, %sweepnum
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @sweep_loop_row_loop_str)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4704, i64 4704, i64 4704)
  %exitcond3 = icmp eq i10 %top_left, -240
  %top_left_mid2 = select i1 %exitcond3, i10 0, i10 %top_left
  %tmp_mid1 = icmp eq i3 %sweepnum_1, -3
  %tmp1 = icmp eq i3 %sweepnum, -3
  %tmp_mid2 = select i1 %exitcond3, i1 %tmp_mid1, i1 %tmp1
  %sweepnum_mid2 = select i1 %exitcond3, i3 %sweepnum_1, i3 %sweepnum
  %top_left_cast = zext i10 %top_left_mid2 to i32
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1811) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1811)
  %tmp = trunc i10 %top_left_mid2 to i3
  %tmp_7 = or i3 %tmp, %sweepnum_mid2
  %tmp_4 = call i7 @_ssdm_op_PartSelect.i7.i10.i32.i32(i10 %top_left_mid2, i32 3, i32 9)
  %tmp_8 = call i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7 %tmp_4, i3 %tmp_7)
  %tmp_9 = icmp eq i10 %tmp_8, 0
  %tmp_cast5 = zext i10 %top_left_mid2 to i20
  %tmp_cast = zext i10 %top_left_mid2 to i21
  %tmp_s = mul i21 784, %tmp_cast
  %tmp_2 = trunc i21 %tmp_s to i20
  %tmp_3 = add i20 %tmp_2, %tmp_cast5
  %tmp_24_cast = zext i20 %tmp_3 to i64
  %A_addr = getelementptr [614656 x float]* %A, i64 0, i64 %tmp_24_cast
  %S_addr = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_24_cast
  %U_addr = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_24_cast
  %V_addr = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_24_cast
  %v_in_addr = getelementptr [614656 x float]* %v_in, i64 0, i64 %tmp_24_cast
  %u_in_addr = getelementptr [614656 x float]* %u_in, i64 0, i64 %tmp_24_cast
  %s_in_addr = getelementptr [614656 x float]* %s_in, i64 0, i64 %tmp_24_cast
  br label %2

; <label>:12                                      ; preds = %1
  ret void
}

define internal fastcc void @dut_rank([784 x i32]* nocapture %PCA_sorted_idx, [7840 x float]* nocapture %tsf_mat, [614656 x float]* nocapture %S, [614656 x float]* nocapture %U) {
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
  %tmp_29 = trunc i32 %temp to i21
  %tmp_34 = mul i21 785, %tmp_29
  %tmp_44_cast = sext i21 %tmp_34 to i64
  %S_addr = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_44_cast
  %S_load = load float* %S_addr, align 4
  %tmp_81_i = zext i10 %i_1 to i64
  %PCA_sorted_idx_addr_2 = getelementptr [784 x i32]* %PCA_sorted_idx, i64 0, i64 %tmp_81_i
  %PCA_sorted_idx_load_2 = load i32* %PCA_sorted_idx_addr_2, align 4
  %tmp_30 = trunc i32 %PCA_sorted_idx_load_2 to i21
  %tmp_40 = mul i21 785, %tmp_30
  %tmp_45_cast = sext i21 %tmp_40 to i64
  %S_addr_8 = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_45_cast
  %S_load_1 = load float* %S_addr_8, align 4
  %S_load_to_int = bitcast float %S_load to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %S_load_to_int, i32 23, i32 30)
  %tmp_31 = trunc i32 %S_load_to_int to i23
  %S_load_1_to_int = bitcast float %S_load_1 to i32
  %tmp_33 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %S_load_1_to_int, i32 23, i32 30)
  %tmp_32 = trunc i32 %S_load_1_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_31, 0
  %tmp_35 = or i1 %notrhs, %notlhs
  %notlhs3 = icmp ne i8 %tmp_33, -1
  %notrhs4 = icmp eq i23 %tmp_32, 0
  %tmp_36 = or i1 %notrhs4, %notlhs3
  %tmp_37 = and i1 %tmp_35, %tmp_36
  %tmp_38 = fcmp olt float %S_load, %S_load_1
  %tmp_39 = and i1 %tmp_37, %tmp_38
  br i1 %tmp_39, label %2, label %._crit_edge.i

; <label>:2                                       ; preds = %1
  store i32 %PCA_sorted_idx_load_2, i32* %PCA_sorted_idx_addr_1, align 4
  store i32 %temp, i32* %PCA_sorted_idx_addr_2, align 4
  br label %._crit_edge.i

; <label>:3                                       ; preds = %._crit_edge.i
  br i1 %swap_i, label %._crit_edge1.i, label %find_max.exit

find_max.exit:                                    ; preds = %.preheader, %3
  %i = phi i4 [ 0, %3 ], [ %i_2, %.preheader ]
  %phi_mul1 = phi i13 [ 0, %3 ], [ %next_mul2, %.preheader ]
  %next_mul2 = add i13 %phi_mul1, 784
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %exitcond1 = icmp eq i4 %i, -6
  %i_2 = add i4 %i, 1
  br i1 %exitcond1, label %5, label %.preheader.preheader

.preheader.preheader:                             ; preds = %find_max.exit
  %tmp_s = zext i4 %i to i64
  %PCA_sorted_idx_addr = getelementptr [784 x i32]* %PCA_sorted_idx, i64 0, i64 %tmp_s
  br label %.preheader

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j = phi i10 [ %j_1, %4 ], [ 0, %.preheader.preheader ]
  %phi_mul = phi i20 [ %next_mul, %4 ], [ 0, %.preheader.preheader ]
  %phi_mul_cast = zext i20 %phi_mul to i21
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %exitcond = icmp eq i10 %j, -240
  %j_1 = add i10 %j, 1
  br i1 %exitcond, label %find_max.exit, label %4

; <label>:4                                       ; preds = %.preheader
  %PCA_sorted_idx_load = load i32* %PCA_sorted_idx_addr, align 4
  %tmp_41 = trunc i32 %PCA_sorted_idx_load to i21
  %tmp_41_cast = zext i10 %j to i13
  %tmp_42 = add i13 %tmp_41_cast, %phi_mul1
  %tmp_47_cast = zext i13 %tmp_42 to i64
  %tsf_mat_addr = getelementptr [7840 x float]* %tsf_mat, i64 0, i64 %tmp_47_cast
  %next_mul = add i20 784, %phi_mul
  %tmp_43 = add i21 %tmp_41, %phi_mul_cast
  %tmp_49_cast = zext i21 %tmp_43 to i64
  %U_addr = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_49_cast
  %U_load = load float* %U_addr, align 4
  store float %U_load, float* %tsf_mat_addr, align 4
  br label %.preheader

; <label>:5                                       ; preds = %find_max.exit
  ret void
}

define internal fastcc void @dut_normalize([78400 x float]* nocapture %X, [784 x float]* nocapture %mean) {
  br label %.loopexit

.loopexit:                                        ; preds = %3, %0
  %j = phi i10 [ 0, %0 ], [ %j_2, %3 ]
  %phi_mul = phi i17 [ 0, %0 ], [ %next_mul, %3 ]
  %next_mul = add i17 %phi_mul, 100
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %exitcond2 = icmp eq i10 %j, -240
  %j_2 = add i10 %j, 1
  br i1 %exitcond2, label %5, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_s = zext i10 %j to i64
  br label %.preheader

.preheader:                                       ; preds = %1, %.preheader.preheader
  %sum = phi float [ %sum_1, %1 ], [ 0.000000e+00, %.preheader.preheader ]
  %i = phi i7 [ %i_3, %1 ], [ 0, %.preheader.preheader ]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %exitcond1 = icmp eq i7 %i, -28
  %i_3 = add i7 %i, 1
  br i1 %exitcond1, label %2, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_43_cast = zext i7 %i to i17
  %tmp_44 = add i17 %phi_mul, %tmp_43_cast
  %tmp_50_cast = zext i17 %tmp_44 to i64
  %X_addr = getelementptr [78400 x float]* %X, i64 0, i64 %tmp_50_cast
  %X_load = load float* %X_addr, align 4
  %sum_1 = fadd float %sum, %X_load
  br label %.preheader

; <label>:2                                       ; preds = %.preheader
  %tmp_42 = fdiv float %sum, 1.000000e+02
  %mean_addr = getelementptr [784 x float]* %mean, i64 0, i64 %tmp_s
  store float %tmp_42, float* %mean_addr, align 4
  br label %3

; <label>:3                                       ; preds = %4, %2
  %i1 = phi i7 [ 0, %2 ], [ %i_4, %4 ]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %exitcond = icmp eq i7 %i1, -28
  %i_4 = add i7 %i1, 1
  br i1 %exitcond, label %.loopexit, label %4

; <label>:4                                       ; preds = %3
  %tmp_44_cast = zext i7 %i1 to i17
  %tmp_46 = add i17 %phi_mul, %tmp_44_cast
  %tmp_51_cast = zext i17 %tmp_46 to i64
  %X_addr_1 = getelementptr [78400 x float]* %X, i64 0, i64 %tmp_51_cast
  %X_load_1 = load float* %X_addr_1, align 4
  %tmp_45 = fsub float %X_load_1, %tmp_42
  store float %tmp_45, float* %X_addr_1, align 4
  br label %3

; <label>:5                                       ; preds = %.loopexit
  ret void
}

define internal fastcc void @dut_matrix_multiply_alt26([78400 x float]* nocapture %A, [78400 x float]* nocapture %B, [614656 x float]* nocapture %C) {
  %sum_mult = alloca [614656 x float], align 4
  br label %1

; <label>:1                                       ; preds = %ifBlock, %0
  %indvar_flatten1 = phi i26 [ 0, %0 ], [ %indvar_flatten_next1, %ifBlock ]
  %Col_assign_2 = phi i7 [ 0, %0 ], [ %tmp_i_i_mid2_v, %ifBlock ]
  %indvar_flatten = phi i20 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ]
  %Row_assign = phi i10 [ 0, %0 ], [ %tmp_34_mid2, %ifBlock ]
  %Col_assign = phi i10 [ 0, %0 ], [ %c, %ifBlock ]
  %exitcond_flatten1 = icmp eq i26 %indvar_flatten1, -5643264
  %indvar_flatten_next1 = add i26 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %7, label %.reset7

; <label>:2                                       ; preds = %.reset7
  store float %mult, float* %sum_mult_addr, align 4
  br label %ifBlock

; <label>:3                                       ; preds = %.reset7
  %tmp_36 = fadd float %sum_mult_load, %mult
  br i1 %tmp_mid2_21, label %4, label %5

; <label>:4                                       ; preds = %3
  store float %tmp_36, float* %C_addr, align 4
  br label %6

; <label>:5                                       ; preds = %3
  store float %tmp_36, float* %sum_mult_addr, align 4
  br label %6

; <label>:6                                       ; preds = %5, %4
  br label %ifBlock

ifBlock:                                          ; preds = %6, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1809, i32 %tmp_35)
  %c = add i10 %Col_assign_mid2, 1
  %indvar_flatten_op = add i20 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i20 1, i20 %indvar_flatten_op
  br label %1

.reset7:                                          ; preds = %1
  %k = add i7 %Col_assign_2, 1
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @a_col_loop_a_row_loop_b_col_lo)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 61465600, i64 61465600, i64 61465600)
  %exitcond_flatten = icmp eq i20 %indvar_flatten, -433920
  %Row_assign_mid = select i1 %exitcond_flatten, i10 0, i10 %Row_assign
  %tmp_mid1 = icmp eq i7 %k, 0
  %tmp2 = icmp eq i7 %Col_assign_2, 0
  %tmp_mid2 = select i1 %exitcond_flatten, i1 %tmp_mid1, i1 %tmp2
  %tmp_mid1_20 = icmp eq i7 %k, -29
  %tmp_1 = icmp eq i7 %Col_assign_2, -29
  %tmp_mid2_21 = select i1 %exitcond_flatten, i1 %tmp_mid1_20, i1 %tmp_1
  %tmp_i_i_mid2_v = select i1 %exitcond_flatten, i7 %k, i7 %Col_assign_2
  %tmp_i_i_mid2_cast1 = zext i7 %tmp_i_i_mid2_v to i17
  %tmp_i_i_mid2_cast = zext i7 %tmp_i_i_mid2_v to i17
  %tmp_s = mul i17 %tmp_i_i_mid2_cast, 784
  %not_exitcond_flatten = xor i1 %exitcond_flatten, true
  %exitcond = icmp eq i10 %Col_assign, -240
  %exitcond_mid = and i1 %exitcond, %not_exitcond_flatten
  %r = add i10 %Row_assign_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([22 x i8]* @a_row_loop_b_col_loop_str)
  %tmp_47 = or i1 %exitcond_mid, %exitcond_flatten
  %Col_assign_mid2 = select i1 %tmp_47, i10 0, i10 %Col_assign
  %tmp_34_mid2 = select i1 %exitcond_mid, i10 %r, i10 %Row_assign_mid
  %tmp_34_mid2_cast1 = zext i10 %tmp_34_mid2 to i20
  %tmp_34_mid2_cast = zext i10 %tmp_34_mid2 to i17
  %tmp_48 = mul i17 %tmp_34_mid2_cast, 100
  %tmp_49 = add i17 %tmp_i_i_mid2_cast1, %tmp_48
  %tmp_55_cast = zext i17 %tmp_49 to i64
  %A_addr = getelementptr [78400 x float]* %A, i64 0, i64 %tmp_55_cast
  %tmp_50 = mul i20 %tmp_34_mid2_cast1, 784
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1809) nounwind
  %tmp_35 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1809)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %cast_in_a = load float* %A_addr, align 4
  %tmp_i_i4_cast1 = zext i10 %Col_assign_mid2 to i20
  %tmp_i_i4_cast = zext i10 %Col_assign_mid2 to i17
  %tmp_51 = add i17 %tmp_i_i4_cast, %tmp_s
  %tmp_57_cast = zext i17 %tmp_51 to i64
  %B_addr = getelementptr [78400 x float]* %B, i64 0, i64 %tmp_57_cast
  %tmp_52 = add i20 %tmp_i_i4_cast1, %tmp_50
  %tmp_58_cast = zext i20 %tmp_52 to i64
  %C_addr = getelementptr [614656 x float]* %C, i64 0, i64 %tmp_58_cast
  %sum_mult_addr = getelementptr [614656 x float]* %sum_mult, i64 0, i64 %tmp_58_cast
  %cast_in_b = load float* %B_addr, align 4
  %mult = fmul float %cast_in_a, %cast_in_b
  %sum_mult_load = load float* %sum_mult_addr, align 4
  br i1 %tmp_mid2, label %2, label %3

; <label>:7                                       ; preds = %1
  ret void
}

define internal fastcc void @dut_matrix_multiply_alt2([7840 x float]* nocapture %A, [78400 x float]* nocapture %B, [1000 x float]* nocapture %C) {
  %sum_mult = alloca [1000 x float], align 4
  br label %1

; <label>:1                                       ; preds = %ifBlock, %0
  %indvar_flatten2 = phi i20 [ 0, %0 ], [ %indvar_flatten_next2, %ifBlock ]
  %Col_assign_3 = phi i10 [ 0, %0 ], [ %tmp_i_i_mid2_v, %ifBlock ]
  %indvar_flatten = phi i11 [ 0, %0 ], [ %indvar_flatten_next, %ifBlock ]
  %Row_assign = phi i4 [ 0, %0 ], [ %tmp_40_mid2, %ifBlock ]
  %Col_assign = phi i7 [ 0, %0 ], [ %c, %ifBlock ]
  %exitcond_flatten2 = icmp eq i20 %indvar_flatten2, -264576
  %indvar_flatten_next2 = add i20 %indvar_flatten2, 1
  br i1 %exitcond_flatten2, label %7, label %.reset7

; <label>:2                                       ; preds = %.reset7
  store float %mult, float* %sum_mult_addr, align 4
  br label %ifBlock

; <label>:3                                       ; preds = %.reset7
  %tmp_42 = fadd float %sum_mult_load, %mult
  br i1 %tmp_mid2_24, label %4, label %5

; <label>:4                                       ; preds = %3
  store float %tmp_42, float* %C_addr, align 4
  br label %6

; <label>:5                                       ; preds = %3
  store float %tmp_42, float* %sum_mult_addr, align 4
  br label %6

; <label>:6                                       ; preds = %5, %4
  br label %ifBlock

ifBlock:                                          ; preds = %6, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1809, i32 %tmp_41)
  %c = add i7 %Col_assign_mid2, 1
  %indvar_flatten_op = add i11 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i11 1, i11 %indvar_flatten_op
  br label %1

.reset7:                                          ; preds = %1
  %k = add i10 %Col_assign_3, 1
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @a_col_loop_a_row_loop_b_col_lo)
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784000, i64 784000, i64 784000)
  %exitcond_flatten = icmp eq i11 %indvar_flatten, 1000
  %Row_assign_mid = select i1 %exitcond_flatten, i4 0, i4 %Row_assign
  %tmp_mid1 = icmp eq i10 %k, 0
  %tmp2 = icmp eq i10 %Col_assign_3, 0
  %tmp_mid2 = select i1 %exitcond_flatten, i1 %tmp_mid1, i1 %tmp2
  %tmp_mid1_23 = icmp eq i10 %k, -241
  %tmp_1 = icmp eq i10 %Col_assign_3, -241
  %tmp_mid2_24 = select i1 %exitcond_flatten, i1 %tmp_mid1_23, i1 %tmp_1
  %tmp_i_i_mid2_v = select i1 %exitcond_flatten, i10 %k, i10 %Col_assign_3
  %tmp_i_i_mid2_cast2 = zext i10 %tmp_i_i_mid2_v to i14
  %tmp_i_i_mid2_cast = zext i10 %tmp_i_i_mid2_v to i17
  %tmp_s = mul i17 %tmp_i_i_mid2_cast, 100
  %not_exitcond_flatten = xor i1 %exitcond_flatten, true
  %exitcond = icmp eq i7 %Col_assign, -28
  %exitcond_mid = and i1 %exitcond, %not_exitcond_flatten
  %r = add i4 %Row_assign_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([22 x i8]* @a_row_loop_b_col_loop_str)
  %tmp_53 = or i1 %exitcond_mid, %exitcond_flatten
  %Col_assign_mid2 = select i1 %tmp_53, i7 0, i7 %Col_assign
  %tmp_40_mid2 = select i1 %exitcond_mid, i4 %r, i4 %Row_assign_mid
  %tmp_40_mid2_cast1 = zext i4 %tmp_40_mid2 to i11
  %tmp_40_mid2_cast = zext i4 %tmp_40_mid2 to i14
  %tmp_54 = mul i14 %tmp_40_mid2_cast, 784
  %tmp_55 = add i14 %tmp_i_i_mid2_cast2, %tmp_54
  %tmp_62_cast = sext i14 %tmp_55 to i64
  %A_addr = getelementptr [7840 x float]* %A, i64 0, i64 %tmp_62_cast
  %tmp_56 = mul i11 %tmp_40_mid2_cast1, 100
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1809) nounwind
  %tmp_41 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1809)
  call void (...)* @_ssdm_op_SpecPipeline(i32 100, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %cast_in_a = load float* %A_addr, align 4
  %tmp_i_i4_cast2 = zext i7 %Col_assign_mid2 to i11
  %tmp_i_i4_cast = zext i7 %Col_assign_mid2 to i17
  %tmp_57 = add i17 %tmp_i_i4_cast, %tmp_s
  %tmp_64_cast = zext i17 %tmp_57 to i64
  %B_addr = getelementptr [78400 x float]* %B, i64 0, i64 %tmp_64_cast
  %tmp_58 = add i11 %tmp_i_i4_cast2, %tmp_56
  %tmp_65_cast = sext i11 %tmp_58 to i64
  %C_addr = getelementptr [1000 x float]* %C, i64 0, i64 %tmp_65_cast
  %sum_mult_addr = getelementptr [1000 x float]* %sum_mult, i64 0, i64 %tmp_65_cast
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
  %empty_25 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %strm_in_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %strm_in_V_V), !map !215
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_out_V), !map !221
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dut_str) nounwind
  %X = alloca [78400 x float], align 4
  %Y_assign = alloca [1000 x float], align 4
  %tsf_mat = alloca [7840 x float], align 4
  %pca_sorted_idx = alloca [784 x i32], align 4
  %S = alloca [614656 x float], align 4
  %U = alloca [614656 x float], align 4
  %V = alloca [614656 x float], align 4
  %XXT = alloca [614656 x float], align 4
  %mean = alloca [784 x float], align 16
  br label %.loopexit5

.loopexit5:                                       ; preds = %.preheader42, %0
  %test = phi i7 [ 0, %0 ], [ %test_1, %.preheader42 ]
  %exitcond1 = icmp eq i7 %test, -28
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %test_1 = add i7 %test, 1
  br i1 %exitcond1, label %.preheader11, label %.preheader42.preheader

.preheader42.preheader:                           ; preds = %.loopexit5
  %tmp_cast = zext i7 %test to i17
  br label %.preheader42

.preheader42:                                     ; preds = %2, %.preheader42.preheader
  %i = phi i8 [ 0, %.preheader42.preheader ], [ %i_2, %2 ]
  %exitcond2 = icmp eq i8 %i, -60
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 196, i64 196, i64 196)
  %i_2 = add i8 %i, 1
  br i1 %exitcond2, label %.loopexit5, label %1

; <label>:1                                       ; preds = %.preheader42
  %tmp_V = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %strm_in_V_V)
  %tmp_46 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %i, i2 0)
  br label %2

; <label>:2                                       ; preds = %3, %1
  %j = phi i3 [ 0, %1 ], [ %j_1, %3 ]
  %j_cast = zext i3 %j to i10
  %exitcond4 = icmp eq i3 %j, -4
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_1 = add i3 %j, 1
  br i1 %exitcond4, label %.preheader42, label %3

; <label>:3                                       ; preds = %2
  %tmp = trunc i3 %j to i2
  %Lo_assign = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp, i3 0)
  %Hi_assign = or i5 %Lo_assign, 7
  %tmp_42 = icmp ugt i5 %Lo_assign, %Hi_assign
  %tmp_43 = zext i5 %Lo_assign to i6
  %tmp_44 = zext i5 %Hi_assign to i6
  %tmp_45 = call i32 @llvm.part.select.i32(i32 %tmp_V, i32 31, i32 0)
  %tmp_47 = sub i6 %tmp_43, %tmp_44
  %tmp_50 = xor i6 %tmp_43, 31
  %tmp_51 = sub i6 %tmp_44, %tmp_43
  %tmp_52 = select i1 %tmp_42, i6 %tmp_47, i6 %tmp_51
  %tmp_53 = select i1 %tmp_42, i32 %tmp_45, i32 %tmp_V
  %tmp_54 = select i1 %tmp_42, i6 %tmp_50, i6 %tmp_43
  %tmp_56 = sub i6 31, %tmp_52
  %tmp_57 = zext i6 %tmp_54 to i32
  %tmp_58 = zext i6 %tmp_56 to i32
  %tmp_60 = lshr i32 %tmp_53, %tmp_57
  %tmp_61 = lshr i32 -1, %tmp_58
  %p_Result_s = and i32 %tmp_60, %tmp_61
  %tmp_48 = uitofp i32 %p_Result_s to float
  %tmp_49 = add i10 %tmp_46, %j_cast
  %tmp_50_cast = zext i10 %tmp_49 to i17
  %tmp_62 = mul i17 100, %tmp_50_cast
  %tmp_63 = add i17 %tmp_cast, %tmp_62
  %tmp_69_cast = zext i17 %tmp_63 to i64
  %X_addr = getelementptr [78400 x float]* %X, i64 0, i64 %tmp_69_cast
  store float %tmp_48, float* %X_addr, align 4
  br label %2

.preheader11:                                     ; preds = %.loopexit5, %4
  %i_0_i = phi i10 [ %i_1, %4 ], [ 0, %.loopexit5 ]
  %i_0_i_cast8 = zext i10 %i_0_i to i32
  %exitcond10 = icmp eq i10 %i_0_i, -240
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
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
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_3 = add i10 %i1, 1
  br i1 %exitcond3, label %6, label %.preheader41

.preheader41:                                     ; preds = %PCA.exit, %5
  %j2 = phi i10 [ %j_2, %5 ], [ 0, %PCA.exit ]
  %exitcond6 = icmp eq i10 %j2, -240
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %j_2 = add i10 %j2, 1
  br i1 %exitcond6, label %PCA.exit, label %5

; <label>:5                                       ; preds = %.preheader41
  %tmp_52_cast = zext i10 %j2 to i20
  %tmp_59 = add i20 %phi_mul, %tmp_52_cast
  %tmp_71_cast = zext i20 %tmp_59 to i64
  %S_addr = getelementptr [614656 x float]* %S, i64 0, i64 %tmp_71_cast
  %U_addr = getelementptr [614656 x float]* %U, i64 0, i64 %tmp_71_cast
  %V_addr = getelementptr [614656 x float]* %V, i64 0, i64 %tmp_71_cast
  %XXT_addr = getelementptr [614656 x float]* %XXT, i64 0, i64 %tmp_71_cast
  store float 0.000000e+00, float* %S_addr, align 4
  store float 0.000000e+00, float* %U_addr, align 4
  store float 0.000000e+00, float* %V_addr, align 4
  store float 0.000000e+00, float* %XXT_addr, align 4
  br label %.preheader41

; <label>:6                                       ; preds = %PCA.exit
  call fastcc void @dut_normalize([78400 x float]* %X, [784 x float]* %mean)
  call fastcc void @dut_cov([78400 x float]* %X, [614656 x float]* %XXT)
  call fastcc void @dut_svd_basic([614656 x float]* %XXT, [614656 x float]* %S, [614656 x float]* %U, [614656 x float]* %V)
  call fastcc void @dut_rank([784 x i32]* %pca_sorted_idx, [7840 x float]* %tsf_mat, [614656 x float]* %S, [614656 x float]* %U)
  call fastcc void @dut_matrix_multiply_alt2([7840 x float]* %tsf_mat, [78400 x float]* %X, [1000 x float]* %Y_assign)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader40, %6
  %i3 = phi i4 [ 0, %6 ], [ %i_4, %.preheader40 ]
  %phi_mul1 = phi i10 [ 0, %6 ], [ %next_mul2, %.preheader40 ]
  %next_mul2 = add i10 %phi_mul1, 100
  %exitcond5 = icmp eq i4 %i3, -6
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_4 = add i4 %i3, 1
  br i1 %exitcond5, label %.preheader39, label %.preheader40

.preheader40:                                     ; preds = %.loopexit, %7
  %j4 = phi i7 [ %j_3, %7 ], [ 0, %.loopexit ]
  %exitcond8 = icmp eq i7 %j4, -28
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %j_3 = add i7 %j4, 1
  br i1 %exitcond8, label %.loopexit, label %7

; <label>:7                                       ; preds = %.preheader40
  %tmp_54_cast = zext i7 %j4 to i10
  %tmp_64 = add i10 %phi_mul1, %tmp_54_cast
  %tmp_73_cast = zext i10 %tmp_64 to i64
  %Y_assign_addr = getelementptr [1000 x float]* %Y_assign, i64 0, i64 %tmp_73_cast
  %tmp_65 = load float* %Y_assign_addr, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_65)
  br label %.preheader40

.preheader39:                                     ; preds = %.preheader38, %.loopexit
  %i5 = phi i4 [ 0, %.loopexit ], [ %i_6, %.preheader38 ]
  %phi_mul3 = phi i13 [ 0, %.loopexit ], [ %next_mul4, %.preheader38 ]
  %next_mul4 = add i13 %phi_mul3, 784
  %exitcond7 = icmp eq i4 %i5, -6
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %i_6 = add i4 %i5, 1
  br i1 %exitcond7, label %.preheader, label %.preheader38

.preheader38:                                     ; preds = %.preheader39, %8
  %j6 = phi i10 [ %j_4, %8 ], [ 0, %.preheader39 ]
  %exitcond9 = icmp eq i10 %j6, -240
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %j_4 = add i10 %j6, 1
  br i1 %exitcond9, label %.preheader39, label %8

; <label>:8                                       ; preds = %.preheader38
  %tmp_56_cast = zext i10 %j6 to i13
  %tmp_67 = add i13 %phi_mul3, %tmp_56_cast
  %tmp_76_cast = zext i13 %tmp_67 to i64
  %tsf_mat_addr = getelementptr [7840 x float]* %tsf_mat, i64 0, i64 %tmp_76_cast
  %tmp_68 = load float* %tsf_mat_addr, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_68)
  br label %.preheader38

.preheader:                                       ; preds = %.preheader39, %9
  %i7 = phi i10 [ %i_5, %9 ], [ 0, %.preheader39 ]
  %exitcond = icmp eq i10 %i7, -240
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_5 = add i10 %i7, 1
  br i1 %exitcond, label %10, label %9

; <label>:9                                       ; preds = %.preheader
  %tmp_55 = zext i10 %i7 to i64
  %mean_addr = getelementptr inbounds [784 x float]* %mean, i64 0, i64 %tmp_55
  %tmp_66 = load float* %mean_addr, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_66)
  br label %.preheader

; <label>:10                                      ; preds = %.preheader
  ret void
}

define internal fastcc void @dut_cov([78400 x float]* nocapture %X, [614656 x float]* nocapture %XXT) align 2 {
  %XT = alloca [78400 x float], align 4
  br label %.loopexit5

.loopexit5:                                       ; preds = %.preheader4, %0
  %i = phi i10 [ 0, %0 ], [ %i_7, %.preheader4 ]
  %phi_mul1 = phi i17 [ 0, %0 ], [ %next_mul2, %.preheader4 ]
  %next_mul2 = add i17 %phi_mul1, 100
  %exitcond3 = icmp eq i10 %i, -240
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_7 = add i10 %i, 1
  br i1 %exitcond3, label %2, label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.loopexit5
  %tmp_cast = zext i10 %i to i17
  br label %.preheader4

.preheader4:                                      ; preds = %1, %.preheader4.preheader
  %j = phi i7 [ %j_5, %1 ], [ 0, %.preheader4.preheader ]
  %phi_mul = phi i17 [ %next_mul, %1 ], [ 0, %.preheader4.preheader ]
  %exitcond2 = icmp eq i7 %j, -28
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %j_5 = add i7 %j, 1
  br i1 %exitcond2, label %.loopexit5, label %1

; <label>:1                                       ; preds = %.preheader4
  %tmp_57_cast = zext i7 %j to i17
  %tmp_s = add i17 %phi_mul1, %tmp_57_cast
  %tmp_80_cast = zext i17 %tmp_s to i64
  %X_addr = getelementptr [78400 x float]* %X, i64 0, i64 %tmp_80_cast
  %next_mul = add i17 %phi_mul, 784
  %tmp_68 = add i17 %phi_mul, %tmp_cast
  %tmp_82_cast = zext i17 %tmp_68 to i64
  %XT_addr = getelementptr [78400 x float]* %XT, i64 0, i64 %tmp_82_cast
  %X_load = load float* %X_addr, align 4
  store float %X_load, float* %XT_addr, align 4
  br label %.preheader4

; <label>:2                                       ; preds = %.loopexit5
  call fastcc void @dut_matrix_multiply_alt26([78400 x float]* %X, [78400 x float]* %XT, [614656 x float]* %XXT)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %2
  %i1 = phi i10 [ 0, %2 ], [ %i_8, %.preheader ]
  %phi_mul3 = phi i20 [ 0, %2 ], [ %next_mul4, %.preheader ]
  %next_mul4 = add i20 %phi_mul3, 784
  %exitcond1 = icmp eq i10 %i1, -240
  %empty_38 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_8 = add i10 %i1, 1
  br i1 %exitcond1, label %4, label %.preheader

.preheader:                                       ; preds = %.loopexit, %3
  %j2 = phi i10 [ %j_6, %3 ], [ 0, %.loopexit ]
  %exitcond = icmp eq i10 %j2, -240
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %j_6 = add i10 %j2, 1
  br i1 %exitcond, label %.loopexit, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_58_cast = zext i10 %j2 to i20
  %tmp_69 = add i20 %phi_mul3, %tmp_58_cast
  %tmp_83_cast = zext i20 %tmp_69 to i64
  %XXT_addr = getelementptr [614656 x float]* %XXT, i64 0, i64 %tmp_83_cast
  %XXT_load = load float* %XXT_addr, align 4
  %tmp_59 = fdiv float %XXT_load, 9.900000e+01
  store float %tmp_59, float* %XXT_addr, align 4
  br label %.preheader

; <label>:4                                       ; preds = %.loopexit
  ret void
}

define internal fastcc { float, float } @"dut_calc_angle<float, float>"(float %A_re, float %A_im) {
  %A_im_read = call float @_ssdm_op_Read.ap_auto.float(float %A_im)
  %A_re_read = call float @_ssdm_op_Read.ap_auto.float(float %A_re)
  %p_Val2_s = bitcast float %A_re_read to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %p_Val2_4 = bitcast float %A_im_read to i32
  %loc_V_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_4, i32 23, i32 30) nounwind
  %lhs_V_cast = zext i8 %loc_V_1 to i9
  %r_V = add i9 %lhs_V_cast, 24
  %tmp_i_cast = zext i8 %loc_V to i9
  %ult = icmp ult i9 %r_V, %tmp_i_cast
  %notrhs_i = icmp eq i8 %loc_V_1, 0
  %demorgan = or i1 %ult, %notrhs_i
  br i1 %demorgan, label %1, label %2

; <label>:1                                       ; preds = %0
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %p_s = select i1 %p_Result_s, float 0.000000e+00, float 1.000000e+00
  %p_1 = select i1 %p_Result_s, float 1.000000e+00, float 0.000000e+00
  br label %8

; <label>:2                                       ; preds = %0
  %r_V_1 = add i9 %tmp_i_cast, 24
  %ult3 = icmp ult i9 %r_V_1, %lhs_V_cast
  %notrhs_i1 = icmp eq i8 %loc_V, 0
  %demorgan5 = or i1 %ult3, %notrhs_i1
  br i1 %demorgan5, label %3, label %4

; <label>:3                                       ; preds = %2
  %p_Result_10 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_4, i32 31)
  %storemerge1 = select i1 %p_Result_10, float 0xBFE6A09E60000000, float 0x3FE6A09E60000000
  br label %8

; <label>:4                                       ; preds = %2
  %tanThetaA = fdiv float %A_im_read, %A_re_read
  %p_Result_7 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %p_Result_11 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %p_Result_7, i31 1065353216) nounwind
  %ret_i_i_i_i = bitcast i32 %p_Result_11 to float
  %tmp_s = fmul float %tanThetaA, %tanThetaA
  %x_assign = fadd float %tmp_s, 1.000000e+00
  %tmp_i_i = call float @_ssdm_op_FRSqrt(float %x_assign) nounwind
  %cosThetaA_int = fmul float %ret_i_i_i_i, %tmp_i_i
  %sinThetaA_int = fmul float %cosThetaA_int, %tanThetaA
  %p_Val2_7 = bitcast float %cosThetaA_int to i32
  %p_Result_12 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_7, i32 31)
  br i1 %p_Result_12, label %5, label %6

; <label>:5                                       ; preds = %4
  %tmp_44 = fsub float 1.000000e+00, %cosThetaA_int
  %tanThetaAdiv2_1 = fdiv float %tmp_44, %sinThetaA_int
  br label %7

; <label>:6                                       ; preds = %4
  %tmp_45 = fadd float %cosThetaA_int, 1.000000e+00
  %tanThetaAdiv2 = fdiv float %sinThetaA_int, %tmp_45
  br label %7

; <label>:7                                       ; preds = %6, %5
  %tanThetaAdiv = phi float [ %tanThetaAdiv2_1, %5 ], [ %tanThetaAdiv2, %6 ]
  %tmp_46 = fmul float %tanThetaAdiv, %tanThetaAdiv
  %x_assign_2 = fadd float %tmp_46, 1.000000e+00
  %cosThetaAdiv2_int = call float @_ssdm_op_FRSqrt(float %x_assign_2) nounwind
  %tmp_47 = fmul float %cosThetaAdiv2_int, %tanThetaAdiv
  br label %8

; <label>:8                                       ; preds = %7, %3, %1
  %cosThetaAdiv2_write_assign = phi float [ %cosThetaAdiv2_int, %7 ], [ %storemerge1, %3 ], [ %p_s, %1 ]
  %sinThetaAdiv2_write_assign = phi float [ %tmp_47, %7 ], [ 0x3FE6A09E60000000, %3 ], [ %p_1, %1 ]
  %newret = insertvalue { float, float } undef, float %cosThetaAdiv2_write_assign, 0
  %newret2 = insertvalue { float, float } %newret, float %sinThetaAdiv2_write_assign, 1
  ret { float, float } %newret2
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

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_40 = trunc i32 %empty to i8
  ret i8 %empty_40
}

define weak i7 @_ssdm_op_PartSelect.i7.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_41 = trunc i10 %empty to i7
  ret i7 %empty_41
}

declare i3 @_ssdm_op_PartSelect.i3.i10.i32.i32(i10, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_42 = trunc i32 %empty to i22
  ret i22 %empty_42
}

declare i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak float @_ssdm_op_FRSqrt(float) nounwind {
entry:
  %empty = call float @llvm.sqrt.f32(float %0)
  %empty_43 = fdiv float 1.000000e+00, %empty
  ret float %empty_43
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_44 = and i32 %0, %empty
  %empty_45 = icmp ne i32 %empty_44, 0
  ret i1 %empty_45
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_46 = zext i3 %1 to i5
  %empty_47 = shl i5 %empty, 3
  %empty_48 = or i5 %empty_47, %empty_46
  ret i5 %empty_48
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone {
entry:
  %empty = zext i22 %0 to i32
  %empty_49 = zext i10 %1 to i32
  %empty_50 = shl i32 %empty, 10
  %empty_51 = or i32 %empty_50, %empty_49
  ret i32 %empty_51
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone {
entry:
  %empty = zext i1 %0 to i32
  %empty_52 = zext i31 %1 to i32
  %empty_53 = shl i32 %empty, 31
  %empty_54 = or i32 %empty_53, %empty_52
  ret i32 %empty_54
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10
  %empty_55 = zext i2 %1 to i10
  %empty_56 = shl i10 %empty, 2
  %empty_57 = or i10 %empty_56, %empty_55
  ret i10 %empty_57
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7, i3) nounwind readnone {
entry:
  %empty = zext i7 %0 to i10
  %empty_58 = zext i3 %1 to i10
  %empty_59 = shl i10 %empty, 3
  %empty_60 = or i10 %empty_59, %empty_58
  ret i10 %empty_60
}

declare float @_autotb_FifoWrite_float(float*, float)

declare i32 @_autotb_FifoRead_i32(i32*)

declare void @_GLOBAL__I_a1973() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !19, !13, !22, !22, !25, !13, !27, !27, !13, !30, !13, !13, !13, !33, !33, !35, !35, !37, !13, !13, !13, !39, !27, !27, !13, !42, !13, !13, !13, !44, !44, !46, !46, !48, !13, !13, !13, !13, !13, !13, !50, !13, !13, !13, !13, !22, !22, !25, !50, !13, !22, !22, !25, !50, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !52, !52, !52, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !52, !52, !52, !57, !57, !57, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !57, !57, !57, !13, !57, !57, !57, !13, !13, !13, !13, !62, !65, !65, !13, !13, !71, !13, !75, !79, !82, !88, !92, !95, !98, !98, !102, !102, !106, !106, !108, !108, !112, !114, !114, !120, !126, !132, !13, !13, !135, !135, !137, !140, !140, !13, !13, !13, !13, !142, !144, !144, !13, !62, !145, !145, !62, !65, !65, !137, !142, !144, !144, !13, !62, !147, !147, !149, !151, !151, !154, !13, !156, !149, !158, !158, !160, !160, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !162, !132, !132, !168, !171, !13, !13, !13, !13, !62, !62, !173, !175, !175, !13, !13, !176, !178, !178, !62, !62, !179, !181, !181, !13, !13, !182, !184, !184, !149, !13, !156, !13, !13, !185, !168, !187, !27, !27, !13, !189, !190, !191, !193, !193, !194, !13, !13, !13, !144, !144, !184, !184, !196, !198, !13, !13, !13, !44, !44, !200, !200, !13, !13, !132, !202, !204, !13, !13, !206, !206, !206, !106, !106, !22, !22, !25, !13, !27, !27, !30, !13, !13, !13, !33, !33, !35, !35, !37, !13, !13, !13, !39, !42, !13, !13, !13, !44, !44, !46, !46, !48, !13, !13, !13, !13, !13, !13, !50, !13, !13, !13, !13, !22, !22, !25, !50, !13, !22, !22, !25, !50, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !52, !52, !52, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !52, !52, !52, !57, !57, !57, !13, !52, !52, !52, !13, !52, !52, !52, !13, !52, !52, !52, !13, !57, !57, !57, !13, !57, !57, !57, !13, !13}
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
!77 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t*"}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"mean"}
!79 = metadata !{null, metadata !76, metadata !2, metadata !80, metadata !4, metadata !81, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t [784]*"}
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
!93 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [100]*", metadata !"fix32_t [100]*"}
!94 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"X", metadata !"Y"}
!95 = metadata !{null, metadata !53, metadata !9, metadata !96, metadata !11, metadata !97, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*"}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"S"}
!98 = metadata !{null, metadata !89, metadata !67, metadata !99, metadata !100, metadata !101, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const float [784]*", metadata !"const float [100]*", metadata !"float [100]*"}
!100 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"B", metadata !"C"}
!102 = metadata !{null, metadata !66, metadata !67, metadata !103, metadata !104, metadata !105, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const float [100]*", metadata !"uint", metadata !"uint"}
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
!115 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!116 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &"}
!118 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!119 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"b1", metadata !"a2", metadata !"b2", metadata !"c"}
!120 = metadata !{null, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !6}
!121 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!122 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!124 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"a3", metadata !"a4", metadata !"b1", metadata !"b2", metadata !"b3", metadata !"b4", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
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
!207 = metadata !{metadata !"kernel_arg_type", metadata !"const float [100]*", metadata !"const float [784]*", metadata !"float [784]*"}
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
