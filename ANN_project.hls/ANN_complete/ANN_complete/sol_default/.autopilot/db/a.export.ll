; ModuleID = 'E:/TFM/ANN_project/ANN_project.hls/ANN_complete/ANN_complete/sol_default/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_uOut = internal global [140 x double] zeroinitializer
@p_numLayer = internal unnamed_addr global i32 0, align 4
@p_layerSize_3 = internal unnamed_addr global i32 0
@p_layerSize_2 = internal unnamed_addr global i32 0
@p_layerSize_1 = internal unnamed_addr global i32 0
@p_layerSize_0 = internal unnamed_addr global i32 0
@ANN_str = internal unnamed_addr constant [4 x i8] c"ANN\00"

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare double @llvm.exp.f64(double) nounwind readonly

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i9 @_ssdm_op_PartSelect.i9.i37.i32.i32(i37, i32, i32) nounwind readnone

declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i9 @_ssdm_op_PartSelect.i9.i31.i32.i32(i31, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_5 = trunc i64 %empty to i11
  ret i11 %empty_5
}

define weak i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define void @ANN([6 x i32]* %config_r, [5040 x double]* %WandB, [140 x double]* %uOut, [35 x double]* %netIn, [35 x i32]* %netOut) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([6 x i32]* %config_r) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([5040 x double]* %WandB) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap([140 x double]* %uOut) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap([35 x double]* %netIn) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([35 x i32]* %netOut) nounwind, !map !24
  %config_addr = getelementptr [6 x i32]* %config_r, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @ANN_str) nounwind
  %config_load = load i32* %config_addr, align 4
  %tmp = icmp eq i32 %config_load, 0
  %p_numLayer_load = load i32* @p_numLayer, align 4
  %tmp_2 = icmp eq i32 %config_load, 2
  %tmp_6 = icmp eq i32 %config_load, 0
  %tmp_9 = or i1 %tmp_6, %tmp_2
  br i1 %tmp_9, label %._crit_edge.preheader, label %.loopexit6

._crit_edge.preheader:                            ; preds = %0
  %p_layerSize_0_load = load i32* @p_layerSize_0, align 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %._crit_edge.preheader
  %i = phi i31 [ %i_4, %1 ], [ 0, %._crit_edge.preheader ]
  %i_cast = zext i31 %i to i32
  %tmp_3 = icmp slt i32 %i_cast, %p_layerSize_0_load
  %i_4 = add i31 %i, 1
  br i1 %tmp_3, label %1, label %.preheader16

; <label>:1                                       ; preds = %._crit_edge
  %tmp_5 = zext i31 %i to i64
  %p_uOut_addr = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_5
  %netIn_addr = getelementptr [35 x double]* %netIn, i64 0, i64 %tmp_5
  %netIn_load = load double* %netIn_addr, align 8
  store double %netIn_load, double* %p_uOut_addr, align 8
  br label %._crit_edge

.preheader16:                                     ; preds = %._crit_edge, %4
  %i_1 = phi i31 [ %i_6, %4 ], [ 1, %._crit_edge ]
  %i_1_cast = zext i31 %i_1 to i32
  %tmp_8 = icmp slt i32 %i_1_cast, %p_numLayer_load
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) nounwind
  br i1 %tmp_8, label %.preheader15.preheader, label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %.preheader16
  %tmp_7 = add nsw i32 -1, %p_numLayer_load
  %tmp_23 = trunc i32 %tmp_7 to i9
  %tmp_10 = mul i9 35, %tmp_23
  %tmp_25 = trunc i32 %tmp_7 to i2
  %tmp_11 = add nsw i32 -2, %p_numLayer_load
  %tmp_27 = trunc i32 %tmp_11 to i9
  %tmp_13 = mul i9 35, %tmp_27
  %tmp_30 = trunc i32 %tmp_11 to i2
  br label %.preheader13

.preheader15.preheader:                           ; preds = %.preheader16
  %tmp_12 = trunc i31 %i_1 to i9
  %tmp_1 = mul i9 35, %tmp_12
  %tmp_19 = trunc i31 %i_1 to i2
  %tmp_s = add i31 -1, %i_1
  %tmp_21 = trunc i31 %tmp_s to i9
  %tmp_4 = mul i9 35, %tmp_21
  %tmp_22 = trunc i31 %tmp_s to i2
  br label %.preheader15

.preheader15:                                     ; preds = %3, %.preheader15.preheader
  %j = phi i32 [ %j_3, %3 ], [ 0, %.preheader15.preheader ]
  %p_layerSize_0_load_1 = load i32* @p_layerSize_0, align 4
  %p_layerSize_1_load = load i32* @p_layerSize_1, align 4
  %p_layerSize_2_load = load i32* @p_layerSize_2, align 4
  %p_layerSize_3_load = load i32* @p_layerSize_3, align 4
  %tmp_14 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_1, i32 %p_layerSize_1_load, i32 %p_layerSize_2_load, i32 %p_layerSize_3_load, i2 %tmp_19) nounwind
  %tmp_15 = icmp slt i32 %j, %tmp_14
  %j_3 = add nsw i32 %j, 1
  br i1 %tmp_15, label %.preheader14.preheader, label %4

.preheader14.preheader:                           ; preds = %.preheader15
  %tmp_18 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_1, i32 %p_layerSize_1_load, i32 %p_layerSize_2_load, i32 %p_layerSize_3_load, i2 %tmp_22) nounwind
  %tmp_31 = trunc i32 %j to i9
  %tmp_20 = add i9 %tmp_1, %tmp_31
  %tmp_20_cast = sext i9 %tmp_20 to i64
  %p_uOut_addr_2 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_20_cast
  br label %.preheader14

.preheader14:                                     ; preds = %2, %.preheader14.preheader
  %k = phi i31 [ %k_1, %2 ], [ 0, %.preheader14.preheader ]
  %sum = phi double [ %sum_2, %2 ], [ 0.000000e+00, %.preheader14.preheader ]
  %k_cast = zext i31 %k to i32
  %tmp_29 = icmp slt i32 %k_cast, %tmp_18
  %k_1 = add i31 %k, 1
  br i1 %tmp_29, label %2, label %3

; <label>:2                                       ; preds = %.preheader14
  %tmp_39 = trunc i31 %k to i9
  %tmp_35 = add i9 %tmp_4, %tmp_39
  %tmp_35_cast = sext i9 %tmp_35 to i64
  %p_uOut_addr_1 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_35_cast
  %p_uOut_load = load double* %p_uOut_addr_1, align 8
  %tmp_37 = fmul double %p_uOut_load, 0.000000e+00
  %sum_2 = fadd double %sum, %tmp_37
  br label %.preheader14

; <label>:3                                       ; preds = %.preheader14
  %sum_3 = fadd double %sum, 0.000000e+00
  %tmp_41_to_int = bitcast double %sum_3 to i64
  %tmp_41_neg = xor i64 %tmp_41_to_int, -9223372036854775808
  %tmp_40 = bitcast i64 %tmp_41_neg to double
  %tmp_41 = call double @llvm.exp.f64(double %tmp_40)
  %tmp_42 = fadd double %tmp_41, 1.000000e+00
  %tmp_43 = fdiv double 1.000000e+00, %tmp_42
  store double %tmp_43, double* %p_uOut_addr_2, align 8
  br label %.preheader15

; <label>:4                                       ; preds = %.preheader15
  %i_6 = add i31 %i_1, 1
  br label %.preheader16

.preheader13:                                     ; preds = %6, %.preheader13.preheader
  %i_2 = phi i32 [ %i_7, %6 ], [ 0, %.preheader13.preheader ]
  %sumsoft = phi double [ %sumsoft_1, %6 ], [ 0.000000e+00, %.preheader13.preheader ]
  %p_layerSize_0_load_2 = load i32* @p_layerSize_0, align 4
  %p_layerSize_1_load_1 = load i32* @p_layerSize_1, align 4
  %p_layerSize_2_load_1 = load i32* @p_layerSize_2, align 4
  %p_layerSize_3_load_1 = load i32* @p_layerSize_3, align 4
  %tmp_16 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_2, i32 %p_layerSize_1_load_1, i32 %p_layerSize_2_load_1, i32 %p_layerSize_3_load_1, i2 %tmp_25) nounwind
  %tmp_17 = icmp slt i32 %i_2, %tmp_16
  %i_7 = add nsw i32 %i_2, 1
  br i1 %tmp_17, label %.preheader12.preheader, label %.preheader11

.preheader12.preheader:                           ; preds = %.preheader13
  %tmp_24 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_2, i32 %p_layerSize_1_load_1, i32 %p_layerSize_2_load_1, i32 %p_layerSize_3_load_1, i2 %tmp_30) nounwind
  %tmp_33 = trunc i32 %i_2 to i9
  %tmp_26 = add i9 %tmp_10, %tmp_33
  %tmp_26_cast = sext i9 %tmp_26 to i64
  %p_uOut_addr_4 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_26_cast
  br label %.preheader12

.preheader12:                                     ; preds = %5, %.preheader12.preheader
  %j_1 = phi i31 [ %j_4, %5 ], [ 0, %.preheader12.preheader ]
  %sum_1 = phi double [ %sum_4, %5 ], [ 0.000000e+00, %.preheader12.preheader ]
  %j_1_cast = zext i31 %j_1 to i32
  %tmp_32 = icmp slt i32 %j_1_cast, %tmp_24
  %j_4 = add i31 %j_1, 1
  br i1 %tmp_32, label %5, label %6

; <label>:5                                       ; preds = %.preheader12
  %tmp_44 = trunc i31 %j_1 to i9
  %tmp_46 = add i9 %tmp_13, %tmp_44
  %tmp_49_cast = sext i9 %tmp_46 to i64
  %p_uOut_addr_3 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_49_cast
  %p_uOut_load_1 = load double* %p_uOut_addr_3, align 8
  %tmp_45 = fmul double %p_uOut_load_1, 0.000000e+00
  %sum_4 = fadd double %sum_1, %tmp_45
  br label %.preheader12

; <label>:6                                       ; preds = %.preheader12
  %sum_5 = fadd double %sum_1, 0.000000e+00
  %tmp_47 = call double @llvm.exp.f64(double %sum_5)
  store double %tmp_47, double* %p_uOut_addr_4, align 8
  %sumsoft_1 = fadd double %sumsoft, %tmp_47
  br label %.preheader13

.preheader11:                                     ; preds = %.preheader13, %7
  %i_3 = phi i31 [ %i_8, %7 ], [ 0, %.preheader13 ]
  %i_3_cast = zext i31 %i_3 to i32
  %tmp_28 = icmp slt i32 %i_3_cast, %tmp_16
  %i_8 = add i31 %i_3, 1
  br i1 %tmp_28, label %7, label %8

; <label>:7                                       ; preds = %.preheader11
  %tmp_34 = trunc i31 %i_3 to i9
  %tmp_36 = add i9 %tmp_10, %tmp_34
  %tmp_54_cast = sext i9 %tmp_36 to i64
  %p_uOut_addr_5 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_54_cast
  %p_uOut_load_2 = load double* %p_uOut_addr_5, align 8
  %tmp_38 = fdiv double %p_uOut_load_2, %sumsoft
  store double %tmp_38, double* %p_uOut_addr_5, align 8
  br label %.preheader11

; <label>:8                                       ; preds = %.preheader11
  br i1 %tmp, label %.preheader10.preheader, label %.preheader8

.preheader10.preheader:                           ; preds = %8
  %max = alloca i32
  store i32 0, i32* %max
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %12
  %max_1 = phi i32 [ %i_9, %12 ], [ 1, %.preheader10.preheader ]
  %p_layerSize_0_load_3 = load i32* @p_layerSize_0, align 4
  %p_layerSize_1_load_2 = load i32* @p_layerSize_1, align 4
  %p_layerSize_2_load_2 = load i32* @p_layerSize_2, align 4
  %p_layerSize_3_load_2 = load i32* @p_layerSize_3, align 4
  %tmp_50 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_3, i32 %p_layerSize_1_load_2, i32 %p_layerSize_2_load_2, i32 %p_layerSize_3_load_2, i2 %tmp_25) nounwind
  %tmp_51 = icmp slt i32 %max_1, %tmp_50
  br i1 %tmp_51, label %9, label %13

; <label>:9                                       ; preds = %.preheader10
  %max_load = load i32* %max
  %tmp_53 = sext i32 %max_1 to i64
  %tmp_54 = trunc i32 %max_1 to i9
  %tmp_55 = add i9 %tmp_54, %tmp_10
  %tmp_57_cast = sext i9 %tmp_55 to i64
  %p_uOut_addr_6 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_57_cast
  %p_uOut_load_3 = load double* %p_uOut_addr_6, align 8
  %tmp_56 = sext i32 %max_load to i64
  %tmp_57 = trunc i32 %max_load to i9
  %tmp_58 = add i9 %tmp_57, %tmp_10
  %tmp_59_cast = sext i9 %tmp_58 to i64
  %p_uOut_addr_7 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_59_cast
  %p_uOut_load_4 = load double* %p_uOut_addr_7, align 8
  %p_uOut_load_3_to_int = bitcast double %p_uOut_load_3 to i64
  %tmp_59 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_uOut_load_3_to_int, i32 52, i32 62)
  %tmp_61 = trunc i64 %p_uOut_load_3_to_int to i52
  %p_uOut_load_4_to_int = bitcast double %p_uOut_load_4 to i64
  %tmp_62 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_uOut_load_4_to_int, i32 52, i32 62)
  %tmp_64 = trunc i64 %p_uOut_load_4_to_int to i52
  %notlhs = icmp ne i11 %tmp_59, -1
  %notrhs = icmp eq i52 %tmp_61, 0
  %tmp_65 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i11 %tmp_62, -1
  %notrhs2 = icmp eq i52 %tmp_64, 0
  %tmp_66 = or i1 %notrhs2, %notlhs1
  %tmp_67 = and i1 %tmp_65, %tmp_66
  %tmp_68 = fcmp ogt double %p_uOut_load_3, %p_uOut_load_4
  %tmp_69 = and i1 %tmp_67, %tmp_68
  br i1 %tmp_69, label %10, label %11

; <label>:10                                      ; preds = %9
  %netOut_addr_1 = getelementptr [35 x i32]* %netOut, i64 0, i64 %tmp_56
  store i32 0, i32* %netOut_addr_1, align 4
  store i32 %max_1, i32* %max
  br label %12

; <label>:11                                      ; preds = %9
  %netOut_addr_2 = getelementptr [35 x i32]* %netOut, i64 0, i64 %tmp_53
  store i32 0, i32* %netOut_addr_2, align 4
  br label %12

; <label>:12                                      ; preds = %11, %10
  %i_9 = add nsw i32 %max_1, 1
  br label %.preheader10

; <label>:13                                      ; preds = %.preheader10
  %max_load_1 = load i32* %max
  %tmp_60 = sext i32 %max_load_1 to i64
  %netOut_addr = getelementptr [35 x i32]* %netOut, i64 0, i64 %tmp_60
  store i32 1, i32* %netOut_addr, align 4
  br label %.loopexit9

.preheader8:                                      ; preds = %.preheader7, %8
  %i_5 = phi i31 [ 0, %8 ], [ %i_10, %.preheader7 ]
  %phi_mul = phi i37 [ 0, %8 ], [ %next_mul, %.preheader7 ]
  %tmp_48 = trunc i37 %phi_mul to i9
  %next_mul = add i37 35, %phi_mul
  %i_5_cast = zext i31 %i_5 to i32
  %tmp_49 = icmp slt i32 %i_5_cast, %p_numLayer_load
  %i_10 = add i31 1, %i_5
  br i1 %tmp_49, label %.preheader7.preheader, label %.loopexit9

.preheader7.preheader:                            ; preds = %.preheader8
  %tmp_52 = trunc i31 %i_5 to i2
  br label %.preheader7

.preheader7:                                      ; preds = %14, %.preheader7.preheader
  %j_2 = phi i32 [ %j_5, %14 ], [ 0, %.preheader7.preheader ]
  %p_layerSize_0_load_4 = load i32* @p_layerSize_0, align 4
  %p_layerSize_1_load_3 = load i32* @p_layerSize_1, align 4
  %p_layerSize_2_load_3 = load i32* @p_layerSize_2, align 4
  %p_layerSize_3_load_3 = load i32* @p_layerSize_3, align 4
  %tmp_70 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_4, i32 %p_layerSize_1_load_3, i32 %p_layerSize_2_load_3, i32 %p_layerSize_3_load_3, i2 %tmp_52) nounwind
  %tmp_63 = icmp slt i32 %j_2, %tmp_70
  %j_5 = add nsw i32 %j_2, 1
  br i1 %tmp_63, label %14, label %.preheader8

; <label>:14                                      ; preds = %.preheader7
  %tmp_71 = trunc i32 %j_2 to i9
  %tmp_72 = add i9 %tmp_48, %tmp_71
  %tmp_75_cast = zext i9 %tmp_72 to i64
  %uOut_addr = getelementptr [140 x double]* %uOut, i64 0, i64 %tmp_75_cast
  %p_uOut_addr_8 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_75_cast
  %p_uOut_load_5 = load double* %p_uOut_addr_8, align 8
  store double %p_uOut_load_5, double* %uOut_addr, align 8
  br label %.preheader7

.loopexit9:                                       ; preds = %.preheader8, %13
  br label %.loopexit6

.loopexit6:                                       ; preds = %0, %.loopexit9
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"config", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 5, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 63, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"WandB", metadata !10, metadata !"double", i32 0, i32 63}
!10 = metadata !{metadata !11, metadata !12, metadata !13}
!11 = metadata !{i32 0, i32 3, i32 1}
!12 = metadata !{i32 0, i32 34, i32 1}
!13 = metadata !{i32 0, i32 35, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 63, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"uOut", metadata !18, metadata !"double", i32 0, i32 63}
!18 = metadata !{metadata !11, metadata !12}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 63, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"netIn", metadata !23, metadata !"double", i32 0, i32 63}
!23 = metadata !{metadata !12}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"netOut", metadata !23, metadata !"int", i32 0, i32 31}
