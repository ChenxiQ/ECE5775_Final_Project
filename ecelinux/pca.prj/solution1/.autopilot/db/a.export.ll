; ModuleID = '/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1968, void ()* @_GLOBAL__I_a1945]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@dut_str = internal unnamed_addr constant [4 x i8] c"dut\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@L_svd_calc_off_r_str = internal unnamed_addr constant [17 x i8] c"L_svd_calc_off_r\00"
@L_svd_calc_off_c_str = internal unnamed_addr constant [17 x i8] c"L_svd_calc_off_c\00"
@LOOP_ROW_LOOP_COL_LOOP_DOT_PRO = internal unnamed_addr constant [32 x i8] c"LOOP_ROW_LOOP_COL_LOOP_DOT_PROD\00"
@LOOP_COL_LOOP_DOT_PROD_str = internal unnamed_addr constant [23 x i8] c"LOOP_COL_LOOP_DOT_PROD\00"
@p_str1811 = private unnamed_addr constant [14 x i8] c"svd_calc_diag\00", align 1
@p_str1810 = private unnamed_addr constant [15 x i8] c"svd_calc_off_r\00", align 1
@p_str1809 = private unnamed_addr constant [15 x i8] c"svd_calc_off_c\00", align 1
@p_str1807 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1806 = private unnamed_addr constant [14 x i8] c"LOOP_DOT_PROD\00", align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc void @dut_update_off_diag_r(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader.preheader
  %indvar_flatten = phi i19 [ 0, %0 ], [ %indvar_flatten_next, %.preheader.preheader ]
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -217744
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @L_svd_calc_off_r_str)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 306544, i64 306544, i64 306544)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1810) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_6 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_7 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_8 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_9 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_10 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_11 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_12 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_13 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_14 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_15 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_16 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_17 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_18 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_19 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_i = fmul float %tmp_6, %tmp_12
  %tmp_3_i = fmul float %tmp_9, %tmp_14
  %tmp = fadd float %tmp_i, %tmp_3_i
  %tmp_i1 = fmul float %tmp_6, %tmp_13
  %tmp_3_i1 = fmul float %tmp_9, %tmp_15
  %tmp_1 = fadd float %tmp_i1, %tmp_3_i1
  %tmp_i2 = fmul float %tmp_7, %tmp_12
  %tmp_3_i2 = fmul float %tmp_10, %tmp_14
  %tmp_2 = fadd float %tmp_i2, %tmp_3_i2
  %tmp_i3 = fmul float %tmp_7, %tmp_13
  %tmp_3_i3 = fmul float %tmp_10, %tmp_15
  %tmp_3 = fadd float %tmp_i3, %tmp_3_i3
  %tmp_i4 = fmul float %tmp_8, %tmp_16
  %tmp_3_i4 = fmul float %tmp_11, %tmp_18
  %tmp_4 = fadd float %tmp_i4, %tmp_3_i4
  %tmp_i5 = fmul float %tmp_8, %tmp_17
  %tmp_3_i5 = fmul float %tmp_11, %tmp_19
  %tmp_5 = fadd float %tmp_i5, %tmp_3_i5
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_4)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_5)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1810, i32 %tmp_s)
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @dut_matmul(float* %strm_in_V, float* %strm_out_V) {
  %tmp = alloca float
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %A = alloca [100 x float], align 16
  %A_addr_1 = getelementptr inbounds [100 x float]* %A, i64 0, i64 0
  store float 0.000000e+00, float* %tmp
  br label %1

; <label>:1                                       ; preds = %0, %._crit_edge9
  %indvar_flatten1 = phi i26 [ 0, %0 ], [ %indvar_flatten_next1, %._crit_edge9 ]
  %indvar_flatten = phi i17 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge9 ]
  %j = phi i10 [ 0, %0 ], [ %j_mid2, %._crit_edge9 ]
  %k = phi i7 [ 0, %0 ], [ %k_1, %._crit_edge9 ]
  %exitcond_flatten1 = icmp eq i26 %indvar_flatten1, -5643264
  %indvar_flatten_next1 = add i26 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %7, label %.reset6

; <label>:2                                       ; preds = %.reset6
  %tmp_21 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_s = zext i7 %k_mid2 to i64
  %A_addr = getelementptr inbounds [100 x float]* %A, i64 0, i64 %tmp_s
  store float %tmp_21, float* %A_addr, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %.reset6
  %tmp_2 = icmp eq i7 %k_mid2, 0
  br i1 %tmp_2, label %3, label %4

; <label>:3                                       ; preds = %._crit_edge
  %A_load = load float* %A_addr_1, align 16
  %tmp_22 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %result = fmul float %A_load, %tmp_22
  store float %result, float* %tmp
  br label %5

; <label>:4                                       ; preds = %._crit_edge
  %p_04_2_load = load float* %tmp
  %tmp_3 = zext i7 %k_mid2 to i64
  %A_addr_2 = getelementptr inbounds [100 x float]* %A, i64 0, i64 %tmp_3
  %A_load_1 = load float* %A_addr_2, align 4
  %tmp_23 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_4 = fmul float %A_load_1, %tmp_23
  %result_1 = fadd float %p_04_2_load, %tmp_4
  store float %result_1, float* %tmp
  br label %5

; <label>:5                                       ; preds = %4, %3
  %tmp_6 = icmp eq i7 %k_mid2, -29
  br i1 %tmp_6, label %6, label %._crit_edge9

; <label>:6                                       ; preds = %5
  %p_04_2_load39 = load float* %tmp
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %p_04_2_load39)
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %6, %5
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str1806, i32 %tmp_1)
  %k_1 = add i7 %k_mid2, 1
  %indvar_flatten_op = add i17 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i17 1, i17 %indvar_flatten_op
  br label %1

.reset6:                                          ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([32 x i8]* @LOOP_ROW_LOOP_COL_LOOP_DOT_PRO)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 61465600, i64 61465600, i64 61465600)
  %exitcond_flatten = icmp eq i17 %indvar_flatten, -52672
  %j_mid = select i1 %exitcond_flatten, i10 0, i10 %j
  %tmp20 = icmp eq i10 %j, 0
  %tmp_mid = or i1 %exitcond_flatten, %tmp20
  %not_exitcond_flatten = xor i1 %exitcond_flatten, true
  %exitcond = icmp eq i7 %k, -28
  %exitcond_mid = and i1 %exitcond, %not_exitcond_flatten
  %j_1 = add i10 %j_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @LOOP_COL_LOOP_DOT_PROD_str)
  %tmp_7 = or i1 %exitcond_mid, %exitcond_flatten
  %k_mid2 = select i1 %tmp_7, i7 0, i7 %k
  %tmp_mid1 = icmp eq i10 %j_1, 0
  %tmp_mid2 = select i1 %exitcond_mid, i1 %tmp_mid1, i1 %tmp_mid
  %j_mid2 = select i1 %exitcond_mid, i10 %j_1, i10 %j_mid
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1806) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  br i1 %tmp_mid2, label %2, label %._crit_edge

; <label>:7                                       ; preds = %1
  ret void
}

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @dut(float* %strm_in_V, float* %strm_out_V) {
_ifconv:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_in_V), !map !212
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_out_V), !map !218
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dut_str) nounwind
  %tmp_32 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %p_Val2_s = bitcast float %tmp_32 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_22_i_i = sub i8 127, %loc_V
  %tmp_22_i_i_cast = sext i8 %tmp_22_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_22_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_23_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_24_i_i = lshr i24 %p_Result_1, %sh_assign_1_cast_cast
  %tmp_26_i_i = shl i78 %tmp_i_i, %tmp_23_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_24_i_i, i32 23)
  %tmp_s = zext i1 %tmp to i32
  %tmp_8 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_26_i_i, i32 23, i32 54)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_s, i32 %tmp_8
  %p_Val2_8_i_i = sub i32 0, %p_Val2_3
  %p_Val2_5 = select i1 %p_Result_s, i32 %p_Val2_8_i_i, i32 %p_Val2_3
  switch i32 %p_Val2_5, label %._crit_edge [
    i32 1, label %0
    i32 2, label %1
    i32 3, label %.preheader.i
    i32 4, label %2
    i32 5, label %3
  ]

; <label>:0                                       ; preds = %_ifconv
  call fastcc void @dut_calc_svd(float* %strm_in_V, float* %strm_out_V)
  br label %"update_off_diag_c<784, 784, MY_CONFIG_SVD>.exit"

; <label>:1                                       ; preds = %_ifconv
  call fastcc void @dut_update_off_diag_r(float* %strm_in_V, float* %strm_out_V)
  br label %"update_off_diag_c<784, 784, MY_CONFIG_SVD>.exit"

.preheader.i:                                     ; preds = %_ifconv, %.preheader
  %indvar_flatten = phi i19 [ %indvar_flatten_next, %.preheader ], [ 0, %_ifconv ]
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -217744
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %"update_off_diag_c<784, 784, MY_CONFIG_SVD>.exit", label %.preheader

.preheader:                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @L_svd_calc_off_c_str)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 306544, i64 306544, i64 306544)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1809) nounwind
  %tmp_32_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1809)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_33 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_34 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_35 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_36 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_37 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_38 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_i_i_16 = fmul float %tmp_33, %tmp_37
  %tmp_3_i_i = fmul float %tmp_35, %tmp_38
  %tmp_30 = fadd float %tmp_i_i_16, %tmp_3_i_i
  %tmp_i10_i = fmul float %tmp_34, %tmp_37
  %tmp_3_i11_i = fmul float %tmp_36, %tmp_38
  %tmp_31 = fadd float %tmp_i10_i, %tmp_3_i11_i
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_30)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_31)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1809, i32 %tmp_32_i)
  br label %.preheader.i

; <label>:2                                       ; preds = %_ifconv
  call fastcc void @dut_matmul(float* %strm_in_V, float* %strm_out_V)
  br label %"update_off_diag_c<784, 784, MY_CONFIG_SVD>.exit"

; <label>:3                                       ; preds = %_ifconv
  call fastcc void @dut_backproj(float* %strm_in_V, float* %strm_out_V)
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %_ifconv
  br label %"update_off_diag_c<784, 784, MY_CONFIG_SVD>.exit"

"update_off_diag_c<784, 784, MY_CONFIG_SVD>.exit": ; preds = %.preheader.i, %._crit_edge, %2, %1, %0
  ret void
}

define internal fastcc void @dut_calc_svd(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %proc = phi i9 [ 0, %0 ], [ %proc_1, %_ifconv ]
  %exitcond = icmp eq i9 %proc, -120
  %proc_1 = add i9 %proc, 1
  br i1 %exitcond, label %2, label %_ifconv

_ifconv:                                          ; preds = %1
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 392, i64 392, i64 392)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1811) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str1811)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_63 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_64 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_65 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_66 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %u1 = fsub float %tmp_66, %tmp_63
  %u2 = fadd float %tmp_65, %tmp_64
  %call_ret = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1, float %u2)
  %cosA_half = extractvalue { float, float } %call_ret, 0
  %sinA_half = extractvalue { float, float } %call_ret, 1
  %u1_1 = fadd float %tmp_66, %tmp_63
  %u2_1 = fsub float %tmp_65, %tmp_64
  %call_ret1 = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1_1, float %u2_1)
  %cosB_half = extractvalue { float, float } %call_ret1, 0
  %sinB_half = extractvalue { float, float } %call_ret1, 1
  %tmp_i = fmul float %cosA_half, %cosB_half
  %tmp_3_i = fmul float %sinA_half, %sinB_half
  %tmp_40 = fadd float %tmp_i, %tmp_3_i
  %tmp_to_int = bitcast float %cosA_half to i32
  %tmp_neg = xor i32 %tmp_to_int, -2147483648
  %a2_assign = bitcast i32 %tmp_neg to float
  %tmp_i6 = fmul float %sinA_half, %cosB_half
  %tmp_3_i6 = fmul float %a2_assign, %sinB_half
  %tmp_41 = fadd float %tmp_i6, %tmp_3_i6
  %tmp_4_to_int = bitcast float %sinA_half to i32
  %tmp_4_neg = xor i32 %tmp_4_to_int, -2147483648
  %a2_assign_3 = bitcast i32 %tmp_4_neg to float
  %tmp_3_i7 = fmul float %a2_assign_3, %sinB_half
  %vz_int_1 = fadd float %tmp_i, %tmp_3_i7
  %tmp_3_i8 = fmul float %cosA_half, %sinB_half
  %vy_int_1 = fadd float %tmp_i6, %tmp_3_i8
  %uy_int_to_int = bitcast float %tmp_41 to i32
  %uy_int_neg = xor i32 %uy_int_to_int, -2147483648
  %uy_int = bitcast i32 %uy_int_neg to float
  %vy_int_to_int = bitcast float %vy_int_1 to i32
  %vy_int_neg = xor i32 %vy_int_to_int, -2147483648
  %vy_int = bitcast i32 %vy_int_neg to float
  %tmp_i7 = fmul float %tmp_63, %vz_int_1
  %tmp_3_i9 = fmul float %tmp_64, %vy_int
  %w_out1 = fadd float %tmp_i7, %tmp_3_i9
  %tmp_i8 = fmul float %tmp_65, %vz_int_1
  %tmp_3_i1 = fmul float %tmp_66, %vy_int
  %w_out2 = fadd float %tmp_i8, %tmp_3_i1
  %tmp_i9 = fmul float %tmp_40, %w_out1
  %tmp_3_i2 = fmul float %uy_int, %w_out2
  %w_out_int = fadd float %tmp_i9, %tmp_3_i2
  %tmp_i1 = fmul float %tmp_63, %vy_int_1
  %tmp_3_i3 = fmul float %tmp_64, %vz_int_1
  %z_out1 = fadd float %tmp_i1, %tmp_3_i3
  %tmp_i2 = fmul float %tmp_65, %vy_int_1
  %tmp_3_i4 = fmul float %tmp_66, %vz_int_1
  %z_out2 = fadd float %tmp_i2, %tmp_3_i4
  %tmp_i3 = fmul float %tmp_41, %z_out1
  %tmp_3_i5 = fmul float %tmp_40, %z_out2
  %z_out_int = fadd float %tmp_i3, %tmp_3_i5
  %p_Val2_s = bitcast float %w_out_int to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %w_out_1_neg = xor i32 %p_Val2_s, -2147483648
  %w_out = bitcast i32 %w_out_1_neg to float
  %vw_int_to_int = bitcast float %vz_int_1 to i32
  %vw_int_neg = xor i32 %vw_int_to_int, -2147483648
  %vw_int = bitcast i32 %vw_int_neg to float
  %w_out_3 = select i1 %p_Result_s, float %w_out, float %w_out_int
  %vw_int_3 = select i1 %p_Result_s, float %vw_int, float %vz_int_1
  %vx_int = select i1 %p_Result_s, float %vy_int_1, float %vy_int
  %p_Val2_6 = bitcast float %z_out_int to i32
  %p_Result_2 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_6, i32 31)
  %z_out_1_neg = xor i32 %p_Val2_6, -2147483648
  %z_out = bitcast i32 %z_out_1_neg to float
  %z_out_3 = select i1 %p_Result_2, float %z_out, float %z_out_int
  %vy_int_2 = select i1 %p_Result_2, float %vy_int, float %vy_int_1
  %vz_int = select i1 %p_Result_2, float %vw_int, float %vz_int_1
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %w_out_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float 0.000000e+00)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float 0.000000e+00)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %z_out_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_40)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_41)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %uy_int)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_40)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vw_int_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vy_int_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vx_int)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vz_int)
  %tmp = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_67 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_68 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_69 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_70 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_71 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_72 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_73 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_i_i = fmul float %tmp, %tmp_40
  %tmp_3_i_i = fmul float %tmp_67, %uy_int
  %tmp_55 = fadd float %tmp_i_i, %tmp_3_i_i
  %tmp_i1_i = fmul float %tmp, %tmp_41
  %tmp_3_i2_i = fmul float %tmp_67, %tmp_40
  %tmp_56 = fadd float %tmp_i1_i, %tmp_3_i2_i
  %tmp_i4_i = fmul float %tmp_68, %tmp_40
  %tmp_3_i5_i = fmul float %tmp_69, %uy_int
  %tmp_57 = fadd float %tmp_i4_i, %tmp_3_i5_i
  %tmp_i7_i = fmul float %tmp_68, %tmp_41
  %tmp_3_i8_i = fmul float %tmp_69, %tmp_40
  %tmp_58 = fadd float %tmp_i7_i, %tmp_3_i8_i
  %tmp_i_i1 = fmul float %tmp_70, %vw_int_3
  %tmp_3_i_i1 = fmul float %tmp_71, %vx_int
  %tmp_59 = fadd float %tmp_i_i1, %tmp_3_i_i1
  %tmp_i1_i1 = fmul float %tmp_70, %vy_int_2
  %tmp_3_i2_i1 = fmul float %tmp_71, %vz_int
  %tmp_60 = fadd float %tmp_i1_i1, %tmp_3_i2_i1
  %tmp_i4_i1 = fmul float %tmp_72, %vw_int_3
  %tmp_3_i5_i1 = fmul float %tmp_73, %vx_int
  %tmp_61 = fadd float %tmp_i4_i1, %tmp_3_i5_i1
  %tmp_i7_i1 = fmul float %tmp_72, %vy_int_2
  %tmp_3_i8_i1 = fmul float %tmp_73, %vz_int
  %tmp_62 = fadd float %tmp_i7_i1, %tmp_3_i8_i1
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_55)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_56)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_57)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_58)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_59)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_60)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_61)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_62)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str1811, i32 %tmp_2)
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define internal fastcc { float, float } @"dut_calc_angle<float, float>"(float %A_M_real, float %A_M_imag) {
  %A_M_imag_read = call float @_ssdm_op_Read.ap_auto.float(float %A_M_imag)
  %A_M_real_read = call float @_ssdm_op_Read.ap_auto.float(float %A_M_real)
  %p_Val2_s = bitcast float %A_M_real_read to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %p_Val2_9 = bitcast float %A_M_imag_read to i32
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_9, i32 23, i32 30) nounwind
  %lhs_V_cast = zext i8 %loc_V_2 to i9
  %r_V = add i9 %lhs_V_cast, 24
  %tmp_i_cast = zext i8 %loc_V to i9
  %ult = icmp ult i9 %r_V, %tmp_i_cast
  %notrhs_i = icmp eq i8 %loc_V_2, 0
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
  %p_Result_11 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_9, i32 31)
  %storemerge1 = select i1 %p_Result_11, float 0xBFE6A09E60000000, float 0x3FE6A09E60000000
  br label %8

; <label>:4                                       ; preds = %2
  %tanThetaA = fdiv float %A_M_imag_read, %A_M_real_read
  %p_Result_8 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %p_Result_12 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1 %p_Result_8, i31 1065353216) nounwind
  %ret_i_i_i_i = bitcast i32 %p_Result_12 to float
  %tmp_5 = fmul float %tanThetaA, %tanThetaA
  %x_assign = fadd float %tmp_5, 1.000000e+00
  %tmp_i_i = call float @_ssdm_op_FRSqrt(float %x_assign) nounwind
  %cosThetaA_int = fmul float %ret_i_i_i_i, %tmp_i_i
  %sinThetaA_int = fmul float %cosThetaA_int, %tanThetaA
  %p_Val2_12 = bitcast float %cosThetaA_int to i32
  %p_Result_13 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_12, i32 31)
  br i1 %p_Result_13, label %5, label %6

; <label>:5                                       ; preds = %4
  %tmp_s = fsub float 1.000000e+00, %cosThetaA_int
  %tanThetaAdiv2_1 = fdiv float %tmp_s, %sinThetaA_int
  br label %7

; <label>:6                                       ; preds = %4
  %tmp_3 = fadd float %cosThetaA_int, 1.000000e+00
  %tanThetaAdiv2 = fdiv float %sinThetaA_int, %tmp_3
  br label %7

; <label>:7                                       ; preds = %6, %5
  %tanThetaAdiv = phi float [ %tanThetaAdiv2_1, %5 ], [ %tanThetaAdiv2, %6 ]
  %tmp_4 = fmul float %tanThetaAdiv, %tanThetaAdiv
  %x_assign_2 = fadd float %tmp_4, 1.000000e+00
  %cosThetaAdiv2_int = call float @_ssdm_op_FRSqrt(float %x_assign_2) nounwind
  %tmp_7 = fmul float %cosThetaAdiv2_int, %tanThetaAdiv
  br label %8

; <label>:8                                       ; preds = %7, %3, %1
  %cosThetaAdiv2_write_assign = phi float [ %cosThetaAdiv2_int, %7 ], [ %storemerge1, %3 ], [ %p_s, %1 ]
  %sinThetaAdiv2_write_assign = phi float [ %tmp_7, %7 ], [ 0x3FE6A09E60000000, %3 ], [ %p_1, %1 ]
  %newret = insertvalue { float, float } undef, float %cosThetaAdiv2_write_assign, 0
  %newret2 = insertvalue { float, float } %newret, float %sinThetaAdiv2_write_assign, 1
  ret { float, float } %newret2
}

define internal fastcc void @dut_backproj(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %A = alloca [784 x float], align 16
  br label %1

; <label>:1                                       ; preds = %0, %._crit_edge8
  %indvar_flatten2 = phi i20 [ 0, %0 ], [ %indvar_flatten_next2, %._crit_edge8 ]
  %indvar_flatten = phi i17 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge8 ]
  %j = phi i7 [ 0, %0 ], [ %j_mid2, %._crit_edge8 ]
  %p_03_2 = phi float [ 0.000000e+00, %0 ], [ %result, %._crit_edge8 ]
  %k = phi i10 [ 0, %0 ], [ %k_2, %._crit_edge8 ]
  %exitcond_flatten2 = icmp eq i20 %indvar_flatten2, -264576
  %indvar_flatten_next2 = add i20 %indvar_flatten2, 1
  br i1 %exitcond_flatten2, label %4, label %.reset6

; <label>:2                                       ; preds = %.reset6
  %tmp = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_s = zext i10 %k_mid2 to i64
  %A_addr = getelementptr inbounds [784 x float]* %A, i64 0, i64 %tmp_s
  store float %tmp, float* %A_addr, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %.reset6
  %tmp_1 = icmp eq i10 %k_mid2, 0
  %p_03_2_22 = select i1 %tmp_1, float 0.000000e+00, float %p_03_2
  %tmp_2 = zext i10 %k_mid2 to i64
  %A_addr_3 = getelementptr inbounds [784 x float]* %A, i64 0, i64 %tmp_2
  %A_load = load float* %A_addr_3, align 4
  %tmp_74 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_3 = fmul float %A_load, %tmp_74
  %result = fadd float %p_03_2_22, %tmp_3
  %tmp_4 = icmp eq i10 %k_mid2, -241
  br i1 %tmp_4, label %3, label %._crit_edge8

; <label>:3                                       ; preds = %._crit_edge
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %result)
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %3, %._crit_edge
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str1806, i32 %tmp_9)
  %k_2 = add i10 %k_mid2, 1
  %indvar_flatten_op = add i17 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i17 1, i17 %indvar_flatten_op
  br label %1

.reset6:                                          ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([32 x i8]* @LOOP_ROW_LOOP_COL_LOOP_DOT_PRO)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784000, i64 784000, i64 784000)
  %exitcond_flatten = icmp eq i17 %indvar_flatten, -52672
  %j_mid = select i1 %exitcond_flatten, i7 0, i7 %j
  %tmp31 = icmp eq i7 %j, 0
  %tmp_mid = or i1 %exitcond_flatten, %tmp31
  %not_exitcond_flatten = xor i1 %exitcond_flatten, true
  %exitcond = icmp eq i10 %k, -240
  %exitcond_mid = and i1 %exitcond, %not_exitcond_flatten
  %j_2 = add i7 %j_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @LOOP_COL_LOOP_DOT_PROD_str)
  %tmp_17 = or i1 %exitcond_mid, %exitcond_flatten
  %k_mid2 = select i1 %tmp_17, i10 0, i10 %k
  %tmp_mid1 = icmp eq i7 %j_2, 0
  %tmp_mid2 = select i1 %exitcond_mid, i1 %tmp_mid1, i1 %tmp_mid
  %j_mid2 = select i1 %exitcond_mid, i7 %j_2, i7 %j_mid
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1806) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  br i1 %tmp_mid2, label %2, label %._crit_edge

; <label>:4                                       ; preds = %1
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

define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0)
  ret float %empty
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_25 = trunc i32 %empty to i8
  ret i8 %empty_25
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_26 = trunc i78 %empty to i32
  ret i32 %empty_26
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak float @_ssdm_op_FRSqrt(float) nounwind {
entry:
  %empty = call float @llvm.sqrt.f32(float %0)
  %empty_27 = fdiv float 1.000000e+00, %empty
  ret float %empty_27
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_28 = shl i9 1, %empty
  %empty_29 = and i9 %0, %empty_28
  %empty_30 = icmp ne i9 %empty_29, 0
  ret i1 %empty_30
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_31 = and i32 %0, %empty
  %empty_32 = icmp ne i32 %empty_31, 0
  ret i1 %empty_32
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_33 = shl i24 1, %empty
  %empty_34 = and i24 %0, %empty_33
  %empty_35 = icmp ne i24 %empty_34, 0
  ret i1 %empty_35
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone {
entry:
  %empty = zext i1 %0 to i32
  %empty_36 = zext i31 %1 to i32
  %empty_37 = shl i32 %empty, 31
  %empty_38 = or i32 %empty_37, %empty_36
  ret i32 %empty_38
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_39 = zext i23 %1 to i24
  %empty_40 = shl i24 %empty, 23
  %empty_41 = or i24 %empty_40, %empty_39
  ret i24 %empty_41
}

declare float @_autotb_FifoWrite_float(float*, float)

declare float @_autotb_FifoRead_float(float*)

declare void @_GLOBAL__I_a1968() nounwind section ".text.startup"

declare void @_GLOBAL__I_a1945() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !0, !0, !7, !0, !13, !15, !0, !0, !21, !27, !33, !36, !36, !42, !42, !44, !47, !47, !36, !36, !36, !36, !49, !51, !51, !36, !53, !56, !56, !53, !62, !62, !44, !49, !51, !51, !36, !53, !64, !64, !66, !69, !69, !73, !36, !75, !66, !77, !77, !79, !79, !36, !36, !36, !36, !36, !36, !36, !36, !36, !36, !81, !33, !33, !87, !90, !36, !36, !36, !36, !53, !53, !92, !94, !94, !36, !36, !95, !97, !97, !53, !53, !98, !100, !100, !36, !36, !101, !103, !103, !66, !36, !75, !36, !36, !104, !87, !107, !110, !110, !36, !111, !113, !114, !117, !117, !118, !36, !36, !36, !51, !51, !103, !103, !120, !122, !36, !36, !36, !124, !124, !125, !125, !36, !36, !127, !127, !129, !129, !36, !131, !131, !134, !36, !110, !110, !136, !36, !36, !36, !138, !138, !140, !140, !142, !36, !36, !36, !144, !146, !36, !36, !36, !124, !124, !148, !148, !150, !36, !36, !36, !36, !36, !36, !152, !36, !36, !36, !36, !131, !131, !134, !152, !36, !131, !131, !134, !152, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !154, !154, !154, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !154, !154, !154, !159, !159, !159, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !159, !159, !159, !36, !159, !159, !159, !36, !36, !163, !36, !166, !170, !173, !179, !183, !186, !188, !188, !192, !195, !195, !201, !36, !7, !131, !131, !134, !36, !110, !110, !36, !136, !36, !36, !36, !138, !138, !140, !140, !142, !36, !36, !36, !144, !110, !110, !36, !146, !36, !36, !36, !124, !124, !148, !148, !150, !36, !36, !36, !36, !36, !36, !152, !36, !36, !36, !36, !131, !131, !134, !152, !36, !131, !131, !134, !152, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !154, !154, !154, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !154, !154, !154, !159, !159, !159, !36, !154, !154, !154, !36, !154, !154, !154, !36, !154, !154, !154, !36, !159, !159, !159, !36, !159, !159, !159, !36, !36}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!205}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<fix32_t> &", metadata !"hls::stream<fix32_t> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"strm_in", metadata !"strm_out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !12, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!17 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &"}
!19 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"b1", metadata !"a2", metadata !"b2", metadata !"c"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"a3", metadata !"a4", metadata !"b1", metadata !"b2", metadata !"b3", metadata !"b4", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"w_in", metadata !"x_in", metadata !"y_in", metadata !"z_in", metadata !"uw_out", metadata !"ux_out", metadata !"uy_out", metadata !"uz_out", metadata !"vw_out", metadata !"vx_out", metadata !"vy_out", metadata !"vz_out", metadata !"w_out", metadata !"x_out", metadata !"y_out", metadata !"z_out"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !35, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!36 = metadata !{null, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !6}
!37 = metadata !{metadata !"kernel_arg_addr_space"}
!38 = metadata !{metadata !"kernel_arg_access_qual"}
!39 = metadata !{metadata !"kernel_arg_type"}
!40 = metadata !{metadata !"kernel_arg_type_qual"}
!41 = metadata !{metadata !"kernel_arg_name"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !43, metadata !6}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!44 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !48, metadata !6}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!49 = metadata !{null, metadata !8, metadata !9, metadata !50, metadata !11, metadata !46, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!51 = metadata !{null, metadata !8, metadata !9, metadata !50, metadata !11, metadata !52, metadata !6}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!53 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !55, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!56 = metadata !{null, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !6}
!57 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!58 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!60 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!62 = metadata !{null, metadata !57, metadata !58, metadata !63, metadata !60, metadata !61, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!64 = metadata !{null, metadata !57, metadata !58, metadata !65, metadata !60, metadata !61, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!66 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !68, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!69 = metadata !{null, metadata !70, metadata !2, metadata !71, metadata !4, metadata !72, metadata !6}
!70 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !46, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!75 = metadata !{null, metadata !8, metadata !9, metadata !76, metadata !11, metadata !46, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!77 = metadata !{null, metadata !70, metadata !2, metadata !78, metadata !4, metadata !72, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!79 = metadata !{null, metadata !8, metadata !9, metadata !80, metadata !11, metadata !46, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!81 = metadata !{null, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !6}
!82 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!83 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"std::complex<float>", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"_Bool &", metadata !"_Bool &"}
!85 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"cosThetaA", metadata !"sinThetaA", metadata !"cosThetaAdiv2", metadata !"sinThetaAdiv2", metadata !"is_pos_real", metadata !"is_imag"}
!87 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !89, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!89 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!90 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !91, metadata !6}
!91 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!92 = metadata !{null, metadata !8, metadata !9, metadata !93, metadata !11, metadata !46, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!94 = metadata !{null, metadata !8, metadata !9, metadata !93, metadata !11, metadata !48, metadata !6}
!95 = metadata !{null, metadata !8, metadata !9, metadata !96, metadata !11, metadata !46, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!97 = metadata !{null, metadata !8, metadata !9, metadata !96, metadata !11, metadata !52, metadata !6}
!98 = metadata !{null, metadata !8, metadata !9, metadata !99, metadata !11, metadata !46, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!100 = metadata !{null, metadata !8, metadata !9, metadata !99, metadata !11, metadata !48, metadata !6}
!101 = metadata !{null, metadata !8, metadata !9, metadata !102, metadata !11, metadata !46, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!103 = metadata !{null, metadata !8, metadata !9, metadata !102, metadata !11, metadata !52, metadata !6}
!104 = metadata !{null, metadata !8, metadata !9, metadata !105, metadata !11, metadata !106, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!107 = metadata !{null, metadata !1, metadata !2, metadata !108, metadata !4, metadata !109, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!110 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !52, metadata !6}
!111 = metadata !{null, metadata !8, metadata !9, metadata !112, metadata !11, metadata !106, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!113 = metadata !{null, metadata !8, metadata !9, metadata !102, metadata !11, metadata !106, metadata !6}
!114 = metadata !{null, metadata !1, metadata !2, metadata !115, metadata !4, metadata !116, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!116 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!117 = metadata !{null, metadata !8, metadata !9, metadata !80, metadata !11, metadata !52, metadata !6}
!118 = metadata !{null, metadata !1, metadata !2, metadata !119, metadata !4, metadata !109, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, false> &"}
!120 = metadata !{null, metadata !1, metadata !2, metadata !121, metadata !4, metadata !116, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"int"}
!122 = metadata !{null, metadata !1, metadata !2, metadata !123, metadata !4, metadata !109, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"const ap_int_base<32, true> &"}
!124 = metadata !{null, metadata !8, metadata !9, metadata !112, metadata !11, metadata !52, metadata !6}
!125 = metadata !{null, metadata !8, metadata !9, metadata !126, metadata !11, metadata !52, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!127 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !128, metadata !6}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"__val"}
!129 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !130, metadata !6}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"__r", metadata !"__i"}
!131 = metadata !{null, metadata !8, metadata !9, metadata !132, metadata !11, metadata !133, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!133 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!134 = metadata !{null, metadata !8, metadata !9, metadata !132, metadata !11, metadata !135, metadata !6}
!135 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!136 = metadata !{null, metadata !1, metadata !2, metadata !137, metadata !4, metadata !109, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!138 = metadata !{null, metadata !8, metadata !9, metadata !139, metadata !11, metadata !52, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!140 = metadata !{null, metadata !8, metadata !9, metadata !141, metadata !11, metadata !52, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!142 = metadata !{null, metadata !8, metadata !9, metadata !143, metadata !11, metadata !106, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!144 = metadata !{null, metadata !1, metadata !2, metadata !145, metadata !4, metadata !116, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!146 = metadata !{null, metadata !1, metadata !2, metadata !147, metadata !4, metadata !109, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!148 = metadata !{null, metadata !8, metadata !9, metadata !149, metadata !11, metadata !52, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!150 = metadata !{null, metadata !8, metadata !9, metadata !151, metadata !11, metadata !106, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!152 = metadata !{null, metadata !8, metadata !9, metadata !132, metadata !11, metadata !153, metadata !6}
!153 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!154 = metadata !{null, metadata !155, metadata !9, metadata !156, metadata !157, metadata !158, metadata !6}
!155 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!157 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!158 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!159 = metadata !{null, metadata !70, metadata !2, metadata !160, metadata !161, metadata !162, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!161 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!162 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!163 = metadata !{null, metadata !16, metadata !17, metadata !164, metadata !19, metadata !165, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!165 = metadata !{metadata !"kernel_arg_name", metadata !"VEC_SIZ", metadata !"VEC_NUM", metadata !"ka", metadata !"pca_in_", metadata !"pca_out_"}
!166 = metadata !{null, metadata !167, metadata !2, metadata !168, metadata !4, metadata !169, metadata !6}
!167 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t*"}
!169 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"mean"}
!170 = metadata !{null, metadata !167, metadata !2, metadata !171, metadata !4, metadata !172, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t [784]*"}
!172 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"XXT"}
!173 = metadata !{null, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !6}
!174 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!175 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!176 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*"}
!177 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!178 = metadata !{metadata !"kernel_arg_name", metadata !"XXT", metadata !"S", metadata !"U", metadata !"V"}
!179 = metadata !{null, metadata !180, metadata !58, metadata !181, metadata !60, metadata !182, metadata !6}
!180 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*", metadata !"fix32_t [784]*"}
!182 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"S", metadata !"U"}
!183 = metadata !{null, metadata !180, metadata !58, metadata !184, metadata !60, metadata !185, metadata !6}
!184 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*", metadata !"fix32_t [100]*", metadata !"fix32_t [100]*"}
!185 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"X", metadata !"Y"}
!186 = metadata !{null, metadata !167, metadata !2, metadata !187, metadata !4, metadata !89, metadata !6}
!187 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!188 = metadata !{null, metadata !189, metadata !175, metadata !190, metadata !177, metadata !191, metadata !6}
!189 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int", metadata !"int", metadata !"fix32_t [784]*"}
!191 = metadata !{metadata !"kernel_arg_name", metadata !"arr", metadata !"l", metadata !"h", metadata !"S"}
!192 = metadata !{null, metadata !155, metadata !9, metadata !193, metadata !11, metadata !194, metadata !6}
!193 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [784]*"}
!194 = metadata !{metadata !"kernel_arg_name", metadata !"S"}
!195 = metadata !{null, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !6}
!196 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!197 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!198 = metadata !{metadata !"kernel_arg_type", metadata !"const float [784]*", metadata !"float [784]*", metadata !"float [784]*", metadata !"float [784]*", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!199 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!200 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"S", metadata !"U", metadata !"V", metadata !"pca_in", metadata !"pca_out"}
!201 = metadata !{null, metadata !202, metadata !175, metadata !203, metadata !177, metadata !204, metadata !6}
!202 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!203 = metadata !{metadata !"kernel_arg_type", metadata !"int &", metadata !"int &", metadata !"int", metadata !"int"}
!204 = metadata !{metadata !"kernel_arg_name", metadata !"top_left", metadata !"bottom_right", metadata !"idx1", metadata !"idx2"}
!205 = metadata !{metadata !206, [3 x i32]* @llvm_global_ctors_0}
!206 = metadata !{metadata !207}
!207 = metadata !{i32 0, i32 31, metadata !208}
!208 = metadata !{metadata !209}
!209 = metadata !{metadata !"llvm.global_ctors.0", metadata !210, metadata !"", i32 0, i32 31}
!210 = metadata !{metadata !211}
!211 = metadata !{i32 0, i32 2, i32 1}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 31, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"strm_in.V", metadata !216, metadata !"float", i32 0, i32 31}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 0, i32 0, i32 1}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 0, i32 31, metadata !220}
!220 = metadata !{metadata !221}
!221 = metadata !{metadata !"strm_out.V", metadata !216, metadata !"float", i32 0, i32 31}
