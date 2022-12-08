; ModuleID = '/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux_dummy/pca.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a10, void ()* @_GLOBAL__I_a44]
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@dut_str = internal unnamed_addr constant [4 x i8] c"dut\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [14 x i8] c"svd_calc_diag\00", align 1

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @dut(float* %strm_in_V, float* %strm_out_V) {
_ifconv:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str24, [1 x i8]* @p_str25, [1 x i8]* @p_str26, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str27)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(float* %strm_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str20, [1 x i8]* @p_str21, [1 x i8]* @p_str22, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str23)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_in_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(float* %strm_out_V), !map !93
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dut_str) nounwind
  %tmp_2 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %p_Val2_s = bitcast float %tmp_2 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_1_i_i = sub i8 127, %loc_V
  %tmp_1_i_i_cast = sext i8 %tmp_1_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_1_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_2_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_3_i_i = lshr i24 %p_Result_1, %sh_assign_1_cast_cast
  %tmp_5_i_i = shl i78 %tmp_i_i, %tmp_2_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_3_i_i, i32 23)
  %tmp_s = zext i1 %tmp to i32
  %tmp_1 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_5_i_i, i32 23, i32 54)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_s, i32 %tmp_1
  %p_Val2_7_i_i = sub i32 0, %p_Val2_3
  %p_Val2_5 = select i1 %p_Result_s, i32 %p_Val2_7_i_i, i32 %p_Val2_3
  %cond = icmp eq i32 %p_Val2_5, 1
  br i1 %cond, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %_ifconv, %0
  %proc_i = phi i4 [ %proc, %0 ], [ 0, %_ifconv ]
  %exitcond_i = icmp eq i4 %proc_i, -8
  %proc = add i4 %proc_i, 1
  br i1 %exitcond_i, label %._crit_edge, label %0

; <label>:0                                       ; preds = %.preheader
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str) nounwind
  %tmp_16_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_1_0 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_2_0 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_3_0 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  %tmp_4_0 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %strm_in_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %strm_out_V, float undef)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str, i32 %tmp_16_i)
  br label %.preheader

._crit_edge:                                      ; preds = %.preheader, %_ifconv
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

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_10 = trunc i32 %empty to i8
  ret i8 %empty_10
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_11 = trunc i78 %empty to i32
  ret i32 %empty_11
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_12 = shl i9 1, %empty
  %empty_13 = and i9 %0, %empty_12
  %empty_14 = icmp ne i9 %empty_13, 0
  ret i1 %empty_14
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_15 = and i32 %0, %empty
  %empty_16 = icmp ne i32 %empty_15, 0
  ret i1 %empty_16
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_17 = shl i24 1, %empty
  %empty_18 = and i24 %0, %empty_17
  %empty_19 = icmp ne i24 %empty_18, 0
  ret i1 %empty_19
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_20 = zext i23 %1 to i24
  %empty_21 = shl i24 %empty, 23
  %empty_22 = or i24 %empty_21, %empty_20
  ret i24 %empty_22
}

declare float @_autotb_FifoWrite_float(float*, float)

declare float @_autotb_FifoRead_float(float*)

declare void @_GLOBAL__I_a44() nounwind section ".text.startup"

declare void @_GLOBAL__I_a10() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !0, !7, !13, !13, !13, !19, !13, !25, !29, !32, !38, !44, !47, !50, !50, !54, !58, !58, !64, !67, !70, !13, !7, !76, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!80}

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
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"VEC_SIZ", metadata !"VEC_NUM", metadata !"ka", metadata !"pca_in_", metadata !"pca_out_"}
!25 = metadata !{null, metadata !26, metadata !2, metadata !27, metadata !4, metadata !28, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t*"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"mean"}
!29 = metadata !{null, metadata !26, metadata !2, metadata !30, metadata !4, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [100]*", metadata !"fix32_t [16]*"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"XXT"}
!32 = metadata !{null, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !6}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!34 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*"}
!36 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"XXT", metadata !"S", metadata !"U", metadata !"V"}
!38 = metadata !{null, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !6}
!39 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!40 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*", metadata !"fix32_t [16]*"}
!42 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"S", metadata !"U"}
!44 = metadata !{null, metadata !39, metadata !40, metadata !45, metadata !42, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*", metadata !"fix32_t [100]*", metadata !"fix32_t [100]*"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"tsf_mat", metadata !"X", metadata !"Y"}
!47 = metadata !{null, metadata !26, metadata !2, metadata !48, metadata !4, metadata !49, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!50 = metadata !{null, metadata !51, metadata !34, metadata !52, metadata !36, metadata !53, metadata !6}
!51 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int", metadata !"int", metadata !"fix32_t [16]*"}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"arr", metadata !"l", metadata !"h", metadata !"S"}
!54 = metadata !{null, metadata !55, metadata !9, metadata !56, metadata !11, metadata !57, metadata !6}
!55 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"fix32_t [16]*"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"S"}
!58 = metadata !{null, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !6}
!59 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!60 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const float [16]*", metadata !"float [16]*", metadata !"float [16]*", metadata !"float [16]*", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &"}
!62 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"A", metadata !"S", metadata !"U", metadata !"V", metadata !"pca_in", metadata !"pca_out"}
!64 = metadata !{null, metadata !8, metadata !9, metadata !65, metadata !11, metadata !66, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!66 = metadata !{metadata !"kernel_arg_name", metadata !"n"}
!67 = metadata !{null, metadata !20, metadata !21, metadata !68, metadata !23, metadata !69, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &"}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"b1", metadata !"a2", metadata !"b2", metadata !"c"}
!70 = metadata !{null, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !6}
!71 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!72 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float &", metadata !"float &", metadata !"float &", metadata !"float &"}
!74 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"a3", metadata !"a4", metadata !"b1", metadata !"b2", metadata !"b3", metadata !"b4", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
!76 = metadata !{null, metadata !77, metadata !34, metadata !78, metadata !36, metadata !79, metadata !6}
!77 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"int &", metadata !"int &", metadata !"int", metadata !"int"}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"top_left", metadata !"bottom_right", metadata !"idx1", metadata !"idx2"}
!80 = metadata !{metadata !81, [3 x i32]* @llvm_global_ctors_0}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 31, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"llvm.global_ctors.0", metadata !85, metadata !"", i32 0, i32 31}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 2, i32 1}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 31, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"strm_in.V", metadata !91, metadata !"float", i32 0, i32 31}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, i32 1}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"strm_out.V", metadata !91, metadata !"float", i32 0, i32 31}
