; ModuleID = 'E:/TFM/ANN_project/ANN_project.hls/sigmoid_function/sigmoid_function/sol_Default/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@test_var = internal unnamed_addr global double* null, align 8 ; [#uses=6 type=double**]
@sigmoid.str = internal unnamed_addr constant [8 x i8] c"sigmoid\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define double* @sigmoid(i1 zeroext %conf, double %num) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @sigmoid.str) nounwind
  call void @llvm.dbg.value(metadata !{i1 %conf}, i64 0, metadata !23), !dbg !24 ; [debug line = 26:22] [debug variable = conf]
  call void @llvm.dbg.value(metadata !{double %num}, i64 0, metadata !25), !dbg !26 ; [debug line = 26:41] [debug variable = num]
  br i1 %conf, label %1, label %._crit_edge, !dbg !27 ; [debug line = 28:3]

; <label>:1                                       ; preds = %0
  %test_var.load = load double** @test_var, align 8, !dbg !29 ; [#uses=2 type=double*] [debug line = 30:7]
  %tmp = icmp eq double* %test_var.load, null, !dbg !29 ; [#uses=1 type=i1] [debug line = 30:7]
  br i1 %tmp, label %._crit_edge1, label %2, !dbg !29 ; [debug line = 30:7]

; <label>:2                                       ; preds = %1
  %tmp.1 = bitcast double* %test_var.load to i8*, !dbg !31 ; [#uses=1 type=i8*] [debug line = 32:4]
  call void @_ZdaPv(i8* %tmp.1) nounwind, !dbg !31 ; [debug line = 32:4]
  br label %._crit_edge1, !dbg !33                ; [debug line = 33:2]

._crit_edge1:                                     ; preds = %2, %1
  %tmp.2 = call noalias i8* @_Znay(i64 24) nounwind, !dbg !34 ; [#uses=1 type=i8*] [debug line = 34:7]
  %tmp.3 = bitcast i8* %tmp.2 to double*, !dbg !34 ; [#uses=1 type=double*] [debug line = 34:7]
  store double* %tmp.3, double** @test_var, align 8, !dbg !34 ; [debug line = 34:7]
  br label %._crit_edge, !dbg !35                 ; [debug line = 35:5]

._crit_edge:                                      ; preds = %._crit_edge1, %0
  %test_var.load.1 = load double** @test_var, align 8, !dbg !36 ; [#uses=2 type=double*] [debug line = 37:3]
  %test_var.load.2 = load double* %test_var.load.1, align 8, !dbg !36 ; [#uses=2 type=double] [debug line = 37:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %test_var.load.2) nounwind
  %tmp.4 = fadd double %test_var.load.2, %num, !dbg !36 ; [#uses=1 type=double] [debug line = 37:3]
  store double %tmp.4, double* %test_var.load.1, align 8, !dbg !36 ; [debug line = 37:3]
  %tmp.5 = fmul double %num, 2.000000e+00, !dbg !37 ; [#uses=1 type=double] [debug line = 38:3]
  %test_var.load.3 = load double** @test_var, align 8, !dbg !37 ; [#uses=1 type=double*] [debug line = 38:3]
  %test_var.load.3.addr = getelementptr inbounds double* %test_var.load.3, i64 1, !dbg !37 ; [#uses=2 type=double*] [debug line = 38:3]
  %test_var.load.4 = load double* %test_var.load.3.addr, align 8, !dbg !37 ; [#uses=2 type=double] [debug line = 38:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %test_var.load.4) nounwind
  %tmp.6 = fadd double %test_var.load.4, %tmp.5, !dbg !37 ; [#uses=1 type=double] [debug line = 38:3]
  store double %tmp.6, double* %test_var.load.3.addr, align 8, !dbg !37 ; [debug line = 38:3]
  %tmp.7 = fmul double %num, 3.000000e+00, !dbg !38 ; [#uses=1 type=double] [debug line = 39:3]
  %test_var.load.5 = load double** @test_var, align 8, !dbg !38 ; [#uses=1 type=double*] [debug line = 39:3]
  %test_var.load.5.addr = getelementptr inbounds double* %test_var.load.5, i64 2, !dbg !38 ; [#uses=2 type=double*] [debug line = 39:3]
  %test_var.load.6 = load double* %test_var.load.5.addr, align 8, !dbg !38 ; [#uses=2 type=double] [debug line = 39:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %test_var.load.6) nounwind
  %tmp.8 = fadd double %test_var.load.6, %tmp.7, !dbg !38 ; [#uses=1 type=double] [debug line = 39:3]
  store double %tmp.8, double* %test_var.load.5.addr, align 8, !dbg !38 ; [debug line = 39:3]
  %test_var.load.7 = load double** @test_var, align 8, !dbg !39 ; [#uses=1 type=double*] [debug line = 41:3]
  ret double* %test_var.load.7, !dbg !39          ; [debug line = 41:3]
}

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare noalias i8* @_Znay(i64)

; [#uses=1]
declare void @_ZdaPv(i8*) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"E:/TFM/ANN_project/ANN_project.hls/sigmoid_function/sigmoid_function/sol_Default/.autopilot/db/sigmoid.pragma.2.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/sigmoid_function", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !16} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sigmoid", metadata !"sigmoid", metadata !"_Z7sigmoidbd", metadata !6, i32 26, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (i1, double)* @sigmoid, null, null, metadata !14, i32 27} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"files/sigmoid.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/sigmoid_function", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !12, metadata !13}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"data_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !18, metadata !21}
!18 = metadata !{i32 786484, i32 0, null, metadata !"__imp__HUGE", metadata !"__imp__HUGE", metadata !"", metadata !19, i32 79, metadata !20, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cmath.h", metadata !"e:/TFM/ANN_project/ANN_project.hls/sigmoid_function", null} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786484, i32 0, null, metadata !"test_var", metadata !"test_var", metadata !"_ZL8test_var", metadata !22, i32 38, metadata !9, i32 1, i32 1, double** @test_var} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786473, metadata !"files/sigmoid.h", metadata !"e:/TFM/ANN_project/ANN_project.hls/sigmoid_function", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 16777242, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 26, i32 22, metadata !5, null}
!25 = metadata !{i32 786689, metadata !5, metadata !"num", metadata !6, i32 33554458, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 26, i32 41, metadata !5, null}
!27 = metadata !{i32 28, i32 3, metadata !28, null}
!28 = metadata !{i32 786443, metadata !5, i32 27, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 30, i32 7, metadata !30, null}
!30 = metadata !{i32 786443, metadata !28, i32 29, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 32, i32 4, metadata !32, null}
!32 = metadata !{i32 786443, metadata !30, i32 31, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 33, i32 2, metadata !32, null}
!34 = metadata !{i32 34, i32 7, metadata !30, null}
!35 = metadata !{i32 35, i32 5, metadata !30, null}
!36 = metadata !{i32 37, i32 3, metadata !28, null}
!37 = metadata !{i32 38, i32 3, metadata !28, null}
!38 = metadata !{i32 39, i32 3, metadata !28, null}
!39 = metadata !{i32 41, i32 3, metadata !28, null}
