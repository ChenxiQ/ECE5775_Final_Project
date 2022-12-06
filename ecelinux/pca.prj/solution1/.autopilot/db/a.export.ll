; ModuleID = '/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a15, void ()* @_GLOBAL__I_a38]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@dut_str = internal unnamed_addr constant [4 x i8] c"dut\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@L_svd_calc_off_r_str = internal unnamed_addr constant [17 x i8] c"L_svd_calc_off_r\00"
@L_svd_calc_off_c_str = internal unnamed_addr constant [17 x i8] c"L_svd_calc_off_c\00"
@LOOP_ROW_LOOP_COL_LOOP_DOT_PRO = internal unnamed_addr constant [32 x i8] c"LOOP_ROW_LOOP_COL_LOOP_DOT_PROD\00"
@LOOP_COL_LOOP_DOT_PROD_str = internal unnamed_addr constant [23 x i8] c"LOOP_COL_LOOP_DOT_PROD\00"
@p_str7 = private unnamed_addr constant [14 x i8] c"svd_calc_diag\00", align 1
@p_str6 = private unnamed_addr constant [15 x i8] c"svd_calc_off_r\00", align 1
@p_str5 = private unnamed_addr constant [15 x i8] c"svd_calc_off_c\00", align 1
@p_str49 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str48 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str47 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str46 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str45 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str44 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str43 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str42 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [14 x i8] c"LOOP_DOT_PROD\00", align 1

define internal fastcc void @dut_update_off_diag_r(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str42, [1 x i8]* @p_str43, [1 x i8]* @p_str44, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str45)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str46, [1 x i8]* @p_str47, [1 x i8]* @p_str48, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str49)
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader.preheader
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.preheader.preheader ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -16
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @L_svd_calc_off_r_str)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 112, i64 112, i64 112)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str6) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
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
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str6, i32 %tmp_s)
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @dut_matmul(float* %strm_in_V, float* %strm_out_V) {
  %tmp = alloca float
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str42, [1 x i8]* @p_str43, [1 x i8]* @p_str44, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str45)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str46, [1 x i8]* @p_str47, [1 x i8]* @p_str48, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str49)
  %A = alloca [100 x float], align 16
  %A_addr_1 = getelementptr inbounds [100 x float]* %A, i64 0, i64 0
  store float 0.000000e+00, float* %tmp
  br label %1

; <label>:1                                       ; preds = %0, %._crit_edge9
  %indvar_flatten1 = phi i15 [ 0, %0 ], [ %indvar_flatten_next1, %._crit_edge9 ]
  %indvar_flatten = phi i12 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge9 ]
  %j = phi i5 [ 0, %0 ], [ %j_mid2, %._crit_edge9 ]
  %k = phi i7 [ 0, %0 ], [ %k_1, %._crit_edge9 ]
  %exitcond_flatten1 = icmp eq i15 %indvar_flatten1, -7168
  %indvar_flatten_next1 = add i15 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %7, label %.reset6

; <label>:2                                       ; preds = %.reset6
  %tmp_21 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_s = zext i7 %k_mid2 to i64
  %A_addr = getelementptr inbounds [100 x float]* %A, i64 0, i64 %tmp_s
  store float %tmp_21, float* %A_addr, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %.reset6
  %tmp_8 = icmp eq i7 %k_mid2, 0
  br i1 %tmp_8, label %3, label %4

; <label>:3                                       ; preds = %._crit_edge
  %A_load = load float* %A_addr_1, align 16
  %tmp_22 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %result = fmul float %A_load, %tmp_22
  store float %result, float* %tmp
  br label %5

; <label>:4                                       ; preds = %._crit_edge
  %p_04_2_load = load float* %tmp
  %tmp_9 = zext i7 %k_mid2 to i64
  %A_addr_2 = getelementptr inbounds [100 x float]* %A, i64 0, i64 %tmp_9
  %A_load_1 = load float* %A_addr_2, align 4
  %tmp_23 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_1 = fmul float %A_load_1, %tmp_23
  %result_1 = fadd float %p_04_2_load, %tmp_1
  store float %result_1, float* %tmp
  br label %5

; <label>:5                                       ; preds = %4, %3
  %tmp_3 = icmp eq i7 %k_mid2, -29
  br i1 %tmp_3, label %6, label %._crit_edge9

; <label>:6                                       ; preds = %5
  %p_04_2_load39 = load float* %tmp
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %p_04_2_load39)
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %6, %5
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str2, i32 %tmp_7)
  %k_1 = add i7 %k_mid2, 1
  %indvar_flatten_op = add i12 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i12 1, i12 %indvar_flatten_op
  br label %1

.reset6:                                          ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([32 x i8]* @LOOP_ROW_LOOP_COL_LOOP_DOT_PRO)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 25600, i64 25600, i64 25600)
  %exitcond_flatten = icmp eq i12 %indvar_flatten, 1600
  %j_mid = select i1 %exitcond_flatten, i5 0, i5 %j
  %tmp20 = icmp eq i5 %j, 0
  %tmp_mid = or i1 %exitcond_flatten, %tmp20
  %not_exitcond_flatten = xor i1 %exitcond_flatten, true
  %exitcond = icmp eq i7 %k, -28
  %exitcond_mid = and i1 %exitcond, %not_exitcond_flatten
  %j_1 = add i5 %j_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @LOOP_COL_LOOP_DOT_PROD_str)
  %tmp_10 = or i1 %exitcond_mid, %exitcond_flatten
  %k_mid2 = select i1 %tmp_10, i7 0, i7 %k
  %tmp_mid1 = icmp eq i5 %j_1, 0
  %tmp_mid2 = select i1 %exitcond_mid, i1 %tmp_mid1, i1 %tmp_mid
  %j_mid2 = select i1 %exitcond_mid, i5 %j_1, i5 %j_mid
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str2) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
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
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str46, [1 x i8]* @p_str47, [1 x i8]* @p_str48, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str49)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str42, [1 x i8]* @p_str43, [1 x i8]* @p_str44, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str45)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_in_V), !map !167
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_out_V), !map !173
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
  %tmp_18_i_i = sub i8 127, %loc_V
  %tmp_18_i_i_cast = sext i8 %tmp_18_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_18_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_19_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_20_i_i = lshr i24 %p_Result_1, %sh_assign_1_cast_cast
  %tmp_22_i_i = shl i78 %tmp_i_i, %tmp_19_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_20_i_i, i32 23)
  %tmp_s = zext i1 %tmp to i32
  %tmp_11 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_22_i_i, i32 23, i32 54)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_s, i32 %tmp_11
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
  br label %"update_off_diag_c<16, 16, MY_CONFIG_SVD>.exit"

; <label>:1                                       ; preds = %_ifconv
  call fastcc void @dut_update_off_diag_r(float* %strm_in_V, float* %strm_out_V)
  br label %"update_off_diag_c<16, 16, MY_CONFIG_SVD>.exit"

.preheader.i:                                     ; preds = %_ifconv, %.preheader
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader ], [ 0, %_ifconv ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -16
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %"update_off_diag_c<16, 16, MY_CONFIG_SVD>.exit", label %.preheader

.preheader:                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @L_svd_calc_off_c_str)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 112, i64 112, i64 112)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str5) nounwind
  %tmp_32_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
  %tmp_33 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_34 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_35 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_36 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_37 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_38 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_i_i_16 = fmul float %tmp_33, %tmp_37
  %tmp_3_i_i = fmul float %tmp_35, %tmp_38
  %tmp_30 = fadd float %tmp_i_i_16, %tmp_3_i_i
  %tmp_i6_i = fmul float %tmp_34, %tmp_37
  %tmp_3_i7_i = fmul float %tmp_36, %tmp_38
  %tmp_31 = fadd float %tmp_i6_i, %tmp_3_i7_i
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_30)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_31)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str5, i32 %tmp_32_i)
  br label %.preheader.i

; <label>:2                                       ; preds = %_ifconv
  call fastcc void @dut_matmul(float* %strm_in_V, float* %strm_out_V)
  br label %"update_off_diag_c<16, 16, MY_CONFIG_SVD>.exit"

; <label>:3                                       ; preds = %_ifconv
  call fastcc void @dut_backproj(float* %strm_in_V, float* %strm_out_V)
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %_ifconv
  br label %"update_off_diag_c<16, 16, MY_CONFIG_SVD>.exit"

"update_off_diag_c<16, 16, MY_CONFIG_SVD>.exit":  ; preds = %.preheader.i, %._crit_edge, %2, %1, %0
  ret void
}

define internal fastcc void @dut_calc_svd(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str42, [1 x i8]* @p_str43, [1 x i8]* @p_str44, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str45)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str46, [1 x i8]* @p_str47, [1 x i8]* @p_str48, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str49)
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %proc = phi i4 [ 0, %0 ], [ %proc_1, %_ifconv ]
  %exitcond = icmp eq i4 %proc, -8
  %proc_1 = add i4 %proc, 1
  br i1 %exitcond, label %2, label %_ifconv

_ifconv:                                          ; preds = %1
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str7) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
  %tmp_65 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_66 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_67 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_68 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %u1 = fsub float %tmp_68, %tmp_65
  %u2 = fadd float %tmp_67, %tmp_66
  %call_ret = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1, float %u2)
  %cosA_half = extractvalue { float, float } %call_ret, 0
  %sinA_half = extractvalue { float, float } %call_ret, 1
  %u1_1 = fadd float %tmp_68, %tmp_65
  %u2_1 = fsub float %tmp_67, %tmp_66
  %call_ret1 = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1_1, float %u2_1)
  %cosB_half = extractvalue { float, float } %call_ret1, 0
  %sinB_half = extractvalue { float, float } %call_ret1, 1
  %tmp_i = fmul float %cosA_half, %cosB_half
  %tmp_3_i = fmul float %sinA_half, %sinB_half
  %tmp_42 = fadd float %tmp_i, %tmp_3_i
  %tmp_to_int = bitcast float %cosA_half to i32
  %tmp_neg = xor i32 %tmp_to_int, -2147483648
  %a2_assign = bitcast i32 %tmp_neg to float
  %tmp_i6 = fmul float %sinA_half, %cosB_half
  %tmp_3_i6 = fmul float %a2_assign, %sinB_half
  %tmp_43 = fadd float %tmp_i6, %tmp_3_i6
  %tmp_4_to_int = bitcast float %sinA_half to i32
  %tmp_4_neg = xor i32 %tmp_4_to_int, -2147483648
  %a2_assign_3 = bitcast i32 %tmp_4_neg to float
  %tmp_3_i7 = fmul float %a2_assign_3, %sinB_half
  %vz_int_1 = fadd float %tmp_i, %tmp_3_i7
  %tmp_3_i8 = fmul float %cosA_half, %sinB_half
  %vy_int_1 = fadd float %tmp_i6, %tmp_3_i8
  %uy_int_to_int = bitcast float %tmp_43 to i32
  %uy_int_neg = xor i32 %uy_int_to_int, -2147483648
  %uy_int = bitcast i32 %uy_int_neg to float
  %vy_int_to_int = bitcast float %vy_int_1 to i32
  %vy_int_neg = xor i32 %vy_int_to_int, -2147483648
  %vy_int = bitcast i32 %vy_int_neg to float
  %tmp_i7 = fmul float %tmp_65, %vz_int_1
  %tmp_3_i9 = fmul float %tmp_66, %vy_int
  %w_out1 = fadd float %tmp_i7, %tmp_3_i9
  %tmp_i8 = fmul float %tmp_67, %vz_int_1
  %tmp_3_i1 = fmul float %tmp_68, %vy_int
  %w_out2 = fadd float %tmp_i8, %tmp_3_i1
  %tmp_i9 = fmul float %tmp_42, %w_out1
  %tmp_3_i2 = fmul float %uy_int, %w_out2
  %w_out_int = fadd float %tmp_i9, %tmp_3_i2
  %tmp_i1 = fmul float %tmp_65, %vy_int_1
  %tmp_3_i3 = fmul float %tmp_66, %vz_int_1
  %z_out1 = fadd float %tmp_i1, %tmp_3_i3
  %tmp_i2 = fmul float %tmp_67, %vy_int_1
  %tmp_3_i4 = fmul float %tmp_68, %vz_int_1
  %z_out2 = fadd float %tmp_i2, %tmp_3_i4
  %tmp_i3 = fmul float %tmp_43, %z_out1
  %tmp_3_i5 = fmul float %tmp_42, %z_out2
  %z_out_int = fadd float %tmp_i3, %tmp_3_i5
  %c_write_assign_17_to_int = bitcast float %w_out_int to i32
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %c_write_assign_17_to_int, i32 23, i32 30)
  %tmp = trunc i32 %c_write_assign_17_to_int to i23
  %notlhs = icmp ne i8 %tmp_s, -1
  %notrhs = icmp eq i23 %tmp, 0
  %tmp_3 = or i1 %notrhs, %notlhs
  %tmp_4 = fcmp olt float %w_out_int, 0.000000e+00
  %tmp_5 = and i1 %tmp_3, %tmp_4
  %w_out_neg = xor i32 %c_write_assign_17_to_int, -2147483648
  %w_out = bitcast i32 %w_out_neg to float
  %vw_int_to_int = bitcast float %vz_int_1 to i32
  %vw_int_neg = xor i32 %vw_int_to_int, -2147483648
  %vw_int = bitcast i32 %vw_int_neg to float
  %w_out_3 = select i1 %tmp_5, float %w_out, float %w_out_int
  %vw_int_3 = select i1 %tmp_5, float %vw_int, float %vz_int_1
  %vx_int = select i1 %tmp_5, float %vy_int_1, float %vy_int
  %c_write_assign_20_to_int = bitcast float %z_out_int to i32
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %c_write_assign_20_to_int, i32 23, i32 30)
  %tmp_39 = trunc i32 %c_write_assign_20_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_6, -1
  %notrhs3 = icmp eq i23 %tmp_39, 0
  %tmp_8 = or i1 %notrhs3, %notlhs2
  %tmp_9 = fcmp olt float %z_out_int, 0.000000e+00
  %tmp_10 = and i1 %tmp_8, %tmp_9
  %z_out_neg = xor i32 %c_write_assign_20_to_int, -2147483648
  %z_out = bitcast i32 %z_out_neg to float
  %z_out_3 = select i1 %tmp_10, float %z_out, float %z_out_int
  %vy_int_2 = select i1 %tmp_10, float %vy_int, float %vy_int_1
  %vz_int = select i1 %tmp_10, float %vw_int, float %vz_int_1
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %w_out_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float 0.000000e+00)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float 0.000000e+00)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %z_out_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_42)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_43)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %uy_int)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_42)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vw_int_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vy_int_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vx_int)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vz_int)
  %tmp_69 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_70 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_71 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_72 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_73 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_74 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_75 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_76 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_i_i = fmul float %tmp_69, %tmp_42
  %tmp_3_i_i = fmul float %tmp_70, %uy_int
  %tmp_57 = fadd float %tmp_i_i, %tmp_3_i_i
  %tmp_i1_i = fmul float %tmp_69, %tmp_43
  %tmp_3_i2_i = fmul float %tmp_70, %tmp_42
  %tmp_58 = fadd float %tmp_i1_i, %tmp_3_i2_i
  %tmp_i4_i = fmul float %tmp_71, %tmp_42
  %tmp_3_i5_i = fmul float %tmp_72, %uy_int
  %tmp_59 = fadd float %tmp_i4_i, %tmp_3_i5_i
  %tmp_i7_i = fmul float %tmp_71, %tmp_43
  %tmp_3_i8_i = fmul float %tmp_72, %tmp_42
  %tmp_60 = fadd float %tmp_i7_i, %tmp_3_i8_i
  %tmp_i_i1 = fmul float %tmp_73, %vw_int_3
  %tmp_3_i_i1 = fmul float %tmp_74, %vx_int
  %tmp_61 = fadd float %tmp_i_i1, %tmp_3_i_i1
  %tmp_i1_i1 = fmul float %tmp_73, %vy_int_2
  %tmp_3_i2_i1 = fmul float %tmp_74, %vz_int
  %tmp_62 = fadd float %tmp_i1_i1, %tmp_3_i2_i1
  %tmp_i4_i1 = fmul float %tmp_75, %vw_int_3
  %tmp_3_i5_i1 = fmul float %tmp_76, %vx_int
  %tmp_63 = fadd float %tmp_i4_i1, %tmp_3_i5_i1
  %tmp_i7_i1 = fmul float %tmp_75, %vy_int_2
  %tmp_3_i8_i1 = fmul float %tmp_76, %vz_int
  %tmp_64 = fadd float %tmp_i7_i1, %tmp_3_i8_i1
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_57)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_58)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_59)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_60)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_61)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_62)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_63)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_64)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str7, i32 %tmp_1)
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define internal fastcc { float, float } @"dut_calc_angle<float, float>"(float %A_r, float %A_i) readonly {
  %A_i_read = call float @_ssdm_op_Read.ap_auto.float(float %A_i)
  %A_r_read = call float @_ssdm_op_Read.ap_auto.float(float %A_r)
  %p_Val2_s = bitcast float %A_r_read to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %p_Val2_7 = bitcast float %A_i_read to i32
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_7, i32 23, i32 30) nounwind
  %lhs_V_cast = zext i8 %loc_V_2 to i9
  %r_V = add i9 %lhs_V_cast, 24
  %tmp_i_cast = zext i8 %loc_V to i9
  %ult = icmp ult i9 %r_V, %tmp_i_cast
  %notrhs_i = icmp eq i8 %loc_V_2, 0
  %demorgan = or i1 %ult, %notrhs_i
  br i1 %demorgan, label %1, label %2

; <label>:1                                       ; preds = %0
  %tmp = trunc i32 %p_Val2_s to i23
  %notlhs = icmp ne i8 %loc_V, -1
  %notrhs = icmp eq i23 %tmp, 0
  %tmp_12 = or i1 %notrhs, %notlhs
  %tmp_13 = fcmp olt float %A_r_read, 0.000000e+00
  %tmp_14 = and i1 %tmp_12, %tmp_13
  %p_s = select i1 %tmp_14, float 0.000000e+00, float 1.000000e+00
  %p_1 = select i1 %tmp_14, float 1.000000e+00, float 0.000000e+00
  br label %8

; <label>:2                                       ; preds = %0
  %r_V_1 = add i9 %tmp_i_cast, 24
  %ult3 = icmp ult i9 %r_V_1, %lhs_V_cast
  %notrhs_i1 = icmp eq i8 %loc_V, 0
  %demorgan5 = or i1 %ult3, %notrhs_i1
  br i1 %demorgan5, label %3, label %4

; <label>:3                                       ; preds = %2
  %tmp_77 = trunc i32 %p_Val2_7 to i23
  %notlhs5 = icmp ne i8 %loc_V_2, -1
  %notrhs6 = icmp eq i23 %tmp_77, 0
  %tmp_24 = or i1 %notrhs6, %notlhs5
  %tmp_25 = fcmp olt float %A_i_read, 0.000000e+00
  %tmp_26 = and i1 %tmp_24, %tmp_25
  %storemerge1 = select i1 %tmp_26, float 0xBFE6A09E60000000, float 0x3FE6A09E60000000
  br label %8

; <label>:4                                       ; preds = %2
  %tanThetaA = fdiv float %A_i_read, %A_r_read
  %tmp_78 = trunc i32 %p_Val2_s to i23
  %notlhs7 = icmp ne i8 %loc_V, -1
  %notrhs8 = icmp eq i23 %tmp_78, 0
  %tmp_16 = or i1 %notrhs8, %notlhs7
  %tmp_17 = fcmp oge float %A_r_read, 0.000000e+00
  %tmp_18 = and i1 %tmp_16, %tmp_17
  %p_0_i = select i1 %tmp_18, float 1.000000e+00, float -1.000000e+00
  %tmp_2 = fmul float %tanThetaA, %tanThetaA
  %n_assign = fadd float %tmp_2, 1.000000e+00
  %tmp_i_i = call float @llvm.sqrt.f32(float %n_assign) nounwind
  %tmp_i = fdiv float 1.000000e+00, %tmp_i_i
  %cosThetaA_int = fmul float %p_0_i, %tmp_i
  %sinThetaA_int = fmul float %cosThetaA_int, %tanThetaA
  %cosThetaA_int_to_int = bitcast float %cosThetaA_int to i32
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %cosThetaA_int_to_int, i32 23, i32 30)
  %tmp_79 = trunc i32 %cosThetaA_int_to_int to i23
  %notlhs9 = icmp ne i8 %tmp_19, -1
  %notrhs1 = icmp eq i23 %tmp_79, 0
  %tmp_21 = or i1 %notrhs1, %notlhs9
  %tmp_22 = fcmp olt float %cosThetaA_int, 0.000000e+00
  %tmp_23 = and i1 %tmp_21, %tmp_22
  br i1 %tmp_23, label %5, label %6

; <label>:5                                       ; preds = %4
  %tmp_7 = fsub float 1.000000e+00, %cosThetaA_int
  %tanThetaAdiv2 = fdiv float %tmp_7, %sinThetaA_int
  br label %7

; <label>:6                                       ; preds = %4
  %tmp_8 = fadd float %cosThetaA_int, 1.000000e+00
  %tanThetaAdiv2_1 = fdiv float %sinThetaA_int, %tmp_8
  br label %7

; <label>:7                                       ; preds = %6, %5
  %tanThetaAdiv = phi float [ %tanThetaAdiv2, %5 ], [ %tanThetaAdiv2_1, %6 ]
  %tmp_s = fmul float %tanThetaAdiv, %tanThetaAdiv
  %n_assign_4 = fadd float %tmp_s, 1.000000e+00
  %tmp_i_i2 = call float @llvm.sqrt.f32(float %n_assign_4) nounwind
  %cosThetaAdiv2_int = fdiv float 1.000000e+00, %tmp_i_i2
  %tmp_4 = fmul float %cosThetaAdiv2_int, %tanThetaAdiv
  br label %8

; <label>:8                                       ; preds = %7, %3, %1
  %cosThetaAdiv2_write_assign = phi float [ %cosThetaAdiv2_int, %7 ], [ %storemerge1, %3 ], [ %p_s, %1 ]
  %sinThetaAdiv2_write_assign = phi float [ %tmp_4, %7 ], [ 0x3FE6A09E60000000, %3 ], [ %p_1, %1 ]
  %newret = insertvalue { float, float } undef, float %cosThetaAdiv2_write_assign, 0
  %newret2 = insertvalue { float, float } %newret, float %sinThetaAdiv2_write_assign, 1
  ret { float, float } %newret2
}

define internal fastcc void @dut_backproj(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str42, [1 x i8]* @p_str43, [1 x i8]* @p_str44, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str45)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str46, [1 x i8]* @p_str47, [1 x i8]* @p_str48, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str49)
  %A = alloca [16 x float], align 16
  br label %1

; <label>:1                                       ; preds = %0, %._crit_edge8
  %indvar_flatten2 = phi i14 [ 0, %0 ], [ %indvar_flatten_next2, %._crit_edge8 ]
  %indvar_flatten = phi i12 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge8 ]
  %j = phi i7 [ 0, %0 ], [ %j_mid2, %._crit_edge8 ]
  %p_03_2 = phi float [ 0.000000e+00, %0 ], [ %result, %._crit_edge8 ]
  %k = phi i5 [ 0, %0 ], [ %k_2, %._crit_edge8 ]
  %exitcond_flatten2 = icmp eq i14 %indvar_flatten2, -384
  %indvar_flatten_next2 = add i14 %indvar_flatten2, 1
  br i1 %exitcond_flatten2, label %4, label %.reset6

; <label>:2                                       ; preds = %.reset6
  %tmp = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_s = zext i5 %k_mid2 to i64
  %A_addr = getelementptr inbounds [16 x float]* %A, i64 0, i64 %tmp_s
  store float %tmp, float* %A_addr, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %.reset6
  %tmp_7 = icmp eq i5 %k_mid2, 0
  %p_03_2_22 = select i1 %tmp_7, float 0.000000e+00, float %p_03_2
  %tmp_8 = zext i5 %k_mid2 to i64
  %A_addr_3 = getelementptr inbounds [16 x float]* %A, i64 0, i64 %tmp_8
  %A_load = load float* %A_addr_3, align 4
  %tmp_80 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_9 = fmul float %A_load, %tmp_80
  %result = fadd float %p_03_2_22, %tmp_9
  %tmp_10 = icmp eq i5 %k_mid2, 15
  br i1 %tmp_10, label %3, label %._crit_edge8

; <label>:3                                       ; preds = %._crit_edge
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %result)
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %3, %._crit_edge
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str2, i32 %tmp_6)
  %k_2 = add i5 %k_mid2, 1
  %indvar_flatten_op = add i12 %indvar_flatten, 1
  %indvar_flatten_next = select i1 %exitcond_flatten, i12 1, i12 %indvar_flatten_op
  br label %1

.reset6:                                          ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([32 x i8]* @LOOP_ROW_LOOP_COL_LOOP_DOT_PRO)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16000, i64 16000, i64 16000)
  %exitcond_flatten = icmp eq i12 %indvar_flatten, 1600
  %j_mid = select i1 %exitcond_flatten, i7 0, i7 %j
  %tmp31 = icmp eq i7 %j, 0
  %tmp_mid = or i1 %exitcond_flatten, %tmp31
  %not_exitcond_flatten = xor i1 %exitcond_flatten, true
  %exitcond = icmp eq i5 %k, -16
  %exitcond_mid = and i1 %exitcond, %not_exitcond_flatten
  %j_2 = add i7 %j_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @LOOP_COL_LOOP_DOT_PROD_str)
  %tmp_27 = or i1 %exitcond_mid, %exitcond_flatten
  %k_mid2 = select i1 %tmp_27, i5 0, i5 %k
  %tmp_mid1 = icmp eq i7 %j_2, 0
  %tmp_mid2 = select i1 %exitcond_mid, i1 %tmp_mid1, i1 %tmp_mid
  %j_mid2 = select i1 %exitcond_mid, i7 %j_2, i7 %j_mid
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str2) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
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

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_27 = shl i9 1, %empty
  %empty_28 = and i9 %0, %empty_27
  %empty_29 = icmp ne i9 %empty_28, 0
  ret i1 %empty_29
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_30 = and i32 %0, %empty
  %empty_31 = icmp ne i32 %empty_30, 0
  ret i1 %empty_31
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_32 = shl i24 1, %empty
  %empty_33 = and i24 %0, %empty_32
  %empty_34 = icmp ne i24 %empty_33, 0
  ret i1 %empty_34
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_35 = zext i23 %1 to i24
  %empty_36 = shl i24 %empty, 23
  %empty_37 = or i24 %empty_36, %empty_35
  ret i24 %empty_37
}

declare float @_autotb_FifoWrite_float(float*, float)

declare float @_autotb_FifoRead_float(float*)

declare void @_GLOBAL__I_a38() nounwind section ".text.startup"

declare void @_GLOBAL__I_a15() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !0, !0, !7, !0, !13, !16, !0, !0, !22, !28, !13, !34, !13, !40, !42, !42, !45, !48, !48, !51, !57, !60, !62, !65, !65, !51, !67, !51, !51, !51, !69, !69, !71, !71, !72, !74, !51, !51, !51, !76, !76, !77, !77, !79, !79, !81, !84, !84, !51, !51, !51, !86, !69, !69, !51, !87, !90, !90, !87, !96, !96, !81, !86, !69, !69, !51, !87, !98, !98, !100, !102, !102, !106, !51, !108, !100, !110, !110, !112, !112, !51, !51, !51, !51, !51, !51, !51, !51, !51, !51, !51, !51, !113, !115, !51, !51, !51, !117, !51, !120, !124, !127, !133, !137, !140, !142, !142, !146, !150, !150, !156, !51, !7, !51, !51}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!160}

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
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"n"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"b1", metadata !"a2", metadata !"b2", metadata !"c"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!24 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"a3", metadata !"a4", metadata !"b1", metadata !"b2", metadata !"b3", metadata !"b4", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"w_in", metadata !"x_in", metadata !"y_in", metadata !"z_in", metadata !"uw_out", metadata !"ux_out", metadata !"uy_out", metadata !"uz_out", metadata !"vw_out", metadata !"vx_out", metadata !"vy_out", metadata !"vz_out", metadata !"w_out", metadata !"x_out", metadata !"y_out", metadata !"z_out"}
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"hls::complex<float>", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"_Bool &", metadata !"_Bool &"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"cosThetaA", metadata !"sinThetaA", metadata !"cosThetaAdiv2", metadata !"sinThetaAdiv2", metadata !"is_pos_real", metadata !"is_imag"}
!40 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !41, metadata !6}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"__x"}
!42 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!45 = metadata !{null, metadata !1, metadata !2, metadata !46, metadata !4, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!51 = metadata !{null, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !6}
!52 = metadata !{metadata !"kernel_arg_addr_space"}
!53 = metadata !{metadata !"kernel_arg_access_qual"}
!54 = metadata !{metadata !"kernel_arg_type"}
!55 = metadata !{metadata !"kernel_arg_type_qual"}
!56 = metadata !{metadata !"kernel_arg_name"}
!57 = metadata !{null, metadata !8, metadata !9, metadata !58, metadata !11, metadata !59, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!60 = metadata !{null, metadata !8, metadata !9, metadata !61, metadata !11, metadata !59, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!62 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !64, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !50, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!67 = metadata !{null, metadata !1, metadata !2, metadata !68, metadata !4, metadata !47, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, false> &"}
!69 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !50, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!71 = metadata !{null, metadata !8, metadata !9, metadata !61, metadata !11, metadata !50, metadata !6}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !64, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"int"}
!74 = metadata !{null, metadata !1, metadata !2, metadata !75, metadata !4, metadata !47, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"const ap_int_base<32, true> &"}
!76 = metadata !{null, metadata !8, metadata !9, metadata !58, metadata !11, metadata !50, metadata !6}
!77 = metadata !{null, metadata !8, metadata !9, metadata !78, metadata !11, metadata !50, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!79 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !80, metadata !6}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!81 = metadata !{null, metadata !8, metadata !9, metadata !82, metadata !11, metadata !83, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!84 = metadata !{null, metadata !8, metadata !9, metadata !82, metadata !11, metadata !85, metadata !6}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!86 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !83, metadata !6}
!87 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !89, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!89 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!90 = metadata !{null, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !6}
!91 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!92 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!94 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!95 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!96 = metadata !{null, metadata !91, metadata !92, metadata !97, metadata !94, metadata !95, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!98 = metadata !{null, metadata !91, metadata !92, metadata !99, metadata !94, metadata !95, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!100 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !101, metadata !6}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!102 = metadata !{null, metadata !103, metadata !2, metadata !104, metadata !4, metadata !105, metadata !6}
!103 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!106 = metadata !{null, metadata !8, metadata !9, metadata !107, metadata !11, metadata !83, metadata !6}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!108 = metadata !{null, metadata !8, metadata !9, metadata !109, metadata !11, metadata !83, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!110 = metadata !{null, metadata !103, metadata !2, metadata !111, metadata !4, metadata !105, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!112 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !83, metadata !6}
!113 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !114, metadata !6}
!114 = metadata !{metadata !"kernel_arg_name", metadata !"rin"}
!115 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !116, metadata !6}
!116 = metadata !{metadata !"kernel_arg_name", metadata !"iin"}
!117 = metadata !{null, metadata !17, metadata !18, metadata !118, metadata !20, metadata !119, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!119 = metadata !{metadata !"kernel_arg_name", metadata !"VEC_SIZ", metadata !"VEC_NUM", metadata !"ka", metadata !"pca_in_", metadata !"pca_out_"}
!120 = metadata !{null, metadata !121, metadata !2, metadata !122, metadata !4, metadata !123, metadata !6}
!121 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t*"}
!123 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"mean"}
!124 = metadata !{null, metadata !121, metadata !2, metadata !125, metadata !4, metadata !126, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t [16]*"}
!126 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"XXT"}
!127 = metadata !{null, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !6}
!128 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!129 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*"}
!131 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!132 = metadata !{metadata !"kernel_arg_name", metadata !"XXT", metadata !"S", metadata !"U", metadata !"V"}
!133 = metadata !{null, metadata !134, metadata !92, metadata !135, metadata !94, metadata !136, metadata !6}
!134 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*"}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"S", metadata !"U"}
!137 = metadata !{null, metadata !134, metadata !92, metadata !138, metadata !94, metadata !139, metadata !6}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*", metadata !"fix32_t [100]*", metadata !"fix32_t [100]*"}
!139 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"X", metadata !"Y"}
!140 = metadata !{null, metadata !121, metadata !2, metadata !141, metadata !4, metadata !44, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!142 = metadata !{null, metadata !143, metadata !129, metadata !144, metadata !131, metadata !145, metadata !6}
!143 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int", metadata !"int", metadata !"fix32_t [16]*"}
!145 = metadata !{metadata !"kernel_arg_name", metadata !"arr", metadata !"l", metadata !"h", metadata !"S"}
!146 = metadata !{null, metadata !147, metadata !9, metadata !148, metadata !11, metadata !149, metadata !6}
!147 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*"}
!149 = metadata !{metadata !"kernel_arg_name", metadata !"S"}
!150 = metadata !{null, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !6}
!151 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!152 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!153 = metadata !{metadata !"kernel_arg_type", metadata !"const float [16]*", metadata !"float [16]*", metadata !"float [16]*", metadata !"float [16]*", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!154 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!155 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"S", metadata !"U", metadata !"V", metadata !"pca_in", metadata !"pca_out"}
!156 = metadata !{null, metadata !157, metadata !129, metadata !158, metadata !131, metadata !159, metadata !6}
!157 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"int &", metadata !"int &", metadata !"int", metadata !"int"}
!159 = metadata !{metadata !"kernel_arg_name", metadata !"top_left", metadata !"bottom_right", metadata !"idx1", metadata !"idx2"}
!160 = metadata !{metadata !161, [3 x i32]* @llvm_global_ctors_0}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 0, i32 31, metadata !163}
!163 = metadata !{metadata !164}
!164 = metadata !{metadata !"llvm.global_ctors.0", metadata !165, metadata !"", i32 0, i32 31}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 0, i32 2, i32 1}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 0, i32 31, metadata !169}
!169 = metadata !{metadata !170}
!170 = metadata !{metadata !"strm_in.V", metadata !171, metadata !"float", i32 0, i32 31}
!171 = metadata !{metadata !172}
!172 = metadata !{i32 0, i32 0, i32 1}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 0, i32 31, metadata !175}
!175 = metadata !{metadata !176}
!176 = metadata !{metadata !"strm_out.V", metadata !171, metadata !"float", i32 0, i32 31}
