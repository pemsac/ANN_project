; ModuleID = 'E:/TFM/ANN_project/ANN_project.hls/ANN_complete/ANN_complete/sol_default/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@_uOut = internal unnamed_addr global [4 x [35 x double]] zeroinitializer, align 16 ; [#uses=9 type=[4 x [35 x double]]*]
@_numLayer = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@_layerSize.3 = internal unnamed_addr global i32 0 ; [#uses=9 type=i32*]
@_layerSize.2 = internal unnamed_addr global i32 0 ; [#uses=9 type=i32*]
@_layerSize.1 = internal unnamed_addr global i32 0 ; [#uses=9 type=i32*]
@_layerSize.0 = internal unnamed_addr global i32 0 ; [#uses=8 type=i32*]
@_WandB = internal unnamed_addr global [4 x [35 x [36 x double]]] zeroinitializer, align 16 ; [#uses=6 type=[4 x [35 x [36 x double]]]*]
@ANN.str = internal unnamed_addr constant [4 x i8] c"ANN\00" ; [#uses=1 type=[4 x i8]*]

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=28]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=8]
declare i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2)

; [#uses=0]
define void @ANN([6 x i32]* %config, [4 x [35 x [36 x double]]]* %WandB, [4 x [35 x double]]* %uOut, [35 x double]* %netIn, [35 x i32]* %netOut) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([6 x i32]* %config) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap([4 x [35 x [36 x double]]]* %WandB) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap([4 x [35 x double]]* %uOut) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap([35 x double]* %netIn) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecBitsMap([35 x i32]* %netOut) nounwind, !map !59
  %config.addr = getelementptr [6 x i32]* %config, i64 0, i64 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @ANN.str) nounwind
  call void @llvm.dbg.value(metadata !{[6 x i32]* %config}, i64 0, metadata !63), !dbg !67 ; [debug line = 26:20] [debug variable = config]
  call void @llvm.dbg.value(metadata !{[4 x [35 x [36 x double]]]* %WandB}, i64 0, metadata !68), !dbg !70 ; [debug line = 27:16] [debug variable = WandB]
  call void @llvm.dbg.value(metadata !{[4 x [35 x double]]* %uOut}, i64 0, metadata !71), !dbg !72 ; [debug line = 28:10] [debug variable = uOut]
  call void @llvm.dbg.value(metadata !{[35 x double]* %netIn}, i64 0, metadata !73), !dbg !75 ; [debug line = 29:16] [debug variable = netIn]
  call void @llvm.dbg.value(metadata !{[35 x i32]* %netOut}, i64 0, metadata !76), !dbg !78 ; [debug line = 30:7] [debug variable = netOut]
  %config.load = load i32* %config.addr, align 4, !dbg !79 ; [#uses=4 type=i32] [debug line = 56:3]
  %tmp = icmp eq i32 %config.load, 0, !dbg !79    ; [#uses=1 type=i1] [debug line = 56:3]
  %_numLayer.load = load i32* @_numLayer, align 4, !dbg !81 ; [#uses=5 type=i32] [debug line = 70:11]
  switch i32 %config.load, label %17 [
    i32 2, label %._crit_edge.preheader
    i32 0, label %._crit_edge.preheader
  ]

._crit_edge.preheader:                            ; preds = %0, %0
  %_layerSize.0.load = load i32* @_layerSize.0, align 16, !dbg !84 ; [#uses=1 type=i32] [debug line = 61:11]
  br label %._crit_edge, !dbg !84                 ; [debug line = 61:11]

._crit_edge:                                      ; preds = %1, %._crit_edge.preheader
  %i = phi i31 [ %i.4, %1 ], [ 0, %._crit_edge.preheader ] ; [#uses=3 type=i31]
  %i.cast = zext i31 %i to i32, !dbg !84          ; [#uses=1 type=i32] [debug line = 61:11]
  %tmp.3 = icmp slt i32 %i.cast, %_layerSize.0.load, !dbg !84 ; [#uses=1 type=i1] [debug line = 61:11]
  br i1 %tmp.3, label %1, label %.preheader16, !dbg !84 ; [debug line = 61:11]

; <label>:1                                       ; preds = %._crit_edge
  %tmp.5 = zext i31 %i to i64, !dbg !86           ; [#uses=2 type=i64] [debug line = 63:4]
  %netIn.addr = getelementptr [35 x double]* %netIn, i64 0, i64 %tmp.5, !dbg !86 ; [#uses=1 type=double*] [debug line = 63:4]
  %netIn.load = load double* %netIn.addr, align 8, !dbg !86 ; [#uses=1 type=double] [debug line = 63:4]
  %_uOut.addr = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 0, i64 %tmp.5, !dbg !86 ; [#uses=1 type=double*] [debug line = 63:4]
  store double %netIn.load, double* %_uOut.addr, align 8, !dbg !86 ; [debug line = 63:4]
  %i.4 = add i31 %i, 1, !dbg !88                  ; [#uses=1 type=i31] [debug line = 61:31]
  call void @llvm.dbg.value(metadata !{i31 %i.4}, i64 0, metadata !89), !dbg !88 ; [debug line = 61:31] [debug variable = i]
  br label %._crit_edge, !dbg !88                 ; [debug line = 61:31]

.preheader16:                                     ; preds = %5, %._crit_edge
  %i.1 = phi i31 [ %i.10, %5 ], [ 1, %._crit_edge ] ; [#uses=5 type=i31]
  %i.1.cast = zext i31 %i.1 to i32, !dbg !81      ; [#uses=1 type=i32] [debug line = 70:11]
  %tmp.8 = icmp slt i32 %i.1.cast, %_numLayer.load, !dbg !81 ; [#uses=1 type=i1] [debug line = 70:11]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.8, label %.preheader15.preheader, label %.preheader13.preheader, !dbg !81 ; [debug line = 70:11]

.preheader13.preheader:                           ; preds = %.preheader16
  %tmp.13 = add nsw i32 %_numLayer.load, -1, !dbg !90 ; [#uses=2 type=i32] [debug line = 96:11]
  %tmp.15 = sext i32 %tmp.13 to i64, !dbg !90     ; [#uses=6 type=i64] [debug line = 96:11]
  %tmp.19.t = trunc i32 %tmp.13 to i2             ; [#uses=2 type=i2]
  %tmp.16 = add nsw i32 %_numLayer.load, -2, !dbg !92 ; [#uses=2 type=i32] [debug line = 101:8]
  %tmp.17 = sext i32 %tmp.16 to i64, !dbg !92     ; [#uses=1 type=i64] [debug line = 101:8]
  %tmp.27.t = trunc i32 %tmp.16 to i2             ; [#uses=1 type=i2]
  br label %.preheader13, !dbg !90                ; [debug line = 96:11]

.preheader15.preheader:                           ; preds = %.preheader16
  %tmp.6 = zext i31 %i.1 to i64, !dbg !95         ; [#uses=3 type=i64] [debug line = 72:8]
  %i.1.t = trunc i31 %i.1 to i2                   ; [#uses=1 type=i2]
  %tmp.11 = add i31 %i.1, -1, !dbg !98            ; [#uses=2 type=i31] [debug line = 77:12]
  %tmp.12 = zext i31 %tmp.11 to i64, !dbg !98     ; [#uses=1 type=i64] [debug line = 77:12]
  %tmp.12.t = trunc i31 %tmp.11 to i2             ; [#uses=1 type=i2]
  br label %.preheader15, !dbg !95                ; [debug line = 72:8]

.preheader15:                                     ; preds = %4, %.preheader15.preheader
  %j = phi i32 [ %j.5, %4 ], [ 0, %.preheader15.preheader ] ; [#uses=3 type=i32]
  %_layerSize.0.load.1 = load i32* @_layerSize.0, align 4 ; [#uses=2 type=i32]
  %_layerSize.1.load.2 = load i32* @_layerSize.1, align 4 ; [#uses=2 type=i32]
  %_layerSize.2.load.2 = load i32* @_layerSize.2, align 4 ; [#uses=2 type=i32]
  %_layerSize.3.load.2 = load i32* @_layerSize.3, align 4 ; [#uses=2 type=i32]
  %tmp.21 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %_layerSize.0.load.1, i32 %_layerSize.1.load.2, i32 %_layerSize.2.load.2, i32 %_layerSize.3.load.2, i2 %i.1.t) nounwind ; [#uses=1 type=i32]
  %tmp.18 = icmp slt i32 %j, %tmp.21, !dbg !95    ; [#uses=1 type=i1] [debug line = 72:8]
  br i1 %tmp.18, label %.preheader14.preheader, label %5, !dbg !95 ; [debug line = 72:8]

.preheader14.preheader:                           ; preds = %.preheader15
  %tmp.23 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %_layerSize.0.load.1, i32 %_layerSize.1.load.2, i32 %_layerSize.2.load.2, i32 %_layerSize.3.load.2, i2 %tmp.12.t) nounwind ; [#uses=2 type=i32]
  %tmp.24 = sext i32 %j to i64, !dbg !101         ; [#uses=3 type=i64] [debug line = 79:5]
  br label %.preheader14, !dbg !98                ; [debug line = 77:12]

.preheader14:                                     ; preds = %3, %.preheader14.preheader
  %k = phi i31 [ %k.3, %3 ], [ 0, %.preheader14.preheader ] ; [#uses=3 type=i31]
  %sum = phi double [ %sum.2, %3 ], [ 0.000000e+00, %.preheader14.preheader ] ; [#uses=2 type=double]
  %k.cast = zext i31 %k to i32, !dbg !98          ; [#uses=1 type=i32] [debug line = 77:12]
  %tmp.29 = icmp slt i32 %k.cast, %tmp.23, !dbg !98 ; [#uses=1 type=i1] [debug line = 77:12]
  br i1 %tmp.29, label %3, label %4, !dbg !98     ; [debug line = 77:12]

; <label>:3                                       ; preds = %.preheader14
  %tmp.33 = zext i31 %k to i64, !dbg !101         ; [#uses=2 type=i64] [debug line = 79:5]
  %_uOut.addr.1 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.12, i64 %tmp.33, !dbg !101 ; [#uses=1 type=double*] [debug line = 79:5]
  %_uOut.load = load double* %_uOut.addr.1, align 8, !dbg !101 ; [#uses=1 type=double] [debug line = 79:5]
  %_WandB.addr = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.6, i64 %tmp.24, i64 %tmp.33, !dbg !101 ; [#uses=1 type=double*] [debug line = 79:5]
  %_WandB.load = load double* %_WandB.addr, align 8, !dbg !101 ; [#uses=1 type=double] [debug line = 79:5]
  %tmp.38 = fmul double %_uOut.load, %_WandB.load, !dbg !101 ; [#uses=1 type=double] [debug line = 79:5]
  %sum.2 = fadd double %sum, %tmp.38, !dbg !101   ; [#uses=1 type=double] [debug line = 79:5]
  call void @llvm.dbg.value(metadata !{double %sum.2}, i64 0, metadata !103), !dbg !101 ; [debug line = 79:5] [debug variable = sum]
  %k.3 = add i31 %k, 1, !dbg !104                 ; [#uses=1 type=i31] [debug line = 77:43]
  call void @llvm.dbg.value(metadata !{i31 %k.3}, i64 0, metadata !105), !dbg !104 ; [debug line = 77:43] [debug variable = k]
  br label %.preheader14, !dbg !104               ; [debug line = 77:43]

; <label>:4                                       ; preds = %.preheader14
  %sum.lcssa = phi double [ %sum, %.preheader14 ] ; [#uses=1 type=double]
  %tmp.39 = sext i32 %tmp.23 to i64, !dbg !106    ; [#uses=1 type=i64] [debug line = 84:8]
  %_WandB.addr.1 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.6, i64 %tmp.24, i64 %tmp.39, !dbg !106 ; [#uses=1 type=double*] [debug line = 84:8]
  %_WandB.load.1 = load double* %_WandB.addr.1, align 8, !dbg !106 ; [#uses=1 type=double] [debug line = 84:8]
  %sum.3 = fadd double %sum.lcssa, %_WandB.load.1, !dbg !106 ; [#uses=1 type=double] [debug line = 84:8]
  call void @llvm.dbg.value(metadata !{double %sum.3}, i64 0, metadata !103), !dbg !106 ; [debug line = 84:8] [debug variable = sum]
  %tmp.41_to_int = bitcast double %sum.3 to i64, !dbg !107 ; [#uses=1 type=i64] [debug line = 88:25]
  %tmp.41_neg = xor i64 %tmp.41_to_int, -9223372036854775808, !dbg !107 ; [#uses=1 type=i64] [debug line = 88:25]
  %tmp.40 = bitcast i64 %tmp.41_neg to double, !dbg !107 ; [#uses=1 type=double] [debug line = 88:25]
  %tmp.41 = call double @llvm.exp.f64(double %tmp.40), !dbg !107 ; [#uses=1 type=double] [debug line = 88:25]
  %tmp.42 = fadd double %tmp.41, 1.000000e+00, !dbg !107 ; [#uses=1 type=double] [debug line = 88:25]
  %tmp.43 = fdiv double 1.000000e+00, %tmp.42, !dbg !107 ; [#uses=1 type=double] [debug line = 88:25]
  %_uOut.addr.2 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.6, i64 %tmp.24, !dbg !107 ; [#uses=1 type=double*] [debug line = 88:25]
  store double %tmp.43, double* %_uOut.addr.2, align 8, !dbg !107 ; [debug line = 88:25]
  %j.5 = add nsw i32 %j, 1, !dbg !108             ; [#uses=1 type=i32] [debug line = 72:30]
  call void @llvm.dbg.value(metadata !{i32 %j.5}, i64 0, metadata !109), !dbg !108 ; [debug line = 72:30] [debug variable = j]
  br label %.preheader15, !dbg !108               ; [debug line = 72:30]

; <label>:5                                       ; preds = %.preheader15
  %i.10 = add i31 %i.1, 1, !dbg !110              ; [#uses=1 type=i31] [debug line = 70:27]
  call void @llvm.dbg.value(metadata !{i31 %i.10}, i64 0, metadata !89), !dbg !110 ; [debug line = 70:27] [debug variable = i]
  br label %.preheader16, !dbg !110               ; [debug line = 70:27]

.preheader13:                                     ; preds = %7, %.preheader13.preheader
  %i.2 = phi i32 [ %i.12, %7 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i32]
  %sumsoft = phi double [ %sumsoft.1, %7 ], [ 0.000000e+00, %.preheader13.preheader ] ; [#uses=2 type=double]
  %_layerSize.0.load.2 = load i32* @_layerSize.0, align 4 ; [#uses=2 type=i32]
  %_layerSize.1.load.3 = load i32* @_layerSize.1, align 4 ; [#uses=2 type=i32]
  %_layerSize.2.load.3 = load i32* @_layerSize.2, align 4 ; [#uses=2 type=i32]
  %_layerSize.3.load.3 = load i32* @_layerSize.3, align 4 ; [#uses=2 type=i32]
  %tmp.22 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %_layerSize.0.load.2, i32 %_layerSize.1.load.3, i32 %_layerSize.2.load.3, i32 %_layerSize.3.load.3, i2 %tmp.19.t) nounwind ; [#uses=2 type=i32]
  %tmp.19 = icmp slt i32 %i.2, %tmp.22, !dbg !90  ; [#uses=1 type=i1] [debug line = 96:11]
  br i1 %tmp.19, label %.preheader12.preheader, label %.preheader11.preheader, !dbg !90 ; [debug line = 96:11]

.preheader11.preheader:                           ; preds = %.preheader13
  %.lcssa = phi i32 [ %tmp.22, %.preheader13 ]    ; [#uses=1 type=i32]
  %sumsoft.lcssa = phi double [ %sumsoft, %.preheader13 ] ; [#uses=1 type=double]
  br label %.preheader11, !dbg !111               ; [debug line = 118:11]

.preheader12.preheader:                           ; preds = %.preheader13
  %tmp.26 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %_layerSize.0.load.2, i32 %_layerSize.1.load.3, i32 %_layerSize.2.load.3, i32 %_layerSize.3.load.3, i2 %tmp.27.t) nounwind ; [#uses=2 type=i32]
  %tmp.27 = sext i32 %i.2 to i64, !dbg !113       ; [#uses=3 type=i64] [debug line = 103:8]
  br label %.preheader12, !dbg !92                ; [debug line = 101:8]

.preheader12:                                     ; preds = %6, %.preheader12.preheader
  %j.1 = phi i31 [ %j.6, %6 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i31]
  %sum.1 = phi double [ %sum.4, %6 ], [ 0.000000e+00, %.preheader12.preheader ] ; [#uses=2 type=double]
  %j.1.cast = zext i31 %j.1 to i32, !dbg !92      ; [#uses=1 type=i32] [debug line = 101:8]
  %tmp.32 = icmp slt i32 %j.1.cast, %tmp.26, !dbg !92 ; [#uses=1 type=i1] [debug line = 101:8]
  br i1 %tmp.32, label %6, label %7, !dbg !92     ; [debug line = 101:8]

; <label>:6                                       ; preds = %.preheader12
  %tmp.44 = zext i31 %j.1 to i64, !dbg !113       ; [#uses=2 type=i64] [debug line = 103:8]
  %_uOut.addr.3 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.17, i64 %tmp.44, !dbg !113 ; [#uses=1 type=double*] [debug line = 103:8]
  %_uOut.load.1 = load double* %_uOut.addr.3, align 8, !dbg !113 ; [#uses=1 type=double] [debug line = 103:8]
  %_WandB.addr.2 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.15, i64 %tmp.27, i64 %tmp.44, !dbg !113 ; [#uses=1 type=double*] [debug line = 103:8]
  %_WandB.load.2 = load double* %_WandB.addr.2, align 8, !dbg !113 ; [#uses=1 type=double] [debug line = 103:8]
  %tmp.45 = fmul double %_uOut.load.1, %_WandB.load.2, !dbg !113 ; [#uses=1 type=double] [debug line = 103:8]
  %sum.4 = fadd double %sum.1, %tmp.45, !dbg !113 ; [#uses=1 type=double] [debug line = 103:8]
  call void @llvm.dbg.value(metadata !{double %sum.4}, i64 0, metadata !103), !dbg !113 ; [debug line = 103:8] [debug variable = sum]
  %j.6 = add i31 %j.1, 1, !dbg !115               ; [#uses=1 type=i31] [debug line = 101:49]
  call void @llvm.dbg.value(metadata !{i31 %j.6}, i64 0, metadata !109), !dbg !115 ; [debug line = 101:49] [debug variable = j]
  br label %.preheader12, !dbg !115               ; [debug line = 101:49]

; <label>:7                                       ; preds = %.preheader12
  %sum.1.lcssa = phi double [ %sum.1, %.preheader12 ] ; [#uses=1 type=double]
  %tmp.46 = sext i32 %tmp.26 to i64, !dbg !116    ; [#uses=1 type=i64] [debug line = 108:4]
  %_WandB.addr.3 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.15, i64 %tmp.27, i64 %tmp.46, !dbg !116 ; [#uses=1 type=double*] [debug line = 108:4]
  %_WandB.load.3 = load double* %_WandB.addr.3, align 8, !dbg !116 ; [#uses=1 type=double] [debug line = 108:4]
  %sum.5 = fadd double %sum.1.lcssa, %_WandB.load.3, !dbg !116 ; [#uses=1 type=double] [debug line = 108:4]
  call void @llvm.dbg.value(metadata !{double %sum.5}, i64 0, metadata !103), !dbg !116 ; [debug line = 108:4] [debug variable = sum]
  %tmp.47 = call double @llvm.exp.f64(double %sum.5), !dbg !117 ; [#uses=2 type=double] [debug line = 112:28]
  %_uOut.addr.4 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.15, i64 %tmp.27, !dbg !117 ; [#uses=1 type=double*] [debug line = 112:28]
  store double %tmp.47, double* %_uOut.addr.4, align 8, !dbg !117 ; [debug line = 112:28]
  %sumsoft.1 = fadd double %sumsoft, %tmp.47, !dbg !118 ; [#uses=1 type=double] [debug line = 113:4]
  call void @llvm.dbg.value(metadata !{double %sumsoft.1}, i64 0, metadata !119), !dbg !118 ; [debug line = 113:4] [debug variable = sumsoft]
  %i.12 = add nsw i32 %i.2, 1, !dbg !120          ; [#uses=1 type=i32] [debug line = 96:56]
  call void @llvm.dbg.value(metadata !{i32 %i.12}, i64 0, metadata !89), !dbg !120 ; [debug line = 96:56] [debug variable = i]
  br label %.preheader13, !dbg !120               ; [debug line = 96:56]

.preheader11:                                     ; preds = %8, %.preheader11.preheader
  %i.3 = phi i31 [ %i.13, %8 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i31]
  %i.3.cast = zext i31 %i.3 to i32, !dbg !111     ; [#uses=1 type=i32] [debug line = 118:11]
  %tmp.28 = icmp slt i32 %i.3.cast, %.lcssa, !dbg !111 ; [#uses=1 type=i1] [debug line = 118:11]
  br i1 %tmp.28, label %8, label %9, !dbg !111    ; [debug line = 118:11]

; <label>:8                                       ; preds = %.preheader11
  %tmp.34 = zext i31 %i.3 to i64, !dbg !121       ; [#uses=1 type=i64] [debug line = 120:4]
  %_uOut.addr.5 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.15, i64 %tmp.34, !dbg !121 ; [#uses=2 type=double*] [debug line = 120:4]
  %_uOut.load.2 = load double* %_uOut.addr.5, align 8, !dbg !121 ; [#uses=1 type=double] [debug line = 120:4]
  %tmp.48 = fdiv double %_uOut.load.2, %sumsoft.lcssa, !dbg !121 ; [#uses=1 type=double] [debug line = 120:4]
  store double %tmp.48, double* %_uOut.addr.5, align 8, !dbg !121 ; [debug line = 120:4]
  %i.13 = add i31 %i.3, 1, !dbg !123              ; [#uses=1 type=i31] [debug line = 118:43]
  call void @llvm.dbg.value(metadata !{i31 %i.13}, i64 0, metadata !89), !dbg !123 ; [debug line = 118:43] [debug variable = i]
  br label %.preheader11, !dbg !123               ; [debug line = 118:43]

; <label>:9                                       ; preds = %.preheader11
  br i1 %tmp, label %.preheader10, label %.preheader8, !dbg !124 ; [debug line = 122:7]

.preheader10:                                     ; preds = %13, %9
  %max.2 = phi i32 [ %i.15, %13 ], [ 1, %9 ]      ; [#uses=4 type=i32]
  %max = phi i32 [ %max.1, %13 ], [ 0, %9 ]       ; [#uses=3 type=i32]
  %_layerSize.0.load.4 = load i32* @_layerSize.0, align 4 ; [#uses=1 type=i32]
  %_layerSize.1.load.5 = load i32* @_layerSize.1, align 4 ; [#uses=1 type=i32]
  %_layerSize.2.load.5 = load i32* @_layerSize.2, align 4 ; [#uses=1 type=i32]
  %_layerSize.3.load.5 = load i32* @_layerSize.3, align 4 ; [#uses=1 type=i32]
  %tmp.50 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %_layerSize.0.load.4, i32 %_layerSize.1.load.5, i32 %_layerSize.2.load.5, i32 %_layerSize.3.load.5, i2 %tmp.19.t) nounwind ; [#uses=1 type=i32]
  %tmp.51 = icmp slt i32 %max.2, %tmp.50, !dbg !125 ; [#uses=1 type=i1] [debug line = 130:8]
  br i1 %tmp.51, label %10, label %14, !dbg !125  ; [debug line = 130:8]

; <label>:10                                      ; preds = %.preheader10
  %tmp.57 = sext i32 %max.2 to i64, !dbg !128     ; [#uses=2 type=i64] [debug line = 132:8]
  %_uOut.addr.6 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.15, i64 %tmp.57, !dbg !128 ; [#uses=1 type=double*] [debug line = 132:8]
  %_uOut.load.3 = load double* %_uOut.addr.6, align 8, !dbg !128 ; [#uses=2 type=double] [debug line = 132:8]
  %tmp.58 = sext i32 %max to i64, !dbg !128       ; [#uses=2 type=i64] [debug line = 132:8]
  %_uOut.addr.7 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.15, i64 %tmp.58, !dbg !128 ; [#uses=1 type=double*] [debug line = 132:8]
  %_uOut.load.4 = load double* %_uOut.addr.7, align 8, !dbg !128 ; [#uses=2 type=double] [debug line = 132:8]
  %_uOut.load.3_to_int = bitcast double %_uOut.load.3 to i64 ; [#uses=2 type=i64]
  %tmp.62 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %_uOut.load.3_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp.65 = trunc i64 %_uOut.load.3_to_int to i52 ; [#uses=1 type=i52]
  %_uOut.load.4_to_int = bitcast double %_uOut.load.4 to i64 ; [#uses=2 type=i64]
  %tmp.66 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %_uOut.load.4_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp.67 = trunc i64 %_uOut.load.4_to_int to i52 ; [#uses=1 type=i52]
  %notlhs = icmp ne i11 %tmp.62, -1               ; [#uses=1 type=i1]
  %notrhs = icmp eq i52 %tmp.65, 0                ; [#uses=1 type=i1]
  %tmp.68 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i11 %tmp.66, -1              ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i52 %tmp.67, 0               ; [#uses=1 type=i1]
  %tmp.69 = or i1 %notrhs2, %notlhs1              ; [#uses=1 type=i1]
  %tmp.70 = and i1 %tmp.68, %tmp.69               ; [#uses=1 type=i1]
  %tmp.71 = fcmp ogt double %_uOut.load.3, %_uOut.load.4, !dbg !128 ; [#uses=1 type=i1] [debug line = 132:8]
  %tmp.72 = and i1 %tmp.70, %tmp.71, !dbg !128    ; [#uses=1 type=i1] [debug line = 132:8]
  br i1 %tmp.72, label %11, label %12, !dbg !128  ; [debug line = 132:8]

; <label>:11                                      ; preds = %10
  %netOut.addr.1 = getelementptr [35 x i32]* %netOut, i64 0, i64 %tmp.58, !dbg !130 ; [#uses=1 type=i32*] [debug line = 134:5]
  store i32 0, i32* %netOut.addr.1, align 4, !dbg !130 ; [debug line = 134:5]
  call void @llvm.dbg.value(metadata !{i32 %max.2}, i64 0, metadata !132), !dbg !133 ; [debug line = 135:5] [debug variable = max]
  br label %13, !dbg !134                         ; [debug line = 136:3]

; <label>:12                                      ; preds = %10
  %netOut.addr.2 = getelementptr [35 x i32]* %netOut, i64 0, i64 %tmp.57, !dbg !135 ; [#uses=1 type=i32*] [debug line = 139:5]
  store i32 0, i32* %netOut.addr.2, align 4, !dbg !135 ; [debug line = 139:5]
  br label %13

; <label>:13                                      ; preds = %12, %11
  %max.1 = phi i32 [ %max.2, %11 ], [ %max, %12 ] ; [#uses=1 type=i32]
  %i.15 = add nsw i32 %max.2, 1, !dbg !137        ; [#uses=1 type=i32] [debug line = 130:47]
  call void @llvm.dbg.value(metadata !{i32 %i.15}, i64 0, metadata !89), !dbg !137 ; [debug line = 130:47] [debug variable = i]
  br label %.preheader10, !dbg !137               ; [debug line = 130:47]

; <label>:14                                      ; preds = %.preheader10
  %max.lcssa = phi i32 [ %max, %.preheader10 ]    ; [#uses=1 type=i32]
  %tmp.60 = sext i32 %max.lcssa to i64, !dbg !138 ; [#uses=1 type=i64] [debug line = 142:4]
  %netOut.addr = getelementptr [35 x i32]* %netOut, i64 0, i64 %tmp.60, !dbg !138 ; [#uses=1 type=i32*] [debug line = 142:4]
  store i32 1, i32* %netOut.addr, align 4, !dbg !138 ; [debug line = 142:4]
  br label %.loopexit9, !dbg !139                 ; [debug line = 143:2]

.preheader8:                                      ; preds = %16, %9
  %i.5 = phi i31 [ %i.16, %16 ], [ 0, %9 ]        ; [#uses=4 type=i31]
  %i.5.cast = zext i31 %i.5 to i32, !dbg !140     ; [#uses=1 type=i32] [debug line = 146:8]
  %tmp.56 = icmp slt i32 %i.5.cast, %_numLayer.load, !dbg !140 ; [#uses=1 type=i1] [debug line = 146:8]
  br i1 %tmp.56, label %.preheader7.preheader, label %.loopexit9, !dbg !140 ; [debug line = 146:8]

.preheader7.preheader:                            ; preds = %.preheader8
  %tmp.61 = zext i31 %i.5 to i64, !dbg !143       ; [#uses=2 type=i64] [debug line = 148:12]
  %i.5.t = trunc i31 %i.5 to i2                   ; [#uses=1 type=i2]
  br label %.preheader7, !dbg !143                ; [debug line = 148:12]

.preheader7:                                      ; preds = %15, %.preheader7.preheader
  %j.2 = phi i32 [ %j.9, %15 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i32]
  %_layerSize.0.load.6 = load i32* @_layerSize.0, align 4 ; [#uses=1 type=i32]
  %_layerSize.1.load.7 = load i32* @_layerSize.1, align 4 ; [#uses=1 type=i32]
  %_layerSize.2.load.7 = load i32* @_layerSize.2, align 4 ; [#uses=1 type=i32]
  %_layerSize.3.load.7 = load i32* @_layerSize.3, align 4 ; [#uses=1 type=i32]
  %tmp.73 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %_layerSize.0.load.6, i32 %_layerSize.1.load.7, i32 %_layerSize.2.load.7, i32 %_layerSize.3.load.7, i2 %i.5.t) nounwind ; [#uses=1 type=i32]
  %tmp.63 = icmp slt i32 %j.2, %tmp.73, !dbg !143 ; [#uses=1 type=i1] [debug line = 148:12]
  br i1 %tmp.63, label %15, label %16, !dbg !143  ; [debug line = 148:12]

; <label>:15                                      ; preds = %.preheader7
  %tmp.64 = sext i32 %j.2 to i64, !dbg !146       ; [#uses=2 type=i64] [debug line = 150:5]
  %_uOut.addr.8 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.61, i64 %tmp.64, !dbg !146 ; [#uses=1 type=double*] [debug line = 150:5]
  %_uOut.load.5 = load double* %_uOut.addr.8, align 8, !dbg !146 ; [#uses=1 type=double] [debug line = 150:5]
  %uOut.addr = getelementptr [4 x [35 x double]]* %uOut, i64 0, i64 %tmp.61, i64 %tmp.64, !dbg !146 ; [#uses=1 type=double*] [debug line = 150:5]
  store double %_uOut.load.5, double* %uOut.addr, align 8, !dbg !146 ; [debug line = 150:5]
  %j.9 = add nsw i32 %j.2, 1, !dbg !148           ; [#uses=1 type=i32] [debug line = 148:34]
  call void @llvm.dbg.value(metadata !{i32 %j.9}, i64 0, metadata !109), !dbg !148 ; [debug line = 148:34] [debug variable = j]
  br label %.preheader7, !dbg !148                ; [debug line = 148:34]

; <label>:16                                      ; preds = %.preheader7
  %i.16 = add i31 %i.5, 1, !dbg !149              ; [#uses=1 type=i31] [debug line = 146:26]
  call void @llvm.dbg.value(metadata !{i31 %i.16}, i64 0, metadata !89), !dbg !149 ; [debug line = 146:26] [debug variable = i]
  br label %.preheader8, !dbg !149                ; [debug line = 146:26]

.loopexit9:                                       ; preds = %.preheader8, %14
  br label %31, !dbg !150                         ; [debug line = 154:5]

; <label>:17                                      ; preds = %0
  %tmp.2 = icmp eq i32 %config.load, 1, !dbg !151 ; [#uses=1 type=i1] [debug line = 159:8]
  br i1 %tmp.2, label %18, label %26, !dbg !151   ; [debug line = 159:8]

; <label>:18                                      ; preds = %17
  %config.addr.1 = getelementptr [6 x i32]* %config, i64 0, i64 1, !dbg !152 ; [#uses=1 type=i32*] [debug line = 165:7]
  %config.load.1 = load i32* %config.addr.1, align 4, !dbg !152 ; [#uses=3 type=i32] [debug line = 165:7]
  store i32 %config.load.1, i32* @_numLayer, align 4, !dbg !152 ; [debug line = 165:7]
  br label %19, !dbg !154                         ; [debug line = 171:11]

; <label>:19                                      ; preds = %21, %18
  %i.6 = phi i31 [ 0, %18 ], [ %i.9, %21 ]        ; [#uses=3 type=i31]
  %i.6.cast = zext i31 %i.6 to i32, !dbg !154     ; [#uses=2 type=i32] [debug line = 171:11]
  %tmp.7 = icmp slt i32 %i.6.cast, %config.load.1, !dbg !154 ; [#uses=1 type=i1] [debug line = 171:11]
  br i1 %tmp.7, label %20, label %.preheader5, !dbg !154 ; [debug line = 171:11]

; <label>:20                                      ; preds = %19
  %tmp.9 = add nsw i32 %i.6.cast, 2, !dbg !156    ; [#uses=1 type=i32] [debug line = 173:4]
  %tmp. = sext i32 %tmp.9 to i64, !dbg !156       ; [#uses=1 type=i64] [debug line = 173:4]
  %config.addr.2 = getelementptr [6 x i32]* %config, i64 0, i64 %tmp., !dbg !156 ; [#uses=1 type=i32*] [debug line = 173:4]
  %config.load.2 = load i32* %config.addr.2, align 4, !dbg !156 ; [#uses=4 type=i32] [debug line = 173:4]
  %i.6.t = trunc i31 %i.6 to i2                   ; [#uses=1 type=i2]
  switch i2 %i.6.t, label %branch11 [
    i2 0, label %branch8
    i2 1, label %branch9
    i2 -2, label %branch10
  ], !dbg !156                                    ; [debug line = 173:4]

; <label>:21                                      ; preds = %branch11, %branch10, %branch9, %branch8
  %i.9 = add i31 %i.6, 1, !dbg !158               ; [#uses=1 type=i31] [debug line = 171:29]
  call void @llvm.dbg.value(metadata !{i31 %i.9}, i64 0, metadata !89), !dbg !158 ; [debug line = 171:29] [debug variable = i]
  br label %19, !dbg !158                         ; [debug line = 171:29]

.preheader5:                                      ; preds = %25, %19
  %i.7 = phi i31 [ %i.14, %25 ], [ 1, %19 ]       ; [#uses=4 type=i31]
  %i.7.cast = zext i31 %i.7 to i32, !dbg !159     ; [#uses=1 type=i32] [debug line = 183:11]
  %tmp.10 = icmp slt i32 %i.7.cast, %config.load.1, !dbg !159 ; [#uses=1 type=i1] [debug line = 183:11]
  %22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.10, label %.preheader4.preheader, label %.loopexit6, !dbg !159 ; [debug line = 183:11]

.preheader4.preheader:                            ; preds = %.preheader5
  %tmp.20 = zext i31 %i.7 to i64, !dbg !161       ; [#uses=2 type=i64] [debug line = 185:8]
  %i.7.t = trunc i31 %i.7 to i2                   ; [#uses=2 type=i2]
  %tmp.23.t = add i2 %i.7.t, -1, !dbg !164        ; [#uses=1 type=i2] [debug line = 187:12]
  br label %.preheader4, !dbg !161                ; [debug line = 185:8]

.preheader4:                                      ; preds = %24, %.preheader4.preheader
  %j.3 = phi i32 [ %j.8, %24 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i32]
  switch i2 %i.7.t, label %branch7 [
    i2 1, label %branch5
    i2 -2, label %branch6
  ], !dbg !161                                    ; [debug line = 185:8]

.preheader443:                                    ; preds = %branch7, %branch6, %branch5
  %_layerSize.load.6.phi = phi i32 [ %_layerSize.1.load, %branch5 ], [ %_layerSize.2.load, %branch6 ], [ %_layerSize.3.load, %branch7 ], !dbg !161 ; [#uses=1 type=i32] [debug line = 185:8]
  %tmp.30 = icmp slt i32 %j.3, %_layerSize.load.6.phi, !dbg !161 ; [#uses=1 type=i1] [debug line = 185:8]
  br i1 %tmp.30, label %.preheader3.preheader, label %25, !dbg !161 ; [debug line = 185:8]

.preheader3.preheader:                            ; preds = %.preheader443
  %tmp.35 = sext i32 %j.3 to i64, !dbg !167       ; [#uses=2 type=i64] [debug line = 189:5]
  br label %.preheader3, !dbg !164                ; [debug line = 187:12]

.preheader3:                                      ; preds = %23, %.preheader3.preheader
  %k.1 = phi i32 [ %k.5, %23 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i32]
  %_layerSize.0.load.5 = load i32* @_layerSize.0, align 4 ; [#uses=1 type=i32]
  %_layerSize.1.load.6 = load i32* @_layerSize.1, align 4 ; [#uses=1 type=i32]
  %_layerSize.2.load.6 = load i32* @_layerSize.2, align 4 ; [#uses=1 type=i32]
  %_layerSize.3.load.6 = load i32* @_layerSize.3, align 4 ; [#uses=1 type=i32]
  %tmp.59 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %_layerSize.0.load.5, i32 %_layerSize.1.load.6, i32 %_layerSize.2.load.6, i32 %_layerSize.3.load.6, i2 %tmp.23.t) nounwind ; [#uses=1 type=i32]
  %tmp.52 = add nsw i32 %tmp.59, 1, !dbg !164     ; [#uses=1 type=i32] [debug line = 187:12]
  %tmp.53 = icmp slt i32 %k.1, %tmp.52, !dbg !164 ; [#uses=1 type=i1] [debug line = 187:12]
  br i1 %tmp.53, label %23, label %24, !dbg !164  ; [debug line = 187:12]

; <label>:23                                      ; preds = %.preheader3
  %tmp.55 = sext i32 %k.1 to i64, !dbg !167       ; [#uses=2 type=i64] [debug line = 189:5]
  %WandB.addr = getelementptr [4 x [35 x [36 x double]]]* %WandB, i64 0, i64 %tmp.20, i64 %tmp.35, i64 %tmp.55, !dbg !167 ; [#uses=1 type=double*] [debug line = 189:5]
  %WandB.load.1 = load double* %WandB.addr, align 8, !dbg !167 ; [#uses=1 type=double] [debug line = 189:5]
  %_WandB.addr.5 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.20, i64 %tmp.35, i64 %tmp.55, !dbg !167 ; [#uses=1 type=double*] [debug line = 189:5]
  store double %WandB.load.1, double* %_WandB.addr.5, align 8, !dbg !167 ; [debug line = 189:5]
  %k.5 = add nsw i32 %k.1, 1, !dbg !169           ; [#uses=1 type=i32] [debug line = 187:38]
  call void @llvm.dbg.value(metadata !{i32 %k.5}, i64 0, metadata !105), !dbg !169 ; [debug line = 187:38] [debug variable = k]
  br label %.preheader3, !dbg !169                ; [debug line = 187:38]

; <label>:24                                      ; preds = %.preheader3
  %j.8 = add nsw i32 %j.3, 1, !dbg !170           ; [#uses=1 type=i32] [debug line = 185:30]
  call void @llvm.dbg.value(metadata !{i32 %j.8}, i64 0, metadata !109), !dbg !170 ; [debug line = 185:30] [debug variable = j]
  br label %.preheader4, !dbg !170                ; [debug line = 185:30]

; <label>:25                                      ; preds = %.preheader443
  %i.14 = add i31 %i.7, 1, !dbg !171              ; [#uses=1 type=i31] [debug line = 183:29]
  call void @llvm.dbg.value(metadata !{i31 %i.14}, i64 0, metadata !89), !dbg !171 ; [debug line = 183:29] [debug variable = i]
  br label %.preheader5, !dbg !171                ; [debug line = 183:29]

; <label>:26                                      ; preds = %17
  %tmp.4 = icmp eq i32 %config.load, 3, !dbg !172 ; [#uses=1 type=i1] [debug line = 200:8]
  br i1 %tmp.4, label %.preheader2, label %.loopexit, !dbg !172 ; [debug line = 200:8]

.preheader2:                                      ; preds = %30, %26
  %i.8 = phi i31 [ %i.11, %30 ], [ 1, %26 ]       ; [#uses=4 type=i31]
  %i.8.cast = zext i31 %i.8 to i32, !dbg !173     ; [#uses=1 type=i32] [debug line = 209:11]
  %tmp.1 = icmp slt i32 %i.8.cast, %_numLayer.load, !dbg !173 ; [#uses=1 type=i1] [debug line = 209:11]
  %27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.1, label %.preheader1.preheader, label %.loopexit, !dbg !173 ; [debug line = 209:11]

.preheader1.preheader:                            ; preds = %.preheader2
  %tmp.14 = zext i31 %i.8 to i64, !dbg !176       ; [#uses=2 type=i64] [debug line = 211:8]
  %i.8.t = trunc i31 %i.8 to i2                   ; [#uses=2 type=i2]
  %tmp.16.t = add i2 %i.8.t, -1, !dbg !179        ; [#uses=1 type=i2] [debug line = 213:12]
  br label %.preheader1, !dbg !176                ; [debug line = 211:8]

.preheader1:                                      ; preds = %29, %.preheader1.preheader
  %j.4 = phi i32 [ %j.7, %29 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i32]
  switch i2 %i.8.t, label %branch3 [
    i2 1, label %branch1
    i2 -2, label %branch2
  ], !dbg !176                                    ; [debug line = 211:8]

.preheader130:                                    ; preds = %branch3, %branch2, %branch1
  %_layerSize.load.3.phi = phi i32 [ %_layerSize.1.load.1, %branch1 ], [ %_layerSize.2.load.1, %branch2 ], [ %_layerSize.3.load.1, %branch3 ], !dbg !176 ; [#uses=1 type=i32] [debug line = 211:8]
  %tmp.25 = icmp slt i32 %j.4, %_layerSize.load.3.phi, !dbg !176 ; [#uses=1 type=i1] [debug line = 211:8]
  br i1 %tmp.25, label %.preheader.preheader, label %30, !dbg !176 ; [debug line = 211:8]

.preheader.preheader:                             ; preds = %.preheader130
  %tmp.31 = sext i32 %j.4 to i64, !dbg !182       ; [#uses=2 type=i64] [debug line = 215:5]
  br label %.preheader, !dbg !179                 ; [debug line = 213:12]

.preheader:                                       ; preds = %28, %.preheader.preheader
  %k.2 = phi i32 [ %k.4, %28 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %_layerSize.0.load.3 = load i32* @_layerSize.0, align 4 ; [#uses=1 type=i32]
  %_layerSize.1.load.4 = load i32* @_layerSize.1, align 4 ; [#uses=1 type=i32]
  %_layerSize.2.load.4 = load i32* @_layerSize.2, align 4 ; [#uses=1 type=i32]
  %_layerSize.3.load.4 = load i32* @_layerSize.3, align 4 ; [#uses=1 type=i32]
  %tmp.49 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %_layerSize.0.load.3, i32 %_layerSize.1.load.4, i32 %_layerSize.2.load.4, i32 %_layerSize.3.load.4, i2 %tmp.16.t) nounwind ; [#uses=1 type=i32]
  %tmp.36 = add nsw i32 %tmp.49, 1, !dbg !179     ; [#uses=1 type=i32] [debug line = 213:12]
  %tmp.37 = icmp slt i32 %k.2, %tmp.36, !dbg !179 ; [#uses=1 type=i1] [debug line = 213:12]
  br i1 %tmp.37, label %28, label %29, !dbg !179  ; [debug line = 213:12]

; <label>:28                                      ; preds = %.preheader
  %tmp.54 = sext i32 %k.2 to i64, !dbg !182       ; [#uses=2 type=i64] [debug line = 215:5]
  %WandB.addr.1 = getelementptr [4 x [35 x [36 x double]]]* %WandB, i64 0, i64 %tmp.14, i64 %tmp.31, i64 %tmp.54, !dbg !182 ; [#uses=1 type=double*] [debug line = 215:5]
  %WandB.load = load double* %WandB.addr.1, align 8, !dbg !182 ; [#uses=1 type=double] [debug line = 215:5]
  %_WandB.addr.4 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.14, i64 %tmp.31, i64 %tmp.54, !dbg !182 ; [#uses=1 type=double*] [debug line = 215:5]
  store double %WandB.load, double* %_WandB.addr.4, align 8, !dbg !182 ; [debug line = 215:5]
  %k.4 = add nsw i32 %k.2, 1, !dbg !184           ; [#uses=1 type=i32] [debug line = 213:38]
  call void @llvm.dbg.value(metadata !{i32 %k.4}, i64 0, metadata !105), !dbg !184 ; [debug line = 213:38] [debug variable = k]
  br label %.preheader, !dbg !184                 ; [debug line = 213:38]

; <label>:29                                      ; preds = %.preheader
  %j.7 = add nsw i32 %j.4, 1, !dbg !185           ; [#uses=1 type=i32] [debug line = 211:30]
  call void @llvm.dbg.value(metadata !{i32 %j.7}, i64 0, metadata !109), !dbg !185 ; [debug line = 211:30] [debug variable = j]
  br label %.preheader1, !dbg !185                ; [debug line = 211:30]

; <label>:30                                      ; preds = %.preheader130
  %i.11 = add i31 %i.8, 1, !dbg !186              ; [#uses=1 type=i31] [debug line = 209:29]
  call void @llvm.dbg.value(metadata !{i31 %i.11}, i64 0, metadata !89), !dbg !186 ; [debug line = 209:29] [debug variable = i]
  br label %.preheader2, !dbg !186                ; [debug line = 209:29]

.loopexit:                                        ; preds = %.preheader2, %26
  br label %.loopexit6

.loopexit6:                                       ; preds = %.loopexit, %.preheader5
  br label %31

; <label>:31                                      ; preds = %.loopexit6, %.loopexit9
  ret void, !dbg !187                             ; [debug line = 220:1]

branch1:                                          ; preds = %.preheader1
  %_layerSize.1.load.1 = load i32* @_layerSize.1, align 4, !dbg !176 ; [#uses=1 type=i32] [debug line = 211:8]
  br label %.preheader130, !dbg !176              ; [debug line = 211:8]

branch2:                                          ; preds = %.preheader1
  %_layerSize.2.load.1 = load i32* @_layerSize.2, align 4, !dbg !176 ; [#uses=1 type=i32] [debug line = 211:8]
  br label %.preheader130, !dbg !176              ; [debug line = 211:8]

branch3:                                          ; preds = %.preheader1
  %_layerSize.3.load.1 = load i32* @_layerSize.3, align 4, !dbg !176 ; [#uses=1 type=i32] [debug line = 211:8]
  br label %.preheader130, !dbg !176              ; [debug line = 211:8]

branch5:                                          ; preds = %.preheader4
  %_layerSize.1.load = load i32* @_layerSize.1, align 4, !dbg !161 ; [#uses=1 type=i32] [debug line = 185:8]
  br label %.preheader443, !dbg !161              ; [debug line = 185:8]

branch6:                                          ; preds = %.preheader4
  %_layerSize.2.load = load i32* @_layerSize.2, align 4, !dbg !161 ; [#uses=1 type=i32] [debug line = 185:8]
  br label %.preheader443, !dbg !161              ; [debug line = 185:8]

branch7:                                          ; preds = %.preheader4
  %_layerSize.3.load = load i32* @_layerSize.3, align 4, !dbg !161 ; [#uses=1 type=i32] [debug line = 185:8]
  br label %.preheader443, !dbg !161              ; [debug line = 185:8]

branch8:                                          ; preds = %20
  store i32 %config.load.2, i32* @_layerSize.0, align 4, !dbg !156 ; [debug line = 173:4]
  br label %21, !dbg !156                         ; [debug line = 173:4]

branch9:                                          ; preds = %20
  store i32 %config.load.2, i32* @_layerSize.1, align 4, !dbg !156 ; [debug line = 173:4]
  br label %21, !dbg !156                         ; [debug line = 173:4]

branch10:                                         ; preds = %20
  store i32 %config.load.2, i32* @_layerSize.2, align 4, !dbg !156 ; [debug line = 173:4]
  br label %21, !dbg !156                         ; [debug line = 173:4]

branch11:                                         ; preds = %20
  store i32 %config.load.2, i32* @_layerSize.3, align 4, !dbg !156 ; [debug line = 173:4]
  br label %21, !dbg !156                         ; [debug line = 173:4]
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"E:/TFM/ANN_project/ANN_project.hls/ANN_complete/ANN_complete/sol_default/.autopilot/db/ANN.pragma.2.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/ANN_complete", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !28, metadata !29, metadata !32}
!3 = metadata !{i32 786484, i32 0, metadata !4, metadata !"_uOut", metadata !"_uOut", metadata !"", metadata !5, i32 43, metadata !25, i32 1, i32 1, [4 x [35 x double]]* @_uOut} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ANN", metadata !"ANN", metadata !"_Z3ANNPKiPA35_A36_KdPA35_dPS1_Pi", metadata !5, i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 31} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !"ANN.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/ANN_complete", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!7 = metadata !{null, metadata !8, metadata !11, metadata !18, metadata !21, metadata !22}
!8 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80640, i64 64, i32 0, i32 0, metadata !13, metadata !15, i32 0, i32 0} ; [ DW_TAG_array_type ]
!13 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!14 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786465, i64 0, i64 34}       ; [ DW_TAG_subrange_type ]
!17 = metadata !{i32 786465, i64 0, i64 35}       ; [ DW_TAG_subrange_type ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2240, i64 64, i32 0, i32 0, metadata !14, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{metadata !16}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8960, i64 64, i32 0, i32 0, metadata !14, metadata !26, i32 0, i32 0} ; [ DW_TAG_array_type ]
!26 = metadata !{metadata !27, metadata !16}
!27 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!28 = metadata !{i32 786484, i32 0, metadata !4, metadata !"_numLayer", metadata !"_numLayer", metadata !"", metadata !5, i32 46, metadata !10, i32 1, i32 1, i32* @_numLayer} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, metadata !4, metadata !"_WandB", metadata !"_WandB", metadata !"", metadata !5, i32 42, metadata !30, i32 1, i32 1, [4 x [35 x [36 x double]]]* @_WandB} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 322560, i64 64, i32 0, i32 0, metadata !14, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ]
!31 = metadata !{metadata !27, metadata !16, metadata !17}
!32 = metadata !{i32 786484, i32 0, metadata !4, metadata !"_layerSize", metadata !"_layerSize", metadata !"", metadata !5, i32 47, metadata !33, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !10, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{metadata !27}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"config", metadata !39, metadata !"int", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 5, i32 1}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 63, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"WandB", metadata !45, metadata !"double", i32 0, i32 63}
!45 = metadata !{metadata !46, metadata !47, metadata !48}
!46 = metadata !{i32 0, i32 3, i32 1}
!47 = metadata !{i32 0, i32 34, i32 1}
!48 = metadata !{i32 0, i32 35, i32 1}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 63, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"uOut", metadata !53, metadata !"double", i32 0, i32 63}
!53 = metadata !{metadata !46, metadata !47}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 63, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"netIn", metadata !58, metadata !"double", i32 0, i32 63}
!58 = metadata !{metadata !47}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"netOut", metadata !58, metadata !"int", i32 0, i32 31}
!63 = metadata !{i32 786689, metadata !4, metadata !"config", null, i32 26, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !9, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ]
!67 = metadata !{i32 26, i32 20, metadata !4, null}
!68 = metadata !{i32 786689, metadata !4, metadata !"WandB", null, i32 27, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 322560, i64 64, i32 0, i32 0, metadata !13, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ]
!70 = metadata !{i32 27, i32 16, metadata !4, null}
!71 = metadata !{i32 786689, metadata !4, metadata !"uOut", null, i32 28, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 28, i32 10, metadata !4, null}
!73 = metadata !{i32 786689, metadata !4, metadata !"netIn", null, i32 29, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !13, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!75 = metadata !{i32 29, i32 16, metadata !4, null}
!76 = metadata !{i32 786689, metadata !4, metadata !"netOut", null, i32 30, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1120, i64 32, i32 0, i32 0, metadata !10, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!78 = metadata !{i32 30, i32 7, metadata !4, null}
!79 = metadata !{i32 56, i32 3, metadata !80, null}
!80 = metadata !{i32 786443, metadata !4, i32 31, i32 1, metadata !5, i32 0} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 70, i32 11, metadata !82, null}
!82 = metadata !{i32 786443, metadata !83, i32 70, i32 7, metadata !5, i32 4} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !80, i32 57, i32 5, metadata !5, i32 1} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 61, i32 11, metadata !85, null}
!85 = metadata !{i32 786443, metadata !83, i32 61, i32 7, metadata !5, i32 2} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 63, i32 4, metadata !87, null}
!87 = metadata !{i32 786443, metadata !85, i32 62, i32 2, metadata !5, i32 3} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 61, i32 31, metadata !85, null}
!89 = metadata !{i32 786688, metadata !80, metadata !"i", metadata !5, i32 50, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 96, i32 11, metadata !91, null}
!91 = metadata !{i32 786443, metadata !83, i32 96, i32 7, metadata !5, i32 10} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 101, i32 8, metadata !93, null}
!93 = metadata !{i32 786443, metadata !94, i32 101, i32 4, metadata !5, i32 12} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !91, i32 97, i32 2, metadata !5, i32 11} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 72, i32 8, metadata !96, null}
!96 = metadata !{i32 786443, metadata !97, i32 72, i32 4, metadata !5, i32 6} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !82, i32 71, i32 2, metadata !5, i32 5} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 77, i32 12, metadata !99, null}
!99 = metadata !{i32 786443, metadata !100, i32 77, i32 8, metadata !5, i32 8} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !96, i32 73, i32 6, metadata !5, i32 7} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 79, i32 5, metadata !102, null}
!102 = metadata !{i32 786443, metadata !99, i32 78, i32 3, metadata !5, i32 9} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786688, metadata !80, metadata !"sum", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 77, i32 43, metadata !99, null}
!105 = metadata !{i32 786688, metadata !80, metadata !"k", metadata !5, i32 50, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 84, i32 8, metadata !100, null}
!107 = metadata !{i32 88, i32 25, metadata !100, null}
!108 = metadata !{i32 72, i32 30, metadata !96, null}
!109 = metadata !{i32 786688, metadata !80, metadata !"j", metadata !5, i32 50, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 70, i32 27, metadata !82, null}
!111 = metadata !{i32 118, i32 11, metadata !112, null}
!112 = metadata !{i32 786443, metadata !83, i32 118, i32 7, metadata !5, i32 14} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 103, i32 8, metadata !114, null}
!114 = metadata !{i32 786443, metadata !93, i32 102, i32 6, metadata !5, i32 13} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 101, i32 49, metadata !93, null}
!116 = metadata !{i32 108, i32 4, metadata !94, null}
!117 = metadata !{i32 112, i32 28, metadata !94, null}
!118 = metadata !{i32 113, i32 4, metadata !94, null}
!119 = metadata !{i32 786688, metadata !80, metadata !"sumsoft", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 96, i32 56, metadata !91, null}
!121 = metadata !{i32 120, i32 4, metadata !122, null}
!122 = metadata !{i32 786443, metadata !112, i32 119, i32 2, metadata !5, i32 15} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 118, i32 43, metadata !112, null}
!124 = metadata !{i32 122, i32 7, metadata !83, null}
!125 = metadata !{i32 130, i32 8, metadata !126, null}
!126 = metadata !{i32 786443, metadata !127, i32 130, i32 4, metadata !5, i32 17} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 786443, metadata !83, i32 123, i32 2, metadata !5, i32 16} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 132, i32 8, metadata !129, null}
!129 = metadata !{i32 786443, metadata !126, i32 131, i32 6, metadata !5, i32 18} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 134, i32 5, metadata !131, null}
!131 = metadata !{i32 786443, metadata !129, i32 133, i32 3, metadata !5, i32 19} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786688, metadata !80, metadata !"max", metadata !5, i32 50, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 135, i32 5, metadata !131, null}
!134 = metadata !{i32 136, i32 3, metadata !131, null}
!135 = metadata !{i32 139, i32 5, metadata !136, null}
!136 = metadata !{i32 786443, metadata !129, i32 138, i32 3, metadata !5, i32 20} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 130, i32 47, metadata !126, null}
!138 = metadata !{i32 142, i32 4, metadata !127, null}
!139 = metadata !{i32 143, i32 2, metadata !127, null}
!140 = metadata !{i32 146, i32 8, metadata !141, null}
!141 = metadata !{i32 786443, metadata !142, i32 146, i32 4, metadata !5, i32 22} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 786443, metadata !83, i32 145, i32 2, metadata !5, i32 21} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 148, i32 12, metadata !144, null}
!144 = metadata !{i32 786443, metadata !145, i32 148, i32 8, metadata !5, i32 24} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786443, metadata !141, i32 147, i32 6, metadata !5, i32 23} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 150, i32 5, metadata !147, null}
!147 = metadata !{i32 786443, metadata !144, i32 149, i32 3, metadata !5, i32 25} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 148, i32 34, metadata !144, null}
!149 = metadata !{i32 146, i32 26, metadata !141, null}
!150 = metadata !{i32 154, i32 5, metadata !83, null}
!151 = metadata !{i32 159, i32 8, metadata !80, null}
!152 = metadata !{i32 165, i32 7, metadata !153, null}
!153 = metadata !{i32 786443, metadata !80, i32 160, i32 5, metadata !5, i32 26} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 171, i32 11, metadata !155, null}
!155 = metadata !{i32 786443, metadata !153, i32 171, i32 7, metadata !5, i32 27} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 173, i32 4, metadata !157, null}
!157 = metadata !{i32 786443, metadata !155, i32 172, i32 2, metadata !5, i32 28} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 171, i32 29, metadata !155, null}
!159 = metadata !{i32 183, i32 11, metadata !160, null}
!160 = metadata !{i32 786443, metadata !153, i32 183, i32 7, metadata !5, i32 29} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 185, i32 8, metadata !162, null}
!162 = metadata !{i32 786443, metadata !163, i32 185, i32 4, metadata !5, i32 31} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786443, metadata !160, i32 184, i32 2, metadata !5, i32 30} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 187, i32 12, metadata !165, null}
!165 = metadata !{i32 786443, metadata !166, i32 187, i32 8, metadata !5, i32 33} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 786443, metadata !162, i32 186, i32 6, metadata !5, i32 32} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 189, i32 5, metadata !168, null}
!168 = metadata !{i32 786443, metadata !165, i32 188, i32 3, metadata !5, i32 34} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 187, i32 38, metadata !165, null}
!170 = metadata !{i32 185, i32 30, metadata !162, null}
!171 = metadata !{i32 183, i32 29, metadata !160, null}
!172 = metadata !{i32 200, i32 8, metadata !80, null}
!173 = metadata !{i32 209, i32 11, metadata !174, null}
!174 = metadata !{i32 786443, metadata !175, i32 209, i32 7, metadata !5, i32 36} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 786443, metadata !80, i32 201, i32 5, metadata !5, i32 35} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 211, i32 8, metadata !177, null}
!177 = metadata !{i32 786443, metadata !178, i32 211, i32 4, metadata !5, i32 38} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 786443, metadata !174, i32 210, i32 2, metadata !5, i32 37} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 213, i32 12, metadata !180, null}
!180 = metadata !{i32 786443, metadata !181, i32 213, i32 8, metadata !5, i32 40} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786443, metadata !177, i32 212, i32 6, metadata !5, i32 39} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 215, i32 5, metadata !183, null}
!183 = metadata !{i32 786443, metadata !180, i32 214, i32 3, metadata !5, i32 41} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 213, i32 38, metadata !180, null}
!185 = metadata !{i32 211, i32 30, metadata !177, null}
!186 = metadata !{i32 209, i32 29, metadata !174, null}
!187 = metadata !{i32 220, i32 1, metadata !80, null}
