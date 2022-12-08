; ModuleID = '/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a10, void ()* @_GLOBAL__I_a44]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@dut_str = internal unnamed_addr constant [4 x i8] c"dut\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str42 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str41 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str40 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str39 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str38 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str37 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str36 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str35 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [14 x i8] c"svd_calc_diag\00", align 1

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @dut(float* %strm_in_V, float* %strm_out_V) {
_ifconv:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str40, [1 x i8]* @p_str41, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str42)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str35, [1 x i8]* @p_str36, [1 x i8]* @p_str37, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str38)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_in_V), !map !167
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_out_V), !map !173
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dut_str) nounwind
  %tmp_1 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %p_Val2_s = bitcast float %tmp_1 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_13_i_i = sub i8 127, %loc_V
  %tmp_13_i_i_cast = sext i8 %tmp_13_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_13_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_14_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_15_i_i = lshr i24 %p_Result_1, %sh_assign_1_cast_cast
  %tmp_17_i_i = shl i78 %tmp_i_i, %tmp_14_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_15_i_i, i32 23)
  %tmp_2 = zext i1 %tmp to i32
  %tmp_3 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_17_i_i, i32 23, i32 54)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_2, i32 %tmp_3
  %p_Val2_8_i_i = sub i32 0, %p_Val2_3
  %p_Val2_5 = select i1 %p_Result_s, i32 %p_Val2_8_i_i, i32 %p_Val2_3
  %cond = icmp eq i32 %p_Val2_5, 1
  br i1 %cond, label %0, label %._crit_edge

; <label>:0                                       ; preds = %_ifconv
  call fastcc void @dut_calc_svd(float* %strm_in_V, float* %strm_out_V)
  br label %._crit_edge

._crit_edge:                                      ; preds = %0, %_ifconv
  ret void
}

define internal fastcc void @dut_calc_svd(float* %strm_in_V, float* %strm_out_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str35, [1 x i8]* @p_str36, [1 x i8]* @p_str37, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str38)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str39, [1 x i8]* @p_str40, [1 x i8]* @p_str41, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str42)
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %proc = phi i4 [ 0, %0 ], [ %proc_1, %_ifconv ]
  %exitcond = icmp eq i4 %proc, -8
  %proc_1 = add i4 %proc, 1
  br i1 %exitcond, label %2, label %_ifconv

_ifconv:                                          ; preds = %1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_20 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_21 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_22 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_23 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %u1 = fsub float %tmp_23, %tmp_20
  %u2 = fadd float %tmp_22, %tmp_21
  %call_ret = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1, float %u2)
  %cosA_half = extractvalue { float, float } %call_ret, 0
  %sinA_half = extractvalue { float, float } %call_ret, 1
  %u1_1 = fadd float %tmp_23, %tmp_20
  %u2_1 = fsub float %tmp_22, %tmp_21
  %call_ret1 = call fastcc { float, float } @"dut_calc_angle<float, float>"(float %u1_1, float %u2_1)
  %cosB_half = extractvalue { float, float } %call_ret1, 0
  %sinB_half = extractvalue { float, float } %call_ret1, 1
  %tmp_i = fmul float %cosA_half, %cosB_half
  %tmp_3_i = fmul float %sinA_half, %sinB_half
  %tmp_13 = fadd float %tmp_i, %tmp_3_i
  %tmp_8_to_int = bitcast float %cosA_half to i32
  %tmp_8_neg = xor i32 %tmp_8_to_int, -2147483648
  %a2_assign = bitcast i32 %tmp_8_neg to float
  %tmp_i1 = fmul float %sinA_half, %cosB_half
  %tmp_3_i1 = fmul float %a2_assign, %sinB_half
  %tmp_14 = fadd float %tmp_i1, %tmp_3_i1
  %tmp_9_to_int = bitcast float %sinA_half to i32
  %tmp_9_neg = xor i32 %tmp_9_to_int, -2147483648
  %a2_assign_1 = bitcast i32 %tmp_9_neg to float
  %tmp_3_i2 = fmul float %a2_assign_1, %sinB_half
  %vz_int_1 = fadd float %tmp_i, %tmp_3_i2
  %tmp_3_i3 = fmul float %cosA_half, %sinB_half
  %vy_int_1 = fadd float %tmp_i1, %tmp_3_i3
  %uy_int_to_int = bitcast float %tmp_14 to i32
  %uy_int_neg = xor i32 %uy_int_to_int, -2147483648
  %uy_int = bitcast i32 %uy_int_neg to float
  %vy_int_to_int = bitcast float %vy_int_1 to i32
  %vy_int_neg = xor i32 %vy_int_to_int, -2147483648
  %vy_int = bitcast i32 %vy_int_neg to float
  %tmp_i2 = fmul float %tmp_20, %vz_int_1
  %tmp_3_i4 = fmul float %tmp_21, %vy_int
  %w_out1 = fadd float %tmp_i2, %tmp_3_i4
  %tmp_i3 = fmul float %tmp_22, %vz_int_1
  %tmp_3_i5 = fmul float %tmp_23, %vy_int
  %w_out2 = fadd float %tmp_i3, %tmp_3_i5
  %tmp_i4 = fmul float %tmp_13, %w_out1
  %tmp_3_i6 = fmul float %uy_int, %w_out2
  %w_out_int = fadd float %tmp_i4, %tmp_3_i6
  %tmp_i5 = fmul float %tmp_20, %vy_int_1
  %tmp_3_i7 = fmul float %tmp_21, %vz_int_1
  %z_out1 = fadd float %tmp_i5, %tmp_3_i7
  %tmp_i6 = fmul float %tmp_22, %vy_int_1
  %tmp_3_i8 = fmul float %tmp_23, %vz_int_1
  %z_out2 = fadd float %tmp_i6, %tmp_3_i8
  %tmp_i7 = fmul float %tmp_14, %z_out1
  %tmp_3_i9 = fmul float %tmp_13, %z_out2
  %z_out_int = fadd float %tmp_i7, %tmp_3_i9
  %c_write_assign_6_to_int = bitcast float %w_out_int to i32
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %c_write_assign_6_to_int, i32 23, i32 30)
  %tmp = trunc i32 %c_write_assign_6_to_int to i23
  %notlhs = icmp ne i8 %tmp_4, -1
  %notrhs = icmp eq i23 %tmp, 0
  %tmp_3 = or i1 %notrhs, %notlhs
  %tmp_5 = fcmp olt float %w_out_int, 0.000000e+00
  %tmp_6 = and i1 %tmp_3, %tmp_5
  %w_out_neg = xor i32 %c_write_assign_6_to_int, -2147483648
  %w_out = bitcast i32 %w_out_neg to float
  %vw_int_to_int = bitcast float %vz_int_1 to i32
  %vw_int_neg = xor i32 %vw_int_to_int, -2147483648
  %vw_int = bitcast i32 %vw_int_neg to float
  %w_out_3 = select i1 %tmp_6, float %w_out, float %w_out_int
  %vw_int_3 = select i1 %tmp_6, float %vw_int, float %vz_int_1
  %vx_int = select i1 %tmp_6, float %vy_int_1, float %vy_int
  %c_write_assign_9_to_int = bitcast float %z_out_int to i32
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %c_write_assign_9_to_int, i32 23, i32 30)
  %tmp_2 = trunc i32 %c_write_assign_9_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_7, -1
  %notrhs3 = icmp eq i23 %tmp_2, 0
  %tmp_8 = or i1 %notrhs3, %notlhs2
  %tmp_9 = fcmp olt float %z_out_int, 0.000000e+00
  %tmp_10 = and i1 %tmp_8, %tmp_9
  %z_out_neg = xor i32 %c_write_assign_9_to_int, -2147483648
  %z_out = bitcast i32 %z_out_neg to float
  %z_out_3 = select i1 %tmp_10, float %z_out, float %z_out_int
  %vy_int_2 = select i1 %tmp_10, float %vy_int, float %vy_int_1
  %vz_int = select i1 %tmp_10, float %vw_int, float %vz_int_1
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %w_out_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float 0.000000e+00)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float 0.000000e+00)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %z_out_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_13)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_14)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %uy_int)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %tmp_13)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vw_int_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vy_int_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vx_int)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float %vz_int)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str, i32 %tmp_s)
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
  %tmp_11 = or i1 %notrhs, %notlhs
  %tmp_12 = fcmp olt float %A_r_read, 0.000000e+00
  %tmp_13 = and i1 %tmp_11, %tmp_12
  %p_s = select i1 %tmp_13, float 0.000000e+00, float 1.000000e+00
  %p_1 = select i1 %tmp_13, float 1.000000e+00, float 0.000000e+00
  br label %8

; <label>:2                                       ; preds = %0
  %r_V_1 = add i9 %tmp_i_cast, 24
  %ult3 = icmp ult i9 %r_V_1, %lhs_V_cast
  %notrhs_i1 = icmp eq i8 %loc_V, 0
  %demorgan5 = or i1 %ult3, %notrhs_i1
  br i1 %demorgan5, label %3, label %4

; <label>:3                                       ; preds = %2
  %tmp_24 = trunc i32 %p_Val2_7 to i23
  %notlhs5 = icmp ne i8 %loc_V_2, -1
  %notrhs6 = icmp eq i23 %tmp_24, 0
  %tmp_14 = or i1 %notrhs6, %notlhs5
  %tmp_15 = fcmp olt float %A_i_read, 0.000000e+00
  %tmp_16 = and i1 %tmp_14, %tmp_15
  %storemerge1 = select i1 %tmp_16, float 0xBFE6A09E60000000, float 0x3FE6A09E60000000
  br label %8

; <label>:4                                       ; preds = %2
  %tanThetaA = fdiv float %A_i_read, %A_r_read
  %tmp_25 = trunc i32 %p_Val2_s to i23
  %notlhs7 = icmp ne i8 %loc_V, -1
  %notrhs8 = icmp eq i23 %tmp_25, 0
  %tmp_17 = or i1 %notrhs8, %notlhs7
  %tmp_18 = fcmp oge float %A_r_read, 0.000000e+00
  %tmp_19 = and i1 %tmp_17, %tmp_18
  %p_0_i = select i1 %tmp_19, float 1.000000e+00, float -1.000000e+00
  %tmp_9 = fmul float %tanThetaA, %tanThetaA
  %n_assign = fadd float %tmp_9, 1.000000e+00
  %tmp_i_i = call float @llvm.sqrt.f32(float %n_assign) nounwind
  %tmp_i = fdiv float 1.000000e+00, %tmp_i_i
  %cosThetaA_int = fmul float %p_0_i, %tmp_i
  %sinThetaA_int = fmul float %cosThetaA_int, %tanThetaA
  %cosThetaA_int_to_int = bitcast float %cosThetaA_int to i32
  %tmp_20 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %cosThetaA_int_to_int, i32 23, i32 30)
  %tmp_26 = trunc i32 %cosThetaA_int_to_int to i23
  %notlhs9 = icmp ne i8 %tmp_20, -1
  %notrhs1 = icmp eq i23 %tmp_26, 0
  %tmp_21 = or i1 %notrhs1, %notlhs9
  %tmp_22 = fcmp olt float %cosThetaA_int, 0.000000e+00
  %tmp_23 = and i1 %tmp_21, %tmp_22
  br i1 %tmp_23, label %5, label %6

; <label>:5                                       ; preds = %4
  %tmp_5 = fsub float 1.000000e+00, %cosThetaA_int
  %tanThetaAdiv2 = fdiv float %tmp_5, %sinThetaA_int
  br label %7

; <label>:6                                       ; preds = %4
  %tmp_6 = fadd float %cosThetaA_int, 1.000000e+00
  %tanThetaAdiv2_1 = fdiv float %sinThetaA_int, %tmp_6
  br label %7

; <label>:7                                       ; preds = %6, %5
  %tanThetaAdiv = phi float [ %tanThetaAdiv2, %5 ], [ %tanThetaAdiv2_1, %6 ]
  %tmp_s = fmul float %tanThetaAdiv, %tanThetaAdiv
  %n_assign_4 = fadd float %tmp_s, 1.000000e+00
  %tmp_i_i1 = call float @llvm.sqrt.f32(float %n_assign_4) nounwind
  %cosThetaAdiv2_int = fdiv float 1.000000e+00, %tmp_i_i1
  %tmp_2 = fmul float %cosThetaAdiv2_int, %tanThetaAdiv
  br label %8

; <label>:8                                       ; preds = %7, %3, %1
  %cosThetaAdiv2_write_assign = phi float [ %cosThetaAdiv2_int, %7 ], [ %storemerge1, %3 ], [ %p_s, %1 ]
  %sinThetaAdiv2_write_assign = phi float [ %tmp_2, %7 ], [ 0x3FE6A09E60000000, %3 ], [ %p_1, %1 ]
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
  %empty_11 = trunc i32 %empty to i8
  ret i8 %empty_11
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_12 = trunc i78 %empty to i32
  ret i32 %empty_12
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_13 = shl i9 1, %empty
  %empty_14 = and i9 %0, %empty_13
  %empty_15 = icmp ne i9 %empty_14, 0
  ret i1 %empty_15
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_16 = and i32 %0, %empty
  %empty_17 = icmp ne i32 %empty_16, 0
  ret i1 %empty_17
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_18 = shl i24 1, %empty
  %empty_19 = and i24 %0, %empty_18
  %empty_20 = icmp ne i24 %empty_19, 0
  ret i1 %empty_20
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_21 = zext i23 %1 to i24
  %empty_22 = shl i24 %empty, 23
  %empty_23 = or i24 %empty_22, %empty_21
  ret i24 %empty_23
}

declare float @_autotb_FifoWrite_float(float*, float)

declare float @_autotb_FifoRead_float(float*)

declare void @_GLOBAL__I_a44() nounwind section ".text.startup"

declare void @_GLOBAL__I_a10() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !0, !7, !13, !19, !22, !28, !19, !34, !36, !36, !39, !42, !42, !45, !51, !54, !56, !59, !59, !45, !61, !45, !45, !45, !63, !63, !65, !65, !66, !68, !45, !45, !45, !70, !70, !71, !71, !73, !73, !75, !78, !78, !45, !45, !45, !80, !63, !63, !45, !81, !84, !84, !81, !90, !90, !75, !80, !63, !63, !45, !81, !92, !92, !94, !96, !96, !100, !45, !102, !94, !104, !104, !106, !106, !45, !45, !45, !45, !45, !45, !45, !45, !45, !45, !45, !45, !107, !109, !45, !45, !45, !111, !45, !114, !118, !121, !127, !131, !134, !136, !136, !140, !144, !144, !19, !22, !150, !45, !7, !156, !45, !45}
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
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"w_in", metadata !"x_in", metadata !"y_in", metadata !"z_in", metadata !"uw_out", metadata !"ux_out", metadata !"uy_out", metadata !"uz_out", metadata !"vw_out", metadata !"vx_out", metadata !"vy_out", metadata !"vz_out", metadata !"w_out", metadata !"x_out", metadata !"y_out", metadata !"z_out"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"n"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!24 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"b1", metadata !"a2", metadata !"b2", metadata !"c"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"hls::complex<float>", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"_Bool &", metadata !"_Bool &"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"cosThetaA", metadata !"sinThetaA", metadata !"cosThetaAdiv2", metadata !"sinThetaAdiv2", metadata !"is_pos_real", metadata !"is_imag"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !35, metadata !6}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"__x"}
!36 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !4, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !40, metadata !4, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!45 = metadata !{null, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !6}
!46 = metadata !{metadata !"kernel_arg_addr_space"}
!47 = metadata !{metadata !"kernel_arg_access_qual"}
!48 = metadata !{metadata !"kernel_arg_type"}
!49 = metadata !{metadata !"kernel_arg_type_qual"}
!50 = metadata !{metadata !"kernel_arg_name"}
!51 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !53, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !53, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!56 = metadata !{null, metadata !1, metadata !2, metadata !57, metadata !4, metadata !58, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!59 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !44, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!61 = metadata !{null, metadata !1, metadata !2, metadata !62, metadata !4, metadata !41, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, false> &"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !44, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !44, metadata !6}
!66 = metadata !{null, metadata !1, metadata !2, metadata !67, metadata !4, metadata !58, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"int"}
!68 = metadata !{null, metadata !1, metadata !2, metadata !69, metadata !4, metadata !41, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"const ap_int_base<32, true> &"}
!70 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !44, metadata !6}
!71 = metadata !{null, metadata !8, metadata !9, metadata !72, metadata !11, metadata !44, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!73 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !74, metadata !6}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!75 = metadata !{null, metadata !8, metadata !9, metadata !76, metadata !11, metadata !77, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!77 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!78 = metadata !{null, metadata !8, metadata !9, metadata !76, metadata !11, metadata !79, metadata !6}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!80 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !77, metadata !6}
!81 = metadata !{null, metadata !1, metadata !2, metadata !82, metadata !4, metadata !83, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!84 = metadata !{null, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !6}
!85 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!86 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!88 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!89 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!90 = metadata !{null, metadata !85, metadata !86, metadata !91, metadata !88, metadata !89, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!92 = metadata !{null, metadata !85, metadata !86, metadata !93, metadata !88, metadata !89, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!94 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !95, metadata !6}
!95 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!96 = metadata !{null, metadata !97, metadata !2, metadata !98, metadata !4, metadata !99, metadata !6}
!97 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!100 = metadata !{null, metadata !8, metadata !9, metadata !101, metadata !11, metadata !77, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!102 = metadata !{null, metadata !8, metadata !9, metadata !103, metadata !11, metadata !77, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!104 = metadata !{null, metadata !97, metadata !2, metadata !105, metadata !4, metadata !99, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!106 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !77, metadata !6}
!107 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !108, metadata !6}
!108 = metadata !{metadata !"kernel_arg_name", metadata !"rin"}
!109 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !110, metadata !6}
!110 = metadata !{metadata !"kernel_arg_name", metadata !"iin"}
!111 = metadata !{null, metadata !23, metadata !24, metadata !112, metadata !26, metadata !113, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!113 = metadata !{metadata !"kernel_arg_name", metadata !"VEC_SIZ", metadata !"VEC_NUM", metadata !"ka", metadata !"pca_in_", metadata !"pca_out_"}
!114 = metadata !{null, metadata !115, metadata !2, metadata !116, metadata !4, metadata !117, metadata !6}
!115 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t*"}
!117 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"mean"}
!118 = metadata !{null, metadata !115, metadata !2, metadata !119, metadata !4, metadata !120, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t [16]*"}
!120 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"XXT"}
!121 = metadata !{null, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !6}
!122 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!123 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*"}
!125 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!126 = metadata !{metadata !"kernel_arg_name", metadata !"XXT", metadata !"S", metadata !"U", metadata !"V"}
!127 = metadata !{null, metadata !128, metadata !86, metadata !129, metadata !88, metadata !130, metadata !6}
!128 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*"}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"S", metadata !"U"}
!131 = metadata !{null, metadata !128, metadata !86, metadata !132, metadata !88, metadata !133, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*", metadata !"fix32_t [100]*", metadata !"fix32_t [100]*"}
!133 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"X", metadata !"Y"}
!134 = metadata !{null, metadata !115, metadata !2, metadata !135, metadata !4, metadata !38, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!136 = metadata !{null, metadata !137, metadata !123, metadata !138, metadata !125, metadata !139, metadata !6}
!137 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int", metadata !"int", metadata !"fix32_t [16]*"}
!139 = metadata !{metadata !"kernel_arg_name", metadata !"arr", metadata !"l", metadata !"h", metadata !"S"}
!140 = metadata !{null, metadata !141, metadata !9, metadata !142, metadata !11, metadata !143, metadata !6}
!141 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*"}
!143 = metadata !{metadata !"kernel_arg_name", metadata !"S"}
!144 = metadata !{null, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !6}
!145 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!146 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"const float [16]*", metadata !"float [16]*", metadata !"float [16]*", metadata !"float [16]*", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!148 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!149 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"S", metadata !"U", metadata !"V", metadata !"pca_in", metadata !"pca_out"}
!150 = metadata !{null, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !6}
!151 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!152 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!153 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!154 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!155 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"a3", metadata !"a4", metadata !"b1", metadata !"b2", metadata !"b3", metadata !"b4", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
!156 = metadata !{null, metadata !157, metadata !123, metadata !158, metadata !125, metadata !159, metadata !6}
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
