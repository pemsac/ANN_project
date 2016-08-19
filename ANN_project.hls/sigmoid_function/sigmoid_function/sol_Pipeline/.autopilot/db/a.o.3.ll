; ModuleID = 'E:/TFM/ANN_project/ANN_project.hls/sigmoid_function/project/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sigmoid_str = internal unnamed_addr constant [8 x i8] c"sigmoid\00" ; [#uses=1 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]

; [#uses=0]
define double @sigmoid(double %in) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap(double %in) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @sigmoid_str) nounwind
  %in_read = call double @_ssdm_op_Read.s_axilite.double(double %in) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %in_read}, i64 0, metadata !12), !dbg !21 ; [debug line = 26:29] [debug variable = in]
  call void @llvm.dbg.value(metadata !{double %in}, i64 0, metadata !12), !dbg !21 ; [debug line = 26:29] [debug variable = in]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !22 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(double %in, [10 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !22 ; [debug line = 28:1]
  %tmp_to_int = bitcast double %in_read to i64, !dbg !24 ; [#uses=1 type=i64] [debug line = 28:15]
  %tmp_neg = xor i64 %tmp_to_int, -9223372036854775808, !dbg !24 ; [#uses=1 type=i64] [debug line = 28:15]
  %tmp = bitcast i64 %tmp_neg to double, !dbg !24 ; [#uses=1 type=double] [debug line = 28:15]
  %tmp_1 = call double @llvm.exp.f64(double %tmp), !dbg !24 ; [#uses=1 type=double] [debug line = 28:15]
  %tmp_2 = fadd double %tmp_1, 1.000000e+00, !dbg !24 ; [#uses=1 type=double] [debug line = 28:15]
  %tmp_3 = fdiv double 1.000000e+00, %tmp_2, !dbg !24 ; [#uses=1 type=double] [debug line = 28:15]
  ret double %tmp_3, !dbg !24                     ; [debug line = 28:15]
}

; [#uses=1]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak double @_ssdm_op_Read.s_axilite.double(double) {
entry:
  ret double %0
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 63, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in", metadata !4, metadata !"double", i32 0, i32 63}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 63, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"return", metadata !10, metadata !"DATA_TYPE", i32 0, i32 63}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 1, i32 0}
!12 = metadata !{i32 786689, metadata !13, metadata !"in", metadata !14, i32 16777242, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 786478, i32 0, metadata !14, metadata !"sigmoid", metadata !"sigmoid", metadata !"_Z7sigmoidd", metadata !14, i32 26, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @sigmoid, null, null, metadata !19, i32 27} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786473, metadata !"files/sigmoid.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/sigmoid_function", null} ; [ DW_TAG_file_type ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{metadata !17, metadata !17}
!17 = metadata !{i32 786454, null, metadata !"DATA_TYPE", metadata !14, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!21 = metadata !{i32 26, i32 29, metadata !13, null}
!22 = metadata !{i32 28, i32 1, metadata !23, null}
!23 = metadata !{i32 786443, metadata !13, i32 27, i32 1, metadata !14, i32 0} ; [ DW_TAG_lexical_block ]
!24 = metadata !{i32 28, i32 15, metadata !23, null}
