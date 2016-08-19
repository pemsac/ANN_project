; ModuleID = 'E:/TFM/ANN_project/ANN_project.hls/sigmoid_function/project/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sigmoid.str = internal unnamed_addr constant [8 x i8] c"sigmoid\00" ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]

; [#uses=0]
define double @sigmoid(double %in) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap(double %in) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @sigmoid.str) nounwind
  call void @llvm.dbg.value(metadata !{double %in}, i64 0, metadata !25), !dbg !26 ; [debug line = 26:29] [debug variable = in]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !27 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(double %in, [10 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !27 ; [debug line = 28:1]
  %tmp_to_int = bitcast double %in to i64, !dbg !29 ; [#uses=1 type=i64] [debug line = 28:15]
  %tmp_neg = xor i64 %tmp_to_int, -9223372036854775808, !dbg !29 ; [#uses=1 type=i64] [debug line = 28:15]
  %tmp = bitcast i64 %tmp_neg to double, !dbg !29 ; [#uses=1 type=double] [debug line = 28:15]
  %tmp.1 = call double @llvm.exp.f64(double %tmp), !dbg !29 ; [#uses=1 type=double] [debug line = 28:15]
  %tmp.2 = fadd double %tmp.1, 1.000000e+00, !dbg !29 ; [#uses=1 type=double] [debug line = 28:15]
  %tmp.3 = fdiv double 1.000000e+00, %tmp.2, !dbg !29 ; [#uses=1 type=double] [debug line = 28:15]
  ret double %tmp.3, !dbg !29                     ; [debug line = 28:15]
}

; [#uses=1]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=1]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"E:/TFM/ANN_project/ANN_project.hls/sigmoid_function/project/solution2/.autopilot/db/sigmoid.pragma.2.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/sigmoid_function", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sigmoid", metadata !"sigmoid", metadata !"_Z7sigmoidd", metadata !6, i32 26, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @sigmoid, null, null, metadata !11, i32 27} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"files/sigmoid.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/sigmoid_function", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786454, null, metadata !"DATA_TYPE", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"in", metadata !17, metadata !"double", i32 0, i32 63}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 0}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 63, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"return", metadata !23, metadata !"DATA_TYPE", i32 0, i32 63}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 1, i32 0}
!25 = metadata !{i32 786689, metadata !5, metadata !"in", metadata !6, i32 16777242, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 26, i32 29, metadata !5, null}
!27 = metadata !{i32 28, i32 1, metadata !28, null}
!28 = metadata !{i32 786443, metadata !5, i32 27, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 28, i32 15, metadata !28, null}
