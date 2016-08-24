; ModuleID = 'E:/TFM/ANN_project/ANN_project.hls/ANN_complete/ANN_complete/sol_default/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_uOut = internal global [140 x double] zeroinitializer ; [#uses=9 type=[140 x double]*]
@p_numLayer = internal unnamed_addr global i32 0, align 4 ; [#uses=1 type=i32*]
@p_layerSize_3 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@p_layerSize_2 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@p_layerSize_1 = internal unnamed_addr global i32 0 ; [#uses=4 type=i32*]
@p_layerSize_0 = internal unnamed_addr global i32 0 ; [#uses=5 type=i32*]
@ANN_str = internal unnamed_addr constant [4 x i8] c"ANN\00" ; [#uses=1 type=[4 x i8]*]

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=21]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i9 @_ssdm_op_PartSelect.i9.i37.i32.i32(i37, i32, i32) nounwind readnone

; [#uses=0]
declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i9 @_ssdm_op_PartSelect.i9.i31.i32.i32(i31, i32, i32) nounwind readnone

; [#uses=0]
declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i31.i32.i32(i31, i32, i32) nounwind readnone

; [#uses=2]
define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_5 = trunc i64 %empty to i11              ; [#uses=1 type=i11]
  ret i11 %empty_5
}

; [#uses=6]
define weak i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ] ; [#uses=1 type=i32]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=0]
define void @ANN([6 x i32]* %config, [5040 x double]* %WandB, [140 x double]* %uOut, [35 x double]* %netIn, [35 x i32]* %netOut) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([6 x i32]* %config) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([5040 x double]* %WandB) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap([140 x double]* %uOut) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap([35 x double]* %netIn) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([35 x i32]* %netOut) nounwind, !map !24
  %config_addr = getelementptr [6 x i32]* %config, i64 0, i64 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @ANN_str) nounwind
  call void @llvm.dbg.value(metadata !{[6 x i32]* %config}, i64 0, metadata !28), !dbg !53 ; [debug line = 26:20] [debug variable = config]
  call void @llvm.dbg.value(metadata !{[5040 x double]* %WandB}, i64 0, metadata !54), !dbg !58 ; [debug line = 27:16] [debug variable = WandB]
  call void @llvm.dbg.value(metadata !{[140 x double]* %uOut}, i64 0, metadata !59), !dbg !62 ; [debug line = 28:10] [debug variable = uOut]
  call void @llvm.dbg.value(metadata !{[35 x double]* %netIn}, i64 0, metadata !63), !dbg !65 ; [debug line = 29:16] [debug variable = netIn]
  call void @llvm.dbg.value(metadata !{[35 x i32]* %netOut}, i64 0, metadata !66), !dbg !68 ; [debug line = 30:7] [debug variable = netOut]
  %config_load = load i32* %config_addr, align 4, !dbg !69 ; [#uses=3 type=i32] [debug line = 56:3]
  %tmp = icmp eq i32 %config_load, 0, !dbg !69    ; [#uses=1 type=i1] [debug line = 56:3]
  %p_numLayer_load = load i32* @p_numLayer, align 4, !dbg !71 ; [#uses=4 type=i32] [debug line = 70:11]
  %tmp_2 = icmp eq i32 %config_load, 2            ; [#uses=1 type=i1]
  %tmp_6 = icmp eq i32 %config_load, 0            ; [#uses=1 type=i1]
  %tmp_9 = or i1 %tmp_6, %tmp_2                   ; [#uses=1 type=i1]
  br i1 %tmp_9, label %._crit_edge.preheader, label %.loopexit6

._crit_edge.preheader:                            ; preds = %0
  %p_layerSize_0_load = load i32* @p_layerSize_0, align 16, !dbg !74 ; [#uses=1 type=i32] [debug line = 61:11]
  br label %._crit_edge, !dbg !74                 ; [debug line = 61:11]

._crit_edge:                                      ; preds = %1, %._crit_edge.preheader
  %i = phi i31 [ %i_4, %1 ], [ 0, %._crit_edge.preheader ] ; [#uses=3 type=i31]
  %i_cast = zext i31 %i to i32, !dbg !74          ; [#uses=1 type=i32] [debug line = 61:11]
  %tmp_3 = icmp slt i32 %i_cast, %p_layerSize_0_load, !dbg !74 ; [#uses=1 type=i1] [debug line = 61:11]
  %i_4 = add i31 %i, 1, !dbg !76                  ; [#uses=1 type=i31] [debug line = 61:31]
  br i1 %tmp_3, label %1, label %.preheader16, !dbg !74 ; [debug line = 61:11]

; <label>:1                                       ; preds = %._crit_edge
  %tmp_5 = zext i31 %i to i64, !dbg !77           ; [#uses=2 type=i64] [debug line = 63:4]
  %p_uOut_addr = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_5, !dbg !77 ; [#uses=1 type=double*] [debug line = 63:4]
  %netIn_addr = getelementptr [35 x double]* %netIn, i64 0, i64 %tmp_5, !dbg !77 ; [#uses=1 type=double*] [debug line = 63:4]
  %netIn_load = load double* %netIn_addr, align 8, !dbg !77 ; [#uses=1 type=double] [debug line = 63:4]
  store double %netIn_load, double* %p_uOut_addr, align 8, !dbg !77 ; [debug line = 63:4]
  call void @llvm.dbg.value(metadata !{i31 %i_4}, i64 0, metadata !79), !dbg !76 ; [debug line = 61:31] [debug variable = i]
  br label %._crit_edge, !dbg !76                 ; [debug line = 61:31]

.preheader16:                                     ; preds = %4, %._crit_edge
  %i_1 = phi i31 [ %i_6, %4 ], [ 1, %._crit_edge ] ; [#uses=5 type=i31]
  %i_1_cast = zext i31 %i_1 to i32, !dbg !71      ; [#uses=1 type=i32] [debug line = 70:11]
  %tmp_8 = icmp slt i32 %i_1_cast, %p_numLayer_load, !dbg !71 ; [#uses=1 type=i1] [debug line = 70:11]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_8, label %.preheader15.preheader, label %.preheader13.preheader, !dbg !71 ; [debug line = 70:11]

.preheader13.preheader:                           ; preds = %.preheader16
  %tmp_7 = add nsw i32 -1, %p_numLayer_load, !dbg !80 ; [#uses=2 type=i32] [debug line = 96:11]
  %tmp_23 = trunc i32 %tmp_7 to i9, !dbg !82      ; [#uses=1 type=i9] [debug line = 112:28]
  %tmp_10 = mul i9 35, %tmp_23, !dbg !82          ; [#uses=4 type=i9] [debug line = 112:28]
  %tmp_25 = trunc i32 %tmp_7 to i2                ; [#uses=2 type=i2]
  %tmp_11 = add nsw i32 -2, %p_numLayer_load, !dbg !84 ; [#uses=2 type=i32] [debug line = 101:8]
  %tmp_27 = trunc i32 %tmp_11 to i9, !dbg !86     ; [#uses=1 type=i9] [debug line = 103:8]
  %tmp_13 = mul i9 35, %tmp_27, !dbg !86          ; [#uses=1 type=i9] [debug line = 103:8]
  %tmp_30 = trunc i32 %tmp_11 to i2               ; [#uses=1 type=i2]
  br label %.preheader13, !dbg !80                ; [debug line = 96:11]

.preheader15.preheader:                           ; preds = %.preheader16
  %tmp_12 = trunc i31 %i_1 to i9, !dbg !88        ; [#uses=1 type=i9] [debug line = 88:25]
  %tmp_1 = mul i9 35, %tmp_12, !dbg !88           ; [#uses=1 type=i9] [debug line = 88:25]
  %tmp_19 = trunc i31 %i_1 to i2                  ; [#uses=1 type=i2]
  %tmp_s = add i31 -1, %i_1, !dbg !92             ; [#uses=2 type=i31] [debug line = 77:12]
  %tmp_21 = trunc i31 %tmp_s to i9, !dbg !94      ; [#uses=1 type=i9] [debug line = 79:5]
  %tmp_4 = mul i9 35, %tmp_21, !dbg !94           ; [#uses=1 type=i9] [debug line = 79:5]
  %tmp_22 = trunc i31 %tmp_s to i2                ; [#uses=1 type=i2]
  br label %.preheader15, !dbg !96                ; [debug line = 72:8]

.preheader15:                                     ; preds = %3, %.preheader15.preheader
  %j = phi i32 [ %j_3, %3 ], [ 0, %.preheader15.preheader ] ; [#uses=3 type=i32]
  %p_layerSize_0_load_1 = load i32* @p_layerSize_0, align 4 ; [#uses=2 type=i32]
  %p_layerSize_1_load = load i32* @p_layerSize_1, align 4 ; [#uses=2 type=i32]
  %p_layerSize_2_load = load i32* @p_layerSize_2, align 4 ; [#uses=2 type=i32]
  %p_layerSize_3_load = load i32* @p_layerSize_3, align 4 ; [#uses=2 type=i32]
  %tmp_14 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_1, i32 %p_layerSize_1_load, i32 %p_layerSize_2_load, i32 %p_layerSize_3_load, i2 %tmp_19) nounwind ; [#uses=1 type=i32]
  %tmp_15 = icmp slt i32 %j, %tmp_14, !dbg !96    ; [#uses=1 type=i1] [debug line = 72:8]
  %j_3 = add nsw i32 %j, 1, !dbg !97              ; [#uses=1 type=i32] [debug line = 72:30]
  br i1 %tmp_15, label %.preheader14.preheader, label %4, !dbg !96 ; [debug line = 72:8]

.preheader14.preheader:                           ; preds = %.preheader15
  %tmp_18 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_1, i32 %p_layerSize_1_load, i32 %p_layerSize_2_load, i32 %p_layerSize_3_load, i2 %tmp_22) nounwind ; [#uses=1 type=i32]
  %tmp_31 = trunc i32 %j to i9, !dbg !88          ; [#uses=1 type=i9] [debug line = 88:25]
  %tmp_20 = add i9 %tmp_1, %tmp_31, !dbg !88      ; [#uses=1 type=i9] [debug line = 88:25]
  %tmp_20_cast = sext i9 %tmp_20 to i64, !dbg !88 ; [#uses=1 type=i64] [debug line = 88:25]
  %p_uOut_addr_2 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_20_cast, !dbg !88 ; [#uses=1 type=double*] [debug line = 88:25]
  br label %.preheader14, !dbg !92                ; [debug line = 77:12]

.preheader14:                                     ; preds = %2, %.preheader14.preheader
  %k = phi i31 [ %k_1, %2 ], [ 0, %.preheader14.preheader ] ; [#uses=3 type=i31]
  %sum = phi double [ %sum_2, %2 ], [ 0.000000e+00, %.preheader14.preheader ] ; [#uses=2 type=double]
  %k_cast = zext i31 %k to i32, !dbg !92          ; [#uses=1 type=i32] [debug line = 77:12]
  %tmp_29 = icmp slt i32 %k_cast, %tmp_18, !dbg !92 ; [#uses=1 type=i1] [debug line = 77:12]
  %k_1 = add i31 %k, 1, !dbg !98                  ; [#uses=1 type=i31] [debug line = 77:43]
  br i1 %tmp_29, label %2, label %3, !dbg !92     ; [debug line = 77:12]

; <label>:2                                       ; preds = %.preheader14
  %tmp_39 = trunc i31 %k to i9, !dbg !94          ; [#uses=1 type=i9] [debug line = 79:5]
  %tmp_35 = add i9 %tmp_4, %tmp_39, !dbg !94      ; [#uses=1 type=i9] [debug line = 79:5]
  %tmp_35_cast = sext i9 %tmp_35 to i64, !dbg !94 ; [#uses=1 type=i64] [debug line = 79:5]
  %p_uOut_addr_1 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_35_cast, !dbg !94 ; [#uses=1 type=double*] [debug line = 79:5]
  %p_uOut_load = load double* %p_uOut_addr_1, align 8, !dbg !94 ; [#uses=1 type=double] [debug line = 79:5]
  %tmp_37 = fmul double %p_uOut_load, 0.000000e+00, !dbg !94 ; [#uses=1 type=double] [debug line = 79:5]
  %sum_2 = fadd double %sum, %tmp_37, !dbg !94    ; [#uses=1 type=double] [debug line = 79:5]
  call void @llvm.dbg.value(metadata !{double %sum_2}, i64 0, metadata !99), !dbg !94 ; [debug line = 79:5] [debug variable = sum]
  call void @llvm.dbg.value(metadata !{i31 %k_1}, i64 0, metadata !100), !dbg !98 ; [debug line = 77:43] [debug variable = k]
  br label %.preheader14, !dbg !98                ; [debug line = 77:43]

; <label>:3                                       ; preds = %.preheader14
  %sum_3 = fadd double %sum, 0.000000e+00, !dbg !101 ; [#uses=1 type=double] [debug line = 84:8]
  call void @llvm.dbg.value(metadata !{double %sum_3}, i64 0, metadata !99), !dbg !101 ; [debug line = 84:8] [debug variable = sum]
  %tmp_41_to_int = bitcast double %sum_3 to i64, !dbg !88 ; [#uses=1 type=i64] [debug line = 88:25]
  %tmp_41_neg = xor i64 %tmp_41_to_int, -9223372036854775808, !dbg !88 ; [#uses=1 type=i64] [debug line = 88:25]
  %tmp_40 = bitcast i64 %tmp_41_neg to double, !dbg !88 ; [#uses=1 type=double] [debug line = 88:25]
  %tmp_41 = call double @llvm.exp.f64(double %tmp_40), !dbg !88 ; [#uses=1 type=double] [debug line = 88:25]
  %tmp_42 = fadd double %tmp_41, 1.000000e+00, !dbg !88 ; [#uses=1 type=double] [debug line = 88:25]
  %tmp_43 = fdiv double 1.000000e+00, %tmp_42, !dbg !88 ; [#uses=1 type=double] [debug line = 88:25]
  store double %tmp_43, double* %p_uOut_addr_2, align 8, !dbg !88 ; [debug line = 88:25]
  call void @llvm.dbg.value(metadata !{i32 %j_3}, i64 0, metadata !102), !dbg !97 ; [debug line = 72:30] [debug variable = j]
  br label %.preheader15, !dbg !97                ; [debug line = 72:30]

; <label>:4                                       ; preds = %.preheader15
  %i_6 = add i31 %i_1, 1, !dbg !103               ; [#uses=1 type=i31] [debug line = 70:27]
  call void @llvm.dbg.value(metadata !{i31 %i_6}, i64 0, metadata !79), !dbg !103 ; [debug line = 70:27] [debug variable = i]
  br label %.preheader16, !dbg !103               ; [debug line = 70:27]

.preheader13:                                     ; preds = %6, %.preheader13.preheader
  %i_2 = phi i32 [ %i_7, %6 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i32]
  %sumsoft = phi double [ %sumsoft_1, %6 ], [ 0.000000e+00, %.preheader13.preheader ] ; [#uses=2 type=double]
  %p_layerSize_0_load_2 = load i32* @p_layerSize_0, align 4 ; [#uses=2 type=i32]
  %p_layerSize_1_load_1 = load i32* @p_layerSize_1, align 4 ; [#uses=2 type=i32]
  %p_layerSize_2_load_1 = load i32* @p_layerSize_2, align 4 ; [#uses=2 type=i32]
  %p_layerSize_3_load_1 = load i32* @p_layerSize_3, align 4 ; [#uses=2 type=i32]
  %tmp_16 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_2, i32 %p_layerSize_1_load_1, i32 %p_layerSize_2_load_1, i32 %p_layerSize_3_load_1, i2 %tmp_25) nounwind ; [#uses=2 type=i32]
  %tmp_17 = icmp slt i32 %i_2, %tmp_16, !dbg !80  ; [#uses=1 type=i1] [debug line = 96:11]
  %i_7 = add nsw i32 %i_2, 1, !dbg !104           ; [#uses=1 type=i32] [debug line = 96:56]
  br i1 %tmp_17, label %.preheader12.preheader, label %.preheader11, !dbg !80 ; [debug line = 96:11]

.preheader12.preheader:                           ; preds = %.preheader13
  %tmp_24 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_2, i32 %p_layerSize_1_load_1, i32 %p_layerSize_2_load_1, i32 %p_layerSize_3_load_1, i2 %tmp_30) nounwind ; [#uses=1 type=i32]
  %tmp_33 = trunc i32 %i_2 to i9, !dbg !82        ; [#uses=1 type=i9] [debug line = 112:28]
  %tmp_26 = add i9 %tmp_10, %tmp_33, !dbg !82     ; [#uses=1 type=i9] [debug line = 112:28]
  %tmp_26_cast = sext i9 %tmp_26 to i64, !dbg !82 ; [#uses=1 type=i64] [debug line = 112:28]
  %p_uOut_addr_4 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_26_cast, !dbg !82 ; [#uses=1 type=double*] [debug line = 112:28]
  br label %.preheader12, !dbg !84                ; [debug line = 101:8]

.preheader12:                                     ; preds = %5, %.preheader12.preheader
  %j_1 = phi i31 [ %j_4, %5 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i31]
  %sum_1 = phi double [ %sum_4, %5 ], [ 0.000000e+00, %.preheader12.preheader ] ; [#uses=2 type=double]
  %j_1_cast = zext i31 %j_1 to i32, !dbg !84      ; [#uses=1 type=i32] [debug line = 101:8]
  %tmp_32 = icmp slt i32 %j_1_cast, %tmp_24, !dbg !84 ; [#uses=1 type=i1] [debug line = 101:8]
  %j_4 = add i31 %j_1, 1, !dbg !105               ; [#uses=1 type=i31] [debug line = 101:49]
  br i1 %tmp_32, label %5, label %6, !dbg !84     ; [debug line = 101:8]

; <label>:5                                       ; preds = %.preheader12
  %tmp_44 = trunc i31 %j_1 to i9, !dbg !86        ; [#uses=1 type=i9] [debug line = 103:8]
  %tmp_46 = add i9 %tmp_13, %tmp_44, !dbg !86     ; [#uses=1 type=i9] [debug line = 103:8]
  %tmp_49_cast = sext i9 %tmp_46 to i64, !dbg !86 ; [#uses=1 type=i64] [debug line = 103:8]
  %p_uOut_addr_3 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_49_cast, !dbg !86 ; [#uses=1 type=double*] [debug line = 103:8]
  %p_uOut_load_1 = load double* %p_uOut_addr_3, align 8, !dbg !86 ; [#uses=1 type=double] [debug line = 103:8]
  %tmp_45 = fmul double %p_uOut_load_1, 0.000000e+00, !dbg !86 ; [#uses=1 type=double] [debug line = 103:8]
  %sum_4 = fadd double %sum_1, %tmp_45, !dbg !86  ; [#uses=1 type=double] [debug line = 103:8]
  call void @llvm.dbg.value(metadata !{double %sum_4}, i64 0, metadata !99), !dbg !86 ; [debug line = 103:8] [debug variable = sum]
  call void @llvm.dbg.value(metadata !{i31 %j_4}, i64 0, metadata !102), !dbg !105 ; [debug line = 101:49] [debug variable = j]
  br label %.preheader12, !dbg !105               ; [debug line = 101:49]

; <label>:6                                       ; preds = %.preheader12
  %sum_5 = fadd double %sum_1, 0.000000e+00, !dbg !106 ; [#uses=1 type=double] [debug line = 108:4]
  call void @llvm.dbg.value(metadata !{double %sum_5}, i64 0, metadata !99), !dbg !106 ; [debug line = 108:4] [debug variable = sum]
  %tmp_47 = call double @llvm.exp.f64(double %sum_5), !dbg !82 ; [#uses=2 type=double] [debug line = 112:28]
  store double %tmp_47, double* %p_uOut_addr_4, align 8, !dbg !82 ; [debug line = 112:28]
  %sumsoft_1 = fadd double %sumsoft, %tmp_47, !dbg !107 ; [#uses=1 type=double] [debug line = 113:4]
  call void @llvm.dbg.value(metadata !{double %sumsoft_1}, i64 0, metadata !108), !dbg !107 ; [debug line = 113:4] [debug variable = sumsoft]
  call void @llvm.dbg.value(metadata !{i32 %i_7}, i64 0, metadata !79), !dbg !104 ; [debug line = 96:56] [debug variable = i]
  br label %.preheader13, !dbg !104               ; [debug line = 96:56]

.preheader11:                                     ; preds = %7, %.preheader13
  %i_3 = phi i31 [ %i_8, %7 ], [ 0, %.preheader13 ] ; [#uses=3 type=i31]
  %i_3_cast = zext i31 %i_3 to i32, !dbg !109     ; [#uses=1 type=i32] [debug line = 118:11]
  %tmp_28 = icmp slt i32 %i_3_cast, %tmp_16, !dbg !109 ; [#uses=1 type=i1] [debug line = 118:11]
  %i_8 = add i31 %i_3, 1, !dbg !111               ; [#uses=1 type=i31] [debug line = 118:43]
  br i1 %tmp_28, label %7, label %8, !dbg !109    ; [debug line = 118:11]

; <label>:7                                       ; preds = %.preheader11
  %tmp_34 = trunc i31 %i_3 to i9, !dbg !112       ; [#uses=1 type=i9] [debug line = 120:4]
  %tmp_36 = add i9 %tmp_10, %tmp_34, !dbg !112    ; [#uses=1 type=i9] [debug line = 120:4]
  %tmp_54_cast = sext i9 %tmp_36 to i64, !dbg !112 ; [#uses=1 type=i64] [debug line = 120:4]
  %p_uOut_addr_5 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_54_cast, !dbg !112 ; [#uses=2 type=double*] [debug line = 120:4]
  %p_uOut_load_2 = load double* %p_uOut_addr_5, align 8, !dbg !112 ; [#uses=1 type=double] [debug line = 120:4]
  %tmp_38 = fdiv double %p_uOut_load_2, %sumsoft, !dbg !112 ; [#uses=1 type=double] [debug line = 120:4]
  store double %tmp_38, double* %p_uOut_addr_5, align 8, !dbg !112 ; [debug line = 120:4]
  call void @llvm.dbg.value(metadata !{i31 %i_8}, i64 0, metadata !79), !dbg !111 ; [debug line = 118:43] [debug variable = i]
  br label %.preheader11, !dbg !111               ; [debug line = 118:43]

; <label>:8                                       ; preds = %.preheader11
  br i1 %tmp, label %.preheader10.preheader, label %.preheader8, !dbg !114 ; [debug line = 122:7]

.preheader10.preheader:                           ; preds = %8
  %max = alloca i32                               ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %max}, metadata !115) ; [debug variable = max]
  store i32 0, i32* %max
  br label %.preheader10

.preheader10:                                     ; preds = %12, %.preheader10.preheader
  %max_1 = phi i32 [ %i_9, %12 ], [ 1, %.preheader10.preheader ] ; [#uses=5 type=i32]
  %p_layerSize_0_load_3 = load i32* @p_layerSize_0, align 4 ; [#uses=1 type=i32]
  %p_layerSize_1_load_2 = load i32* @p_layerSize_1, align 4 ; [#uses=1 type=i32]
  %p_layerSize_2_load_2 = load i32* @p_layerSize_2, align 4 ; [#uses=1 type=i32]
  %p_layerSize_3_load_2 = load i32* @p_layerSize_3, align 4 ; [#uses=1 type=i32]
  %tmp_50 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_3, i32 %p_layerSize_1_load_2, i32 %p_layerSize_2_load_2, i32 %p_layerSize_3_load_2, i2 %tmp_25) nounwind ; [#uses=1 type=i32]
  %tmp_51 = icmp slt i32 %max_1, %tmp_50, !dbg !116 ; [#uses=1 type=i1] [debug line = 130:8]
  br i1 %tmp_51, label %9, label %13, !dbg !116   ; [debug line = 130:8]

; <label>:9                                       ; preds = %.preheader10
  %max_load = load i32* %max, !dbg !119           ; [#uses=2 type=i32] [debug line = 132:8]
  %tmp_53 = sext i32 %max_1 to i64, !dbg !119     ; [#uses=1 type=i64] [debug line = 132:8]
  %tmp_54 = trunc i32 %max_1 to i9, !dbg !119     ; [#uses=1 type=i9] [debug line = 132:8]
  %tmp_55 = add i9 %tmp_54, %tmp_10, !dbg !119    ; [#uses=1 type=i9] [debug line = 132:8]
  %tmp_57_cast = sext i9 %tmp_55 to i64, !dbg !119 ; [#uses=1 type=i64] [debug line = 132:8]
  %p_uOut_addr_6 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_57_cast, !dbg !119 ; [#uses=1 type=double*] [debug line = 132:8]
  %p_uOut_load_3 = load double* %p_uOut_addr_6, align 8, !dbg !119 ; [#uses=2 type=double] [debug line = 132:8]
  %tmp_56 = sext i32 %max_load to i64, !dbg !119  ; [#uses=1 type=i64] [debug line = 132:8]
  %tmp_57 = trunc i32 %max_load to i9, !dbg !119  ; [#uses=1 type=i9] [debug line = 132:8]
  %tmp_58 = add i9 %tmp_57, %tmp_10, !dbg !119    ; [#uses=1 type=i9] [debug line = 132:8]
  %tmp_59_cast = sext i9 %tmp_58 to i64, !dbg !119 ; [#uses=1 type=i64] [debug line = 132:8]
  %p_uOut_addr_7 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_59_cast, !dbg !119 ; [#uses=1 type=double*] [debug line = 132:8]
  %p_uOut_load_4 = load double* %p_uOut_addr_7, align 8, !dbg !119 ; [#uses=2 type=double] [debug line = 132:8]
  %p_uOut_load_3_to_int = bitcast double %p_uOut_load_3 to i64 ; [#uses=2 type=i64]
  %tmp_59 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_uOut_load_3_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp_61 = trunc i64 %p_uOut_load_3_to_int to i52 ; [#uses=1 type=i52]
  %p_uOut_load_4_to_int = bitcast double %p_uOut_load_4 to i64 ; [#uses=2 type=i64]
  %tmp_62 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_uOut_load_4_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp_64 = trunc i64 %p_uOut_load_4_to_int to i52 ; [#uses=1 type=i52]
  %notlhs = icmp ne i11 %tmp_59, -1               ; [#uses=1 type=i1]
  %notrhs = icmp eq i52 %tmp_61, 0                ; [#uses=1 type=i1]
  %tmp_65 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i11 %tmp_62, -1              ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i52 %tmp_64, 0               ; [#uses=1 type=i1]
  %tmp_66 = or i1 %notrhs2, %notlhs1              ; [#uses=1 type=i1]
  %tmp_67 = and i1 %tmp_65, %tmp_66               ; [#uses=1 type=i1]
  %tmp_68 = fcmp ogt double %p_uOut_load_3, %p_uOut_load_4, !dbg !119 ; [#uses=1 type=i1] [debug line = 132:8]
  %tmp_69 = and i1 %tmp_67, %tmp_68, !dbg !119    ; [#uses=1 type=i1] [debug line = 132:8]
  br i1 %tmp_69, label %10, label %11, !dbg !119  ; [debug line = 132:8]

; <label>:10                                      ; preds = %9
  %netOut_addr_1 = getelementptr [35 x i32]* %netOut, i64 0, i64 %tmp_56, !dbg !121 ; [#uses=1 type=i32*] [debug line = 134:5]
  store i32 0, i32* %netOut_addr_1, align 4, !dbg !121 ; [debug line = 134:5]
  call void @llvm.dbg.value(metadata !{i32 %max_1}, i64 0, metadata !115), !dbg !123 ; [debug line = 135:5] [debug variable = max]
  store i32 %max_1, i32* %max, !dbg !123          ; [debug line = 135:5]
  br label %12, !dbg !124                         ; [debug line = 136:3]

; <label>:11                                      ; preds = %9
  %netOut_addr_2 = getelementptr [35 x i32]* %netOut, i64 0, i64 %tmp_53, !dbg !125 ; [#uses=1 type=i32*] [debug line = 139:5]
  store i32 0, i32* %netOut_addr_2, align 4, !dbg !125 ; [debug line = 139:5]
  br label %12

; <label>:12                                      ; preds = %11, %10
  %i_9 = add nsw i32 %max_1, 1, !dbg !127         ; [#uses=1 type=i32] [debug line = 130:47]
  call void @llvm.dbg.value(metadata !{i32 %i_9}, i64 0, metadata !79), !dbg !127 ; [debug line = 130:47] [debug variable = i]
  br label %.preheader10, !dbg !127               ; [debug line = 130:47]

; <label>:13                                      ; preds = %.preheader10
  %max_load_1 = load i32* %max, !dbg !128         ; [#uses=1 type=i32] [debug line = 142:4]
  %tmp_60 = sext i32 %max_load_1 to i64, !dbg !128 ; [#uses=1 type=i64] [debug line = 142:4]
  %netOut_addr = getelementptr [35 x i32]* %netOut, i64 0, i64 %tmp_60, !dbg !128 ; [#uses=1 type=i32*] [debug line = 142:4]
  store i32 1, i32* %netOut_addr, align 4, !dbg !128 ; [debug line = 142:4]
  br label %.loopexit9, !dbg !129                 ; [debug line = 143:2]

.preheader8:                                      ; preds = %.preheader7, %8
  %i_5 = phi i31 [ 0, %8 ], [ %i_10, %.preheader7 ] ; [#uses=3 type=i31]
  %phi_mul = phi i37 [ 0, %8 ], [ %next_mul, %.preheader7 ] ; [#uses=2 type=i37]
  %tmp_48 = trunc i37 %phi_mul to i9              ; [#uses=1 type=i9]
  %next_mul = add i37 35, %phi_mul                ; [#uses=1 type=i37]
  %i_5_cast = zext i31 %i_5 to i32, !dbg !130     ; [#uses=1 type=i32] [debug line = 146:8]
  %tmp_49 = icmp slt i32 %i_5_cast, %p_numLayer_load, !dbg !130 ; [#uses=1 type=i1] [debug line = 146:8]
  %i_10 = add i31 1, %i_5, !dbg !133              ; [#uses=1 type=i31] [debug line = 146:26]
  call void @llvm.dbg.value(metadata !{i31 %i_10}, i64 0, metadata !79), !dbg !133 ; [debug line = 146:26] [debug variable = i]
  br i1 %tmp_49, label %.preheader7.preheader, label %.loopexit9, !dbg !130 ; [debug line = 146:8]

.preheader7.preheader:                            ; preds = %.preheader8
  %tmp_52 = trunc i31 %i_5 to i2                  ; [#uses=1 type=i2]
  br label %.preheader7, !dbg !134                ; [debug line = 148:12]

.preheader7:                                      ; preds = %14, %.preheader7.preheader
  %j_2 = phi i32 [ %j_5, %14 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i32]
  %p_layerSize_0_load_4 = load i32* @p_layerSize_0, align 4 ; [#uses=1 type=i32]
  %p_layerSize_1_load_3 = load i32* @p_layerSize_1, align 4 ; [#uses=1 type=i32]
  %p_layerSize_2_load_3 = load i32* @p_layerSize_2, align 4 ; [#uses=1 type=i32]
  %p_layerSize_3_load_3 = load i32* @p_layerSize_3, align 4 ; [#uses=1 type=i32]
  %tmp_70 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %p_layerSize_0_load_4, i32 %p_layerSize_1_load_3, i32 %p_layerSize_2_load_3, i32 %p_layerSize_3_load_3, i2 %tmp_52) nounwind ; [#uses=1 type=i32]
  %tmp_63 = icmp slt i32 %j_2, %tmp_70, !dbg !134 ; [#uses=1 type=i1] [debug line = 148:12]
  %j_5 = add nsw i32 %j_2, 1, !dbg !137           ; [#uses=1 type=i32] [debug line = 148:34]
  br i1 %tmp_63, label %14, label %.preheader8, !dbg !134 ; [debug line = 148:12]

; <label>:14                                      ; preds = %.preheader7
  %tmp_71 = trunc i32 %j_2 to i9, !dbg !138       ; [#uses=1 type=i9] [debug line = 150:5]
  %tmp_72 = add i9 %tmp_48, %tmp_71, !dbg !138    ; [#uses=1 type=i9] [debug line = 150:5]
  %tmp_75_cast = zext i9 %tmp_72 to i64, !dbg !138 ; [#uses=2 type=i64] [debug line = 150:5]
  %uOut_addr = getelementptr [140 x double]* %uOut, i64 0, i64 %tmp_75_cast, !dbg !138 ; [#uses=1 type=double*] [debug line = 150:5]
  %p_uOut_addr_8 = getelementptr [140 x double]* @p_uOut, i64 0, i64 %tmp_75_cast, !dbg !138 ; [#uses=1 type=double*] [debug line = 150:5]
  %p_uOut_load_5 = load double* %p_uOut_addr_8, align 8, !dbg !138 ; [#uses=1 type=double] [debug line = 150:5]
  store double %p_uOut_load_5, double* %uOut_addr, align 8, !dbg !138 ; [debug line = 150:5]
  call void @llvm.dbg.value(metadata !{i32 %j_5}, i64 0, metadata !102), !dbg !137 ; [debug line = 148:34] [debug variable = j]
  br label %.preheader7, !dbg !137                ; [debug line = 148:34]

.loopexit9:                                       ; preds = %.preheader8, %13
  br label %.loopexit6, !dbg !140                 ; [debug line = 154:5]

.loopexit6:                                       ; preds = %.loopexit9, %0
  ret void, !dbg !141                             ; [debug line = 220:1]
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
!28 = metadata !{i32 786689, metadata !29, metadata !"config", null, i32 26, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 786478, i32 0, metadata !30, metadata !"ANN", metadata !"ANN", metadata !"_Z3ANNPKiPA35_A36_KdPA35_dPS1_Pi", metadata !30, i32 26, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !48, i32 31} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786473, metadata !"ANN.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/ANN_complete", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !33, metadata !36, metadata !43, metadata !46, metadata !47}
!33 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!35 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ]
!37 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80640, i64 64, i32 0, i32 0, metadata !38, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ]
!38 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ]
!39 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 786465, i64 0, i64 34}       ; [ DW_TAG_subrange_type ]
!42 = metadata !{i32 786465, i64 0, i64 35}       ; [ DW_TAG_subrange_type ]
!43 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2240, i64 64, i32 0, i32 0, metadata !39, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{metadata !41}
!46 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ]
!47 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !34, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ]
!53 = metadata !{i32 26, i32 20, metadata !29, null}
!54 = metadata !{i32 786689, metadata !29, metadata !"WandB", null, i32 27, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 322560, i64 64, i32 0, i32 0, metadata !38, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!56 = metadata !{metadata !57, metadata !41, metadata !42}
!57 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!58 = metadata !{i32 27, i32 16, metadata !29, null}
!59 = metadata !{i32 786689, metadata !29, metadata !"uOut", null, i32 28, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8960, i64 64, i32 0, i32 0, metadata !39, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !57, metadata !41}
!62 = metadata !{i32 28, i32 10, metadata !29, null}
!63 = metadata !{i32 786689, metadata !29, metadata !"netIn", null, i32 29, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !38, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{i32 29, i32 16, metadata !29, null}
!66 = metadata !{i32 786689, metadata !29, metadata !"netOut", null, i32 30, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1120, i64 32, i32 0, i32 0, metadata !35, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!68 = metadata !{i32 30, i32 7, metadata !29, null}
!69 = metadata !{i32 56, i32 3, metadata !70, null}
!70 = metadata !{i32 786443, metadata !29, i32 31, i32 1, metadata !30, i32 0} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 70, i32 11, metadata !72, null}
!72 = metadata !{i32 786443, metadata !73, i32 70, i32 7, metadata !30, i32 4} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786443, metadata !70, i32 57, i32 5, metadata !30, i32 1} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 61, i32 11, metadata !75, null}
!75 = metadata !{i32 786443, metadata !73, i32 61, i32 7, metadata !30, i32 2} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 61, i32 31, metadata !75, null}
!77 = metadata !{i32 63, i32 4, metadata !78, null}
!78 = metadata !{i32 786443, metadata !75, i32 62, i32 2, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !30, i32 50, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 96, i32 11, metadata !81, null}
!81 = metadata !{i32 786443, metadata !73, i32 96, i32 7, metadata !30, i32 10} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 112, i32 28, metadata !83, null}
!83 = metadata !{i32 786443, metadata !81, i32 97, i32 2, metadata !30, i32 11} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 101, i32 8, metadata !85, null}
!85 = metadata !{i32 786443, metadata !83, i32 101, i32 4, metadata !30, i32 12} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 103, i32 8, metadata !87, null}
!87 = metadata !{i32 786443, metadata !85, i32 102, i32 6, metadata !30, i32 13} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 88, i32 25, metadata !89, null}
!89 = metadata !{i32 786443, metadata !90, i32 73, i32 6, metadata !30, i32 7} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 786443, metadata !91, i32 72, i32 4, metadata !30, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !72, i32 71, i32 2, metadata !30, i32 5} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 77, i32 12, metadata !93, null}
!93 = metadata !{i32 786443, metadata !89, i32 77, i32 8, metadata !30, i32 8} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 79, i32 5, metadata !95, null}
!95 = metadata !{i32 786443, metadata !93, i32 78, i32 3, metadata !30, i32 9} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 72, i32 8, metadata !90, null}
!97 = metadata !{i32 72, i32 30, metadata !90, null}
!98 = metadata !{i32 77, i32 43, metadata !93, null}
!99 = metadata !{i32 786688, metadata !70, metadata !"sum", metadata !30, i32 51, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 786688, metadata !70, metadata !"k", metadata !30, i32 50, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 84, i32 8, metadata !89, null}
!102 = metadata !{i32 786688, metadata !70, metadata !"j", metadata !30, i32 50, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 70, i32 27, metadata !72, null}
!104 = metadata !{i32 96, i32 56, metadata !81, null}
!105 = metadata !{i32 101, i32 49, metadata !85, null}
!106 = metadata !{i32 108, i32 4, metadata !83, null}
!107 = metadata !{i32 113, i32 4, metadata !83, null}
!108 = metadata !{i32 786688, metadata !70, metadata !"sumsoft", metadata !30, i32 51, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 118, i32 11, metadata !110, null}
!110 = metadata !{i32 786443, metadata !73, i32 118, i32 7, metadata !30, i32 14} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 118, i32 43, metadata !110, null}
!112 = metadata !{i32 120, i32 4, metadata !113, null}
!113 = metadata !{i32 786443, metadata !110, i32 119, i32 2, metadata !30, i32 15} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 122, i32 7, metadata !73, null}
!115 = metadata !{i32 786688, metadata !70, metadata !"max", metadata !30, i32 50, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 130, i32 8, metadata !117, null}
!117 = metadata !{i32 786443, metadata !118, i32 130, i32 4, metadata !30, i32 17} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 786443, metadata !73, i32 123, i32 2, metadata !30, i32 16} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 132, i32 8, metadata !120, null}
!120 = metadata !{i32 786443, metadata !117, i32 131, i32 6, metadata !30, i32 18} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 134, i32 5, metadata !122, null}
!122 = metadata !{i32 786443, metadata !120, i32 133, i32 3, metadata !30, i32 19} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 135, i32 5, metadata !122, null}
!124 = metadata !{i32 136, i32 3, metadata !122, null}
!125 = metadata !{i32 139, i32 5, metadata !126, null}
!126 = metadata !{i32 786443, metadata !120, i32 138, i32 3, metadata !30, i32 20} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 130, i32 47, metadata !117, null}
!128 = metadata !{i32 142, i32 4, metadata !118, null}
!129 = metadata !{i32 143, i32 2, metadata !118, null}
!130 = metadata !{i32 146, i32 8, metadata !131, null}
!131 = metadata !{i32 786443, metadata !132, i32 146, i32 4, metadata !30, i32 22} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !73, i32 145, i32 2, metadata !30, i32 21} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 146, i32 26, metadata !131, null}
!134 = metadata !{i32 148, i32 12, metadata !135, null}
!135 = metadata !{i32 786443, metadata !136, i32 148, i32 8, metadata !30, i32 24} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786443, metadata !131, i32 147, i32 6, metadata !30, i32 23} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 148, i32 34, metadata !135, null}
!138 = metadata !{i32 150, i32 5, metadata !139, null}
!139 = metadata !{i32 786443, metadata !135, i32 149, i32 3, metadata !30, i32 25} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 154, i32 5, metadata !73, null}
!141 = metadata !{i32 220, i32 1, metadata !70, null}
