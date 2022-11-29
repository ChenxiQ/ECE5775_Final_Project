; ModuleID = '/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@dut_str = internal unnamed_addr constant [4 x i8] c"dut\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@L_svd_wb_off_r_str = internal unnamed_addr constant [15 x i8] c"L_svd_wb_off_r\00"
@L_svd_wb_off_c_str = internal unnamed_addr constant [15 x i8] c"L_svd_wb_off_c\00"
@L_svd_rd_off_r_str = internal unnamed_addr constant [15 x i8] c"L_svd_rd_off_r\00"
@L_svd_rd_off_c_str = internal unnamed_addr constant [15 x i8] c"L_svd_rd_off_c\00"
@L_svd_calc_off_r_str = internal unnamed_addr constant [17 x i8] c"L_svd_calc_off_r\00"
@L_svd_calc_off_c_str = internal unnamed_addr constant [17 x i8] c"L_svd_calc_off_c\00"
@L_rd_buffer_str = internal unnamed_addr constant [12 x i8] c"L_rd_buffer\00"
@p_str1816 = private unnamed_addr constant [13 x i8] c"svd_wb_off_c\00", align 1
@p_str1815 = private unnamed_addr constant [15 x i8] c"svd_calc_off_c\00", align 1
@p_str1814 = private unnamed_addr constant [13 x i8] c"svd_rd_off_c\00", align 1
@p_str1813 = private unnamed_addr constant [13 x i8] c"svd_wb_off_r\00", align 1
@p_str1812 = private unnamed_addr constant [15 x i8] c"svd_calc_off_r\00", align 1
@p_str1811 = private unnamed_addr constant [13 x i8] c"svd_rd_off_r\00", align 1
@p_str1810 = private unnamed_addr constant [12 x i8] c"svd_wb_diag\00", align 1
@p_str1809 = private unnamed_addr constant [14 x i8] c"svd_calc_diag\00", align 1
@p_str1808 = private unnamed_addr constant [12 x i8] c"svd_rd_diag\00", align 1
@p_str1807 = private unnamed_addr constant [11 x i8] c"sweep_loop\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [10 x i8] c"rd_buffer\00", align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc void @dut_svd_alt([256 x float]* nocapture %A, [256 x float]* nocapture %S, [256 x float]* nocapture %U, [256 x float]* nocapture %V) {
  %diag_1 = alloca [8 x i32], align 16
  %diag_2 = alloca [8 x i32], align 16
  %S_block_buffer_0_0 = alloca [8 x float], align 16
  %S_block_buffer_0_1 = alloca [8 x float], align 16
  %S_block_buffer_1_0 = alloca [8 x float], align 16
  %S_block_buffer_1_1 = alloca [8 x float], align 16
  %U_block_buffer_0_0 = alloca [8 x float], align 16
  %U_block_buffer_0_1 = alloca [8 x float], align 16
  %U_block_buffer_1_0 = alloca [8 x float], align 16
  %U_block_buffer_1_1 = alloca [8 x float], align 16
  %V_block_buffer_0_0 = alloca [8 x float], align 16
  %V_block_buffer_0_1 = alloca [8 x float], align 16
  %V_block_buffer_1_0 = alloca [8 x float], align 16
  %V_block_buffer_1_1 = alloca [8 x float], align 16
  %S_r_buffer_0 = alloca [128 x float], align 4
  %S_r_buffer_1 = alloca [128 x float], align 4
  %S_c_buffer_0 = alloca [128 x float], align 4
  %S_c_buffer_1 = alloca [128 x float], align 4
  %U_c_buffer_0 = alloca [128 x float], align 4
  %U_c_buffer_1 = alloca [128 x float], align 4
  %V_c_buffer_0 = alloca [128 x float], align 4
  %V_c_buffer_1 = alloca [128 x float], align 4
  %J2x2_0_0 = alloca [8 x float], align 16
  %J2x2_0_1 = alloca [8 x float], align 16
  %J2x2_1_0 = alloca [8 x float], align 16
  %J2x2_1_1 = alloca [8 x float], align 16
  %K2x2_0_0 = alloca [8 x float], align 16
  %K2x2_0_1 = alloca [8 x float], align 16
  %K2x2_1_0 = alloca [8 x float], align 16
  %K2x2_1_1 = alloca [8 x float], align 16
  br label %.preheader36

.preheader35.preheader:                           ; preds = %.preheader36
  %bottom_right = alloca i32
  %top_left = alloca i32
  %diag_1_addr = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 1
  %diag_2_addr = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 7
  %diag_1_addr_1 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 7
  %diag_2_addr_1 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 0
  br label %.preheader35

.preheader36:                                     ; preds = %.preheader36.preheader, %0
  %indvar_flatten = phi i9 [ 0, %0 ], [ %indvar_flatten_next, %.preheader36.preheader ]
  %i = phi i5 [ 0, %0 ], [ %tmp_mid2_v, %.preheader36.preheader ]
  %j = phi i5 [ 0, %0 ], [ %j_1, %.preheader36.preheader ]
  %exitcond_flatten = icmp eq i9 %indvar_flatten, -256
  %indvar_flatten_next = add i9 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader35.preheader, label %.preheader36.preheader

.preheader36.preheader:                           ; preds = %.preheader36
  %i_1 = add i5 %i, 1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @L_rd_buffer_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %exitcond = icmp eq i5 %j, -16
  %j_mid2 = select i1 %exitcond, i5 0, i5 %j
  %tmp_mid2_v = select i1 %exitcond, i5 %i_1, i5 %i
  %tmp = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %tmp_mid2_v, i4 0)
  %tmp_69_cast = zext i9 %tmp to i10
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1805) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_6_cast = zext i5 %j_mid2 to i10
  %tmp_6 = add i10 %tmp_6_cast, %tmp_69_cast
  %tmp_70_cast = zext i10 %tmp_6 to i64
  %A_addr = getelementptr [256 x float]* %A, i64 0, i64 %tmp_70_cast
  %S_addr = getelementptr [256 x float]* %S, i64 0, i64 %tmp_70_cast
  %U_addr = getelementptr [256 x float]* %U, i64 0, i64 %tmp_70_cast
  %V_addr = getelementptr [256 x float]* %V, i64 0, i64 %tmp_70_cast
  %A_load = load float* %A_addr, align 4
  store float %A_load, float* %S_addr, align 4
  %tmp_7 = icmp eq i5 %tmp_mid2_v, %j_mid2
  %tmp_8 = zext i1 %tmp_7 to i32
  %tmp_9 = sitofp i32 %tmp_8 to float
  store float %tmp_9, float* %U_addr, align 4
  store float %tmp_9, float* %V_addr, align 4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1805, i32 %tmp_s)
  %j_1 = add i5 %j_mid2, 1
  br label %.preheader36

.preheader35:                                     ; preds = %29, %.preheader35.preheader
  %sweepnum = phi i3 [ 0, %.preheader35.preheader ], [ %sweepnum_1, %29 ]
  %exitcond3 = icmp eq i3 %sweepnum, -2
  %sweepnum_1 = add i3 %sweepnum, 1
  br i1 %exitcond3, label %30, label %1

; <label>:1                                       ; preds = %.preheader35
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1807) nounwind
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1807)
  br label %2

; <label>:2                                       ; preds = %3, %1
  %proc = phi i4 [ 0, %1 ], [ %proc_1, %3 ]
  %exitcond5 = icmp eq i4 %proc, -8
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %proc_1 = add i4 %proc, 1
  br i1 %exitcond5, label %.preheader34, label %3

; <label>:3                                       ; preds = %2
  %tmp_18 = shl i4 %proc, 1
  %tmp_cast = zext i4 %tmp_18 to i32
  %tmp_1 = zext i4 %proc to i64
  %diag_1_addr_2 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_1
  store i32 %tmp_cast, i32* %diag_1_addr_2, align 4
  %tmp_2 = or i4 %tmp_18, 1
  %tmp_2_cast = zext i4 %tmp_2 to i32
  %diag_2_addr_2 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_1
  store i32 %tmp_2_cast, i32* %diag_2_addr_2, align 4
  br label %2

.preheader34.loopexit:                            ; preds = %.preheader
  store i32 %top_left_16, i32* %top_left
  store i32 %bottom_right_16, i32* %bottom_right
  br label %.preheader34

.preheader34:                                     ; preds = %2, %.preheader34.loopexit
  %step = phi i4 [ %step_1, %.preheader34.loopexit ], [ 0, %2 ]
  %bottom_right_load = load i32* %bottom_right
  %top_left_load = load i32* %top_left
  %exitcond7 = icmp eq i4 %step, -1
  %step_1 = add i4 %step, 1
  br i1 %exitcond7, label %29, label %4

; <label>:4                                       ; preds = %.preheader34
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 15, i64 15, i64 15)
  %temp_diag = load i32* %diag_1_addr, align 4
  br label %5

; <label>:5                                       ; preds = %6, %4
  %proc1 = phi i3 [ 1, %4 ], [ %proc_2, %6 ]
  %exitcond9 = icmp eq i3 %proc1, -1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  br i1 %exitcond9, label %7, label %6

; <label>:6                                       ; preds = %5
  %proc_2 = add i3 %proc1, 1
  %tmp_3 = zext i3 %proc_2 to i64
  %diag_1_addr_3 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_3
  %diag_1_load = load i32* %diag_1_addr_3, align 4
  %tmp_4 = zext i3 %proc1 to i64
  %diag_1_addr_4 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_4
  store i32 %diag_1_load, i32* %diag_1_addr_4, align 4
  br label %5

; <label>:7                                       ; preds = %5
  %diag_2_load = load i32* %diag_2_addr, align 4
  store i32 %diag_2_load, i32* %diag_1_addr_1, align 4
  br label %8

; <label>:8                                       ; preds = %9, %7
  %proc2 = phi i3 [ -1, %7 ], [ %proc_3, %9 ]
  %tmp_5 = icmp eq i3 %proc2, 0
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7)
  br i1 %tmp_5, label %10, label %9

; <label>:9                                       ; preds = %8
  %proc_3 = add i3 %proc2, -1
  %tmp_10 = zext i3 %proc_3 to i64
  %diag_2_addr_3 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_10
  %diag_2_load_1 = load i32* %diag_2_addr_3, align 4
  %tmp_11 = zext i3 %proc2 to i64
  %diag_2_addr_4 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_11
  store i32 %diag_2_load_1, i32* %diag_2_addr_4, align 4
  br label %8

; <label>:10                                      ; preds = %8
  store i32 %temp_diag, i32* %diag_2_addr_1, align 16
  br label %11

; <label>:11                                      ; preds = %._crit_edge, %10
  %top_left_2 = phi i32 [ %top_left_load, %10 ], [ %top_left_1, %._crit_edge ]
  %bottom_right_2 = phi i32 [ %bottom_right_load, %10 ], [ %bottom_right_1, %._crit_edge ]
  %proc3 = phi i4 [ 0, %10 ], [ %proc_4, %._crit_edge ]
  %exitcond1 = icmp eq i4 %proc3, -8
  %proc_4 = add i4 %proc3, 1
  br i1 %exitcond1, label %.preheader33, label %12

; <label>:12                                      ; preds = %11
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1808) nounwind
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_12 = zext i4 %proc3 to i64
  %diag_1_addr_5 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_12
  %diag_1_load_2 = load i32* %diag_1_addr_5, align 4
  %diag_2_addr_5 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_12
  %diag_2_load_2 = load i32* %diag_2_addr_5, align 4
  %tmp_i = icmp sgt i32 %diag_1_load_2, %diag_2_load_2
  %top_left_1 = select i1 %tmp_i, i32 %diag_2_load_2, i32 %diag_1_load_2
  %bottom_right_1 = select i1 %tmp_i, i32 %diag_1_load_2, i32 %diag_2_load_2
  %tmp_13 = icmp eq i32 %top_left_1, 16
  %tmp_14 = icmp eq i32 %bottom_right_1, 16
  %or_cond6 = or i1 %tmp_13, %tmp_14
  br i1 %or_cond6, label %._crit_edge, label %13

; <label>:13                                      ; preds = %12
  %tmp_24 = trunc i32 %top_left_1 to i10
  %tmp_25 = trunc i32 %top_left_1 to i6
  %tmp_86_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_25, i4 0)
  %tmp_28 = add i10 %tmp_86_cast, %tmp_24
  %tmp_87_cast = sext i10 %tmp_28 to i64
  %S_addr_1 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_87_cast
  %U_addr_1 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_87_cast
  %V_addr_1 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_87_cast
  %S_load = load float* %S_addr_1, align 4
  %S_block_buffer_0_0_addr = getelementptr [8 x float]* %S_block_buffer_0_0, i64 0, i64 %tmp_12
  store float %S_load, float* %S_block_buffer_0_0_addr, align 16
  %U_load = load float* %U_addr_1, align 4
  %U_block_buffer_0_0_addr = getelementptr [8 x float]* %U_block_buffer_0_0, i64 0, i64 %tmp_12
  store float %U_load, float* %U_block_buffer_0_0_addr, align 16
  %V_load = load float* %V_addr_1, align 4
  %V_block_buffer_0_0_addr = getelementptr [8 x float]* %V_block_buffer_0_0, i64 0, i64 %tmp_12
  store float %V_load, float* %V_block_buffer_0_0_addr, align 16
  %tmp_29 = trunc i32 %bottom_right_1 to i10
  %tmp_44 = add i10 %tmp_86_cast, %tmp_29
  %tmp_88_cast = sext i10 %tmp_44 to i64
  %S_addr_2 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_88_cast
  %tmp_45 = trunc i32 %bottom_right_1 to i6
  %tmp_90_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_45, i4 0)
  %tmp_46 = add i10 %tmp_90_cast, %tmp_24
  %tmp_91_cast = sext i10 %tmp_46 to i64
  %S_addr_3 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_91_cast
  %tmp_53 = add i10 %tmp_90_cast, %tmp_29
  %tmp_92_cast = sext i10 %tmp_53 to i64
  %S_addr_4 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_92_cast
  %U_addr_2 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_88_cast
  %U_addr_3 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_91_cast
  %U_addr_4 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_92_cast
  %V_addr_2 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_88_cast
  %V_addr_3 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_91_cast
  %V_addr_4 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_92_cast
  %S_load_1 = load float* %S_addr_2, align 4
  %S_block_buffer_0_1_addr = getelementptr [8 x float]* %S_block_buffer_0_1, i64 0, i64 %tmp_12
  store float %S_load_1, float* %S_block_buffer_0_1_addr, align 4
  %U_load_1 = load float* %U_addr_2, align 4
  %U_block_buffer_0_1_addr = getelementptr [8 x float]* %U_block_buffer_0_1, i64 0, i64 %tmp_12
  store float %U_load_1, float* %U_block_buffer_0_1_addr, align 4
  %V_load_1 = load float* %V_addr_2, align 4
  %V_block_buffer_0_1_addr = getelementptr [8 x float]* %V_block_buffer_0_1, i64 0, i64 %tmp_12
  store float %V_load_1, float* %V_block_buffer_0_1_addr, align 4
  %S_load_2 = load float* %S_addr_3, align 4
  %S_block_buffer_1_0_addr = getelementptr [8 x float]* %S_block_buffer_1_0, i64 0, i64 %tmp_12
  store float %S_load_2, float* %S_block_buffer_1_0_addr, align 8
  %U_load_2 = load float* %U_addr_3, align 4
  %U_block_buffer_1_0_addr = getelementptr [8 x float]* %U_block_buffer_1_0, i64 0, i64 %tmp_12
  store float %U_load_2, float* %U_block_buffer_1_0_addr, align 8
  %V_load_2 = load float* %V_addr_3, align 4
  %V_block_buffer_1_0_addr = getelementptr [8 x float]* %V_block_buffer_1_0, i64 0, i64 %tmp_12
  store float %V_load_2, float* %V_block_buffer_1_0_addr, align 8
  %S_load_3 = load float* %S_addr_4, align 4
  %S_block_buffer_1_1_addr = getelementptr [8 x float]* %S_block_buffer_1_1, i64 0, i64 %tmp_12
  store float %S_load_3, float* %S_block_buffer_1_1_addr, align 4
  %U_load_3 = load float* %U_addr_4, align 4
  %U_block_buffer_1_1_addr = getelementptr [8 x float]* %U_block_buffer_1_1, i64 0, i64 %tmp_12
  store float %U_load_3, float* %U_block_buffer_1_1_addr, align 4
  %V_load_3 = load float* %V_addr_4, align 4
  %V_block_buffer_1_1_addr = getelementptr [8 x float]* %V_block_buffer_1_1, i64 0, i64 %tmp_12
  store float %V_load_3, float* %V_block_buffer_1_1_addr, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1808, i32 %tmp_22)
  br label %._crit_edge

._crit_edge:                                      ; preds = %13, %12
  br label %11

.preheader33:                                     ; preds = %11, %._crit_edge38
  %top_left_3 = phi i32 [ %top_left_5, %._crit_edge38 ], [ %top_left_2, %11 ]
  %bottom_right_3 = phi i32 [ %bottom_right_5, %._crit_edge38 ], [ %bottom_right_2, %11 ]
  %proc4 = phi i4 [ %proc_7, %._crit_edge38 ], [ 0, %11 ]
  %exitcond2 = icmp eq i4 %proc4, -8
  %proc_7 = add i4 %proc4, 1
  br i1 %exitcond2, label %.preheader32, label %14

; <label>:14                                      ; preds = %.preheader33
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1809) nounwind
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str1809)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_15 = zext i4 %proc4 to i64
  %diag_1_addr_6 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_15
  %diag_1_load_3 = load i32* %diag_1_addr_6, align 4
  %diag_2_addr_6 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_15
  %diag_2_load_3 = load i32* %diag_2_addr_6, align 4
  %tmp_i1 = icmp sgt i32 %diag_1_load_3, %diag_2_load_3
  %top_left_5 = select i1 %tmp_i1, i32 %diag_2_load_3, i32 %diag_1_load_3
  %bottom_right_5 = select i1 %tmp_i1, i32 %diag_1_load_3, i32 %diag_2_load_3
  %tmp_16 = icmp eq i32 %top_left_5, 16
  %tmp_19 = icmp eq i32 %bottom_right_5, 16
  %or_cond7 = or i1 %tmp_16, %tmp_19
  br i1 %or_cond7, label %._crit_edge38, label %_ifconv

_ifconv:                                          ; preds = %14
  %S_block_buffer_0_0_addr_1 = getelementptr [8 x float]* %S_block_buffer_0_0, i64 0, i64 %tmp_15
  %w_in = load float* %S_block_buffer_0_0_addr_1, align 16
  %S_block_buffer_0_1_addr_1 = getelementptr [8 x float]* %S_block_buffer_0_1, i64 0, i64 %tmp_15
  %x_in = load float* %S_block_buffer_0_1_addr_1, align 4
  %S_block_buffer_1_0_addr_1 = getelementptr [8 x float]* %S_block_buffer_1_0, i64 0, i64 %tmp_15
  %y_in = load float* %S_block_buffer_1_0_addr_1, align 8
  %S_block_buffer_1_1_addr_1 = getelementptr [8 x float]* %S_block_buffer_1_1, i64 0, i64 %tmp_15
  %z_in = load float* %S_block_buffer_1_1_addr_1, align 4
  %u1 = fsub float %z_in, %w_in
  %u2 = fadd float %y_in, %x_in
  %call_ret4 = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1, float %u2)
  %cosA_half = extractvalue { float, float } %call_ret4, 0
  %sinA_half = extractvalue { float, float } %call_ret4, 1
  %u1_1 = fadd float %z_in, %w_in
  %u2_1 = fsub float %y_in, %x_in
  %call_ret5 = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1_1, float %u2_1)
  %cosB_half = extractvalue { float, float } %call_ret5, 0
  %sinB_half = extractvalue { float, float } %call_ret5, 1
  %tmp_i2 = fmul float %cosA_half, %cosB_half
  %tmp_3_i = fmul float %sinA_half, %sinB_half
  %uz_new = fadd float %tmp_i2, %tmp_3_i
  %tmp_22_to_int = bitcast float %cosA_half to i32
  %tmp_22_neg = xor i32 %tmp_22_to_int, -2147483648
  %a2_assign = bitcast i32 %tmp_22_neg to float
  %tmp_i3 = fmul float %sinA_half, %cosB_half
  %tmp_3_i1 = fmul float %a2_assign, %sinB_half
  %ux_new = fadd float %tmp_i3, %tmp_3_i1
  %tmp_23_to_int = bitcast float %sinA_half to i32
  %tmp_23_neg = xor i32 %tmp_23_to_int, -2147483648
  %a2_assign_1 = bitcast i32 %tmp_23_neg to float
  %tmp_3_i2 = fmul float %a2_assign_1, %sinB_half
  %vz_int_1 = fadd float %tmp_i2, %tmp_3_i2
  %tmp_3_i3 = fmul float %cosA_half, %sinB_half
  %vy_int_1 = fadd float %tmp_i3, %tmp_3_i3
  %uy_int_to_int = bitcast float %ux_new to i32
  %uy_int_neg = xor i32 %uy_int_to_int, -2147483648
  %uy_int = bitcast i32 %uy_int_neg to float
  %vy_int_to_int = bitcast float %vy_int_1 to i32
  %vy_int_neg = xor i32 %vy_int_to_int, -2147483648
  %vy_int = bitcast i32 %vy_int_neg to float
  %tmp_i4 = fmul float %w_in, %vz_int_1
  %tmp_3_i4 = fmul float %x_in, %vy_int
  %w_out1 = fadd float %tmp_i4, %tmp_3_i4
  %tmp_i5 = fmul float %y_in, %vz_int_1
  %tmp_3_i5 = fmul float %z_in, %vy_int
  %w_out2 = fadd float %tmp_i5, %tmp_3_i5
  %tmp_i6 = fmul float %uz_new, %w_out1
  %tmp_3_i6 = fmul float %uy_int, %w_out2
  %w_out_int = fadd float %tmp_i6, %tmp_3_i6
  %tmp_i7 = fmul float %w_in, %vy_int_1
  %tmp_3_i7 = fmul float %x_in, %vz_int_1
  %z_out1 = fadd float %tmp_i7, %tmp_3_i7
  %tmp_i8 = fmul float %y_in, %vy_int_1
  %tmp_3_i8 = fmul float %z_in, %vz_int_1
  %z_out2 = fadd float %tmp_i8, %tmp_3_i8
  %tmp_i9 = fmul float %ux_new, %z_out1
  %tmp_3_i9 = fmul float %uz_new, %z_out2
  %z_out_int = fadd float %tmp_i9, %tmp_3_i9
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
  store float %w_out_2, float* %S_block_buffer_0_0_addr_1, align 16
  store float 0.000000e+00, float* %S_block_buffer_0_1_addr_1, align 4
  store float 0.000000e+00, float* %S_block_buffer_1_0_addr_1, align 8
  store float %z_out_2, float* %S_block_buffer_1_1_addr_1, align 4
  %J2x2_0_0_addr = getelementptr [8 x float]* %J2x2_0_0, i64 0, i64 %tmp_15
  store float %uz_new, float* %J2x2_0_0_addr, align 16
  %J2x2_0_1_addr = getelementptr [8 x float]* %J2x2_0_1, i64 0, i64 %tmp_15
  store float %ux_new, float* %J2x2_0_1_addr, align 4
  %J2x2_1_0_addr = getelementptr [8 x float]* %J2x2_1_0, i64 0, i64 %tmp_15
  store float %uy_int, float* %J2x2_1_0_addr, align 8
  %J2x2_1_1_addr = getelementptr [8 x float]* %J2x2_1_1, i64 0, i64 %tmp_15
  store float %uz_new, float* %J2x2_1_1_addr, align 4
  %K2x2_0_0_addr = getelementptr [8 x float]* %K2x2_0_0, i64 0, i64 %tmp_15
  store float %vw_int_3, float* %K2x2_0_0_addr, align 16
  %K2x2_0_1_addr = getelementptr [8 x float]* %K2x2_0_1, i64 0, i64 %tmp_15
  store float %vy_int_2, float* %K2x2_0_1_addr, align 4
  %K2x2_1_0_addr = getelementptr [8 x float]* %K2x2_1_0, i64 0, i64 %tmp_15
  store float %vx_int, float* %K2x2_1_0_addr, align 8
  %K2x2_1_1_addr = getelementptr [8 x float]* %K2x2_1_1, i64 0, i64 %tmp_15
  store float %vz_int, float* %K2x2_1_1_addr, align 4
  %U_block_buffer_0_0_addr_2 = getelementptr [8 x float]* %U_block_buffer_0_0, i64 0, i64 %tmp_15
  %uw_in = load float* %U_block_buffer_0_0_addr_2, align 16
  %U_block_buffer_0_1_addr_2 = getelementptr [8 x float]* %U_block_buffer_0_1, i64 0, i64 %tmp_15
  %ux_in = load float* %U_block_buffer_0_1_addr_2, align 4
  %U_block_buffer_1_0_addr_2 = getelementptr [8 x float]* %U_block_buffer_1_0, i64 0, i64 %tmp_15
  %uy_in = load float* %U_block_buffer_1_0_addr_2, align 8
  %U_block_buffer_1_1_addr_2 = getelementptr [8 x float]* %U_block_buffer_1_1, i64 0, i64 %tmp_15
  %uz_in = load float* %U_block_buffer_1_1_addr_2, align 4
  %V_block_buffer_0_0_addr_2 = getelementptr [8 x float]* %V_block_buffer_0_0, i64 0, i64 %tmp_15
  %vw_in = load float* %V_block_buffer_0_0_addr_2, align 16
  %V_block_buffer_0_1_addr_2 = getelementptr [8 x float]* %V_block_buffer_0_1, i64 0, i64 %tmp_15
  %vx_in = load float* %V_block_buffer_0_1_addr_2, align 4
  %V_block_buffer_1_0_addr_2 = getelementptr [8 x float]* %V_block_buffer_1_0, i64 0, i64 %tmp_15
  %vy_in = load float* %V_block_buffer_1_0_addr_2, align 8
  %V_block_buffer_1_1_addr_2 = getelementptr [8 x float]* %V_block_buffer_1_1, i64 0, i64 %tmp_15
  %vz_in = load float* %V_block_buffer_1_1_addr_2, align 4
  %tmp_i_i = fmul float %uw_in, %uz_new
  %tmp_3_i_i = fmul float %ux_in, %uy_int
  %uw_out = fadd float %tmp_i_i, %tmp_3_i_i
  %tmp_i1_i = fmul float %uw_in, %ux_new
  %tmp_3_i2_i = fmul float %ux_in, %uz_new
  %ux_out = fadd float %tmp_i1_i, %tmp_3_i2_i
  %tmp_i4_i = fmul float %uy_in, %uz_new
  %tmp_3_i5_i = fmul float %uz_in, %uy_int
  %uy_out = fadd float %tmp_i4_i, %tmp_3_i5_i
  %tmp_i7_i = fmul float %uy_in, %ux_new
  %tmp_3_i8_i = fmul float %uz_in, %uz_new
  %uz_out = fadd float %tmp_i7_i, %tmp_3_i8_i
  %tmp_i_i1 = fmul float %vw_in, %vw_int_3
  %tmp_3_i_i1 = fmul float %vx_in, %vx_int
  %vw_out = fadd float %tmp_i_i1, %tmp_3_i_i1
  %tmp_i1_i1 = fmul float %vw_in, %vy_int_2
  %tmp_3_i2_i1 = fmul float %vx_in, %vz_int
  %vx_out = fadd float %tmp_i1_i1, %tmp_3_i2_i1
  %tmp_i4_i1 = fmul float %vy_in, %vw_int_3
  %tmp_3_i5_i1 = fmul float %vz_in, %vx_int
  %vy_out = fadd float %tmp_i4_i1, %tmp_3_i5_i1
  %tmp_i7_i1 = fmul float %vy_in, %vy_int_2
  %tmp_3_i8_i1 = fmul float %vz_in, %vz_int
  %vz_out = fadd float %tmp_i7_i1, %tmp_3_i8_i1
  store float %uw_out, float* %U_block_buffer_0_0_addr_2, align 16
  store float %ux_out, float* %U_block_buffer_0_1_addr_2, align 4
  store float %uy_out, float* %U_block_buffer_1_0_addr_2, align 8
  store float %uz_out, float* %U_block_buffer_1_1_addr_2, align 4
  store float %vw_out, float* %V_block_buffer_0_0_addr_2, align 16
  store float %vx_out, float* %V_block_buffer_0_1_addr_2, align 4
  store float %vy_out, float* %V_block_buffer_1_0_addr_2, align 8
  store float %vz_out, float* %V_block_buffer_1_1_addr_2, align 4
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str1809, i32 %tmp_23)
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %_ifconv, %14
  br label %.preheader33

.preheader32:                                     ; preds = %.preheader33, %._crit_edge40
  %top_left_4 = phi i32 [ %top_left_8, %._crit_edge40 ], [ %top_left_3, %.preheader33 ]
  %bottom_right_4 = phi i32 [ %bottom_right_8, %._crit_edge40 ], [ %bottom_right_3, %.preheader33 ]
  %proc5 = phi i4 [ %proc_5, %._crit_edge40 ], [ 0, %.preheader33 ]
  %exitcond4 = icmp eq i4 %proc5, -8
  %proc_5 = add i4 %proc5, 1
  br i1 %exitcond4, label %.preheader30, label %15

; <label>:15                                      ; preds = %.preheader32
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1810) nounwind
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_20 = zext i4 %proc5 to i64
  %diag_1_addr_7 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_20
  %diag_1_load_4 = load i32* %diag_1_addr_7, align 4
  %diag_2_addr_7 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_20
  %diag_2_load_4 = load i32* %diag_2_addr_7, align 4
  %tmp_i10 = icmp sgt i32 %diag_1_load_4, %diag_2_load_4
  %top_left_8 = select i1 %tmp_i10, i32 %diag_2_load_4, i32 %diag_1_load_4
  %bottom_right_8 = select i1 %tmp_i10, i32 %diag_1_load_4, i32 %diag_2_load_4
  %tmp_21 = icmp eq i32 %top_left_8, 16
  %tmp_26 = icmp eq i32 %bottom_right_8, 16
  %or_cond8 = or i1 %tmp_21, %tmp_26
  br i1 %or_cond8, label %._crit_edge40, label %16

; <label>:16                                      ; preds = %15
  %S_block_buffer_0_0_addr_2 = getelementptr [8 x float]* %S_block_buffer_0_0, i64 0, i64 %tmp_20
  %S_block_buffer_0_0_load = load float* %S_block_buffer_0_0_addr_2, align 16
  %tmp_68 = trunc i32 %top_left_8 to i10
  %tmp_69 = trunc i32 %top_left_8 to i6
  %tmp_94_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_69, i4 0)
  %tmp_60 = add i10 %tmp_94_cast, %tmp_68
  %tmp_95_cast = sext i10 %tmp_60 to i64
  %S_addr_5 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_95_cast
  %U_addr_5 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_95_cast
  %V_addr_5 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_95_cast
  store float %S_block_buffer_0_0_load, float* %S_addr_5, align 4
  %U_block_buffer_0_0_addr_1 = getelementptr [8 x float]* %U_block_buffer_0_0, i64 0, i64 %tmp_20
  %U_block_buffer_0_0_load = load float* %U_block_buffer_0_0_addr_1, align 16
  store float %U_block_buffer_0_0_load, float* %U_addr_5, align 4
  %V_block_buffer_0_0_addr_1 = getelementptr [8 x float]* %V_block_buffer_0_0, i64 0, i64 %tmp_20
  %V_block_buffer_0_0_load = load float* %V_block_buffer_0_0_addr_1, align 16
  store float %V_block_buffer_0_0_load, float* %V_addr_5, align 4
  %S_block_buffer_0_1_addr_2 = getelementptr [8 x float]* %S_block_buffer_0_1, i64 0, i64 %tmp_20
  %S_block_buffer_0_1_load = load float* %S_block_buffer_0_1_addr_2, align 4
  %tmp_70 = trunc i32 %bottom_right_8 to i10
  %tmp_61 = add i10 %tmp_94_cast, %tmp_70
  %tmp_96_cast = sext i10 %tmp_61 to i64
  %S_addr_6 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_96_cast
  %tmp_75 = trunc i32 %bottom_right_8 to i6
  %tmp_98_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_75, i4 0)
  %tmp_82 = add i10 %tmp_98_cast, %tmp_68
  %tmp_99_cast = sext i10 %tmp_82 to i64
  %S_addr_7 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_99_cast
  %tmp_83 = add i10 %tmp_98_cast, %tmp_70
  %tmp_100_cast = sext i10 %tmp_83 to i64
  %S_addr_8 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_100_cast
  %U_addr_6 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_96_cast
  %U_addr_7 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_99_cast
  %U_addr_8 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_100_cast
  %V_addr_6 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_96_cast
  %V_addr_7 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_99_cast
  %V_addr_8 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_100_cast
  store float %S_block_buffer_0_1_load, float* %S_addr_6, align 4
  %U_block_buffer_0_1_addr_1 = getelementptr [8 x float]* %U_block_buffer_0_1, i64 0, i64 %tmp_20
  %U_block_buffer_0_1_load = load float* %U_block_buffer_0_1_addr_1, align 4
  store float %U_block_buffer_0_1_load, float* %U_addr_6, align 4
  %V_block_buffer_0_1_addr_1 = getelementptr [8 x float]* %V_block_buffer_0_1, i64 0, i64 %tmp_20
  %V_block_buffer_0_1_load = load float* %V_block_buffer_0_1_addr_1, align 4
  store float %V_block_buffer_0_1_load, float* %V_addr_6, align 4
  %S_block_buffer_1_0_addr_2 = getelementptr [8 x float]* %S_block_buffer_1_0, i64 0, i64 %tmp_20
  %S_block_buffer_1_0_load = load float* %S_block_buffer_1_0_addr_2, align 8
  store float %S_block_buffer_1_0_load, float* %S_addr_7, align 4
  %U_block_buffer_1_0_addr_1 = getelementptr [8 x float]* %U_block_buffer_1_0, i64 0, i64 %tmp_20
  %U_block_buffer_1_0_load = load float* %U_block_buffer_1_0_addr_1, align 8
  store float %U_block_buffer_1_0_load, float* %U_addr_7, align 4
  %V_block_buffer_1_0_addr_1 = getelementptr [8 x float]* %V_block_buffer_1_0, i64 0, i64 %tmp_20
  %V_block_buffer_1_0_load = load float* %V_block_buffer_1_0_addr_1, align 8
  store float %V_block_buffer_1_0_load, float* %V_addr_7, align 4
  %S_block_buffer_1_1_addr_2 = getelementptr [8 x float]* %S_block_buffer_1_1, i64 0, i64 %tmp_20
  %S_block_buffer_1_1_load = load float* %S_block_buffer_1_1_addr_2, align 4
  store float %S_block_buffer_1_1_load, float* %S_addr_8, align 4
  %U_block_buffer_1_1_addr_1 = getelementptr [8 x float]* %U_block_buffer_1_1, i64 0, i64 %tmp_20
  %U_block_buffer_1_1_load = load float* %U_block_buffer_1_1_addr_1, align 4
  store float %U_block_buffer_1_1_load, float* %U_addr_8, align 4
  %V_block_buffer_1_1_addr_1 = getelementptr [8 x float]* %V_block_buffer_1_1, i64 0, i64 %tmp_20
  %V_block_buffer_1_1_load = load float* %V_block_buffer_1_1_addr_1, align 4
  store float %V_block_buffer_1_1_load, float* %V_addr_8, align 4
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1810, i32 %tmp_30)
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %16, %15
  br label %.preheader32

.preheader30:                                     ; preds = %.preheader32, %._crit_edge43
  %indvar_flatten8 = phi i8 [ %indvar_flatten_next9, %._crit_edge43 ], [ 0, %.preheader32 ]
  %proc6 = phi i4 [ %p_v, %._crit_edge43 ], [ 0, %.preheader32 ]
  %top_left_6 = phi i32 [ %idx2_idx1_i461_top_left_6, %._crit_edge43 ], [ %top_left_4, %.preheader32 ]
  %bottom_right_6 = phi i32 [ %bottom_right_write_assign_i, %._crit_edge43 ], [ %bottom_right_4, %.preheader32 ]
  %i7 = phi i5 [ %i_2, %._crit_edge43 ], [ 0, %.preheader32 ]
  %tmp_27 = zext i4 %proc6 to i64
  %diag_1_addr_8 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_27
  %diag_1_load_5 = load i32* %diag_1_addr_8, align 4
  %diag_2_addr_8 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_27
  %diag_2_load_5 = load i32* %diag_2_addr_8, align 4
  %tmp_i11 = icmp sgt i32 %diag_1_load_5, %diag_2_load_5
  %top_left_7 = select i1 %tmp_i11, i32 %diag_2_load_5, i32 %diag_1_load_5
  %bottom_right_7 = select i1 %tmp_i11, i32 %diag_1_load_5, i32 %diag_2_load_5
  %exitcond_flatten1 = icmp eq i8 %indvar_flatten8, -128
  %indvar_flatten_next9 = add i8 %indvar_flatten8, 1
  br i1 %exitcond_flatten1, label %.preheader28, label %.preheader31

; <label>:17                                      ; preds = %.preheader31
  %tmp_39 = icmp eq i32 %i7_cast, %bottom_right_write_assign_i
  %tmp_40 = icmp eq i32 %i7_cast, %idx2_idx1_i461_top_left_6
  %or_cond = or i1 %tmp_39, %tmp_40
  br i1 %or_cond, label %._crit_edge45, label %18

; <label>:18                                      ; preds = %17
  %tmp_87 = trunc i32 %idx2_idx1_i461_top_left_6 to i10
  %tmp_45_cast = zext i5 %i7_mid2 to i9
  %tmp_88 = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %i7_mid2, i4 0)
  %tmp_106_cast = zext i9 %tmp_88 to i10
  %tmp_89 = add i10 %tmp_106_cast, %tmp_87
  %tmp_107_cast = sext i10 %tmp_89 to i64
  %S_addr_9 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_107_cast
  %U_addr_9 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_107_cast
  %V_addr_9 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_107_cast
  %tmp_90 = add i9 %tmp_102_cast, %tmp_45_cast
  %tmp_108_cast = zext i9 %tmp_90 to i64
  %V_c_buffer_1_addr = getelementptr [128 x float]* %V_c_buffer_1, i64 0, i64 %tmp_108_cast
  %V_c_buffer_0_addr = getelementptr [128 x float]* %V_c_buffer_0, i64 0, i64 %tmp_108_cast
  %U_c_buffer_1_addr = getelementptr [128 x float]* %U_c_buffer_1, i64 0, i64 %tmp_108_cast
  %S_c_buffer_0_addr = getelementptr [128 x float]* %S_c_buffer_0, i64 0, i64 %tmp_108_cast
  %S_c_buffer_1_addr = getelementptr [128 x float]* %S_c_buffer_1, i64 0, i64 %tmp_108_cast
  %U_c_buffer_0_addr = getelementptr [128 x float]* %U_c_buffer_0, i64 0, i64 %tmp_108_cast
  %S_load_4 = load float* %S_addr_9, align 4
  store float %S_load_4, float* %S_c_buffer_0_addr, align 8
  %U_load_4 = load float* %U_addr_9, align 4
  store float %U_load_4, float* %U_c_buffer_0_addr, align 8
  %V_load_4 = load float* %V_addr_9, align 4
  store float %V_load_4, float* %V_c_buffer_0_addr, align 8
  %tmp_91 = trunc i32 %bottom_right_write_assign_i to i10
  %tmp_92 = add i10 %tmp_106_cast, %tmp_91
  %tmp_109_cast = sext i10 %tmp_92 to i64
  %S_addr_10 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_109_cast
  %U_addr_10 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_109_cast
  %V_addr_10 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_109_cast
  %S_load_5 = load float* %S_addr_10, align 4
  store float %S_load_5, float* %S_c_buffer_1_addr, align 4
  %U_load_5 = load float* %U_addr_10, align 4
  store float %U_load_5, float* %U_c_buffer_1_addr, align 4
  %V_load_5 = load float* %V_addr_10, align 4
  store float %V_load_5, float* %V_c_buffer_1_addr, align 4
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %18, %17
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1811, i32 %tmp_32)
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge45, %.preheader31
  %i_2 = add i5 %i7_mid2, 1
  br label %.preheader30

.preheader31:                                     ; preds = %.preheader30
  %proc_6 = add i4 %proc6, 1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @L_svd_rd_off_r_str)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %exitcond6 = icmp eq i5 %i7, -16
  %i7_mid2 = select i1 %exitcond6, i5 0, i5 %i7
  %tmp_27_mid1 = zext i4 %proc_6 to i64
  %p_v = select i1 %exitcond6, i4 %proc_6, i4 %proc6
  %tmp_62 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %p_v, i4 0)
  %tmp_102_cast = zext i8 %tmp_62 to i9
  %diag_1_addr_9 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_27_mid1
  %diag_1_load_6 = load i32* %diag_1_addr_9, align 4
  %diag_2_addr_9 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_27_mid1
  %diag_2_load_6 = load i32* %diag_2_addr_9, align 4
  %tmp_i11_mid1 = icmp sgt i32 %diag_1_load_6, %diag_2_load_6
  %top_left_16_mid1 = select i1 %tmp_i11_mid1, i32 %diag_2_load_6, i32 %diag_1_load_6
  %top_left_16_mid2 = select i1 %exitcond6, i32 %top_left_16_mid1, i32 %top_left_7
  %bottom_right_25_mid1 = select i1 %tmp_i11_mid1, i32 %diag_1_load_6, i32 %diag_2_load_6
  %bottom_right_25_mid2 = select i1 %exitcond6, i32 %bottom_right_25_mid1, i32 %bottom_right_7
  %i7_cast = zext i5 %i7_mid2 to i32
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str1811) nounwind
  %tmp_32 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1811)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_33 = icmp eq i5 %i7_mid2, 0
  %idx2_idx1_i461_top_left_6 = select i1 %tmp_33, i32 %top_left_16_mid2, i32 %top_left_6
  %bottom_right_write_assign_i = select i1 %tmp_33, i32 %bottom_right_25_mid2, i32 %bottom_right_6
  %tmp_34 = icmp eq i32 %idx2_idx1_i461_top_left_6, 16
  %tmp_37 = icmp eq i32 %bottom_right_write_assign_i, 16
  %or_cond9 = or i1 %tmp_34, %tmp_37
  br i1 %or_cond9, label %._crit_edge43, label %17

.preheader28:                                     ; preds = %.preheader30, %._crit_edge48
  %indvar_flatten1 = phi i8 [ %indvar_flatten_next1, %._crit_edge48 ], [ 0, %.preheader30 ]
  %proc8 = phi i4 [ %p_v1, %._crit_edge48 ], [ 0, %.preheader30 ]
  %top_left_9 = phi i32 [ %idx2_idx1_i466_top_left_9, %._crit_edge48 ], [ %top_left_6, %.preheader30 ]
  %bottom_right_9 = phi i32 [ %bottom_right_write_assign_i1, %._crit_edge48 ], [ %bottom_right_6, %.preheader30 ]
  %off_row = phi i5 [ %off_row_1, %._crit_edge48 ], [ 0, %.preheader30 ]
  %tmp_31 = zext i4 %proc8 to i64
  %diag_1_addr_10 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_31
  %diag_1_load_7 = load i32* %diag_1_addr_10, align 4
  %diag_2_addr_10 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_31
  %diag_2_load_7 = load i32* %diag_2_addr_10, align 4
  %tmp_i12 = icmp sgt i32 %diag_1_load_7, %diag_2_load_7
  %top_left_10 = select i1 %tmp_i12, i32 %diag_2_load_7, i32 %diag_1_load_7
  %bottom_right_10 = select i1 %tmp_i12, i32 %diag_1_load_7, i32 %diag_2_load_7
  %exitcond_flatten2 = icmp eq i8 %indvar_flatten1, -128
  %indvar_flatten_next1 = add i8 %indvar_flatten1, 1
  br i1 %exitcond_flatten2, label %.preheader26, label %.preheader29

; <label>:19                                      ; preds = %.preheader29
  %tmp_48 = icmp eq i32 %off_row_cast9, %bottom_right_write_assign_i1
  %tmp_49 = icmp eq i32 %off_row_cast9, %idx2_idx1_i466_top_left_9
  %or_cond1 = or i1 %tmp_48, %tmp_49
  br i1 %or_cond1, label %._crit_edge50, label %20

; <label>:20                                      ; preds = %19
  %tmp_53_cast = zext i5 %off_row_mid2 to i9
  %tmp_94 = add i9 %tmp_104_cast, %tmp_53_cast
  %tmp_112_cast = zext i9 %tmp_94 to i64
  %V_c_buffer_1_addr_1 = getelementptr [128 x float]* %V_c_buffer_1, i64 0, i64 %tmp_112_cast
  %V_c_buffer_0_addr_1 = getelementptr [128 x float]* %V_c_buffer_0, i64 0, i64 %tmp_112_cast
  %U_c_buffer_1_addr_1 = getelementptr [128 x float]* %U_c_buffer_1, i64 0, i64 %tmp_112_cast
  %S_c_buffer_0_addr_1 = getelementptr [128 x float]* %S_c_buffer_0, i64 0, i64 %tmp_112_cast
  %S_c_buffer_1_addr_1 = getelementptr [128 x float]* %S_c_buffer_1, i64 0, i64 %tmp_112_cast
  %U_c_buffer_0_addr_1 = getelementptr [128 x float]* %U_c_buffer_0, i64 0, i64 %tmp_112_cast
  %w_in_1 = load float* %S_c_buffer_0_addr_1, align 8
  %vw_in_1 = load float* %V_c_buffer_0_addr_1, align 8
  %uw_in_1 = load float* %U_c_buffer_0_addr_1, align 8
  %x_in_1 = load float* %S_c_buffer_1_addr_1, align 4
  %vx_in_1 = load float* %V_c_buffer_1_addr_1, align 4
  %ux_in_1 = load float* %U_c_buffer_1_addr_1, align 4
  %tmp_i15 = fmul float %w_in_1, %K2x2_0_0_load
  %tmp_3_i10 = fmul float %x_in_1, %K2x2_1_0_load
  %w_out_3 = fadd float %tmp_i15, %tmp_3_i10
  %tmp_i16 = fmul float %w_in_1, %K2x2_0_1_load
  %tmp_3_i11 = fmul float %x_in_1, %K2x2_1_1_load
  %x_out = fadd float %tmp_i16, %tmp_3_i11
  %tmp_i17 = fmul float %vw_in_1, %K2x2_0_0_load
  %tmp_3_i12 = fmul float %vx_in_1, %K2x2_1_0_load
  %vw_out_1 = fadd float %tmp_i17, %tmp_3_i12
  %tmp_i18 = fmul float %vw_in_1, %K2x2_0_1_load
  %tmp_3_i13 = fmul float %vx_in_1, %K2x2_1_1_load
  %vx_out_1 = fadd float %tmp_i18, %tmp_3_i13
  %tmp_i19 = fmul float %uw_in_1, %J2x2_0_0_load
  %tmp_3_i14 = fmul float %ux_in_1, %J2x2_1_0_load
  %uw_out_1 = fadd float %tmp_i19, %tmp_3_i14
  %tmp_i20 = fmul float %uw_in_1, %J2x2_0_1_load
  %tmp_3_i15 = fmul float %ux_in_1, %J2x2_1_1_load
  %ux_out_1 = fadd float %tmp_i20, %tmp_3_i15
  store float %w_out_3, float* %S_c_buffer_0_addr_1, align 8
  store float %x_out, float* %S_c_buffer_1_addr_1, align 4
  store float %vw_out_1, float* %V_c_buffer_0_addr_1, align 8
  store float %vx_out_1, float* %V_c_buffer_1_addr_1, align 4
  store float %uw_out_1, float* %U_c_buffer_0_addr_1, align 8
  store float %ux_out_1, float* %U_c_buffer_1_addr_1, align 4
  br label %._crit_edge50

._crit_edge50:                                    ; preds = %20, %19
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1812, i32 %tmp_76)
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge50, %.preheader29
  %off_row_1 = add i5 %off_row_mid2, 1
  br label %.preheader28

.preheader29:                                     ; preds = %.preheader28
  %proc_8 = add i4 %proc8, 1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @L_svd_calc_off_r_str)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %exitcond8 = icmp eq i5 %off_row, -16
  %off_row_mid2 = select i1 %exitcond8, i5 0, i5 %off_row
  %tmp_31_mid1 = zext i4 %proc_8 to i64
  %p_v1 = select i1 %exitcond8, i4 %proc_8, i4 %proc8
  %tmp_84 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %p_v1, i4 0)
  %tmp_104_cast = zext i8 %tmp_84 to i9
  %diag_1_addr_11 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_31_mid1
  %diag_1_load_8 = load i32* %diag_1_addr_11, align 4
  %diag_2_addr_11 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_31_mid1
  %diag_2_load_8 = load i32* %diag_2_addr_11, align 4
  %vw_new_mid2_cast = zext i4 %p_v1 to i64
  %K2x2_0_0_addr_1 = getelementptr [8 x float]* %K2x2_0_0, i64 0, i64 %vw_new_mid2_cast
  %K2x2_0_0_load = load float* %K2x2_0_0_addr_1, align 4
  %K2x2_0_1_addr_1 = getelementptr [8 x float]* %K2x2_0_1, i64 0, i64 %vw_new_mid2_cast
  %K2x2_0_1_load = load float* %K2x2_0_1_addr_1, align 4
  %K2x2_1_0_addr_1 = getelementptr [8 x float]* %K2x2_1_0, i64 0, i64 %vw_new_mid2_cast
  %K2x2_1_0_load = load float* %K2x2_1_0_addr_1, align 4
  %K2x2_1_1_addr_1 = getelementptr [8 x float]* %K2x2_1_1, i64 0, i64 %vw_new_mid2_cast
  %K2x2_1_1_load = load float* %K2x2_1_1_addr_1, align 4
  %J2x2_0_0_addr_1 = getelementptr [8 x float]* %J2x2_0_0, i64 0, i64 %vw_new_mid2_cast
  %J2x2_0_0_load = load float* %J2x2_0_0_addr_1, align 4
  %J2x2_0_1_addr_1 = getelementptr [8 x float]* %J2x2_0_1, i64 0, i64 %vw_new_mid2_cast
  %J2x2_0_1_load = load float* %J2x2_0_1_addr_1, align 4
  %J2x2_1_0_addr_1 = getelementptr [8 x float]* %J2x2_1_0, i64 0, i64 %vw_new_mid2_cast
  %J2x2_1_0_load = load float* %J2x2_1_0_addr_1, align 4
  %J2x2_1_1_addr_1 = getelementptr [8 x float]* %J2x2_1_1, i64 0, i64 %vw_new_mid2_cast
  %J2x2_1_1_load = load float* %J2x2_1_1_addr_1, align 4
  %tmp_i12_mid1 = icmp sgt i32 %diag_1_load_8, %diag_2_load_8
  %top_left_19_mid1 = select i1 %tmp_i12_mid1, i32 %diag_2_load_8, i32 %diag_1_load_8
  %top_left_19_mid2 = select i1 %exitcond8, i32 %top_left_19_mid1, i32 %top_left_10
  %bottom_right_26_mid1 = select i1 %tmp_i12_mid1, i32 %diag_1_load_8, i32 %diag_2_load_8
  %bottom_right_26_mid2 = select i1 %exitcond8, i32 %bottom_right_26_mid1, i32 %bottom_right_10
  %off_row_cast9 = zext i5 %off_row_mid2 to i32
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1812) nounwind
  %tmp_76 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1812)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_36 = icmp eq i5 %off_row_mid2, 0
  %idx2_idx1_i466_top_left_9 = select i1 %tmp_36, i32 %top_left_19_mid2, i32 %top_left_9
  %bottom_right_write_assign_i1 = select i1 %tmp_36, i32 %bottom_right_26_mid2, i32 %bottom_right_9
  %tmp_38 = icmp eq i32 %idx2_idx1_i466_top_left_9, 16
  %tmp_43 = icmp eq i32 %bottom_right_write_assign_i1, 16
  %or_cond10 = or i1 %tmp_38, %tmp_43
  br i1 %or_cond10, label %._crit_edge48, label %19

.preheader26:                                     ; preds = %.preheader28, %._crit_edge53
  %indvar_flatten2 = phi i8 [ %indvar_flatten_next2, %._crit_edge53 ], [ 0, %.preheader28 ]
  %proc9 = phi i4 [ %p_v2, %._crit_edge53 ], [ 0, %.preheader28 ]
  %top_left_s = phi i32 [ %idx2_idx1_i489_top_left_s, %._crit_edge53 ], [ %top_left_9, %.preheader28 ]
  %bottom_right_s = phi i32 [ %bottom_right_write_assign_i2, %._crit_edge53 ], [ %bottom_right_9, %.preheader28 ]
  %i2 = phi i5 [ %i_3, %._crit_edge53 ], [ 0, %.preheader28 ]
  %tmp_35 = zext i4 %proc9 to i64
  %diag_1_addr_12 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_35
  %diag_1_load_9 = load i32* %diag_1_addr_12, align 4
  %diag_2_addr_12 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_35
  %diag_2_load_9 = load i32* %diag_2_addr_12, align 4
  %tmp_i13 = icmp sgt i32 %diag_1_load_9, %diag_2_load_9
  %top_left_11 = select i1 %tmp_i13, i32 %diag_2_load_9, i32 %diag_1_load_9
  %bottom_right_11 = select i1 %tmp_i13, i32 %diag_1_load_9, i32 %diag_2_load_9
  %exitcond_flatten3 = icmp eq i8 %indvar_flatten2, -128
  %indvar_flatten_next2 = add i8 %indvar_flatten2, 1
  br i1 %exitcond_flatten3, label %.preheader24, label %.preheader27

; <label>:21                                      ; preds = %.preheader27
  %tmp_55 = icmp eq i32 %i2_cast7, %bottom_right_write_assign_i2
  %tmp_56 = icmp eq i32 %i2_cast7, %idx2_idx1_i489_top_left_s
  %or_cond2 = or i1 %tmp_55, %tmp_56
  br i1 %or_cond2, label %._crit_edge55, label %22

; <label>:22                                      ; preds = %21
  %tmp_60_cast = zext i5 %i2_mid2 to i9
  %tmp_96 = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %i2_mid2, i4 0)
  %tmp_116_cast = zext i9 %tmp_96 to i10
  %tmp_97 = add i9 %tmp_111_cast, %tmp_60_cast
  %tmp_117_cast = zext i9 %tmp_97 to i64
  %V_c_buffer_1_addr_2 = getelementptr [128 x float]* %V_c_buffer_1, i64 0, i64 %tmp_117_cast
  %V_c_buffer_0_addr_2 = getelementptr [128 x float]* %V_c_buffer_0, i64 0, i64 %tmp_117_cast
  %U_c_buffer_1_addr_2 = getelementptr [128 x float]* %U_c_buffer_1, i64 0, i64 %tmp_117_cast
  %S_c_buffer_0_addr_2 = getelementptr [128 x float]* %S_c_buffer_0, i64 0, i64 %tmp_117_cast
  %S_c_buffer_1_addr_2 = getelementptr [128 x float]* %S_c_buffer_1, i64 0, i64 %tmp_117_cast
  %U_c_buffer_0_addr_2 = getelementptr [128 x float]* %U_c_buffer_0, i64 0, i64 %tmp_117_cast
  %S_c_buffer_0_load = load float* %S_c_buffer_0_addr_2, align 8
  %tmp_98 = trunc i32 %idx2_idx1_i489_top_left_s to i10
  %tmp_99 = add i10 %tmp_116_cast, %tmp_98
  %tmp_118_cast = sext i10 %tmp_99 to i64
  %S_addr_11 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_118_cast
  %U_addr_11 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_118_cast
  %V_addr_11 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_118_cast
  store float %S_c_buffer_0_load, float* %S_addr_11, align 4
  %U_c_buffer_0_load = load float* %U_c_buffer_0_addr_2, align 8
  store float %U_c_buffer_0_load, float* %U_addr_11, align 4
  %V_c_buffer_0_load = load float* %V_c_buffer_0_addr_2, align 8
  store float %V_c_buffer_0_load, float* %V_addr_11, align 4
  %S_c_buffer_1_load = load float* %S_c_buffer_1_addr_2, align 4
  %tmp_100 = trunc i32 %bottom_right_write_assign_i2 to i10
  %tmp_101 = add i10 %tmp_116_cast, %tmp_100
  %tmp_119_cast = sext i10 %tmp_101 to i64
  %S_addr_12 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_119_cast
  %U_addr_12 = getelementptr [256 x float]* %U, i64 0, i64 %tmp_119_cast
  %V_addr_12 = getelementptr [256 x float]* %V, i64 0, i64 %tmp_119_cast
  store float %S_c_buffer_1_load, float* %S_addr_12, align 4
  %U_c_buffer_1_load = load float* %U_c_buffer_1_addr_2, align 4
  store float %U_c_buffer_1_load, float* %U_addr_12, align 4
  %V_c_buffer_1_load = load float* %V_c_buffer_1_addr_2, align 4
  store float %V_c_buffer_1_load, float* %V_addr_12, align 4
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %22, %21
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1813, i32 %tmp_77)
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge55, %.preheader27
  %i_3 = add i5 %i2_mid2, 1
  br label %.preheader26

.preheader27:                                     ; preds = %.preheader26
  %proc_9 = add i4 %proc9, 1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @L_svd_wb_off_r_str)
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %exitcond10 = icmp eq i5 %i2, -16
  %i2_mid2 = select i1 %exitcond10, i5 0, i5 %i2
  %tmp_35_mid1 = zext i4 %proc_9 to i64
  %p_v2 = select i1 %exitcond10, i4 %proc_9, i4 %proc9
  %tmp_86 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %p_v2, i4 0)
  %tmp_111_cast = zext i8 %tmp_86 to i9
  %diag_1_addr_13 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_35_mid1
  %diag_1_load_10 = load i32* %diag_1_addr_13, align 4
  %diag_2_addr_13 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_35_mid1
  %diag_2_load_10 = load i32* %diag_2_addr_13, align 4
  %tmp_i13_mid1 = icmp sgt i32 %diag_1_load_10, %diag_2_load_10
  %top_left_21_mid1 = select i1 %tmp_i13_mid1, i32 %diag_2_load_10, i32 %diag_1_load_10
  %top_left_21_mid2 = select i1 %exitcond10, i32 %top_left_21_mid1, i32 %top_left_11
  %bottom_right_27_mid1 = select i1 %tmp_i13_mid1, i32 %diag_1_load_10, i32 %diag_2_load_10
  %bottom_right_27_mid2 = select i1 %exitcond10, i32 %bottom_right_27_mid1, i32 %bottom_right_11
  %i2_cast7 = zext i5 %i2_mid2 to i32
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str1813) nounwind
  %tmp_77 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1813)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_42 = icmp eq i5 %i2_mid2, 0
  %idx2_idx1_i489_top_left_s = select i1 %tmp_42, i32 %top_left_21_mid2, i32 %top_left_s
  %bottom_right_write_assign_i2 = select i1 %tmp_42, i32 %bottom_right_27_mid2, i32 %bottom_right_s
  %tmp_47 = icmp eq i32 %idx2_idx1_i489_top_left_s, 16
  %tmp_52 = icmp eq i32 %bottom_right_write_assign_i2, 16
  %or_cond11 = or i1 %tmp_47, %tmp_52
  br i1 %or_cond11, label %._crit_edge53, label %21

.preheader24:                                     ; preds = %.preheader26, %._crit_edge58
  %indvar_flatten3 = phi i8 [ %indvar_flatten_next3, %._crit_edge58 ], [ 0, %.preheader26 ]
  %proc7 = phi i4 [ %p_v3, %._crit_edge58 ], [ 0, %.preheader26 ]
  %top_left_12 = phi i32 [ %idx2_idx1_i494_top_left_s, %._crit_edge58 ], [ %top_left_s, %.preheader26 ]
  %bottom_right_12 = phi i32 [ %bottom_right_write_assign_i3, %._crit_edge58 ], [ %bottom_right_s, %.preheader26 ]
  %i3 = phi i5 [ %i_4, %._crit_edge58 ], [ 0, %.preheader26 ]
  %tmp_41 = zext i4 %proc7 to i64
  %diag_1_addr_14 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_41
  %diag_1_load_11 = load i32* %diag_1_addr_14, align 4
  %diag_2_addr_14 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_41
  %diag_2_load_11 = load i32* %diag_2_addr_14, align 4
  %tmp_i14 = icmp sgt i32 %diag_1_load_11, %diag_2_load_11
  %top_left_13 = select i1 %tmp_i14, i32 %diag_2_load_11, i32 %diag_1_load_11
  %bottom_right_13 = select i1 %tmp_i14, i32 %diag_1_load_11, i32 %diag_2_load_11
  %exitcond_flatten4 = icmp eq i8 %indvar_flatten3, -128
  %indvar_flatten_next3 = add i8 %indvar_flatten3, 1
  br i1 %exitcond_flatten4, label %.preheader22, label %.preheader25

; <label>:23                                      ; preds = %.preheader25
  %tmp_64 = icmp eq i32 %i3_cast5, %bottom_right_write_assign_i3
  %tmp_65 = icmp eq i32 %i3_cast5, %idx2_idx1_i494_top_left_s
  %or_cond3 = or i1 %tmp_64, %tmp_65
  br i1 %or_cond3, label %._crit_edge60, label %24

; <label>:24                                      ; preds = %23
  %tmp_68_cast1 = zext i5 %i3_mid2 to i10
  %tmp_68_cast = zext i5 %i3_mid2 to i9
  %tmp_103 = add i9 %tmp_114_cast, %tmp_68_cast
  %tmp_122_cast = zext i9 %tmp_103 to i64
  %S_r_buffer_0_addr = getelementptr [128 x float]* %S_r_buffer_0, i64 0, i64 %tmp_122_cast
  %S_r_buffer_1_addr = getelementptr [128 x float]* %S_r_buffer_1, i64 0, i64 %tmp_122_cast
  %tmp_104 = trunc i32 %idx2_idx1_i494_top_left_s to i6
  %tmp_124_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_104, i4 0)
  %tmp_105 = add i10 %tmp_124_cast, %tmp_68_cast1
  %tmp_125_cast = sext i10 %tmp_105 to i64
  %S_addr_13 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_125_cast
  %S_load_6 = load float* %S_addr_13, align 4
  store float %S_load_6, float* %S_r_buffer_0_addr, align 4
  %tmp_106 = trunc i32 %bottom_right_write_assign_i3 to i6
  %tmp_127_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_106, i4 0)
  %tmp_107 = add i10 %tmp_127_cast, %tmp_68_cast1
  %tmp_128_cast = sext i10 %tmp_107 to i64
  %S_addr_14 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_128_cast
  %S_load_7 = load float* %S_addr_14, align 4
  store float %S_load_7, float* %S_r_buffer_1_addr, align 4
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %24, %23
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1814, i32 %tmp_78)
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge60, %.preheader25
  %i_4 = add i5 %i3_mid2, 1
  br label %.preheader24

.preheader25:                                     ; preds = %.preheader24
  %proc_12 = add i4 %proc7, 1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @L_svd_rd_off_c_str)
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %exitcond11 = icmp eq i5 %i3, -16
  %i3_mid2 = select i1 %exitcond11, i5 0, i5 %i3
  %tmp_41_mid1 = zext i4 %proc_12 to i64
  %p_v3 = select i1 %exitcond11, i4 %proc_12, i4 %proc7
  %tmp_93 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %p_v3, i4 0)
  %tmp_114_cast = zext i8 %tmp_93 to i9
  %diag_1_addr_15 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_41_mid1
  %diag_1_load_12 = load i32* %diag_1_addr_15, align 4
  %diag_2_addr_15 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_41_mid1
  %diag_2_load_12 = load i32* %diag_2_addr_15, align 4
  %tmp_i14_mid1 = icmp sgt i32 %diag_1_load_12, %diag_2_load_12
  %top_left_22_mid1 = select i1 %tmp_i14_mid1, i32 %diag_2_load_12, i32 %diag_1_load_12
  %top_left_22_mid2 = select i1 %exitcond11, i32 %top_left_22_mid1, i32 %top_left_13
  %bottom_right_28_mid1 = select i1 %tmp_i14_mid1, i32 %diag_1_load_12, i32 %diag_2_load_12
  %bottom_right_28_mid2 = select i1 %exitcond11, i32 %bottom_right_28_mid1, i32 %bottom_right_13
  %i3_cast5 = zext i5 %i3_mid2 to i32
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str1814) nounwind
  %tmp_78 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_51 = icmp eq i5 %i3_mid2, 0
  %idx2_idx1_i494_top_left_s = select i1 %tmp_51, i32 %top_left_22_mid2, i32 %top_left_12
  %bottom_right_write_assign_i3 = select i1 %tmp_51, i32 %bottom_right_28_mid2, i32 %bottom_right_12
  %tmp_54 = icmp eq i32 %idx2_idx1_i494_top_left_s, 16
  %tmp_59 = icmp eq i32 %bottom_right_write_assign_i3, 16
  %or_cond12 = or i1 %tmp_54, %tmp_59
  br i1 %or_cond12, label %._crit_edge58, label %23

.preheader22:                                     ; preds = %.preheader24, %._crit_edge63
  %indvar_flatten4 = phi i8 [ %indvar_flatten_next4, %._crit_edge63 ], [ 0, %.preheader24 ]
  %proc10 = phi i4 [ %p_v4, %._crit_edge63 ], [ 0, %.preheader24 ]
  %top_left_14 = phi i32 [ %idx2_idx1_i499_top_left_s, %._crit_edge63 ], [ %top_left_12, %.preheader24 ]
  %bottom_right_14 = phi i32 [ %bottom_right_write_assign_i4, %._crit_edge63 ], [ %bottom_right_12, %.preheader24 ]
  %off_col = phi i5 [ %off_col_1, %._crit_edge63 ], [ 0, %.preheader24 ]
  %tmp_50 = zext i4 %proc10 to i64
  %diag_1_addr_16 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_50
  %diag_1_load_13 = load i32* %diag_1_addr_16, align 4
  %diag_2_addr_16 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_50
  %diag_2_load_13 = load i32* %diag_2_addr_16, align 4
  %tmp_i21 = icmp sgt i32 %diag_1_load_13, %diag_2_load_13
  %top_left_15 = select i1 %tmp_i21, i32 %diag_2_load_13, i32 %diag_1_load_13
  %bottom_right_15 = select i1 %tmp_i21, i32 %diag_1_load_13, i32 %diag_2_load_13
  %exitcond_flatten5 = icmp eq i8 %indvar_flatten4, -128
  %indvar_flatten_next4 = add i8 %indvar_flatten4, 1
  br i1 %exitcond_flatten5, label %.preheader, label %.preheader23

; <label>:25                                      ; preds = %.preheader23
  %tmp_72 = icmp eq i32 %off_col_cast3, %bottom_right_write_assign_i4
  %tmp_73 = icmp eq i32 %off_col_cast3, %idx2_idx1_i499_top_left_s
  %or_cond4 = or i1 %tmp_72, %tmp_73
  br i1 %or_cond4, label %._crit_edge65, label %26

; <label>:26                                      ; preds = %25
  %tmp_75_cast = zext i5 %off_col_mid2 to i9
  %tmp_108 = add i9 %tmp_121_cast, %tmp_75_cast
  %tmp_131_cast = zext i9 %tmp_108 to i64
  %S_r_buffer_0_addr_1 = getelementptr [128 x float]* %S_r_buffer_0, i64 0, i64 %tmp_131_cast
  %S_r_buffer_1_addr_1 = getelementptr [128 x float]* %S_r_buffer_1, i64 0, i64 %tmp_131_cast
  %w_in_2 = load float* %S_r_buffer_0_addr_1, align 4
  %y_in_1 = load float* %S_r_buffer_1_addr_1, align 4
  %tmp_i23 = fmul float %J2x2_0_0_load_1, %w_in_2
  %tmp_3_i16 = fmul float %J2x2_1_0_load_1, %y_in_1
  %w_out_4 = fadd float %tmp_i23, %tmp_3_i16
  %tmp_i24 = fmul float %J2x2_0_1_load_1, %w_in_2
  %tmp_3_i17 = fmul float %J2x2_1_1_load_1, %y_in_1
  %y_out = fadd float %tmp_i24, %tmp_3_i17
  store float %w_out_4, float* %S_r_buffer_0_addr_1, align 4
  store float %y_out, float* %S_r_buffer_1_addr_1, align 4
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %26, %25
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1815, i32 %tmp_79)
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge65, %.preheader23
  %off_col_1 = add i5 %off_col_mid2, 1
  br label %.preheader22

.preheader23:                                     ; preds = %.preheader22
  %proc_14 = add i4 %proc10, 1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @L_svd_calc_off_c_str)
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %exitcond12 = icmp eq i5 %off_col, -16
  %off_col_mid2 = select i1 %exitcond12, i5 0, i5 %off_col
  %tmp_50_mid1 = zext i4 %proc_14 to i64
  %p_v4 = select i1 %exitcond12, i4 %proc_14, i4 %proc10
  %tmp_95 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %p_v4, i4 0)
  %tmp_121_cast = zext i8 %tmp_95 to i9
  %diag_1_addr_17 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_50_mid1
  %diag_1_load_14 = load i32* %diag_1_addr_17, align 4
  %diag_2_addr_17 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_50_mid1
  %diag_2_load_14 = load i32* %diag_2_addr_17, align 4
  %uw_new_2_mid2_cast = zext i4 %p_v4 to i64
  %J2x2_0_0_addr_2 = getelementptr [8 x float]* %J2x2_0_0, i64 0, i64 %uw_new_2_mid2_cast
  %J2x2_0_0_load_1 = load float* %J2x2_0_0_addr_2, align 4
  %J2x2_0_1_addr_2 = getelementptr [8 x float]* %J2x2_0_1, i64 0, i64 %uw_new_2_mid2_cast
  %J2x2_0_1_load_1 = load float* %J2x2_0_1_addr_2, align 4
  %J2x2_1_0_addr_2 = getelementptr [8 x float]* %J2x2_1_0, i64 0, i64 %uw_new_2_mid2_cast
  %J2x2_1_0_load_1 = load float* %J2x2_1_0_addr_2, align 4
  %J2x2_1_1_addr_2 = getelementptr [8 x float]* %J2x2_1_1, i64 0, i64 %uw_new_2_mid2_cast
  %J2x2_1_1_load_1 = load float* %J2x2_1_1_addr_2, align 4
  %tmp_i21_mid1 = icmp sgt i32 %diag_1_load_14, %diag_2_load_14
  %top_left_23_mid1 = select i1 %tmp_i21_mid1, i32 %diag_2_load_14, i32 %diag_1_load_14
  %top_left_23_mid2 = select i1 %exitcond12, i32 %top_left_23_mid1, i32 %top_left_15
  %bottom_right_29_mid1 = select i1 %tmp_i21_mid1, i32 %diag_1_load_14, i32 %diag_2_load_14
  %bottom_right_29_mid2 = select i1 %exitcond12, i32 %bottom_right_29_mid1, i32 %bottom_right_15
  %off_col_cast3 = zext i5 %off_col_mid2 to i32
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1815) nounwind
  %tmp_79 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1815)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_58 = icmp eq i5 %off_col_mid2, 0
  %idx2_idx1_i499_top_left_s = select i1 %tmp_58, i32 %top_left_23_mid2, i32 %top_left_14
  %bottom_right_write_assign_i4 = select i1 %tmp_58, i32 %bottom_right_29_mid2, i32 %bottom_right_14
  %tmp_63 = icmp eq i32 %idx2_idx1_i499_top_left_s, 16
  %tmp_67 = icmp eq i32 %bottom_right_write_assign_i4, 16
  %or_cond13 = or i1 %tmp_63, %tmp_67
  br i1 %or_cond13, label %._crit_edge63, label %25

.preheader:                                       ; preds = %.preheader22, %._crit_edge68
  %indvar_flatten5 = phi i8 [ %indvar_flatten_next5, %._crit_edge68 ], [ 0, %.preheader22 ]
  %proc11 = phi i4 [ %p_v5, %._crit_edge68 ], [ 0, %.preheader22 ]
  %top_left_16 = phi i32 [ %idx2_idx1_i510_top_left_s, %._crit_edge68 ], [ %top_left_14, %.preheader22 ]
  %bottom_right_16 = phi i32 [ %bottom_right_write_assign_i5, %._crit_edge68 ], [ %bottom_right_14, %.preheader22 ]
  %i4 = phi i5 [ %i_5, %._crit_edge68 ], [ 0, %.preheader22 ]
  %tmp_57 = zext i4 %proc11 to i64
  %diag_1_addr_18 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_57
  %diag_1_load_15 = load i32* %diag_1_addr_18, align 4
  %diag_2_addr_18 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_57
  %diag_2_load_15 = load i32* %diag_2_addr_18, align 4
  %tmp_i22 = icmp sgt i32 %diag_1_load_15, %diag_2_load_15
  %top_left_17 = select i1 %tmp_i22, i32 %diag_2_load_15, i32 %diag_1_load_15
  %bottom_right_17 = select i1 %tmp_i22, i32 %diag_1_load_15, i32 %diag_2_load_15
  %exitcond_flatten6 = icmp eq i8 %indvar_flatten5, -128
  %indvar_flatten_next5 = add i8 %indvar_flatten5, 1
  br i1 %exitcond_flatten6, label %.preheader34.loopexit, label %.preheader21

; <label>:27                                      ; preds = %.preheader21
  %tmp_80 = icmp eq i32 %i4_cast1, %bottom_right_write_assign_i5
  %tmp_81 = icmp eq i32 %i4_cast1, %idx2_idx1_i510_top_left_s
  %or_cond5 = or i1 %tmp_80, %tmp_81
  br i1 %or_cond5, label %._crit_edge70, label %28

; <label>:28                                      ; preds = %27
  %tmp_82_cast1 = zext i5 %i4_mid2 to i10
  %tmp_82_cast = zext i5 %i4_mid2 to i9
  %tmp_109 = add i9 %tmp_130_cast, %tmp_82_cast
  %tmp_132_cast = zext i9 %tmp_109 to i64
  %S_r_buffer_0_addr_2 = getelementptr [128 x float]* %S_r_buffer_0, i64 0, i64 %tmp_132_cast
  %S_r_buffer_1_addr_2 = getelementptr [128 x float]* %S_r_buffer_1, i64 0, i64 %tmp_132_cast
  %S_r_buffer_0_load = load float* %S_r_buffer_0_addr_2, align 4
  %tmp_110 = trunc i32 %idx2_idx1_i510_top_left_s to i6
  %tmp_134_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_110, i4 0)
  %tmp_111 = add i10 %tmp_134_cast, %tmp_82_cast1
  %tmp_135_cast = sext i10 %tmp_111 to i64
  %S_addr_15 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_135_cast
  store float %S_r_buffer_0_load, float* %S_addr_15, align 4
  %S_r_buffer_1_load = load float* %S_r_buffer_1_addr_2, align 4
  %tmp_112 = trunc i32 %bottom_right_write_assign_i5 to i6
  %tmp_137_cast = call i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6 %tmp_112, i4 0)
  %tmp_113 = add i10 %tmp_137_cast, %tmp_82_cast1
  %tmp_138_cast = sext i10 %tmp_113 to i64
  %S_addr_16 = getelementptr [256 x float]* %S, i64 0, i64 %tmp_138_cast
  store float %S_r_buffer_1_load, float* %S_addr_16, align 4
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %28, %27
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1816, i32 %tmp_85)
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge70, %.preheader21
  %i_5 = add i5 %i4_mid2, 1
  br label %.preheader

.preheader21:                                     ; preds = %.preheader
  %proc_15 = add i4 %proc11, 1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @L_svd_wb_off_c_str)
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %exitcond13 = icmp eq i5 %i4, -16
  %i4_mid2 = select i1 %exitcond13, i5 0, i5 %i4
  %tmp_57_mid1 = zext i4 %proc_15 to i64
  %p_v5 = select i1 %exitcond13, i4 %proc_15, i4 %proc11
  %tmp_102 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %p_v5, i4 0)
  %tmp_130_cast = zext i8 %tmp_102 to i9
  %diag_1_addr_19 = getelementptr inbounds [8 x i32]* %diag_1, i64 0, i64 %tmp_57_mid1
  %diag_1_load_16 = load i32* %diag_1_addr_19, align 4
  %diag_2_addr_19 = getelementptr inbounds [8 x i32]* %diag_2, i64 0, i64 %tmp_57_mid1
  %diag_2_load_16 = load i32* %diag_2_addr_19, align 4
  %tmp_i22_mid1 = icmp sgt i32 %diag_1_load_16, %diag_2_load_16
  %top_left_24_mid1 = select i1 %tmp_i22_mid1, i32 %diag_2_load_16, i32 %diag_1_load_16
  %top_left_24_mid2 = select i1 %exitcond13, i32 %top_left_24_mid1, i32 %top_left_17
  %bottom_right_30_mid1 = select i1 %tmp_i22_mid1, i32 %diag_1_load_16, i32 %diag_2_load_16
  %bottom_right_30_mid2 = select i1 %exitcond13, i32 %bottom_right_30_mid1, i32 %bottom_right_17
  %i4_cast1 = zext i5 %i4_mid2 to i32
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str1816) nounwind
  %tmp_85 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1816)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_66 = icmp eq i5 %i4_mid2, 0
  %idx2_idx1_i510_top_left_s = select i1 %tmp_66, i32 %top_left_24_mid2, i32 %top_left_16
  %bottom_right_write_assign_i5 = select i1 %tmp_66, i32 %bottom_right_30_mid2, i32 %bottom_right_16
  %tmp_71 = icmp eq i32 %idx2_idx1_i510_top_left_s, 16
  %tmp_74 = icmp eq i32 %bottom_right_write_assign_i5, 16
  %or_cond14 = or i1 %tmp_71, %tmp_74
  br i1 %or_cond14, label %._crit_edge68, label %27

; <label>:29                                      ; preds = %.preheader34
  %empty_30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1807, i32 %tmp_17)
  br label %.preheader35

; <label>:30                                      ; preds = %.preheader35
  ret void
}

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @dut(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_31 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_in_V), !map !181
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_out_V), !map !185
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dut_str) nounwind
  %XXT = alloca [256 x float], align 4
  %S = alloca [256 x float], align 4
  %U = alloca [256 x float], align 4
  %V = alloca [256 x float], align 4
  br label %.loopexit1

.loopexit1:                                       ; preds = %.preheader14, %0
  %i = phi i5 [ 0, %0 ], [ %i_6, %.preheader14 ]
  %exitcond11 = icmp eq i5 %i, -16
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_6 = add i5 %i, 1
  br i1 %exitcond11, label %2, label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.loopexit1
  %tmp = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %i, i4 0)
  %tmp_139_cast = zext i9 %tmp to i10
  br label %.preheader14

.preheader14:                                     ; preds = %1, %.preheader14.preheader
  %j = phi i5 [ %j_2, %1 ], [ 0, %.preheader14.preheader ]
  %exitcond10 = icmp eq i5 %j, -16
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %j_2 = add i5 %j, 1
  br i1 %exitcond10, label %.loopexit1, label %1

; <label>:1                                       ; preds = %.preheader14
  %tmp_113 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_cast = zext i5 %j to i10
  %tmp_114 = add i10 %tmp_139_cast, %tmp_cast
  %tmp_142_cast = zext i10 %tmp_114 to i64
  %XXT_addr = getelementptr [256 x float]* %XXT, i64 0, i64 %tmp_142_cast
  store float %tmp_113, float* %XXT_addr, align 4
  br label %.preheader14

; <label>:2                                       ; preds = %.loopexit1
  call fastcc void @dut_svd_alt([256 x float]* %XXT, [256 x float]* %S, [256 x float]* %U, [256 x float]* %V)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader13, %2
  %i1 = phi i5 [ 0, %2 ], [ %i_7, %.preheader13 ]
  %exitcond9 = icmp eq i5 %i1, -16
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_7 = add i5 %i1, 1
  br i1 %exitcond9, label %.preheader12, label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %.loopexit
  %tmp_s = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %i1, i4 0)
  %tmp_141_cast = zext i9 %tmp_s to i10
  br label %.preheader13

.preheader13:                                     ; preds = %3, %.preheader13.preheader
  %j2 = phi i5 [ %j_3, %3 ], [ 0, %.preheader13.preheader ]
  %exitcond8 = icmp eq i5 %j2, -16
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %j_3 = add i5 %j2, 1
  br i1 %exitcond8, label %.loopexit, label %3

; <label>:3                                       ; preds = %.preheader13
  %tmp_86_cast = zext i5 %j2 to i10
  %tmp_116 = add i10 %tmp_141_cast, %tmp_86_cast
  %tmp_145_cast = zext i10 %tmp_116 to i64
  %S_addr = getelementptr [256 x float]* %S, i64 0, i64 %tmp_145_cast
  %tmp_117 = load float* %S_addr, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_117)
  br label %.preheader13

.preheader12:                                     ; preds = %.preheader, %.loopexit
  %i3 = phi i5 [ 0, %.loopexit ], [ %i_8, %.preheader ]
  %exitcond7 = icmp eq i5 %i3, -16
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_8 = add i5 %i3, 1
  br i1 %exitcond7, label %5, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader12
  %tmp_115 = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %i3, i4 0)
  %tmp_144_cast = zext i9 %tmp_115 to i10
  br label %.preheader

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j4 = phi i5 [ %j_4, %4 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i5 %j4, -16
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %j_4 = add i5 %j4, 1
  br i1 %exitcond, label %.preheader12, label %4

; <label>:4                                       ; preds = %.preheader
  %tmp_87_cast = zext i5 %j4 to i10
  %tmp_118 = add i10 %tmp_144_cast, %tmp_87_cast
  %tmp_147_cast = zext i10 %tmp_118 to i64
  %U_addr = getelementptr [256 x float]* %U, i64 0, i64 %tmp_147_cast
  %tmp_119 = load float* %U_addr, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_119)
  br label %.preheader

; <label>:5                                       ; preds = %.preheader12
  ret void
}

define internal fastcc { float, float } @"dut_calc_angle<float, float>"(float %A_M_real, float %A_M_imag) {
  %A_M_imag_read = call float @_ssdm_op_Read.ap_auto.float(float %A_M_imag)
  %A_M_real_read = call float @_ssdm_op_Read.ap_auto.float(float %A_M_real)
  %p_Val2_s = bitcast float %A_M_real_read to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %p_Val2_4 = bitcast float %A_M_imag_read to i32
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
  %tanThetaA = fdiv float %A_M_imag_read, %A_M_real_read
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
  %tmp_86 = fsub float 1.000000e+00, %cosThetaA_int
  %tanThetaAdiv2_1 = fdiv float %tmp_86, %sinThetaA_int
  br label %7

; <label>:6                                       ; preds = %4
  %tmp_87 = fadd float %cosThetaA_int, 1.000000e+00
  %tanThetaAdiv2 = fdiv float %sinThetaA_int, %tmp_87
  br label %7

; <label>:7                                       ; preds = %6, %5
  %tanThetaAdiv = phi float [ %tanThetaAdiv2_1, %5 ], [ %tanThetaAdiv2, %6 ]
  %tmp_88 = fmul float %tanThetaAdiv, %tanThetaAdiv
  %x_assign_2 = fadd float %tmp_88, 1.000000e+00
  %cosThetaAdiv2_int = call float @_ssdm_op_FRSqrt(float %x_assign_2) nounwind
  %tmp_89 = fmul float %cosThetaAdiv2_int, %tanThetaAdiv
  br label %8

; <label>:8                                       ; preds = %7, %3, %1
  %cosThetaAdiv2_write_assign = phi float [ %cosThetaAdiv2_int, %7 ], [ %storemerge1, %3 ], [ %p_s, %1 ]
  %sinThetaAdiv2_write_assign = phi float [ %tmp_89, %7 ], [ 0x3FE6A09E60000000, %3 ], [ %p_1, %1 ]
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
  %empty_38 = trunc i32 %empty to i8
  ret i8 %empty_38
}

declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak float @_ssdm_op_FRSqrt(float) nounwind {
entry:
  %empty = call float @llvm.sqrt.f32(float %0)
  %empty_39 = fdiv float 1.000000e+00, %empty
  ret float %empty_39
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_40 = and i32 %0, %empty
  %empty_41 = icmp ne i32 %empty_40, 0
  ret i1 %empty_41
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5, i4) nounwind readnone {
entry:
  %empty = zext i5 %0 to i9
  %empty_42 = zext i4 %1 to i9
  %empty_43 = shl i9 %empty, 4
  %empty_44 = or i9 %empty_43, %empty_42
  ret i9 %empty_44
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_45 = zext i4 %1 to i8
  %empty_46 = shl i8 %empty, 4
  %empty_47 = or i8 %empty_46, %empty_45
  ret i8 %empty_47
}

declare i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone {
entry:
  %empty = zext i1 %0 to i32
  %empty_48 = zext i31 %1 to i32
  %empty_49 = shl i32 %empty, 31
  %empty_50 = or i32 %empty_49, %empty_48
  ret i32 %empty_50
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i6.i4(i6, i4) nounwind readnone {
entry:
  %empty = zext i6 %0 to i10
  %empty_51 = zext i4 %1 to i10
  %empty_52 = shl i10 %empty, 4
  %empty_53 = or i10 %empty_52, %empty_51
  ret i10 %empty_53
}

declare float @_autotb_FifoWrite_float(float*, float)

declare float @_autotb_FifoRead_float(float*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !19, !21, !27, !33, !39, !42, !42, !48, !48, !50, !53, !53, !42, !42, !42, !42, !55, !57, !57, !42, !59, !62, !62, !59, !68, !68, !50, !55, !57, !57, !42, !59, !70, !70, !72, !75, !75, !79, !42, !81, !72, !83, !83, !85, !85, !42, !42, !42, !42, !42, !42, !42, !42, !42, !42, !87, !39, !39, !93, !96, !42, !42, !42, !42, !59, !59, !98, !100, !100, !42, !42, !101, !103, !103, !59, !59, !104, !106, !106, !42, !42, !107, !109, !109, !72, !42, !81, !42, !42, !110, !93, !113, !116, !116, !42, !117, !119, !120, !123, !123, !124, !42, !42, !42, !57, !57, !109, !109, !126, !128, !42, !42, !42, !130, !130, !131, !131, !42, !42, !133, !133, !135, !135, !137, !42, !142, !142, !145, !42, !116, !116, !147, !42, !42, !42, !149, !149, !151, !151, !153, !42, !42, !42, !155, !157, !42, !42, !42, !130, !130, !159, !159, !161, !42, !42, !42, !42, !42, !42, !163, !42, !42, !42, !42, !142, !142, !145, !163, !42, !142, !142, !145, !163, !42, !165, !165, !165, !42, !165, !165, !165, !42, !165, !165, !165, !42, !165, !165, !165, !165, !165, !165, !165, !165, !165, !42, !165, !165, !165, !42, !165, !165, !165, !42, !165, !165, !165, !42, !165, !165, !165, !42, !165, !165, !165, !165, !165, !165, !170, !170, !170, !42, !165, !165, !165, !42, !165, !165, !165, !42, !165, !165, !165, !42, !170, !170, !170, !42, !170, !170, !170, !42, !42}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!174}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
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
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const float [16]*", metadata !"float [16]*", metadata !"float [16]*", metadata !"float [16]*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"S", metadata !"U", metadata !"V"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !12, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"b1", metadata !"a2", metadata !"b2", metadata !"c"}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"a3", metadata !"a4", metadata !"b1", metadata !"b2", metadata !"b3", metadata !"b4", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"w_in", metadata !"x_in", metadata !"y_in", metadata !"z_in", metadata !"uw_out", metadata !"ux_out", metadata !"uy_out", metadata !"uz_out", metadata !"vw_out", metadata !"vx_out", metadata !"vy_out", metadata !"vz_out", metadata !"w_out", metadata !"x_out", metadata !"y_out", metadata !"z_out"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!42 = metadata !{null, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !6}
!43 = metadata !{metadata !"kernel_arg_addr_space"}
!44 = metadata !{metadata !"kernel_arg_access_qual"}
!45 = metadata !{metadata !"kernel_arg_type"}
!46 = metadata !{metadata !"kernel_arg_type_qual"}
!47 = metadata !{metadata !"kernel_arg_name"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !49, metadata !6}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !51, metadata !11, metadata !52, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !51, metadata !11, metadata !54, metadata !6}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!55 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !52, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!57 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !58, metadata !6}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!59 = metadata !{null, metadata !1, metadata !2, metadata !60, metadata !4, metadata !61, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!62 = metadata !{null, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !6}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!64 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!66 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!68 = metadata !{null, metadata !63, metadata !64, metadata !69, metadata !66, metadata !67, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!70 = metadata !{null, metadata !63, metadata !64, metadata !71, metadata !66, metadata !67, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!72 = metadata !{null, metadata !8, metadata !9, metadata !73, metadata !11, metadata !74, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!75 = metadata !{null, metadata !76, metadata !2, metadata !77, metadata !4, metadata !78, metadata !6}
!76 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!79 = metadata !{null, metadata !8, metadata !9, metadata !80, metadata !11, metadata !52, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!81 = metadata !{null, metadata !8, metadata !9, metadata !82, metadata !11, metadata !52, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!83 = metadata !{null, metadata !76, metadata !2, metadata !84, metadata !4, metadata !78, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!85 = metadata !{null, metadata !8, metadata !9, metadata !86, metadata !11, metadata !52, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!87 = metadata !{null, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !6}
!88 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!89 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"std::complex<float>", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"_Bool &", metadata !"_Bool &"}
!91 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!92 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"cosThetaA", metadata !"sinThetaA", metadata !"cosThetaAdiv2", metadata !"sinThetaAdiv2", metadata !"is_pos_real", metadata !"is_imag"}
!93 = metadata !{null, metadata !1, metadata !2, metadata !94, metadata !4, metadata !95, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!95 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!96 = metadata !{null, metadata !1, metadata !2, metadata !94, metadata !4, metadata !97, metadata !6}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!98 = metadata !{null, metadata !8, metadata !9, metadata !99, metadata !11, metadata !52, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!100 = metadata !{null, metadata !8, metadata !9, metadata !99, metadata !11, metadata !54, metadata !6}
!101 = metadata !{null, metadata !8, metadata !9, metadata !102, metadata !11, metadata !52, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!103 = metadata !{null, metadata !8, metadata !9, metadata !102, metadata !11, metadata !58, metadata !6}
!104 = metadata !{null, metadata !8, metadata !9, metadata !105, metadata !11, metadata !52, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!106 = metadata !{null, metadata !8, metadata !9, metadata !105, metadata !11, metadata !54, metadata !6}
!107 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !52, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!109 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !58, metadata !6}
!110 = metadata !{null, metadata !8, metadata !9, metadata !111, metadata !11, metadata !112, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!113 = metadata !{null, metadata !1, metadata !2, metadata !114, metadata !4, metadata !115, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!115 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!116 = metadata !{null, metadata !8, metadata !9, metadata !73, metadata !11, metadata !58, metadata !6}
!117 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !112, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!119 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !112, metadata !6}
!120 = metadata !{null, metadata !1, metadata !2, metadata !121, metadata !4, metadata !122, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!122 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!123 = metadata !{null, metadata !8, metadata !9, metadata !86, metadata !11, metadata !58, metadata !6}
!124 = metadata !{null, metadata !1, metadata !2, metadata !125, metadata !4, metadata !115, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, false> &"}
!126 = metadata !{null, metadata !1, metadata !2, metadata !127, metadata !4, metadata !122, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"int"}
!128 = metadata !{null, metadata !1, metadata !2, metadata !129, metadata !4, metadata !115, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"const ap_int_base<32, true> &"}
!130 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !58, metadata !6}
!131 = metadata !{null, metadata !8, metadata !9, metadata !132, metadata !11, metadata !58, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!133 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !134, metadata !6}
!134 = metadata !{metadata !"kernel_arg_name", metadata !"__val"}
!135 = metadata !{null, metadata !1, metadata !2, metadata !94, metadata !4, metadata !136, metadata !6}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"__r", metadata !"__i"}
!137 = metadata !{null, metadata !138, metadata !15, metadata !139, metadata !140, metadata !141, metadata !6}
!138 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"int &", metadata !"int &", metadata !"int", metadata !"int"}
!140 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!141 = metadata !{metadata !"kernel_arg_name", metadata !"top_left", metadata !"bottom_right", metadata !"idx1", metadata !"idx2"}
!142 = metadata !{null, metadata !8, metadata !9, metadata !143, metadata !11, metadata !144, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!144 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!145 = metadata !{null, metadata !8, metadata !9, metadata !143, metadata !11, metadata !146, metadata !6}
!146 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!147 = metadata !{null, metadata !1, metadata !2, metadata !148, metadata !4, metadata !115, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!149 = metadata !{null, metadata !8, metadata !9, metadata !150, metadata !11, metadata !58, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!151 = metadata !{null, metadata !8, metadata !9, metadata !152, metadata !11, metadata !58, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!153 = metadata !{null, metadata !8, metadata !9, metadata !154, metadata !11, metadata !112, metadata !6}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!155 = metadata !{null, metadata !1, metadata !2, metadata !156, metadata !4, metadata !122, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!157 = metadata !{null, metadata !1, metadata !2, metadata !158, metadata !4, metadata !115, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!159 = metadata !{null, metadata !8, metadata !9, metadata !160, metadata !11, metadata !58, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!161 = metadata !{null, metadata !8, metadata !9, metadata !162, metadata !11, metadata !112, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!163 = metadata !{null, metadata !8, metadata !9, metadata !143, metadata !11, metadata !164, metadata !6}
!164 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!165 = metadata !{null, metadata !166, metadata !9, metadata !167, metadata !168, metadata !169, metadata !6}
!166 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!168 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!169 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!170 = metadata !{null, metadata !76, metadata !2, metadata !171, metadata !172, metadata !173, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!172 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!173 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!174 = metadata !{metadata !175, [1 x i32]* @llvm_global_ctors_0}
!175 = metadata !{metadata !176}
!176 = metadata !{i32 0, i32 31, metadata !177}
!177 = metadata !{metadata !178}
!178 = metadata !{metadata !"llvm.global_ctors.0", metadata !179, metadata !"", i32 0, i32 31}
!179 = metadata !{metadata !180}
!180 = metadata !{i32 0, i32 0, i32 1}
!181 = metadata !{metadata !182}
!182 = metadata !{i32 0, i32 31, metadata !183}
!183 = metadata !{metadata !184}
!184 = metadata !{metadata !"strm_in.V", metadata !179, metadata !"float", i32 0, i32 31}
!185 = metadata !{metadata !186}
!186 = metadata !{i32 0, i32 31, metadata !187}
!187 = metadata !{metadata !188}
!188 = metadata !{metadata !"strm_out.V", metadata !179, metadata !"float", i32 0, i32 31}
