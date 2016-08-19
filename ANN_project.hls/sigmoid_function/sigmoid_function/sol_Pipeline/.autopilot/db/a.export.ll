; ModuleID = 'E:/TFM/ANN_project/ANN_project.hls/sigmoid_function/project/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sigmoid_str = internal unnamed_addr constant [8 x i8] c"sigmoid\00"
@p_str1 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define double @sigmoid(double %in_r) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap(double %in_r) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(double 0.000000e+00) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @sigmoid_str) nounwind
  %in_read = call double @_ssdm_op_Read.s_axilite.double(double %in_r) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(double %in_r, [10 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %tmp_to_int = bitcast double %in_read to i64
  %tmp_neg = xor i64 %tmp_to_int, -9223372036854775808
  %tmp = bitcast i64 %tmp_neg to double
  %tmp_1 = call double @llvm.exp.f64(double %tmp)
  %tmp_2 = fadd double %tmp_1, 1.000000e+00
  %tmp_3 = fdiv double 1.000000e+00, %tmp_2
  ret double %tmp_3
}

declare double @llvm.exp.f64(double) nounwind readonly

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak double @_ssdm_op_Read.s_axilite.double(double) {
entry:
  ret double %0
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

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
