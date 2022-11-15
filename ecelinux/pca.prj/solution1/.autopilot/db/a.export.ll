; ModuleID = '/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1968, void ()* @_GLOBAL__I_a1945]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@dut_str = internal unnamed_addr constant [4 x i8] c"dut\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str1810 = private unnamed_addr constant [11 x i8] c"off_row_uv\00", align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"off_row_s\00", align 1
@p_str1808 = private unnamed_addr constant [10 x i8] c"off_col_s\00", align 1
@p_str1806 = private unnamed_addr constant [13 x i8] c"off_row_wb_s\00", align 1
@p_str1805 = private unnamed_addr constant [11 x i8] c"off_col_wb\00", align 1
@p_str1804 = private unnamed_addr constant [14 x i8] c"off_row_wb_uv\00", align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc void @dut_update_off_diag_s(i32 %top_left, i32 %bottom_right, float %p_read, float %p_read1, float %p_read2, float %p_read3, float %p_read4, float %p_read5, float %p_read6, float %p_read7, [784 x float]* nocapture %s_col_temp_0, [784 x float]* nocapture %s_col_temp_1, [784 x float]* nocapture %s_row_temp_0, [784 x float]* nocapture %s_row_temp_1) {
  %p_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %p_read7)
  %p_read_2 = call float @_ssdm_op_Read.ap_auto.float(float %p_read6)
  %p_read_3 = call float @_ssdm_op_Read.ap_auto.float(float %p_read5)
  %p_read_4 = call float @_ssdm_op_Read.ap_auto.float(float %p_read4)
  %p_read_5 = call float @_ssdm_op_Read.ap_auto.float(float %p_read3)
  %p_read_6 = call float @_ssdm_op_Read.ap_auto.float(float %p_read2)
  %p_read_7 = call float @_ssdm_op_Read.ap_auto.float(float %p_read1)
  %p_read_8 = call float @_ssdm_op_Read.ap_auto.float(float %p_read)
  %bottom_right_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bottom_right)
  %top_left_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %top_left)
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %off_col = phi i10 [ 0, %0 ], [ %off_col_1, %._crit_edge ]
  %off_col_cast2 = zext i10 %off_col to i32
  %exitcond1 = icmp eq i10 %off_col, -240
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %off_col_1 = add i10 %off_col, 1
  br i1 %exitcond1, label %.preheader, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1808) nounwind
  %tmp = icmp eq i32 %off_col_cast2, %bottom_right_read
  %tmp_5 = icmp eq i32 %off_col_cast2, %top_left_read
  %or_cond = or i1 %tmp, %tmp_5
  br i1 %or_cond, label %._crit_edge, label %3

; <label>:3                                       ; preds = %2
  %tmp_6 = zext i10 %off_col to i64
  %s_col_temp_0_addr = getelementptr [784 x float]* %s_col_temp_0, i64 0, i64 %tmp_6
  %w_in = load float* %s_col_temp_0_addr, align 4
  %s_col_temp_1_addr = getelementptr [784 x float]* %s_col_temp_1, i64 0, i64 %tmp_6
  %y_in = load float* %s_col_temp_1_addr, align 4
  %tmp_i = fmul float %w_in, %p_read_8
  %tmp_3_i = fmul float %y_in, %p_read_6
  %w_out = fadd float %tmp_i, %tmp_3_i
  %tmp_i8 = fmul float %w_in, %p_read_7
  %tmp_3_i9 = fmul float %y_in, %p_read_5
  %y_out = fadd float %tmp_i8, %tmp_3_i9
  store float %w_out, float* %s_col_temp_0_addr, align 4
  store float %y_out, float* %s_col_temp_1_addr, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %2
  br label %1

.preheader:                                       ; preds = %1, %._crit_edge3
  %off_row = phi i10 [ %off_row_1, %._crit_edge3 ], [ 0, %1 ]
  %off_row_cast1 = zext i10 %off_row to i32
  %exitcond = icmp eq i10 %off_row, -240
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %off_row_1 = add i10 %off_row, 1
  br i1 %exitcond, label %6, label %4

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1809) nounwind
  %tmp_7 = icmp eq i32 %off_row_cast1, %bottom_right_read
  %tmp_8 = icmp eq i32 %off_row_cast1, %top_left_read
  %or_cond2 = or i1 %tmp_7, %tmp_8
  br i1 %or_cond2, label %._crit_edge3, label %5

; <label>:5                                       ; preds = %4
  %tmp_s = zext i10 %off_row to i64
  %s_row_temp_0_addr = getelementptr [784 x float]* %s_row_temp_0, i64 0, i64 %tmp_s
  %w_in_1 = load float* %s_row_temp_0_addr, align 4
  %s_row_temp_1_addr = getelementptr [784 x float]* %s_row_temp_1, i64 0, i64 %tmp_s
  %x_in = load float* %s_row_temp_1_addr, align 4
  %tmp_i1 = fmul float %w_in_1, %p_read_4
  %tmp_3_i1 = fmul float %x_in, %p_read_2
  %w_out_1 = fadd float %tmp_i1, %tmp_3_i1
  %tmp_i2 = fmul float %w_in_1, %p_read_3
  %tmp_3_i2 = fmul float %x_in, %p_read_1
  %x_out = fadd float %tmp_i2, %tmp_3_i2
  store float %w_out_1, float* %s_row_temp_0_addr, align 4
  store float %x_out, float* %s_row_temp_1_addr, align 4
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %5, %4
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  ret void
}

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @dut(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_in_V), !map !229
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_out_V), !map !235
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dut_str) nounwind
  %u_row_temp_0 = alloca [784 x float], align 16
  %u_row_temp_1 = alloca [784 x float], align 16
  %v_row_temp_0 = alloca [784 x float], align 16
  %v_row_temp_1 = alloca [784 x float], align 16
  %s_col_temp_0 = alloca [784 x float], align 16
  %s_col_temp_1 = alloca [784 x float], align 16
  %s_row_temp_0 = alloca [784 x float], align 16
  %s_row_temp_1 = alloca [784 x float], align 16
  %tmp_88 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %p_Val2_s = bitcast float %tmp_88 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_cast = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_16_i_i = sub i8 127, %loc_V
  %tmp_16_i_i_cast = sext i8 %tmp_16_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_16_i_i_cast, i9 %sh_assign
  %sh_assign_1_i_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_i_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_17_i_i = zext i32 %sh_assign_1_i_cast to i78
  %tmp_18_i_i = lshr i24 %p_Result_1, %sh_assign_1_i_cast_cast
  %tmp_20_i_i = shl i78 %tmp_i_i, %tmp_17_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_18_i_i, i32 23)
  %tmp_1 = zext i1 %tmp to i32
  %tmp_2 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_20_i_i, i32 23, i32 54)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_1, i32 %tmp_2
  %p_Val2_8_i_i = sub i32 0, %p_Val2_3
  %p_Val2_5 = select i1 %p_Result_s, i32 %p_Val2_8_i_i, i32 %p_Val2_3
  switch i32 %p_Val2_5, label %.loopexit [
    i32 1, label %1
    i32 2, label %9
  ]

; <label>:1                                       ; preds = %0
  %tmp_89 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_90 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_91 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_92 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_93 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_94 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_95 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_96 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_97 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_98 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_99 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_100 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_101 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_102 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  br label %2

; <label>:2                                       ; preds = %3, %1
  %i = phi i10 [ 0, %1 ], [ %i_1, %3 ]
  %exitcond1 = icmp eq i10 %i, -240
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_1 = add i10 %i, 1
  br i1 %exitcond1, label %4, label %3

; <label>:3                                       ; preds = %2
  %tmp_37 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_s = zext i10 %i to i64
  %u_row_temp_0_addr = getelementptr [784 x float]* %u_row_temp_0, i64 0, i64 %tmp_s
  store float %tmp_37, float* %u_row_temp_0_addr, align 8
  %tmp_38 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %u_row_temp_1_addr = getelementptr [784 x float]* %u_row_temp_1, i64 0, i64 %tmp_s
  store float %tmp_38, float* %u_row_temp_1_addr, align 4
  %tmp_39 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %v_row_temp_0_addr = getelementptr [784 x float]* %v_row_temp_0, i64 0, i64 %tmp_s
  store float %tmp_39, float* %v_row_temp_0_addr, align 8
  %tmp_40 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %v_row_temp_1_addr = getelementptr [784 x float]* %v_row_temp_1, i64 0, i64 %tmp_s
  store float %tmp_40, float* %v_row_temp_1_addr, align 4
  br label %2

; <label>:4                                       ; preds = %2
  %p_Val2_6 = bitcast float %tmp_89 to i32
  %p_Result_2 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_6, i32 31)
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_6, i32 23, i32 30) nounwind
  %loc_V_3 = trunc i32 %p_Val2_6 to i23
  %p_Result_3 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_3) nounwind
  %tmp_i_i6 = zext i24 %p_Result_3 to i78
  %tmp_i_i_i7_cast = zext i8 %loc_V_2 to i9
  %sh_assign_2 = add i9 -127, %tmp_i_i_i7_cast
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_2, i32 8)
  %tmp_16_i_i1 = sub i8 127, %loc_V_2
  %tmp_16_i_i10_cast = sext i8 %tmp_16_i_i1 to i9
  %sh_assign_3 = select i1 %isNeg_1, i9 %tmp_16_i_i10_cast, i9 %sh_assign_2
  %sh_assign_1_i11_cast = sext i9 %sh_assign_3 to i32
  %sh_assign_1_i11_cast_cast = sext i9 %sh_assign_3 to i24
  %tmp_17_i_i1 = zext i32 %sh_assign_1_i11_cast to i78
  %tmp_18_i_i1 = lshr i24 %p_Result_3, %sh_assign_1_i11_cast_cast
  %tmp_20_i_i1 = shl i78 %tmp_i_i6, %tmp_17_i_i1
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_18_i_i1, i32 23)
  %tmp_3 = zext i1 %tmp_22 to i32
  %tmp_4 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_20_i_i1, i32 23, i32 54)
  %p_Val2_9 = select i1 %isNeg_1, i32 %tmp_3, i32 %tmp_4
  %p_Val2_8_i_i1 = sub i32 0, %p_Val2_9
  %p_Val2_11 = select i1 %p_Result_2, i32 %p_Val2_8_i_i1, i32 %p_Val2_9
  %p_Val2_12 = bitcast float %tmp_90 to i32
  %p_Result_4 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_12, i32 31)
  %loc_V_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_12, i32 23, i32 30) nounwind
  %loc_V_5 = trunc i32 %p_Val2_12 to i23
  %p_Result_5 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_5) nounwind
  %tmp_i_i1 = zext i24 %p_Result_5 to i78
  %tmp_i_i_i26_cast = zext i8 %loc_V_4 to i9
  %sh_assign_4 = add i9 -127, %tmp_i_i_i26_cast
  %isNeg_2 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_4, i32 8)
  %tmp_16_i_i2 = sub i8 127, %loc_V_4
  %tmp_16_i_i29_cast = sext i8 %tmp_16_i_i2 to i9
  %sh_assign_5 = select i1 %isNeg_2, i9 %tmp_16_i_i29_cast, i9 %sh_assign_4
  %sh_assign_1_i30_cast = sext i9 %sh_assign_5 to i32
  %sh_assign_1_i30_cast_cast = sext i9 %sh_assign_5 to i24
  %tmp_17_i_i2 = zext i32 %sh_assign_1_i30_cast to i78
  %tmp_18_i_i2 = lshr i24 %p_Result_5, %sh_assign_1_i30_cast_cast
  %tmp_20_i_i2 = shl i78 %tmp_i_i1, %tmp_17_i_i2
  %tmp_26 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_18_i_i2, i32 23)
  %tmp_5 = zext i1 %tmp_26 to i32
  %tmp_6 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_20_i_i2, i32 23, i32 54)
  %p_Val2_15 = select i1 %isNeg_2, i32 %tmp_5, i32 %tmp_6
  %p_Val2_8_i_i2 = sub i32 0, %p_Val2_15
  %p_Val2_17 = select i1 %p_Result_4, i32 %p_Val2_8_i_i2, i32 %p_Val2_15
  %call_ret = call fastcc { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } @dut_calc_svd_update_on_diag_s_off_(i32 %p_Val2_11, i32 %p_Val2_17, float %tmp_91, float %tmp_92, float %tmp_93, float %tmp_94, float %tmp_95, float %tmp_96, float %tmp_97, float %tmp_98, float %tmp_99, float %tmp_100, float %tmp_101, float %tmp_102, [784 x float]* %u_row_temp_0, [784 x float]* %u_row_temp_1, [784 x float]* %v_row_temp_0, [784 x float]* %v_row_temp_1)
  %u_temp_0_0 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 0
  %u_temp_0_1 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 1
  %u_temp_1_0 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 2
  %u_temp_1_1 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 3
  %v_temp_0_0 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 4
  %v_temp_0_1 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 5
  %v_temp_1_0 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 6
  %v_temp_1_1 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 7
  %new_j_0_0 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 8
  %new_j_0_1 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 9
  %new_j_1_0 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 10
  %new_j_1_1 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 11
  %new_k_0_0 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 12
  %new_k_0_1 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 13
  %new_k_1_0 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 14
  %new_k_1_1 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 15
  %s_temp_0_0 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 16
  %s_temp_1_1 = extractvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %call_ret, 17
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %s_temp_0_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float 0.000000e+00)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float 0.000000e+00)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %s_temp_1_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %u_temp_0_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %u_temp_0_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %u_temp_1_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %u_temp_1_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %v_temp_0_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %v_temp_0_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %v_temp_1_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %v_temp_1_1)
  %notrhs2 = icmp eq i23 %loc_V_3, 0
  %notrhs4 = icmp eq i23 %loc_V_5, 0
  %notlhs2 = icmp ne i8 %loc_V_2, -1
  %tmp_7 = or i1 %notrhs2, %notlhs2
  %notlhs4 = icmp ne i8 %loc_V_4, -1
  %tmp_8 = or i1 %notrhs4, %notlhs4
  br label %5

; <label>:5                                       ; preds = %._crit_edge, %4
  %off_row = phi i10 [ 0, %4 ], [ %off_row_2, %._crit_edge ]
  %off_row_cast = zext i10 %off_row to i32
  %exitcond3 = icmp eq i10 %off_row, -240
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %off_row_2 = add i10 %off_row, 1
  br i1 %exitcond3, label %8, label %6

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1804) nounwind
  %tmp_17 = sitofp i32 %off_row_cast to float
  %tmp_67_to_int = bitcast float %tmp_17 to i32
  %tmp_18 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_67_to_int, i32 23, i32 30)
  %tmp_70 = trunc i32 %tmp_67_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_18, -1
  %notrhs1 = icmp eq i23 %tmp_70, 0
  %tmp_19 = or i1 %notrhs1, %notlhs1
  %tmp_20 = and i1 %tmp_19, %tmp_7
  %tmp_21 = fcmp oeq float %tmp_17, %tmp_89
  %tmp_23 = and i1 %tmp_20, %tmp_21
  %tmp_24 = and i1 %tmp_19, %tmp_8
  %tmp_25 = fcmp oeq float %tmp_17, %tmp_90
  %tmp_43 = and i1 %tmp_24, %tmp_25
  %or_cond = or i1 %tmp_23, %tmp_43
  br i1 %or_cond, label %._crit_edge, label %7

; <label>:7                                       ; preds = %6
  %tmp_44 = zext i10 %off_row to i64
  %v_row_temp_0_addr_1 = getelementptr [784 x float]* %v_row_temp_0, i64 0, i64 %tmp_44
  %tmp_71 = load float* %v_row_temp_0_addr_1, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_71)
  %v_row_temp_1_addr_1 = getelementptr [784 x float]* %v_row_temp_1, i64 0, i64 %tmp_44
  %tmp_72 = load float* %v_row_temp_1_addr_1, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_72)
  %u_row_temp_0_addr_1 = getelementptr [784 x float]* %u_row_temp_0, i64 0, i64 %tmp_44
  %tmp_73 = load float* %u_row_temp_0_addr_1, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_73)
  %u_row_temp_1_addr_1 = getelementptr [784 x float]* %u_row_temp_1, i64 0, i64 %tmp_44
  %tmp_74 = load float* %u_row_temp_1_addr_1, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_74)
  br label %._crit_edge

._crit_edge:                                      ; preds = %7, %6
  br label %5

; <label>:8                                       ; preds = %5
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %new_j_0_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %new_j_0_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %new_j_1_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %new_j_1_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %new_k_0_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %new_k_0_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %new_k_1_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %new_k_1_1)
  br label %.loopexit

; <label>:9                                       ; preds = %0
  %tmp_103 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_104 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  br label %10

; <label>:10                                      ; preds = %11, %9
  %i5 = phi i10 [ 0, %9 ], [ %i_2, %11 ]
  %exitcond2 = icmp eq i10 %i5, -240
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_2 = add i10 %i5, 1
  br i1 %exitcond2, label %.preheader101, label %11

; <label>:11                                      ; preds = %10
  %tmp_41 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_9 = zext i10 %i5 to i64
  %s_col_temp_0_addr = getelementptr [784 x float]* %s_col_temp_0, i64 0, i64 %tmp_9
  store float %tmp_41, float* %s_col_temp_0_addr, align 4
  %tmp_42 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %s_col_temp_1_addr = getelementptr [784 x float]* %s_col_temp_1, i64 0, i64 %tmp_9
  store float %tmp_42, float* %s_col_temp_1_addr, align 4
  br label %10

.preheader101:                                    ; preds = %10, %12
  %i6 = phi i10 [ %i_3, %12 ], [ 0, %10 ]
  %exitcond4 = icmp eq i10 %i6, -240
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %i_3 = add i10 %i6, 1
  br i1 %exitcond4, label %13, label %12

; <label>:12                                      ; preds = %.preheader101
  %tmp_59 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_16 = zext i10 %i6 to i64
  %s_row_temp_0_addr = getelementptr [784 x float]* %s_row_temp_0, i64 0, i64 %tmp_16
  store float %tmp_59, float* %s_row_temp_0_addr, align 8
  %tmp_60 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %s_row_temp_1_addr = getelementptr [784 x float]* %s_row_temp_1, i64 0, i64 %tmp_16
  store float %tmp_60, float* %s_row_temp_1_addr, align 4
  br label %.preheader101

; <label>:13                                      ; preds = %.preheader101
  %tmp_105 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_106 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_107 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_108 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_109 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_110 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_111 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_112 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %p_Val2_18 = bitcast float %tmp_103 to i32
  %p_Result_6 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_18, i32 31)
  %loc_V_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_18, i32 23, i32 30) nounwind
  %loc_V_7 = trunc i32 %p_Val2_18 to i23
  %p_Result_7 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_7) nounwind
  %tmp_i_i2 = zext i24 %p_Result_7 to i78
  %tmp_i_i_i45_cast = zext i8 %loc_V_6 to i9
  %sh_assign_6 = add i9 -127, %tmp_i_i_i45_cast
  %isNeg_3 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_6, i32 8)
  %tmp_16_i_i3 = sub i8 127, %loc_V_6
  %tmp_16_i_i48_cast = sext i8 %tmp_16_i_i3 to i9
  %sh_assign_7 = select i1 %isNeg_3, i9 %tmp_16_i_i48_cast, i9 %sh_assign_6
  %sh_assign_1_i49_cast = sext i9 %sh_assign_7 to i32
  %sh_assign_1_i49_cast_cast = sext i9 %sh_assign_7 to i24
  %tmp_17_i_i3 = zext i32 %sh_assign_1_i49_cast to i78
  %tmp_18_i_i3 = lshr i24 %p_Result_7, %sh_assign_1_i49_cast_cast
  %tmp_20_i_i3 = shl i78 %tmp_i_i2, %tmp_17_i_i3
  %tmp_54 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_18_i_i3, i32 23)
  %tmp_10 = zext i1 %tmp_54 to i32
  %tmp_11 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_20_i_i3, i32 23, i32 54)
  %p_Val2_21 = select i1 %isNeg_3, i32 %tmp_10, i32 %tmp_11
  %p_Val2_8_i_i3 = sub i32 0, %p_Val2_21
  %p_Val2_23 = select i1 %p_Result_6, i32 %p_Val2_8_i_i3, i32 %p_Val2_21
  %p_Val2_24 = bitcast float %tmp_104 to i32
  %p_Result_8 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_24, i32 31)
  %loc_V_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_24, i32 23, i32 30) nounwind
  %loc_V_9 = trunc i32 %p_Val2_24 to i23
  %p_Result_9 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_9) nounwind
  %tmp_i_i3 = zext i24 %p_Result_9 to i78
  %tmp_i_i_i64_cast = zext i8 %loc_V_8 to i9
  %sh_assign_8 = add i9 -127, %tmp_i_i_i64_cast
  %isNeg_4 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_8, i32 8)
  %tmp_16_i_i4 = sub i8 127, %loc_V_8
  %tmp_16_i_i67_cast = sext i8 %tmp_16_i_i4 to i9
  %sh_assign_9 = select i1 %isNeg_4, i9 %tmp_16_i_i67_cast, i9 %sh_assign_8
  %sh_assign_1_i68_cast = sext i9 %sh_assign_9 to i32
  %sh_assign_1_i68_cast_cast = sext i9 %sh_assign_9 to i24
  %tmp_17_i_i4 = zext i32 %sh_assign_1_i68_cast to i78
  %tmp_18_i_i4 = lshr i24 %p_Result_9, %sh_assign_1_i68_cast_cast
  %tmp_20_i_i4 = shl i78 %tmp_i_i3, %tmp_17_i_i4
  %tmp_58 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_18_i_i4, i32 23)
  %tmp_12 = zext i1 %tmp_58 to i32
  %tmp_13 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_20_i_i4, i32 23, i32 54)
  %p_Val2_27 = select i1 %isNeg_4, i32 %tmp_12, i32 %tmp_13
  %p_Val2_8_i_i4 = sub i32 0, %p_Val2_27
  %p_Val2_29 = select i1 %p_Result_8, i32 %p_Val2_8_i_i4, i32 %p_Val2_27
  call fastcc void @dut_update_off_diag_s(i32 %p_Val2_23, i32 %p_Val2_29, float %tmp_105, float %tmp_106, float %tmp_107, float %tmp_108, float %tmp_109, float %tmp_110, float %tmp_111, float %tmp_112, [784 x float]* %s_col_temp_0, [784 x float]* %s_col_temp_1, [784 x float]* %s_row_temp_0, [784 x float]* %s_row_temp_1)
  %notrhs5 = icmp eq i23 %loc_V_7, 0
  %notrhs7 = icmp eq i23 %loc_V_9, 0
  %notlhs5 = icmp ne i8 %loc_V_6, -1
  %tmp_14 = or i1 %notrhs5, %notlhs5
  %notlhs7 = icmp ne i8 %loc_V_8, -1
  %tmp_15 = or i1 %notrhs7, %notlhs7
  br label %14

; <label>:14                                      ; preds = %._crit_edge102, %13
  %off_col = phi i10 [ 0, %13 ], [ %off_col_2, %._crit_edge102 ]
  %off_col_cast = zext i10 %off_col to i32
  %exitcond5 = icmp eq i10 %off_col, -240
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %off_col_2 = add i10 %off_col, 1
  br i1 %exitcond5, label %.preheader, label %15

; <label>:15                                      ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1805) nounwind
  %tmp_45 = sitofp i32 %off_col_cast to float
  %tmp_90_to_int = bitcast float %tmp_45 to i32
  %tmp_46 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_90_to_int, i32 23, i32 30)
  %tmp_75 = trunc i32 %tmp_90_to_int to i23
  %notlhs = icmp ne i8 %tmp_46, -1
  %notrhs = icmp eq i23 %tmp_75, 0
  %tmp_47 = or i1 %notrhs, %notlhs
  %tmp_48 = and i1 %tmp_47, %tmp_14
  %tmp_49 = fcmp oeq float %tmp_45, %tmp_103
  %tmp_50 = and i1 %tmp_48, %tmp_49
  %tmp_51 = and i1 %tmp_47, %tmp_15
  %tmp_52 = fcmp oeq float %tmp_45, %tmp_104
  %tmp_53 = and i1 %tmp_51, %tmp_52
  %or_cond1 = or i1 %tmp_50, %tmp_53
  br i1 %or_cond1, label %._crit_edge102, label %16

; <label>:16                                      ; preds = %15
  %tmp_82 = zext i10 %off_col to i64
  %s_col_temp_0_addr_1 = getelementptr [784 x float]* %s_col_temp_0, i64 0, i64 %tmp_82
  %tmp_83 = load float* %s_col_temp_0_addr_1, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_83)
  %s_col_temp_1_addr_1 = getelementptr [784 x float]* %s_col_temp_1, i64 0, i64 %tmp_82
  %tmp_84 = load float* %s_col_temp_1_addr_1, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_84)
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %16, %15
  br label %14

.preheader:                                       ; preds = %14, %._crit_edge103
  %off_row7 = phi i10 [ %off_row_3, %._crit_edge103 ], [ 0, %14 ]
  %off_row7_cast = zext i10 %off_row7 to i32
  %exitcond = icmp eq i10 %off_row7, -240
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %off_row_3 = add i10 %off_row7, 1
  br i1 %exitcond, label %.loopexit, label %17

; <label>:17                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str1806) nounwind
  %tmp_55 = sitofp i32 %off_row7_cast to float
  %tmp_98_to_int = bitcast float %tmp_55 to i32
  %tmp_56 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_98_to_int, i32 23, i32 30)
  %tmp_76 = trunc i32 %tmp_98_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_56, -1
  %notrhs8 = icmp eq i23 %tmp_76, 0
  %tmp_57 = or i1 %notrhs8, %notlhs8
  %tmp_67 = and i1 %tmp_57, %tmp_14
  %tmp_77 = fcmp oeq float %tmp_55, %tmp_103
  %tmp_78 = and i1 %tmp_67, %tmp_77
  %tmp_79 = and i1 %tmp_57, %tmp_15
  %tmp_80 = fcmp oeq float %tmp_55, %tmp_104
  %tmp_81 = and i1 %tmp_79, %tmp_80
  %or_cond2 = or i1 %tmp_78, %tmp_81
  br i1 %or_cond2, label %._crit_edge103, label %18

; <label>:18                                      ; preds = %17
  %tmp_85 = zext i10 %off_row7 to i64
  %s_row_temp_0_addr_1 = getelementptr [784 x float]* %s_row_temp_0, i64 0, i64 %tmp_85
  %tmp_86 = load float* %s_row_temp_0_addr_1, align 8
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_86)
  %s_row_temp_1_addr_1 = getelementptr [784 x float]* %s_row_temp_1, i64 0, i64 %tmp_85
  %tmp_87 = load float* %s_row_temp_1_addr_1, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_87)
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %18, %17
  br label %.preheader

.loopexit:                                        ; preds = %.preheader, %8, %0
  ret void
}

define internal fastcc { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } @dut_calc_svd_update_on_diag_s_off_(i32 %top_left, i32 %bottom_right, float %s_temp_0_0_read, float %s_temp_0_1_read, float %s_temp_1_0_read, float %s_temp_1_1_read, float %p_read, float %p_read13, float %p_read14, float %p_read15, float %p_read16, float %p_read17, float %p_read18, float %p_read19, [784 x float]* nocapture %u_row_temp_0, [784 x float]* nocapture %u_row_temp_1, [784 x float]* nocapture %v_row_temp_0, [784 x float]* nocapture %v_row_temp_1) {
_ifconv:
  %p_read_9 = call float @_ssdm_op_Read.ap_auto.float(float %p_read19)
  %p_read_10 = call float @_ssdm_op_Read.ap_auto.float(float %p_read18)
  %p_read_11 = call float @_ssdm_op_Read.ap_auto.float(float %p_read17)
  %p_read_12 = call float @_ssdm_op_Read.ap_auto.float(float %p_read16)
  %p_read_13 = call float @_ssdm_op_Read.ap_auto.float(float %p_read15)
  %p_read_14 = call float @_ssdm_op_Read.ap_auto.float(float %p_read14)
  %p_read_15 = call float @_ssdm_op_Read.ap_auto.float(float %p_read13)
  %p_read_16 = call float @_ssdm_op_Read.ap_auto.float(float %p_read)
  %s_temp_1_1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %s_temp_1_1_read)
  %s_temp_1_0_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %s_temp_1_0_read)
  %s_temp_0_1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %s_temp_0_1_read)
  %s_temp_0_0_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %s_temp_0_0_read)
  %bottom_right_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %bottom_right)
  %top_left_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %top_left)
  %u1 = fsub float %s_temp_1_1_read_1, %s_temp_0_0_read_1
  %u2 = fadd float %s_temp_1_0_read_1, %s_temp_0_1_read_1
  %call_ret1 = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1, float %u2)
  %cosA_half = extractvalue { float, float } %call_ret1, 0
  %sinA_half = extractvalue { float, float } %call_ret1, 1
  %u1_1 = fadd float %s_temp_1_1_read_1, %s_temp_0_0_read_1
  %u2_1 = fsub float %s_temp_1_0_read_1, %s_temp_0_1_read_1
  %call_ret2 = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1_1, float %u2_1)
  %cosB_half = extractvalue { float, float } %call_ret2, 0
  %sinB_half = extractvalue { float, float } %call_ret2, 1
  %tmp_i = fmul float %cosA_half, %cosB_half
  %tmp_3_i = fmul float %sinA_half, %sinB_half
  %uz_new = fadd float %tmp_i, %tmp_3_i
  %tmp_to_int = bitcast float %cosA_half to i32
  %tmp_neg = xor i32 %tmp_to_int, -2147483648
  %a2_assign = bitcast i32 %tmp_neg to float
  %tmp_i3 = fmul float %sinA_half, %cosB_half
  %tmp_3_i3 = fmul float %a2_assign, %sinB_half
  %ux_new = fadd float %tmp_i3, %tmp_3_i3
  %tmp_to_int_16 = bitcast float %sinA_half to i32
  %tmp_neg_17 = xor i32 %tmp_to_int_16, -2147483648
  %a2_assign_1 = bitcast i32 %tmp_neg_17 to float
  %tmp_3_i4 = fmul float %a2_assign_1, %sinB_half
  %vz_int_1 = fadd float %tmp_i, %tmp_3_i4
  %tmp_3_i5 = fmul float %cosA_half, %sinB_half
  %vy_int_1 = fadd float %tmp_i3, %tmp_3_i5
  %uy_int_to_int = bitcast float %ux_new to i32
  %uy_int_neg = xor i32 %uy_int_to_int, -2147483648
  %uy_int = bitcast i32 %uy_int_neg to float
  %vy_int_to_int = bitcast float %vy_int_1 to i32
  %vy_int_neg = xor i32 %vy_int_to_int, -2147483648
  %vy_int = bitcast i32 %vy_int_neg to float
  %tmp_i4 = fmul float %vz_int_1, %s_temp_0_0_read_1
  %tmp_3_i6 = fmul float %vy_int, %s_temp_0_1_read_1
  %w_out1 = fadd float %tmp_i4, %tmp_3_i6
  %tmp_i5 = fmul float %vz_int_1, %s_temp_1_0_read_1
  %tmp_3_i7 = fmul float %vy_int, %s_temp_1_1_read_1
  %w_out2 = fadd float %tmp_i5, %tmp_3_i7
  %tmp_i6 = fmul float %uz_new, %w_out1
  %tmp_3_i8 = fmul float %uy_int, %w_out2
  %w_out_int = fadd float %tmp_i6, %tmp_3_i8
  %tmp_i7 = fmul float %vy_int_1, %s_temp_0_0_read_1
  %tmp_3_i9 = fmul float %vz_int_1, %s_temp_0_1_read_1
  %z_out1 = fadd float %tmp_i7, %tmp_3_i9
  %tmp_i8 = fmul float %vy_int_1, %s_temp_1_0_read_1
  %tmp_3_i1 = fmul float %vz_int_1, %s_temp_1_1_read_1
  %z_out2 = fadd float %tmp_i8, %tmp_3_i1
  %tmp_i9 = fmul float %ux_new, %z_out1
  %tmp_3_i2 = fmul float %uz_new, %z_out2
  %z_out_int = fadd float %tmp_i9, %tmp_3_i2
  %p_Val2_s = bitcast float %w_out_int to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %w_out_1_neg = xor i32 %p_Val2_s, -2147483648
  %w_out_1 = bitcast i32 %w_out_1_neg to float
  %vw_int_to_int = bitcast float %vz_int_1 to i32
  %vw_int_neg = xor i32 %vw_int_to_int, -2147483648
  %vw_int = bitcast i32 %vw_int_neg to float
  %w_out = select i1 %p_Result_s, float %w_out_1, float %w_out_int
  %vw_int_3 = select i1 %p_Result_s, float %vw_int, float %vz_int_1
  %vx_int = select i1 %p_Result_s, float %vy_int_1, float %vy_int
  %p_Val2_30 = bitcast float %z_out_int to i32
  %p_Result_10 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_30, i32 31)
  %z_out_1_neg = xor i32 %p_Val2_30, -2147483648
  %z_out = bitcast i32 %z_out_1_neg to float
  %z_out_2 = select i1 %p_Result_10, float %z_out, float %z_out_int
  %vy_int_2 = select i1 %p_Result_10, float %vy_int, float %vy_int_1
  %vz_int = select i1 %p_Result_10, float %vw_int, float %vz_int_1
  %tmp_i_i = fmul float %uz_new, %p_read_16
  %tmp_3_i_i = fmul float %uy_int, %p_read_15
  %uw_out = fadd float %tmp_i_i, %tmp_3_i_i
  %tmp_i1_i = fmul float %ux_new, %p_read_16
  %tmp_3_i2_i = fmul float %uz_new, %p_read_15
  %ux_out = fadd float %tmp_i1_i, %tmp_3_i2_i
  %tmp_i4_i = fmul float %uz_new, %p_read_14
  %tmp_3_i5_i = fmul float %uy_int, %p_read_13
  %uy_out = fadd float %tmp_i4_i, %tmp_3_i5_i
  %tmp_i7_i = fmul float %ux_new, %p_read_14
  %tmp_3_i8_i = fmul float %uz_new, %p_read_13
  %uz_out = fadd float %tmp_i7_i, %tmp_3_i8_i
  %tmp_i_i1 = fmul float %vw_int_3, %p_read_12
  %tmp_3_i_i1 = fmul float %vx_int, %p_read_11
  %vw_out = fadd float %tmp_i_i1, %tmp_3_i_i1
  %tmp_i1_i1 = fmul float %vy_int_2, %p_read_12
  %tmp_3_i2_i1 = fmul float %vz_int, %p_read_11
  %vx_out = fadd float %tmp_i1_i1, %tmp_3_i2_i1
  %tmp_i4_i1 = fmul float %vw_int_3, %p_read_10
  %tmp_3_i5_i1 = fmul float %vx_int, %p_read_9
  %vy_out = fadd float %tmp_i4_i1, %tmp_3_i5_i1
  %tmp_i7_i1 = fmul float %vy_int_2, %p_read_10
  %tmp_3_i8_i1 = fmul float %vz_int, %p_read_9
  %vz_out = fadd float %tmp_i7_i1, %tmp_3_i8_i1
  br label %0

; <label>:0                                       ; preds = %._crit_edge, %_ifconv
  %off_row = phi i10 [ 0, %_ifconv ], [ %off_row_2, %._crit_edge ]
  %off_row_cast1 = zext i10 %off_row to i32
  %exitcond = icmp eq i10 %off_row, -240
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %off_row_2 = add i10 %off_row, 1
  br i1 %exitcond, label %3, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1810) nounwind
  %tmp_5 = icmp eq i32 %off_row_cast1, %bottom_right_read
  %tmp_6 = icmp eq i32 %off_row_cast1, %top_left_read
  %or_cond = or i1 %tmp_5, %tmp_6
  br i1 %or_cond, label %._crit_edge, label %2

; <label>:2                                       ; preds = %1
  %tmp_7 = zext i10 %off_row to i64
  %v_row_temp_1_addr = getelementptr [784 x float]* %v_row_temp_1, i64 0, i64 %tmp_7
  %vx_in = load float* %v_row_temp_1_addr, align 4
  %u_row_temp_1_addr = getelementptr [784 x float]* %u_row_temp_1, i64 0, i64 %tmp_7
  %ux_in = load float* %u_row_temp_1_addr, align 4
  %v_row_temp_0_addr = getelementptr [784 x float]* %v_row_temp_0, i64 0, i64 %tmp_7
  %vw_in = load float* %v_row_temp_0_addr, align 4
  %u_row_temp_0_addr = getelementptr [784 x float]* %u_row_temp_0, i64 0, i64 %tmp_7
  %uw_in = load float* %u_row_temp_0_addr, align 4
  %tmp_i1 = fmul float %vw_in, %vw_int_3
  %tmp_3_i10 = fmul float %vx_in, %vx_int
  %vw_out_1 = fadd float %tmp_i1, %tmp_3_i10
  %tmp_i2 = fmul float %vw_in, %vy_int_2
  %tmp_3_i11 = fmul float %vx_in, %vz_int
  %vx_out_1 = fadd float %tmp_i2, %tmp_3_i11
  %tmp_i10 = fmul float %uw_in, %uz_new
  %tmp_3_i12 = fmul float %ux_in, %uy_int
  %uw_out_1 = fadd float %tmp_i10, %tmp_3_i12
  %tmp_i11 = fmul float %uw_in, %ux_new
  %tmp_3_i13 = fmul float %ux_in, %uz_new
  %ux_out_1 = fadd float %tmp_i11, %tmp_3_i13
  store float %vw_out_1, float* %v_row_temp_0_addr, align 4
  store float %vx_out_1, float* %v_row_temp_1_addr, align 4
  store float %uw_out_1, float* %u_row_temp_0_addr, align 4
  store float %ux_out_1, float* %u_row_temp_1_addr, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %1
  br label %0

; <label>:3                                       ; preds = %0
  %newret1 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } undef, float %uw_out, 0
  %newret3 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret1, float %ux_out, 1
  %newret5 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret3, float %uy_out, 2
  %newret7 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret5, float %uz_out, 3
  %newret9 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret7, float %vw_out, 4
  %newret = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret9, float %vx_out, 5
  %newret8 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret, float %vy_out, 6
  %newret2 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret8, float %vz_out, 7
  %newret4 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret2, float %uz_new, 8
  %newret6 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret4, float %ux_new, 9
  %newret10 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret6, float %uy_int, 10
  %newret11 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret10, float %uz_new, 11
  %newret12 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret11, float %vw_int_3, 12
  %newret13 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret12, float %vy_int_2, 13
  %newret14 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret13, float %vx_int, 14
  %newret15 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret14, float %vz_int, 15
  %newret16 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret15, float %w_out, 16
  %newret17 = insertvalue { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret16, float %z_out_2, 17
  ret { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float } %newret17
}

define internal fastcc { float, float } @"dut_calc_angle<float, float>"(float %A_M_real, float %A_M_imag) {
  %A_M_imag_read = call float @_ssdm_op_Read.ap_auto.float(float %A_M_imag)
  %A_M_real_read = call float @_ssdm_op_Read.ap_auto.float(float %A_M_real)
  %p_Val2_s = bitcast float %A_M_real_read to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %p_Val2_33 = bitcast float %A_M_imag_read to i32
  %loc_V_10 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_33, i32 23, i32 30) nounwind
  %lhs_V_cast = zext i8 %loc_V_10 to i9
  %r_V = add i9 %lhs_V_cast, 24
  %tmp_i_cast = zext i8 %loc_V to i9
  %ult = icmp ult i9 %r_V, %tmp_i_cast
  %notrhs_i = icmp eq i8 %loc_V_10, 0
  %demorgan = or i1 %ult, %notrhs_i
  br i1 %demorgan, label %1, label %2

; <label>:1                                       ; preds = %0
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %cosThetaAdiv2 = select i1 %p_Result_s, float 0.000000e+00, float 1.000000e+00
  %sinThetaAdiv2 = select i1 %p_Result_s, float 1.000000e+00, float 0.000000e+00
  br label %8

; <label>:2                                       ; preds = %0
  %r_V_1 = add i9 %tmp_i_cast, 24
  %ult3 = icmp ult i9 %r_V_1, %lhs_V_cast
  %notrhs_i1 = icmp eq i8 %loc_V, 0
  %demorgan5 = or i1 %ult3, %notrhs_i1
  br i1 %demorgan5, label %3, label %4

; <label>:3                                       ; preds = %2
  %p_Result_19 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_33, i32 31)
  %storemerge1 = select i1 %p_Result_19, float 0xBFE6A09E60000000, float 0x3FE6A09E60000000
  br label %8

; <label>:4                                       ; preds = %2
  %tanThetaA = fdiv float %A_M_imag_read, %A_M_real_read
  %p_Result_16 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %p_Result_20 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %p_Result_16, i31 1065353216) nounwind
  %ret_i_i_i_i = bitcast i32 %p_Result_20 to float
  %tmp_2 = fmul float %tanThetaA, %tanThetaA
  %x_assign = fadd float %tmp_2, 1.000000e+00
  %tmp_i_i = call float @_ssdm_op_FRSqrt(float %x_assign) nounwind
  %cosThetaA_int = fmul float %ret_i_i_i_i, %tmp_i_i
  %sinThetaA_int = fmul float %cosThetaA_int, %tanThetaA
  %p_Val2_36 = bitcast float %cosThetaA_int to i32
  %p_Result_21 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_36, i32 31)
  br i1 %p_Result_21, label %5, label %6

; <label>:5                                       ; preds = %4
  %tmp_s = fsub float 1.000000e+00, %cosThetaA_int
  %tanThetaAdiv2_1 = fdiv float %tmp_s, %sinThetaA_int
  br label %7

; <label>:6                                       ; preds = %4
  %tmp_1 = fadd float %cosThetaA_int, 1.000000e+00
  %tanThetaAdiv2 = fdiv float %sinThetaA_int, %tmp_1
  br label %7

; <label>:7                                       ; preds = %6, %5
  %tanThetaAdiv = phi float [ %tanThetaAdiv2_1, %5 ], [ %tanThetaAdiv2, %6 ]
  %tmp_3 = fmul float %tanThetaAdiv, %tanThetaAdiv
  %x_assign_2 = fadd float %tmp_3, 1.000000e+00
  %cosThetaAdiv2_int = call float @_ssdm_op_FRSqrt(float %x_assign_2) nounwind
  %tmp_5 = fmul float %cosThetaAdiv2_int, %tanThetaAdiv
  br label %8

; <label>:8                                       ; preds = %7, %3, %1
  %cosThetaAdiv2_write_assign = phi float [ %cosThetaAdiv2, %1 ], [ %cosThetaAdiv2_int, %7 ], [ %storemerge1, %3 ]
  %sinThetaAdiv2_write_assign = phi float [ %sinThetaAdiv2, %1 ], [ %tmp_5, %7 ], [ 0x3FE6A09E60000000, %3 ]
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

define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0)
  ret float %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_18 = trunc i32 %empty to i8
  ret i8 %empty_18
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_19 = trunc i78 %empty to i32
  ret i32 %empty_19
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak float @_ssdm_op_FRSqrt(float) nounwind {
entry:
  %empty = call float @llvm.sqrt.f32(float %0)
  %empty_20 = fdiv float 1.000000e+00, %empty
  ret float %empty_20
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_21 = shl i9 1, %empty
  %empty_22 = and i9 %0, %empty_21
  %empty_23 = icmp ne i9 %empty_22, 0
  ret i1 %empty_23
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_24 = and i32 %0, %empty
  %empty_25 = icmp ne i32 %empty_24, 0
  ret i1 %empty_25
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_26 = shl i24 1, %empty
  %empty_27 = and i24 %0, %empty_26
  %empty_28 = icmp ne i24 %empty_27, 0
  ret i1 %empty_28
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone {
entry:
  %empty = zext i1 %0 to i32
  %empty_29 = zext i31 %1 to i32
  %empty_30 = shl i32 %empty, 31
  %empty_31 = or i32 %empty_30, %empty_29
  ret i32 %empty_31
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_32 = zext i23 %1 to i24
  %empty_33 = shl i24 %empty, 23
  %empty_34 = or i24 %empty_33, %empty_32
  ret i24 %empty_34
}

declare float @_autotb_FifoWrite_float(float*, float)

declare float @_autotb_FifoRead_float(float*)

declare void @_GLOBAL__I_a1968() nounwind section ".text.startup"

declare void @_GLOBAL__I_a1945() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !19, !25, !31, !37, !43, !46, !46, !52, !52, !54, !57, !57, !46, !46, !46, !46, !59, !61, !61, !46, !63, !66, !66, !63, !72, !72, !54, !59, !61, !61, !46, !63, !74, !74, !76, !79, !79, !83, !46, !85, !76, !87, !87, !89, !89, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !91, !43, !43, !97, !100, !46, !46, !46, !46, !63, !63, !102, !104, !104, !46, !46, !105, !107, !107, !63, !63, !108, !110, !110, !46, !46, !111, !113, !113, !76, !46, !85, !46, !46, !114, !97, !117, !120, !120, !46, !121, !123, !124, !127, !127, !128, !46, !46, !46, !61, !61, !113, !113, !130, !132, !46, !46, !46, !134, !134, !135, !135, !46, !46, !137, !137, !139, !139, !46, !141, !141, !144, !46, !120, !120, !146, !46, !46, !46, !148, !148, !150, !150, !152, !46, !46, !46, !154, !156, !46, !46, !46, !134, !134, !158, !158, !160, !46, !46, !46, !46, !46, !46, !162, !46, !46, !46, !46, !141, !141, !144, !162, !46, !141, !141, !144, !162, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !164, !164, !164, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !164, !164, !164, !169, !169, !169, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !169, !169, !169, !46, !169, !169, !169, !46, !46, !173, !46, !176, !180, !183, !189, !193, !196, !198, !198, !202, !205, !205, !209, !209, !213, !213, !215, !215, !46, !19, !220, !220, !220, !213, !213, !141, !141, !144, !46, !120, !120, !46, !146, !46, !46, !46, !148, !148, !150, !150, !152, !46, !46, !46, !154, !120, !120, !46, !156, !46, !46, !46, !134, !134, !158, !158, !160, !46, !46, !46, !46, !46, !46, !162, !46, !46, !46, !46, !141, !141, !144, !162, !46, !141, !141, !144, !162, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !164, !164, !164, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !164, !164, !164, !169, !169, !169, !46, !164, !164, !164, !46, !164, !164, !164, !46, !164, !164, !164, !46, !169, !169, !169, !46, !169, !169, !169, !46, !46}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!222}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<fix32_t> &", metadata !"hls::stream<fix32_t> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"strm_in", metadata !"strm_out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1, i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"float [2]*", metadata !"float [2]*", metadata !"float [784]*", metadata !"float [2]*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"top_left", metadata !"bottom_right", metadata !"new_j", metadata !"new_k", metadata !"s_col_temp", metadata !"s_row_temp"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"b1", metadata !"a2", metadata !"b2", metadata !"c"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"float [2]*", metadata !"float [2]*", metadata !"float [2]*", metadata !"float [2]*", metadata !"float [2]*", metadata !"float [2]*", metadata !"float [2]*"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"top_left", metadata !"bottom_right", metadata !"s_temp", metadata !"u_temp", metadata !"v_temp", metadata !"u_row_temp", metadata !"v_row_temp", metadata !"new_j", metadata !"new_k"}
!31 = metadata !{null, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!33 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!35 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"a3", metadata !"a4", metadata !"b1", metadata !"b2", metadata !"b3", metadata !"b4", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
!37 = metadata !{null, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !6}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!39 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!41 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"w_in", metadata !"x_in", metadata !"y_in", metadata !"z_in", metadata !"uw_out", metadata !"ux_out", metadata !"uy_out", metadata !"uz_out", metadata !"vw_out", metadata !"vx_out", metadata !"vy_out", metadata !"vz_out", metadata !"w_out", metadata !"x_out", metadata !"y_out", metadata !"z_out"}
!43 = metadata !{null, metadata !20, metadata !21, metadata !44, metadata !23, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!46 = metadata !{null, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !6}
!47 = metadata !{metadata !"kernel_arg_addr_space"}
!48 = metadata !{metadata !"kernel_arg_access_qual"}
!49 = metadata !{metadata !"kernel_arg_type"}
!50 = metadata !{metadata !"kernel_arg_type_qual"}
!51 = metadata !{metadata !"kernel_arg_name"}
!52 = metadata !{null, metadata !20, metadata !21, metadata !44, metadata !23, metadata !53, metadata !6}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!54 = metadata !{null, metadata !20, metadata !21, metadata !55, metadata !23, metadata !56, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!57 = metadata !{null, metadata !20, metadata !21, metadata !55, metadata !23, metadata !58, metadata !6}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!59 = metadata !{null, metadata !20, metadata !21, metadata !60, metadata !23, metadata !56, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!61 = metadata !{null, metadata !20, metadata !21, metadata !60, metadata !23, metadata !62, metadata !6}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!63 = metadata !{null, metadata !1, metadata !2, metadata !64, metadata !4, metadata !65, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!66 = metadata !{null, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !6}
!67 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!68 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!70 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!72 = metadata !{null, metadata !67, metadata !68, metadata !73, metadata !70, metadata !71, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!74 = metadata !{null, metadata !67, metadata !68, metadata !75, metadata !70, metadata !71, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!76 = metadata !{null, metadata !20, metadata !21, metadata !77, metadata !23, metadata !78, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!79 = metadata !{null, metadata !80, metadata !2, metadata !81, metadata !4, metadata !82, metadata !6}
!80 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!82 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!83 = metadata !{null, metadata !20, metadata !21, metadata !84, metadata !23, metadata !56, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!85 = metadata !{null, metadata !20, metadata !21, metadata !86, metadata !23, metadata !56, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!87 = metadata !{null, metadata !80, metadata !2, metadata !88, metadata !4, metadata !82, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!89 = metadata !{null, metadata !20, metadata !21, metadata !90, metadata !23, metadata !56, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!91 = metadata !{null, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !6}
!92 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!93 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"std::complex<float>", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"_Bool &", metadata !"_Bool &"}
!95 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"cosThetaA", metadata !"sinThetaA", metadata !"cosThetaAdiv2", metadata !"sinThetaAdiv2", metadata !"is_pos_real", metadata !"is_imag"}
!97 = metadata !{null, metadata !1, metadata !2, metadata !98, metadata !4, metadata !99, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!100 = metadata !{null, metadata !1, metadata !2, metadata !98, metadata !4, metadata !101, metadata !6}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!102 = metadata !{null, metadata !20, metadata !21, metadata !103, metadata !23, metadata !56, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!104 = metadata !{null, metadata !20, metadata !21, metadata !103, metadata !23, metadata !58, metadata !6}
!105 = metadata !{null, metadata !20, metadata !21, metadata !106, metadata !23, metadata !56, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!107 = metadata !{null, metadata !20, metadata !21, metadata !106, metadata !23, metadata !62, metadata !6}
!108 = metadata !{null, metadata !20, metadata !21, metadata !109, metadata !23, metadata !56, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!110 = metadata !{null, metadata !20, metadata !21, metadata !109, metadata !23, metadata !58, metadata !6}
!111 = metadata !{null, metadata !20, metadata !21, metadata !112, metadata !23, metadata !56, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!113 = metadata !{null, metadata !20, metadata !21, metadata !112, metadata !23, metadata !62, metadata !6}
!114 = metadata !{null, metadata !20, metadata !21, metadata !115, metadata !23, metadata !116, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!116 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!117 = metadata !{null, metadata !1, metadata !2, metadata !118, metadata !4, metadata !119, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!119 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!120 = metadata !{null, metadata !20, metadata !21, metadata !77, metadata !23, metadata !62, metadata !6}
!121 = metadata !{null, metadata !20, metadata !21, metadata !122, metadata !23, metadata !116, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!123 = metadata !{null, metadata !20, metadata !21, metadata !112, metadata !23, metadata !116, metadata !6}
!124 = metadata !{null, metadata !1, metadata !2, metadata !125, metadata !4, metadata !126, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!126 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!127 = metadata !{null, metadata !20, metadata !21, metadata !90, metadata !23, metadata !62, metadata !6}
!128 = metadata !{null, metadata !1, metadata !2, metadata !129, metadata !4, metadata !119, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, false> &"}
!130 = metadata !{null, metadata !1, metadata !2, metadata !131, metadata !4, metadata !126, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"int"}
!132 = metadata !{null, metadata !1, metadata !2, metadata !133, metadata !4, metadata !119, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"const ap_int_base<32, true> &"}
!134 = metadata !{null, metadata !20, metadata !21, metadata !122, metadata !23, metadata !62, metadata !6}
!135 = metadata !{null, metadata !20, metadata !21, metadata !136, metadata !23, metadata !62, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!137 = metadata !{null, metadata !20, metadata !21, metadata !44, metadata !23, metadata !138, metadata !6}
!138 = metadata !{metadata !"kernel_arg_name", metadata !"__val"}
!139 = metadata !{null, metadata !1, metadata !2, metadata !98, metadata !4, metadata !140, metadata !6}
!140 = metadata !{metadata !"kernel_arg_name", metadata !"__r", metadata !"__i"}
!141 = metadata !{null, metadata !20, metadata !21, metadata !142, metadata !23, metadata !143, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!143 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!144 = metadata !{null, metadata !20, metadata !21, metadata !142, metadata !23, metadata !145, metadata !6}
!145 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!146 = metadata !{null, metadata !1, metadata !2, metadata !147, metadata !4, metadata !119, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!148 = metadata !{null, metadata !20, metadata !21, metadata !149, metadata !23, metadata !62, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!150 = metadata !{null, metadata !20, metadata !21, metadata !151, metadata !23, metadata !62, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!152 = metadata !{null, metadata !20, metadata !21, metadata !153, metadata !23, metadata !116, metadata !6}
!153 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!154 = metadata !{null, metadata !1, metadata !2, metadata !155, metadata !4, metadata !126, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!156 = metadata !{null, metadata !1, metadata !2, metadata !157, metadata !4, metadata !119, metadata !6}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!158 = metadata !{null, metadata !20, metadata !21, metadata !159, metadata !23, metadata !62, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!160 = metadata !{null, metadata !20, metadata !21, metadata !161, metadata !23, metadata !116, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!162 = metadata !{null, metadata !20, metadata !21, metadata !142, metadata !23, metadata !163, metadata !6}
!163 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!164 = metadata !{null, metadata !165, metadata !21, metadata !166, metadata !167, metadata !168, metadata !6}
!165 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!167 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!168 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!169 = metadata !{null, metadata !80, metadata !2, metadata !170, metadata !171, metadata !172, metadata !6}
!170 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!171 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!172 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!173 = metadata !{null, metadata !14, metadata !15, metadata !174, metadata !17, metadata !175, metadata !6}
!174 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!175 = metadata !{metadata !"kernel_arg_name", metadata !"VEC_SIZ", metadata !"VEC_NUM", metadata !"ka", metadata !"pca_in_", metadata !"pca_out_"}
!176 = metadata !{null, metadata !177, metadata !2, metadata !178, metadata !4, metadata !179, metadata !6}
!177 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t*"}
!179 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"mean"}
!180 = metadata !{null, metadata !177, metadata !2, metadata !181, metadata !4, metadata !182, metadata !6}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t [784]*"}
!182 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"XXT"}
!183 = metadata !{null, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !6}
!184 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!185 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*"}
!187 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!188 = metadata !{metadata !"kernel_arg_name", metadata !"XXT", metadata !"S", metadata !"U", metadata !"V"}
!189 = metadata !{null, metadata !190, metadata !68, metadata !191, metadata !70, metadata !192, metadata !6}
!190 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*"}
!192 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"S", metadata !"U"}
!193 = metadata !{null, metadata !190, metadata !68, metadata !194, metadata !70, metadata !195, metadata !6}
!194 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [100]*", metadata !"fix32_t [100]*"}
!195 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"X", metadata !"Y"}
!196 = metadata !{null, metadata !177, metadata !2, metadata !197, metadata !4, metadata !99, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!198 = metadata !{null, metadata !199, metadata !185, metadata !200, metadata !187, metadata !201, metadata !6}
!199 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int", metadata !"int", metadata !"fix32_t [784]*"}
!201 = metadata !{metadata !"kernel_arg_name", metadata !"arr", metadata !"l", metadata !"h", metadata !"S"}
!202 = metadata !{null, metadata !165, metadata !21, metadata !203, metadata !23, metadata !204, metadata !6}
!203 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*"}
!204 = metadata !{metadata !"kernel_arg_name", metadata !"S"}
!205 = metadata !{null, metadata !190, metadata !68, metadata !206, metadata !207, metadata !208, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"const float [784]*", metadata !"const float [100]*", metadata !"float [100]*"}
!207 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!208 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"B", metadata !"C"}
!209 = metadata !{null, metadata !67, metadata !68, metadata !210, metadata !211, metadata !212, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const float [100]*", metadata !"uint", metadata !"uint"}
!211 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !""}
!212 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"Row", metadata !"Col"}
!213 = metadata !{null, metadata !67, metadata !68, metadata !214, metadata !211, metadata !212, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"const float [784]*", metadata !"uint", metadata !"uint"}
!215 = metadata !{null, metadata !216, metadata !9, metadata !217, metadata !218, metadata !219, metadata !6}
!216 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!217 = metadata !{metadata !"kernel_arg_type", metadata !"const float [784]*", metadata !"float [784]*", metadata !"float [784]*", metadata !"float [784]*", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!218 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!219 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"S", metadata !"U", metadata !"V", metadata !"pca_in", metadata !"pca_out"}
!220 = metadata !{null, metadata !190, metadata !68, metadata !221, metadata !207, metadata !208, metadata !6}
!221 = metadata !{metadata !"kernel_arg_type", metadata !"const float [100]*", metadata !"const float [784]*", metadata !"float [784]*"}
!222 = metadata !{metadata !223, [3 x i32]* @llvm_global_ctors_0}
!223 = metadata !{metadata !224}
!224 = metadata !{i32 0, i32 31, metadata !225}
!225 = metadata !{metadata !226}
!226 = metadata !{metadata !"llvm.global_ctors.0", metadata !227, metadata !"", i32 0, i32 31}
!227 = metadata !{metadata !228}
!228 = metadata !{i32 0, i32 2, i32 1}
!229 = metadata !{metadata !230}
!230 = metadata !{i32 0, i32 31, metadata !231}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !"strm_in.V", metadata !233, metadata !"float", i32 0, i32 31}
!233 = metadata !{metadata !234}
!234 = metadata !{i32 0, i32 0, i32 1}
!235 = metadata !{metadata !236}
!236 = metadata !{i32 0, i32 31, metadata !237}
!237 = metadata !{metadata !238}
!238 = metadata !{metadata !"strm_out.V", metadata !233, metadata !"float", i32 0, i32 31}
