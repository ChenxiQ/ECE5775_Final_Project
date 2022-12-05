; ModuleID = '/home/cq53/ece5775/ECE5775_Final_Project/ecelinux/pca.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1968, void ()* @_GLOBAL__I_a1945]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@dut_str = internal unnamed_addr constant [4 x i8] c"dut\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@L_svd_calc_off_r_str = internal unnamed_addr constant [17 x i8] c"L_svd_calc_off_r\00"
@L_svd_calc_off_c_str = internal unnamed_addr constant [17 x i8] c"L_svd_calc_off_c\00"
@LOOP_COL_LOOP_DOT_PROD_str = internal unnamed_addr constant [23 x i8] c"LOOP_COL_LOOP_DOT_PROD\00"
@p_str1812 = private unnamed_addr constant [14 x i8] c"svd_calc_diag\00", align 1
@p_str1811 = private unnamed_addr constant [15 x i8] c"svd_calc_off_r\00", align 1
@p_str1810 = private unnamed_addr constant [15 x i8] c"svd_calc_off_c\00", align 1
@p_str1808 = private unnamed_addr constant [14 x i8] c"LOOP_DOT_PROD\00", align 1
@p_str1807 = private unnamed_addr constant [9 x i8] c"LOOP_COL\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [10 x i8] c"LOOP_ST_A\00", align 1
@p_str1804 = private unnamed_addr constant [9 x i8] c"LOOP_ROW\00", align 1
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
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1811) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1811)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
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
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1811, i32 %tmp_s)
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @dut_matmul(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %A = alloca [100 x float], align 16
  %A_addr_1 = getelementptr inbounds [100 x float]* %A, i64 0, i64 0
  %A_addr_2 = getelementptr inbounds [100 x float]* %A, i64 0, i64 1
  %A_addr_3 = getelementptr inbounds [100 x float]* %A, i64 0, i64 2
  %A_addr_4 = getelementptr inbounds [100 x float]* %A, i64 0, i64 3
  %A_addr_5 = getelementptr inbounds [100 x float]* %A, i64 0, i64 4
  %A_addr_6 = getelementptr inbounds [100 x float]* %A, i64 0, i64 5
  %A_addr_7 = getelementptr inbounds [100 x float]* %A, i64 0, i64 6
  %A_addr_8 = getelementptr inbounds [100 x float]* %A, i64 0, i64 7
  %A_addr_9 = getelementptr inbounds [100 x float]* %A, i64 0, i64 8
  %A_addr_10 = getelementptr inbounds [100 x float]* %A, i64 0, i64 9
  %A_addr_11 = getelementptr inbounds [100 x float]* %A, i64 0, i64 10
  %A_addr_12 = getelementptr inbounds [100 x float]* %A, i64 0, i64 11
  %A_addr_13 = getelementptr inbounds [100 x float]* %A, i64 0, i64 12
  %A_addr_14 = getelementptr inbounds [100 x float]* %A, i64 0, i64 13
  %A_addr_15 = getelementptr inbounds [100 x float]* %A, i64 0, i64 14
  %A_addr_16 = getelementptr inbounds [100 x float]* %A, i64 0, i64 15
  %A_addr_17 = getelementptr inbounds [100 x float]* %A, i64 0, i64 16
  %A_addr_18 = getelementptr inbounds [100 x float]* %A, i64 0, i64 17
  %A_addr_19 = getelementptr inbounds [100 x float]* %A, i64 0, i64 18
  %A_addr_20 = getelementptr inbounds [100 x float]* %A, i64 0, i64 19
  %A_addr_21 = getelementptr inbounds [100 x float]* %A, i64 0, i64 20
  %A_addr_22 = getelementptr inbounds [100 x float]* %A, i64 0, i64 21
  %A_addr_23 = getelementptr inbounds [100 x float]* %A, i64 0, i64 22
  %A_addr_24 = getelementptr inbounds [100 x float]* %A, i64 0, i64 23
  %A_addr_25 = getelementptr inbounds [100 x float]* %A, i64 0, i64 24
  %A_addr_26 = getelementptr inbounds [100 x float]* %A, i64 0, i64 25
  %A_addr_27 = getelementptr inbounds [100 x float]* %A, i64 0, i64 26
  %A_addr_28 = getelementptr inbounds [100 x float]* %A, i64 0, i64 27
  %A_addr_29 = getelementptr inbounds [100 x float]* %A, i64 0, i64 28
  %A_addr_30 = getelementptr inbounds [100 x float]* %A, i64 0, i64 29
  %A_addr_31 = getelementptr inbounds [100 x float]* %A, i64 0, i64 30
  %A_addr_32 = getelementptr inbounds [100 x float]* %A, i64 0, i64 31
  %A_addr_33 = getelementptr inbounds [100 x float]* %A, i64 0, i64 32
  %A_addr_34 = getelementptr inbounds [100 x float]* %A, i64 0, i64 33
  %A_addr_35 = getelementptr inbounds [100 x float]* %A, i64 0, i64 34
  %A_addr_36 = getelementptr inbounds [100 x float]* %A, i64 0, i64 35
  %A_addr_37 = getelementptr inbounds [100 x float]* %A, i64 0, i64 36
  %A_addr_38 = getelementptr inbounds [100 x float]* %A, i64 0, i64 37
  %A_addr_39 = getelementptr inbounds [100 x float]* %A, i64 0, i64 38
  %A_addr_40 = getelementptr inbounds [100 x float]* %A, i64 0, i64 39
  %A_addr_41 = getelementptr inbounds [100 x float]* %A, i64 0, i64 40
  %A_addr_42 = getelementptr inbounds [100 x float]* %A, i64 0, i64 41
  %A_addr_43 = getelementptr inbounds [100 x float]* %A, i64 0, i64 42
  %A_addr_44 = getelementptr inbounds [100 x float]* %A, i64 0, i64 43
  %A_addr_45 = getelementptr inbounds [100 x float]* %A, i64 0, i64 44
  %A_addr_46 = getelementptr inbounds [100 x float]* %A, i64 0, i64 45
  %A_addr_47 = getelementptr inbounds [100 x float]* %A, i64 0, i64 46
  %A_addr_48 = getelementptr inbounds [100 x float]* %A, i64 0, i64 47
  %A_addr_49 = getelementptr inbounds [100 x float]* %A, i64 0, i64 48
  %A_addr_50 = getelementptr inbounds [100 x float]* %A, i64 0, i64 49
  %A_addr_51 = getelementptr inbounds [100 x float]* %A, i64 0, i64 50
  %A_addr_52 = getelementptr inbounds [100 x float]* %A, i64 0, i64 51
  %A_addr_53 = getelementptr inbounds [100 x float]* %A, i64 0, i64 52
  %A_addr_54 = getelementptr inbounds [100 x float]* %A, i64 0, i64 53
  %A_addr_55 = getelementptr inbounds [100 x float]* %A, i64 0, i64 54
  %A_addr_56 = getelementptr inbounds [100 x float]* %A, i64 0, i64 55
  %A_addr_57 = getelementptr inbounds [100 x float]* %A, i64 0, i64 56
  %A_addr_58 = getelementptr inbounds [100 x float]* %A, i64 0, i64 57
  %A_addr_59 = getelementptr inbounds [100 x float]* %A, i64 0, i64 58
  %A_addr_60 = getelementptr inbounds [100 x float]* %A, i64 0, i64 59
  %A_addr_61 = getelementptr inbounds [100 x float]* %A, i64 0, i64 60
  %A_addr_62 = getelementptr inbounds [100 x float]* %A, i64 0, i64 61
  %A_addr_63 = getelementptr inbounds [100 x float]* %A, i64 0, i64 62
  %A_addr_64 = getelementptr inbounds [100 x float]* %A, i64 0, i64 63
  %A_addr_65 = getelementptr inbounds [100 x float]* %A, i64 0, i64 64
  %A_addr_66 = getelementptr inbounds [100 x float]* %A, i64 0, i64 65
  %A_addr_67 = getelementptr inbounds [100 x float]* %A, i64 0, i64 66
  %A_addr_68 = getelementptr inbounds [100 x float]* %A, i64 0, i64 67
  %A_addr_69 = getelementptr inbounds [100 x float]* %A, i64 0, i64 68
  %A_addr_70 = getelementptr inbounds [100 x float]* %A, i64 0, i64 69
  %A_addr_71 = getelementptr inbounds [100 x float]* %A, i64 0, i64 70
  %A_addr_72 = getelementptr inbounds [100 x float]* %A, i64 0, i64 71
  %A_addr_73 = getelementptr inbounds [100 x float]* %A, i64 0, i64 72
  %A_addr_74 = getelementptr inbounds [100 x float]* %A, i64 0, i64 73
  %A_addr_75 = getelementptr inbounds [100 x float]* %A, i64 0, i64 74
  %A_addr_76 = getelementptr inbounds [100 x float]* %A, i64 0, i64 75
  %A_addr_77 = getelementptr inbounds [100 x float]* %A, i64 0, i64 76
  %A_addr_78 = getelementptr inbounds [100 x float]* %A, i64 0, i64 77
  %A_addr_79 = getelementptr inbounds [100 x float]* %A, i64 0, i64 78
  %A_addr_80 = getelementptr inbounds [100 x float]* %A, i64 0, i64 79
  %A_addr_81 = getelementptr inbounds [100 x float]* %A, i64 0, i64 80
  %A_addr_82 = getelementptr inbounds [100 x float]* %A, i64 0, i64 81
  %A_addr_83 = getelementptr inbounds [100 x float]* %A, i64 0, i64 82
  %A_addr_84 = getelementptr inbounds [100 x float]* %A, i64 0, i64 83
  %A_addr_85 = getelementptr inbounds [100 x float]* %A, i64 0, i64 84
  %A_addr_86 = getelementptr inbounds [100 x float]* %A, i64 0, i64 85
  %A_addr_87 = getelementptr inbounds [100 x float]* %A, i64 0, i64 86
  %A_addr_88 = getelementptr inbounds [100 x float]* %A, i64 0, i64 87
  %A_addr_89 = getelementptr inbounds [100 x float]* %A, i64 0, i64 88
  %A_addr_90 = getelementptr inbounds [100 x float]* %A, i64 0, i64 89
  %A_addr_91 = getelementptr inbounds [100 x float]* %A, i64 0, i64 90
  %A_addr_92 = getelementptr inbounds [100 x float]* %A, i64 0, i64 91
  %A_addr_93 = getelementptr inbounds [100 x float]* %A, i64 0, i64 92
  %A_addr_94 = getelementptr inbounds [100 x float]* %A, i64 0, i64 93
  %A_addr_95 = getelementptr inbounds [100 x float]* %A, i64 0, i64 94
  %A_addr_96 = getelementptr inbounds [100 x float]* %A, i64 0, i64 95
  %A_addr_97 = getelementptr inbounds [100 x float]* %A, i64 0, i64 96
  %A_addr_98 = getelementptr inbounds [100 x float]* %A, i64 0, i64 97
  %A_addr_99 = getelementptr inbounds [100 x float]* %A, i64 0, i64 98
  %A_addr_100 = getelementptr inbounds [100 x float]* %A, i64 0, i64 99
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i = phi i10 [ 0, %0 ], [ %i_1, %5 ]
  %exitcond8 = icmp eq i10 %i, -240
  %i_1 = add i10 %i, 1
  br i1 %exitcond8, label %6, label %2

; <label>:2                                       ; preds = %1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1804) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1804)
  br label %3

; <label>:3                                       ; preds = %4, %2
  %m = phi i7 [ 0, %2 ], [ %m_1, %4 ]
  %exitcond7 = icmp eq i7 %m, -28
  %m_1 = add i7 %m, 1
  br i1 %exitcond7, label %.preheader, label %4

; <label>:4                                       ; preds = %3
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1805) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_s = zext i7 %m to i64
  %A_addr = getelementptr inbounds [100 x float]* %A, i64 0, i64 %tmp_s
  store float %tmp, float* %A_addr, align 4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1805, i32 %tmp_9)
  br label %3

.preheader:                                       ; preds = %3, %._crit_edge.0
  %j = phi i10 [ %j_1, %._crit_edge.0 ], [ 0, %3 ]
  %exitcond6 = icmp eq i10 %j, -240
  %j_1 = add i10 %j, 1
  br i1 %exitcond6, label %5, label %._crit_edge.0

._crit_edge.0:                                    ; preds = %.preheader
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1807) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1807)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %A_load = load float* %A_addr_1, align 16
  %tmp_20 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_2 = fmul float %A_load, %tmp_20
  %result = fadd float %tmp_2, 0.000000e+00
  %A_load_1 = load float* %A_addr_2, align 4
  %tmp_21 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_1 = fmul float %A_load_1, %tmp_21
  %result_1 = fadd float %result, %tmp_28_1
  %A_load_2 = load float* %A_addr_3, align 8
  %tmp_22 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_2 = fmul float %A_load_2, %tmp_22
  %result_2 = fadd float %result_1, %tmp_28_2
  %A_load_3 = load float* %A_addr_4, align 4
  %tmp_23 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_3 = fmul float %A_load_3, %tmp_23
  %result_3 = fadd float %result_2, %tmp_28_3
  %A_load_4 = load float* %A_addr_5, align 16
  %tmp_24 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_4 = fmul float %A_load_4, %tmp_24
  %result_4 = fadd float %result_3, %tmp_28_4
  %A_load_5 = load float* %A_addr_6, align 4
  %tmp_25 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_5 = fmul float %A_load_5, %tmp_25
  %result_5 = fadd float %result_4, %tmp_28_5
  %A_load_6 = load float* %A_addr_7, align 8
  %tmp_26 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_6 = fmul float %A_load_6, %tmp_26
  %result_6 = fadd float %result_5, %tmp_28_6
  %A_load_7 = load float* %A_addr_8, align 4
  %tmp_27 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_7 = fmul float %A_load_7, %tmp_27
  %result_7 = fadd float %result_6, %tmp_28_7
  %A_load_8 = load float* %A_addr_9, align 16
  %tmp_28 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_8 = fmul float %A_load_8, %tmp_28
  %result_8 = fadd float %result_7, %tmp_28_8
  %A_load_9 = load float* %A_addr_10, align 4
  %tmp_29 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_9 = fmul float %A_load_9, %tmp_29
  %result_9 = fadd float %result_8, %tmp_28_9
  %A_load_10 = load float* %A_addr_11, align 8
  %tmp_30 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_s = fmul float %A_load_10, %tmp_30
  %result_s = fadd float %result_9, %tmp_28_s
  %A_load_11 = load float* %A_addr_12, align 4
  %tmp_31 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_10 = fmul float %A_load_11, %tmp_31
  %result_10 = fadd float %result_s, %tmp_28_10
  %A_load_12 = load float* %A_addr_13, align 16
  %tmp_32 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_11 = fmul float %A_load_12, %tmp_32
  %result_11 = fadd float %result_10, %tmp_28_11
  %A_load_13 = load float* %A_addr_14, align 4
  %tmp_33 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_12 = fmul float %A_load_13, %tmp_33
  %result_12 = fadd float %result_11, %tmp_28_12
  %A_load_14 = load float* %A_addr_15, align 8
  %tmp_34 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_13 = fmul float %A_load_14, %tmp_34
  %result_13 = fadd float %result_12, %tmp_28_13
  %A_load_15 = load float* %A_addr_16, align 4
  %tmp_35 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_14 = fmul float %A_load_15, %tmp_35
  %result_14 = fadd float %result_13, %tmp_28_14
  %A_load_16 = load float* %A_addr_17, align 16
  %tmp_36 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_15 = fmul float %A_load_16, %tmp_36
  %result_15 = fadd float %result_14, %tmp_28_15
  %A_load_17 = load float* %A_addr_18, align 4
  %tmp_37 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_16 = fmul float %A_load_17, %tmp_37
  %result_16 = fadd float %result_15, %tmp_28_16
  %A_load_18 = load float* %A_addr_19, align 8
  %tmp_38 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_17 = fmul float %A_load_18, %tmp_38
  %result_17 = fadd float %result_16, %tmp_28_17
  %A_load_19 = load float* %A_addr_20, align 4
  %tmp_39 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_18 = fmul float %A_load_19, %tmp_39
  %result_18 = fadd float %result_17, %tmp_28_18
  %A_load_20 = load float* %A_addr_21, align 16
  %tmp_40 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_19 = fmul float %A_load_20, %tmp_40
  %result_19 = fadd float %result_18, %tmp_28_19
  %A_load_21 = load float* %A_addr_22, align 4
  %tmp_41 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_20 = fmul float %A_load_21, %tmp_41
  %result_20 = fadd float %result_19, %tmp_28_20
  %A_load_22 = load float* %A_addr_23, align 8
  %tmp_42 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_21 = fmul float %A_load_22, %tmp_42
  %result_21 = fadd float %result_20, %tmp_28_21
  %A_load_23 = load float* %A_addr_24, align 4
  %tmp_43 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_22 = fmul float %A_load_23, %tmp_43
  %result_22 = fadd float %result_21, %tmp_28_22
  %A_load_24 = load float* %A_addr_25, align 16
  %tmp_44 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_23 = fmul float %A_load_24, %tmp_44
  %result_23 = fadd float %result_22, %tmp_28_23
  %A_load_25 = load float* %A_addr_26, align 4
  %tmp_45 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_24 = fmul float %A_load_25, %tmp_45
  %result_24 = fadd float %result_23, %tmp_28_24
  %A_load_26 = load float* %A_addr_27, align 8
  %tmp_46 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_25 = fmul float %A_load_26, %tmp_46
  %result_25 = fadd float %result_24, %tmp_28_25
  %A_load_27 = load float* %A_addr_28, align 4
  %tmp_47 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_26 = fmul float %A_load_27, %tmp_47
  %result_26 = fadd float %result_25, %tmp_28_26
  %A_load_28 = load float* %A_addr_29, align 16
  %tmp_48 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_27 = fmul float %A_load_28, %tmp_48
  %result_27 = fadd float %result_26, %tmp_28_27
  %A_load_29 = load float* %A_addr_30, align 4
  %tmp_49 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_28 = fmul float %A_load_29, %tmp_49
  %result_28 = fadd float %result_27, %tmp_28_28
  %A_load_30 = load float* %A_addr_31, align 8
  %tmp_50 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_29 = fmul float %A_load_30, %tmp_50
  %result_29 = fadd float %result_28, %tmp_28_29
  %A_load_31 = load float* %A_addr_32, align 4
  %tmp_51 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_30 = fmul float %A_load_31, %tmp_51
  %result_30 = fadd float %result_29, %tmp_28_30
  %A_load_32 = load float* %A_addr_33, align 16
  %tmp_52 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_31 = fmul float %A_load_32, %tmp_52
  %result_31 = fadd float %result_30, %tmp_28_31
  %A_load_33 = load float* %A_addr_34, align 4
  %tmp_53 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_32 = fmul float %A_load_33, %tmp_53
  %result_32 = fadd float %result_31, %tmp_28_32
  %A_load_34 = load float* %A_addr_35, align 8
  %tmp_54 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_33 = fmul float %A_load_34, %tmp_54
  %result_33 = fadd float %result_32, %tmp_28_33
  %A_load_35 = load float* %A_addr_36, align 4
  %tmp_55 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_34 = fmul float %A_load_35, %tmp_55
  %result_34 = fadd float %result_33, %tmp_28_34
  %A_load_36 = load float* %A_addr_37, align 16
  %tmp_56 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_35 = fmul float %A_load_36, %tmp_56
  %result_35 = fadd float %result_34, %tmp_28_35
  %A_load_37 = load float* %A_addr_38, align 4
  %tmp_57 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_36 = fmul float %A_load_37, %tmp_57
  %result_36 = fadd float %result_35, %tmp_28_36
  %A_load_38 = load float* %A_addr_39, align 8
  %tmp_58 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_37 = fmul float %A_load_38, %tmp_58
  %result_37 = fadd float %result_36, %tmp_28_37
  %A_load_39 = load float* %A_addr_40, align 4
  %tmp_59 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_38 = fmul float %A_load_39, %tmp_59
  %result_38 = fadd float %result_37, %tmp_28_38
  %A_load_40 = load float* %A_addr_41, align 16
  %tmp_60 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_39 = fmul float %A_load_40, %tmp_60
  %result_39 = fadd float %result_38, %tmp_28_39
  %A_load_41 = load float* %A_addr_42, align 4
  %tmp_61 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_40 = fmul float %A_load_41, %tmp_61
  %result_40 = fadd float %result_39, %tmp_28_40
  %A_load_42 = load float* %A_addr_43, align 8
  %tmp_62 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_41 = fmul float %A_load_42, %tmp_62
  %result_41 = fadd float %result_40, %tmp_28_41
  %A_load_43 = load float* %A_addr_44, align 4
  %tmp_63 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_42 = fmul float %A_load_43, %tmp_63
  %result_42 = fadd float %result_41, %tmp_28_42
  %A_load_44 = load float* %A_addr_45, align 16
  %tmp_64 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_43 = fmul float %A_load_44, %tmp_64
  %result_43 = fadd float %result_42, %tmp_28_43
  %A_load_45 = load float* %A_addr_46, align 4
  %tmp_65 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_44 = fmul float %A_load_45, %tmp_65
  %result_44 = fadd float %result_43, %tmp_28_44
  %A_load_46 = load float* %A_addr_47, align 8
  %tmp_66 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_45 = fmul float %A_load_46, %tmp_66
  %result_45 = fadd float %result_44, %tmp_28_45
  %A_load_47 = load float* %A_addr_48, align 4
  %tmp_67 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_46 = fmul float %A_load_47, %tmp_67
  %result_46 = fadd float %result_45, %tmp_28_46
  %A_load_48 = load float* %A_addr_49, align 16
  %tmp_68 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_47 = fmul float %A_load_48, %tmp_68
  %result_47 = fadd float %result_46, %tmp_28_47
  %A_load_49 = load float* %A_addr_50, align 4
  %tmp_69 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_48 = fmul float %A_load_49, %tmp_69
  %result_48 = fadd float %result_47, %tmp_28_48
  %A_load_50 = load float* %A_addr_51, align 8
  %tmp_70 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_49 = fmul float %A_load_50, %tmp_70
  %result_49 = fadd float %result_48, %tmp_28_49
  %A_load_51 = load float* %A_addr_52, align 4
  %tmp_71 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_50 = fmul float %A_load_51, %tmp_71
  %result_50 = fadd float %result_49, %tmp_28_50
  %A_load_52 = load float* %A_addr_53, align 16
  %tmp_72 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_51 = fmul float %A_load_52, %tmp_72
  %result_51 = fadd float %result_50, %tmp_28_51
  %A_load_53 = load float* %A_addr_54, align 4
  %tmp_73 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_52 = fmul float %A_load_53, %tmp_73
  %result_52 = fadd float %result_51, %tmp_28_52
  %A_load_54 = load float* %A_addr_55, align 8
  %tmp_74 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_53 = fmul float %A_load_54, %tmp_74
  %result_53 = fadd float %result_52, %tmp_28_53
  %A_load_55 = load float* %A_addr_56, align 4
  %tmp_75 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_54 = fmul float %A_load_55, %tmp_75
  %result_54 = fadd float %result_53, %tmp_28_54
  %A_load_56 = load float* %A_addr_57, align 16
  %tmp_76 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_55 = fmul float %A_load_56, %tmp_76
  %result_55 = fadd float %result_54, %tmp_28_55
  %A_load_57 = load float* %A_addr_58, align 4
  %tmp_77 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_56 = fmul float %A_load_57, %tmp_77
  %result_56 = fadd float %result_55, %tmp_28_56
  %A_load_58 = load float* %A_addr_59, align 8
  %tmp_78 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_57 = fmul float %A_load_58, %tmp_78
  %result_57 = fadd float %result_56, %tmp_28_57
  %A_load_59 = load float* %A_addr_60, align 4
  %tmp_79 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_58 = fmul float %A_load_59, %tmp_79
  %result_58 = fadd float %result_57, %tmp_28_58
  %A_load_60 = load float* %A_addr_61, align 16
  %tmp_80 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_59 = fmul float %A_load_60, %tmp_80
  %result_59 = fadd float %result_58, %tmp_28_59
  %A_load_61 = load float* %A_addr_62, align 4
  %tmp_81 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_60 = fmul float %A_load_61, %tmp_81
  %result_60 = fadd float %result_59, %tmp_28_60
  %A_load_62 = load float* %A_addr_63, align 8
  %tmp_82 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_61 = fmul float %A_load_62, %tmp_82
  %result_61 = fadd float %result_60, %tmp_28_61
  %A_load_63 = load float* %A_addr_64, align 4
  %tmp_83 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_62 = fmul float %A_load_63, %tmp_83
  %result_62 = fadd float %result_61, %tmp_28_62
  %A_load_64 = load float* %A_addr_65, align 16
  %tmp_84 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_63 = fmul float %A_load_64, %tmp_84
  %result_63 = fadd float %result_62, %tmp_28_63
  %A_load_65 = load float* %A_addr_66, align 4
  %tmp_85 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_64 = fmul float %A_load_65, %tmp_85
  %result_64 = fadd float %result_63, %tmp_28_64
  %A_load_66 = load float* %A_addr_67, align 8
  %tmp_86 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_65 = fmul float %A_load_66, %tmp_86
  %result_65 = fadd float %result_64, %tmp_28_65
  %A_load_67 = load float* %A_addr_68, align 4
  %tmp_87 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_66 = fmul float %A_load_67, %tmp_87
  %result_66 = fadd float %result_65, %tmp_28_66
  %A_load_68 = load float* %A_addr_69, align 16
  %tmp_88 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_67 = fmul float %A_load_68, %tmp_88
  %result_67 = fadd float %result_66, %tmp_28_67
  %A_load_69 = load float* %A_addr_70, align 4
  %tmp_89 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_68 = fmul float %A_load_69, %tmp_89
  %result_68 = fadd float %result_67, %tmp_28_68
  %A_load_70 = load float* %A_addr_71, align 8
  %tmp_90 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_69 = fmul float %A_load_70, %tmp_90
  %result_69 = fadd float %result_68, %tmp_28_69
  %A_load_71 = load float* %A_addr_72, align 4
  %tmp_91 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_70 = fmul float %A_load_71, %tmp_91
  %result_70 = fadd float %result_69, %tmp_28_70
  %A_load_72 = load float* %A_addr_73, align 16
  %tmp_92 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_71 = fmul float %A_load_72, %tmp_92
  %result_71 = fadd float %result_70, %tmp_28_71
  %A_load_73 = load float* %A_addr_74, align 4
  %tmp_93 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_72 = fmul float %A_load_73, %tmp_93
  %result_72 = fadd float %result_71, %tmp_28_72
  %A_load_74 = load float* %A_addr_75, align 8
  %tmp_94 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_73 = fmul float %A_load_74, %tmp_94
  %result_73 = fadd float %result_72, %tmp_28_73
  %A_load_75 = load float* %A_addr_76, align 4
  %tmp_95 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_74 = fmul float %A_load_75, %tmp_95
  %result_74 = fadd float %result_73, %tmp_28_74
  %A_load_76 = load float* %A_addr_77, align 16
  %tmp_96 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_75 = fmul float %A_load_76, %tmp_96
  %result_75 = fadd float %result_74, %tmp_28_75
  %A_load_77 = load float* %A_addr_78, align 4
  %tmp_97 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_76 = fmul float %A_load_77, %tmp_97
  %result_76 = fadd float %result_75, %tmp_28_76
  %A_load_78 = load float* %A_addr_79, align 8
  %tmp_98 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_77 = fmul float %A_load_78, %tmp_98
  %result_77 = fadd float %result_76, %tmp_28_77
  %A_load_79 = load float* %A_addr_80, align 4
  %tmp_99 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_78 = fmul float %A_load_79, %tmp_99
  %result_78 = fadd float %result_77, %tmp_28_78
  %A_load_80 = load float* %A_addr_81, align 16
  %tmp_100 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_79 = fmul float %A_load_80, %tmp_100
  %result_79 = fadd float %result_78, %tmp_28_79
  %A_load_81 = load float* %A_addr_82, align 4
  %tmp_101 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_80 = fmul float %A_load_81, %tmp_101
  %result_80 = fadd float %result_79, %tmp_28_80
  %A_load_82 = load float* %A_addr_83, align 8
  %tmp_102 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_81 = fmul float %A_load_82, %tmp_102
  %result_81 = fadd float %result_80, %tmp_28_81
  %A_load_83 = load float* %A_addr_84, align 4
  %tmp_103 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_82 = fmul float %A_load_83, %tmp_103
  %result_82 = fadd float %result_81, %tmp_28_82
  %A_load_84 = load float* %A_addr_85, align 16
  %tmp_104 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_83 = fmul float %A_load_84, %tmp_104
  %result_83 = fadd float %result_82, %tmp_28_83
  %A_load_85 = load float* %A_addr_86, align 4
  %tmp_105 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_84 = fmul float %A_load_85, %tmp_105
  %result_84 = fadd float %result_83, %tmp_28_84
  %A_load_86 = load float* %A_addr_87, align 8
  %tmp_106 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_85 = fmul float %A_load_86, %tmp_106
  %result_85 = fadd float %result_84, %tmp_28_85
  %A_load_87 = load float* %A_addr_88, align 4
  %tmp_107 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_86 = fmul float %A_load_87, %tmp_107
  %result_86 = fadd float %result_85, %tmp_28_86
  %A_load_88 = load float* %A_addr_89, align 16
  %tmp_108 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_87 = fmul float %A_load_88, %tmp_108
  %result_87 = fadd float %result_86, %tmp_28_87
  %A_load_89 = load float* %A_addr_90, align 4
  %tmp_109 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_88 = fmul float %A_load_89, %tmp_109
  %result_88 = fadd float %result_87, %tmp_28_88
  %A_load_90 = load float* %A_addr_91, align 8
  %tmp_110 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_89 = fmul float %A_load_90, %tmp_110
  %result_89 = fadd float %result_88, %tmp_28_89
  %A_load_91 = load float* %A_addr_92, align 4
  %tmp_111 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_90 = fmul float %A_load_91, %tmp_111
  %result_90 = fadd float %result_89, %tmp_28_90
  %A_load_92 = load float* %A_addr_93, align 16
  %tmp_112 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_91 = fmul float %A_load_92, %tmp_112
  %result_91 = fadd float %result_90, %tmp_28_91
  %A_load_93 = load float* %A_addr_94, align 4
  %tmp_113 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_92 = fmul float %A_load_93, %tmp_113
  %result_92 = fadd float %result_91, %tmp_28_92
  %A_load_94 = load float* %A_addr_95, align 8
  %tmp_114 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_93 = fmul float %A_load_94, %tmp_114
  %result_93 = fadd float %result_92, %tmp_28_93
  %A_load_95 = load float* %A_addr_96, align 4
  %tmp_115 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_94 = fmul float %A_load_95, %tmp_115
  %result_94 = fadd float %result_93, %tmp_28_94
  %A_load_96 = load float* %A_addr_97, align 16
  %tmp_116 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_95 = fmul float %A_load_96, %tmp_116
  %result_95 = fadd float %result_94, %tmp_28_95
  %A_load_97 = load float* %A_addr_98, align 4
  %tmp_117 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_96 = fmul float %A_load_97, %tmp_117
  %result_96 = fadd float %result_95, %tmp_28_96
  %A_load_98 = load float* %A_addr_99, align 8
  %tmp_118 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_97 = fmul float %A_load_98, %tmp_118
  %result_97 = fadd float %result_96, %tmp_28_97
  %A_load_99 = load float* %A_addr_100, align 4
  %tmp_119 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_28_98 = fmul float %A_load_99, %tmp_119
  %tmp_3 = fadd float %result_97, %tmp_28_98
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_3)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1807, i32 %tmp_1)
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1804, i32 %tmp_8)
  br label %1

; <label>:6                                       ; preds = %1
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
  %empty_18 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_in_V), !map !212
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_out_V), !map !218
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dut_str) nounwind
  %tmp_128 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %p_Val2_s = bitcast float %tmp_128 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_17_i_i = sub i8 127, %loc_V
  %tmp_17_i_i_cast = sext i8 %tmp_17_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_17_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_18_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_19_i_i = lshr i24 %p_Result_1, %sh_assign_1_cast_cast
  %tmp_21_i_i = shl i78 %tmp_i_i, %tmp_18_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_19_i_i, i32 23)
  %tmp_s = zext i1 %tmp to i32
  %tmp_7 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_21_i_i, i32 23, i32 54)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_s, i32 %tmp_7
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
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 306544, i64 306544, i64 306544)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1810) nounwind
  %tmp_32_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_129 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_130 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_131 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_132 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_133 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_134 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_i_i_20 = fmul float %tmp_129, %tmp_133
  %tmp_3_i_i = fmul float %tmp_131, %tmp_134
  %tmp_126 = fadd float %tmp_i_i_20, %tmp_3_i_i
  %tmp_i10_i = fmul float %tmp_130, %tmp_133
  %tmp_3_i11_i = fmul float %tmp_132, %tmp_134
  %tmp_127 = fadd float %tmp_i10_i, %tmp_3_i11_i
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_126)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_127)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1810, i32 %tmp_32_i)
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
  %empty_22 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %proc = phi i9 [ 0, %0 ], [ %proc_1, %_ifconv ]
  %exitcond = icmp eq i9 %proc, -120
  %proc_1 = add i9 %proc, 1
  br i1 %exitcond, label %2, label %_ifconv

_ifconv:                                          ; preds = %1
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 392, i64 392, i64 392)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1812) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str1812)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_159 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_160 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_161 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_162 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %u1 = fsub float %tmp_162, %tmp_159
  %u2 = fadd float %tmp_161, %tmp_160
  %call_ret = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1, float %u2)
  %cosA_half = extractvalue { float, float } %call_ret, 0
  %sinA_half = extractvalue { float, float } %call_ret, 1
  %u1_1 = fadd float %tmp_162, %tmp_159
  %u2_1 = fsub float %tmp_161, %tmp_160
  %call_ret1 = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1_1, float %u2_1)
  %cosB_half = extractvalue { float, float } %call_ret1, 0
  %sinB_half = extractvalue { float, float } %call_ret1, 1
  %tmp_i = fmul float %cosA_half, %cosB_half
  %tmp_3_i = fmul float %sinA_half, %sinB_half
  %tmp_136 = fadd float %tmp_i, %tmp_3_i
  %tmp_to_int = bitcast float %cosA_half to i32
  %tmp_neg = xor i32 %tmp_to_int, -2147483648
  %a2_assign = bitcast i32 %tmp_neg to float
  %tmp_i6 = fmul float %sinA_half, %cosB_half
  %tmp_3_i6 = fmul float %a2_assign, %sinB_half
  %tmp_137 = fadd float %tmp_i6, %tmp_3_i6
  %tmp_4_to_int = bitcast float %sinA_half to i32
  %tmp_4_neg = xor i32 %tmp_4_to_int, -2147483648
  %a2_assign_3 = bitcast i32 %tmp_4_neg to float
  %tmp_3_i7 = fmul float %a2_assign_3, %sinB_half
  %vz_int_1 = fadd float %tmp_i, %tmp_3_i7
  %tmp_3_i8 = fmul float %cosA_half, %sinB_half
  %vy_int_1 = fadd float %tmp_i6, %tmp_3_i8
  %uy_int_to_int = bitcast float %tmp_137 to i32
  %uy_int_neg = xor i32 %uy_int_to_int, -2147483648
  %uy_int = bitcast i32 %uy_int_neg to float
  %vy_int_to_int = bitcast float %vy_int_1 to i32
  %vy_int_neg = xor i32 %vy_int_to_int, -2147483648
  %vy_int = bitcast i32 %vy_int_neg to float
  %tmp_i7 = fmul float %tmp_159, %vz_int_1
  %tmp_3_i9 = fmul float %tmp_160, %vy_int
  %w_out1 = fadd float %tmp_i7, %tmp_3_i9
  %tmp_i8 = fmul float %tmp_161, %vz_int_1
  %tmp_3_i1 = fmul float %tmp_162, %vy_int
  %w_out2 = fadd float %tmp_i8, %tmp_3_i1
  %tmp_i9 = fmul float %tmp_136, %w_out1
  %tmp_3_i2 = fmul float %uy_int, %w_out2
  %w_out_int = fadd float %tmp_i9, %tmp_3_i2
  %tmp_i1 = fmul float %tmp_159, %vy_int_1
  %tmp_3_i3 = fmul float %tmp_160, %vz_int_1
  %z_out1 = fadd float %tmp_i1, %tmp_3_i3
  %tmp_i2 = fmul float %tmp_161, %vy_int_1
  %tmp_3_i4 = fmul float %tmp_162, %vz_int_1
  %z_out2 = fadd float %tmp_i2, %tmp_3_i4
  %tmp_i3 = fmul float %tmp_137, %z_out1
  %tmp_3_i5 = fmul float %tmp_136, %z_out2
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
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_136)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_137)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %uy_int)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_136)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vw_int_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vy_int_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vx_int)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vz_int)
  %tmp = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_163 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_164 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_165 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_166 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_167 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_168 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_169 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_i_i = fmul float %tmp, %tmp_136
  %tmp_3_i_i = fmul float %tmp_163, %uy_int
  %tmp_151 = fadd float %tmp_i_i, %tmp_3_i_i
  %tmp_i1_i = fmul float %tmp, %tmp_137
  %tmp_3_i2_i = fmul float %tmp_163, %tmp_136
  %tmp_152 = fadd float %tmp_i1_i, %tmp_3_i2_i
  %tmp_i4_i = fmul float %tmp_164, %tmp_136
  %tmp_3_i5_i = fmul float %tmp_165, %uy_int
  %tmp_153 = fadd float %tmp_i4_i, %tmp_3_i5_i
  %tmp_i7_i = fmul float %tmp_164, %tmp_137
  %tmp_3_i8_i = fmul float %tmp_165, %tmp_136
  %tmp_154 = fadd float %tmp_i7_i, %tmp_3_i8_i
  %tmp_i_i1 = fmul float %tmp_166, %vw_int_3
  %tmp_3_i_i1 = fmul float %tmp_167, %vx_int
  %tmp_155 = fadd float %tmp_i_i1, %tmp_3_i_i1
  %tmp_i1_i1 = fmul float %tmp_166, %vy_int_2
  %tmp_3_i2_i1 = fmul float %tmp_167, %vz_int
  %tmp_156 = fadd float %tmp_i1_i1, %tmp_3_i2_i1
  %tmp_i4_i1 = fmul float %tmp_168, %vw_int_3
  %tmp_3_i5_i1 = fmul float %tmp_169, %vx_int
  %tmp_157 = fadd float %tmp_i4_i1, %tmp_3_i5_i1
  %tmp_i7_i1 = fmul float %tmp_168, %vy_int_2
  %tmp_3_i8_i1 = fmul float %tmp_169, %vz_int
  %tmp_158 = fadd float %tmp_i7_i1, %tmp_3_i8_i1
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_151)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_152)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_153)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_154)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_155)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_156)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_157)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_158)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str1812, i32 %tmp_2)
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
  %tmp = alloca float
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %empty_25 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %A = alloca [784 x float], align 16
  store float 0.000000e+00, float* %tmp
  br label %1

; <label>:1                                       ; preds = %6, %0
  %i = phi i4 [ 0, %0 ], [ %i_2, %6 ]
  %exitcond8 = icmp eq i4 %i, -6
  %i_2 = add i4 %i, 1
  br i1 %exitcond8, label %7, label %2

; <label>:2                                       ; preds = %1
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1804) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1804)
  br label %3

; <label>:3                                       ; preds = %4, %2
  %m = phi i10 [ 0, %2 ], [ %m_2, %4 ]
  %exitcond7 = icmp eq i10 %m, -240
  %m_2 = add i10 %m, 1
  br i1 %exitcond7, label %.preheader.preheader, label %4

; <label>:4                                       ; preds = %3
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1805) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_170 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_s = zext i10 %m to i64
  %A_addr = getelementptr inbounds [784 x float]* %A, i64 0, i64 %tmp_s
  store float %tmp_170, float* %A_addr, align 4
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1805, i32 %tmp_5)
  br label %3

.preheader.preheader:                             ; preds = %3, %._crit_edge
  %indvar_flatten = phi i17 [ %indvar_flatten_next, %._crit_edge ], [ 0, %3 ]
  %k = phi i10 [ %k_1, %._crit_edge ], [ 0, %3 ]
  %exitcond_flatten = icmp eq i17 %indvar_flatten, -52672
  %indvar_flatten_next = add i17 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %6, label %.preheader

; <label>:5                                       ; preds = %.preheader
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_172)
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %.preheader
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str1808, i32 %tmp_7)
  %k_1 = add i10 %k_mid2, 1
  store float %tmp_172, float* %tmp
  br label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %p_load = load float* %tmp
  call void (...)* @_ssdm_op_SpecLoopName([23 x i8]* @LOOP_COL_LOOP_DOT_PROD_str)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 78400, i64 78400, i64 78400)
  %exitcond = icmp eq i10 %k, -240
  %k_mid2 = select i1 %exitcond, i10 0, i10 %k
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1808) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_8 = icmp eq i10 %k_mid2, 0
  %p_03_2 = select i1 %tmp_8, float 0.000000e+00, float %p_load
  %tmp_9 = zext i10 %k_mid2 to i64
  %A_addr_2 = getelementptr inbounds [784 x float]* %A, i64 0, i64 %tmp_9
  %A_load = load float* %A_addr_2, align 4
  %tmp_171 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_1 = fmul float %A_load, %tmp_171
  %tmp_172 = fadd float %p_03_2, %tmp_1
  %tmp_2 = icmp eq i10 %k_mid2, -241
  br i1 %tmp_2, label %5, label %._crit_edge

; <label>:6                                       ; preds = %.preheader.preheader
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1804, i32 %tmp_4)
  br label %1

; <label>:7                                       ; preds = %1
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
  %empty_32 = trunc i32 %empty to i8
  ret i8 %empty_32
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_33 = trunc i78 %empty to i32
  ret i32 %empty_33
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak float @_ssdm_op_FRSqrt(float) nounwind {
entry:
  %empty = call float @llvm.sqrt.f32(float %0)
  %empty_34 = fdiv float 1.000000e+00, %empty
  ret float %empty_34
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_35 = shl i9 1, %empty
  %empty_36 = and i9 %0, %empty_35
  %empty_37 = icmp ne i9 %empty_36, 0
  ret i1 %empty_37
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_38 = and i32 %0, %empty
  %empty_39 = icmp ne i32 %empty_38, 0
  ret i1 %empty_39
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_40 = shl i24 1, %empty
  %empty_41 = and i24 %0, %empty_40
  %empty_42 = icmp ne i24 %empty_41, 0
  ret i1 %empty_42
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i31(i1, i31) nounwind readnone {
entry:
  %empty = zext i1 %0 to i32
  %empty_43 = zext i31 %1 to i32
  %empty_44 = shl i32 %empty, 31
  %empty_45 = or i32 %empty_44, %empty_43
  ret i32 %empty_45
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_46 = zext i23 %1 to i24
  %empty_47 = shl i24 %empty, 23
  %empty_48 = or i24 %empty_47, %empty_46
  ret i24 %empty_48
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
