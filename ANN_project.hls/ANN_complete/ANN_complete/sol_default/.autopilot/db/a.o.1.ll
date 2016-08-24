; ModuleID = 'E:/TFM/ANN_project/ANN_project.hls/ANN_complete/ANN_complete/sol_default/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@_uOut = internal unnamed_addr global [4 x [35 x double]] zeroinitializer, align 16 ; [#uses=9 type=[4 x [35 x double]]*]
@_numLayer = internal unnamed_addr global i32 0, align 4 ; [#uses=6 type=i32*]
@_layerSize = internal unnamed_addr global [4 x i32] zeroinitializer, align 16 ; [#uses=12 type=[4 x i32]*]
@_WandB = internal unnamed_addr global [4 x [35 x [36 x double]]] zeroinitializer, align 16 ; [#uses=6 type=[4 x [35 x [36 x double]]]*]
@ANN.str = internal unnamed_addr constant [4 x i8] c"ANN\00" ; [#uses=1 type=[4 x i8]*]

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=28]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=35]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=5]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=0]
define void @ANN(i32* %config, [35 x [36 x double]]* %WandB, [35 x double]* %uOut, double* %netIn, i32* %netOut) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @ANN.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %config}, i64 0, metadata !39), !dbg !40 ; [debug line = 26:20] [debug variable = config]
  call void @llvm.dbg.value(metadata !{[35 x [36 x double]]* %WandB}, i64 0, metadata !41), !dbg !42 ; [debug line = 27:16] [debug variable = WandB]
  call void @llvm.dbg.value(metadata !{[35 x double]* %uOut}, i64 0, metadata !43), !dbg !44 ; [debug line = 28:10] [debug variable = uOut]
  call void @llvm.dbg.value(metadata !{double* %netIn}, i64 0, metadata !45), !dbg !46 ; [debug line = 29:16] [debug variable = netIn]
  call void @llvm.dbg.value(metadata !{i32* %netOut}, i64 0, metadata !47), !dbg !48 ; [debug line = 30:7] [debug variable = netOut]
  call void (...)* @_ssdm_SpecArrayDimSize([35 x [36 x double]]* %WandB, i32 4) nounwind, !dbg !49 ; [debug line = 31:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %netOut, i32 35) nounwind, !dbg !51 ; [debug line = 31:34]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %config, i32 6) nounwind, !dbg !52 ; [debug line = 31:68]
  call void (...)* @_ssdm_SpecArrayDimSize([35 x double]* %uOut, i32 4) nounwind, !dbg !53 ; [debug line = 31:104]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %netIn, i32 35) nounwind, !dbg !54 ; [debug line = 31:135]
  %config.load = load i32* %config, align 4, !dbg !55 ; [#uses=8 type=i32] [debug line = 56:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %config.load) nounwind
  %tmp = icmp eq i32 %config.load, 0, !dbg !55    ; [#uses=1 type=i1] [debug line = 56:3]
  br i1 %tmp, label %._crit_edge, label %1, !dbg !55 ; [debug line = 56:3]

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %config.load) nounwind
  %tmp.1 = icmp eq i32 %config.load, 2, !dbg !55  ; [#uses=1 type=i1] [debug line = 56:3]
  br i1 %tmp.1, label %._crit_edge, label %18, !dbg !55 ; [debug line = 56:3]

._crit_edge:                                      ; preds = %1, %0
  br label %2, !dbg !56                           ; [debug line = 61:11]

; <label>:2                                       ; preds = %3, %._crit_edge
  %i = phi i32 [ 0, %._crit_edge ], [ %i.9, %3 ]  ; [#uses=3 type=i32]
  %_layerSize.load = load i32* getelementptr inbounds ([4 x i32]* @_layerSize, i64 0, i64 0), align 16, !dbg !56 ; [#uses=2 type=i32] [debug line = 61:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load) nounwind
  %tmp.3 = icmp slt i32 %i, %_layerSize.load, !dbg !56 ; [#uses=1 type=i1] [debug line = 61:11]
  br i1 %tmp.3, label %3, label %.preheader16.preheader, !dbg !56 ; [debug line = 61:11]

.preheader16.preheader:                           ; preds = %2
  br label %.preheader16, !dbg !59                ; [debug line = 70:11]

; <label>:3                                       ; preds = %2
  %tmp.5 = sext i32 %i to i64, !dbg !61           ; [#uses=2 type=i64] [debug line = 63:4]
  %netIn.addr = getelementptr inbounds double* %netIn, i64 %tmp.5, !dbg !61 ; [#uses=1 type=double*] [debug line = 63:4]
  %netIn.load = load double* %netIn.addr, align 8, !dbg !61 ; [#uses=2 type=double] [debug line = 63:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %netIn.load) nounwind
  %_uOut.addr = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 0, i64 %tmp.5, !dbg !61 ; [#uses=1 type=double*] [debug line = 63:4]
  store double %netIn.load, double* %_uOut.addr, align 8, !dbg !61 ; [debug line = 63:4]
  %i.9 = add nsw i32 %i, 1, !dbg !63              ; [#uses=1 type=i32] [debug line = 61:31]
  call void @llvm.dbg.value(metadata !{i32 %i.9}, i64 0, metadata !64), !dbg !63 ; [debug line = 61:31] [debug variable = i]
  br label %2, !dbg !63                           ; [debug line = 61:31]

.preheader16:                                     ; preds = %6, %.preheader16.preheader
  %i.1 = phi i32 [ %i.11, %6 ], [ 1, %.preheader16.preheader ] ; [#uses=4 type=i32]
  %_numLayer.load.2 = load i32* @_numLayer, align 4, !dbg !59 ; [#uses=1 type=i32] [debug line = 70:11]
  %tmp.8 = icmp slt i32 %i.1, %_numLayer.load.2, !dbg !59 ; [#uses=1 type=i1] [debug line = 70:11]
  br i1 %tmp.8, label %.preheader15.preheader, label %.preheader13.preheader, !dbg !59 ; [debug line = 70:11]

.preheader13.preheader:                           ; preds = %.preheader16
  br label %.preheader13, !dbg !65                ; [debug line = 96:11]

.preheader15.preheader:                           ; preds = %.preheader16
  %tmp.14 = sext i32 %i.1 to i64, !dbg !67        ; [#uses=4 type=i64] [debug line = 72:8]
  %_layerSize.addr.1 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.14, !dbg !67 ; [#uses=1 type=i32*] [debug line = 72:8]
  %tmp.15 = add nsw i32 %i.1, -1, !dbg !70        ; [#uses=1 type=i32] [debug line = 77:12]
  %tmp.16 = sext i32 %tmp.15 to i64, !dbg !70     ; [#uses=2 type=i64] [debug line = 77:12]
  %_layerSize.addr.2 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.16, !dbg !70 ; [#uses=1 type=i32*] [debug line = 77:12]
  br label %.preheader15, !dbg !67                ; [debug line = 72:8]

.preheader15:                                     ; preds = %5, %.preheader15.preheader
  %j = phi i32 [ %j.5, %5 ], [ 0, %.preheader15.preheader ] ; [#uses=3 type=i32]
  %_layerSize.load.1 = load i32* %_layerSize.addr.1, align 4, !dbg !67 ; [#uses=2 type=i32] [debug line = 72:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.1) nounwind
  %tmp.21 = icmp slt i32 %j, %_layerSize.load.1, !dbg !67 ; [#uses=1 type=i1] [debug line = 72:8]
  br i1 %tmp.21, label %.preheader14.preheader, label %6, !dbg !67 ; [debug line = 72:8]

.preheader14.preheader:                           ; preds = %.preheader15
  %_layerSize.load.4 = load i32* %_layerSize.addr.2, align 4, !dbg !70 ; [#uses=4 type=i32] [debug line = 77:12]
  %tmp.29 = sext i32 %j to i64, !dbg !73          ; [#uses=3 type=i64] [debug line = 79:5]
  br label %.preheader14, !dbg !70                ; [debug line = 77:12]

.preheader14:                                     ; preds = %4, %.preheader14.preheader
  %k = phi i32 [ %k.3, %4 ], [ 0, %.preheader14.preheader ] ; [#uses=3 type=i32]
  %sum = phi double [ %sum.2, %4 ], [ 0.000000e+00, %.preheader14.preheader ] ; [#uses=2 type=double]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.4) nounwind
  %tmp.37 = icmp slt i32 %k, %_layerSize.load.4, !dbg !70 ; [#uses=1 type=i1] [debug line = 77:12]
  br i1 %tmp.37, label %4, label %5, !dbg !70     ; [debug line = 77:12]

; <label>:4                                       ; preds = %.preheader14
  %tmp.44 = sext i32 %k to i64, !dbg !73          ; [#uses=2 type=i64] [debug line = 79:5]
  %_uOut.addr.1 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.16, i64 %tmp.44, !dbg !73 ; [#uses=1 type=double*] [debug line = 79:5]
  %_uOut.load = load double* %_uOut.addr.1, align 8, !dbg !73 ; [#uses=2 type=double] [debug line = 79:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_uOut.load) nounwind
  %_WandB.addr = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.14, i64 %tmp.29, i64 %tmp.44, !dbg !73 ; [#uses=1 type=double*] [debug line = 79:5]
  %_WandB.load = load double* %_WandB.addr, align 8, !dbg !73 ; [#uses=2 type=double] [debug line = 79:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_WandB.load) nounwind
  %tmp.45 = fmul double %_uOut.load, %_WandB.load, !dbg !73 ; [#uses=1 type=double] [debug line = 79:5]
  %sum.2 = fadd double %sum, %tmp.45, !dbg !73    ; [#uses=1 type=double] [debug line = 79:5]
  call void @llvm.dbg.value(metadata !{double %sum.2}, i64 0, metadata !75), !dbg !73 ; [debug line = 79:5] [debug variable = sum]
  %k.3 = add nsw i32 %k, 1, !dbg !76              ; [#uses=1 type=i32] [debug line = 77:43]
  call void @llvm.dbg.value(metadata !{i32 %k.3}, i64 0, metadata !77), !dbg !76 ; [debug line = 77:43] [debug variable = k]
  br label %.preheader14, !dbg !76                ; [debug line = 77:43]

; <label>:5                                       ; preds = %.preheader14
  %sum.0.lcssa = phi double [ %sum, %.preheader14 ] ; [#uses=1 type=double]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.4) nounwind
  %tmp.48 = sext i32 %_layerSize.load.4 to i64, !dbg !78 ; [#uses=1 type=i64] [debug line = 84:8]
  %_WandB.addr.1 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.14, i64 %tmp.29, i64 %tmp.48, !dbg !78 ; [#uses=1 type=double*] [debug line = 84:8]
  %_WandB.load.1 = load double* %_WandB.addr.1, align 8, !dbg !78 ; [#uses=2 type=double] [debug line = 84:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_WandB.load.1) nounwind
  %sum.3 = fadd double %sum.0.lcssa, %_WandB.load.1, !dbg !78 ; [#uses=1 type=double] [debug line = 84:8]
  call void @llvm.dbg.value(metadata !{double %sum.3}, i64 0, metadata !75), !dbg !78 ; [debug line = 84:8] [debug variable = sum]
  %tmp.50 = fsub double -0.000000e+00, %sum.3, !dbg !79 ; [#uses=1 type=double] [debug line = 88:25]
  %tmp.51 = call double @llvm.exp.f64(double %tmp.50), !dbg !79 ; [#uses=1 type=double] [debug line = 88:25]
  %tmp.52 = fadd double %tmp.51, 1.000000e+00, !dbg !79 ; [#uses=1 type=double] [debug line = 88:25]
  %tmp.53 = fdiv double 1.000000e+00, %tmp.52, !dbg !79 ; [#uses=1 type=double] [debug line = 88:25]
  %_uOut.addr.2 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.14, i64 %tmp.29, !dbg !79 ; [#uses=1 type=double*] [debug line = 88:25]
  store double %tmp.53, double* %_uOut.addr.2, align 8, !dbg !79 ; [debug line = 88:25]
  %j.5 = add nsw i32 %j, 1, !dbg !80              ; [#uses=1 type=i32] [debug line = 72:30]
  call void @llvm.dbg.value(metadata !{i32 %j.5}, i64 0, metadata !81), !dbg !80 ; [debug line = 72:30] [debug variable = j]
  br label %.preheader15, !dbg !80                ; [debug line = 72:30]

; <label>:6                                       ; preds = %.preheader15
  %i.11 = add nsw i32 %i.1, 1, !dbg !82           ; [#uses=1 type=i32] [debug line = 70:27]
  call void @llvm.dbg.value(metadata !{i32 %i.11}, i64 0, metadata !64), !dbg !82 ; [debug line = 70:27] [debug variable = i]
  br label %.preheader16, !dbg !82                ; [debug line = 70:27]

.preheader13:                                     ; preds = %8, %.preheader13.preheader
  %i.2 = phi i32 [ %i.14, %8 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i32]
  %sumsoft = phi double [ %sumsoft.1, %8 ], [ 0.000000e+00, %.preheader13.preheader ] ; [#uses=2 type=double]
  %_numLayer.load.3 = load i32* @_numLayer, align 4, !dbg !65 ; [#uses=3 type=i32] [debug line = 96:11]
  %tmp.22 = add nsw i32 %_numLayer.load.3, -1, !dbg !65 ; [#uses=1 type=i32] [debug line = 96:11]
  %tmp.23 = sext i32 %tmp.22 to i64, !dbg !65     ; [#uses=5 type=i64] [debug line = 96:11]
  %_layerSize.addr.5 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.23, !dbg !65 ; [#uses=1 type=i32*] [debug line = 96:11]
  %_layerSize.load.2 = load i32* %_layerSize.addr.5, align 4, !dbg !65 ; [#uses=3 type=i32] [debug line = 96:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.2) nounwind
  %tmp.24 = icmp slt i32 %i.2, %_layerSize.load.2, !dbg !65 ; [#uses=1 type=i1] [debug line = 96:11]
  br i1 %tmp.24, label %.preheader12.preheader, label %.preheader11.preheader, !dbg !65 ; [debug line = 96:11]

.preheader11.preheader:                           ; preds = %.preheader13
  %.lcssa1 = phi i32 [ %_layerSize.load.2, %.preheader13 ] ; [#uses=2 type=i32]
  %.lcssa2 = phi i64 [ %tmp.23, %.preheader13 ]   ; [#uses=1 type=i64]
  %.lcssa3 = phi i32 [ %_numLayer.load.3, %.preheader13 ] ; [#uses=1 type=i32]
  %sumsoft.0.lcssa = phi double [ %sumsoft, %.preheader13 ] ; [#uses=1 type=double]
  br label %.preheader11

.preheader12.preheader:                           ; preds = %.preheader13
  %tmp.31 = add nsw i32 %_numLayer.load.3, -2, !dbg !83 ; [#uses=1 type=i32] [debug line = 101:8]
  %tmp.32 = sext i32 %tmp.31 to i64, !dbg !83     ; [#uses=2 type=i64] [debug line = 101:8]
  %_layerSize.addr.8 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.32, !dbg !83 ; [#uses=1 type=i32*] [debug line = 101:8]
  %_layerSize.load.5 = load i32* %_layerSize.addr.8, align 4, !dbg !83 ; [#uses=4 type=i32] [debug line = 101:8]
  %tmp.33 = sext i32 %i.2 to i64, !dbg !86        ; [#uses=3 type=i64] [debug line = 103:8]
  br label %.preheader12, !dbg !83                ; [debug line = 101:8]

.preheader12:                                     ; preds = %7, %.preheader12.preheader
  %j.1 = phi i32 [ %j.6, %7 ], [ 0, %.preheader12.preheader ] ; [#uses=3 type=i32]
  %sum.1 = phi double [ %sum.4, %7 ], [ 0.000000e+00, %.preheader12.preheader ] ; [#uses=2 type=double]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.5) nounwind
  %tmp.38 = icmp slt i32 %j.1, %_layerSize.load.5, !dbg !83 ; [#uses=1 type=i1] [debug line = 101:8]
  br i1 %tmp.38, label %7, label %8, !dbg !83     ; [debug line = 101:8]

; <label>:7                                       ; preds = %.preheader12
  %tmp.55 = sext i32 %j.1 to i64, !dbg !86        ; [#uses=2 type=i64] [debug line = 103:8]
  %_uOut.addr.3 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.32, i64 %tmp.55, !dbg !86 ; [#uses=1 type=double*] [debug line = 103:8]
  %_uOut.load.1 = load double* %_uOut.addr.3, align 8, !dbg !86 ; [#uses=2 type=double] [debug line = 103:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_uOut.load.1) nounwind
  %_WandB.addr.2 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.23, i64 %tmp.33, i64 %tmp.55, !dbg !86 ; [#uses=1 type=double*] [debug line = 103:8]
  %_WandB.load.2 = load double* %_WandB.addr.2, align 8, !dbg !86 ; [#uses=2 type=double] [debug line = 103:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_WandB.load.2) nounwind
  %tmp.56 = fmul double %_uOut.load.1, %_WandB.load.2, !dbg !86 ; [#uses=1 type=double] [debug line = 103:8]
  %sum.4 = fadd double %sum.1, %tmp.56, !dbg !86  ; [#uses=1 type=double] [debug line = 103:8]
  call void @llvm.dbg.value(metadata !{double %sum.4}, i64 0, metadata !75), !dbg !86 ; [debug line = 103:8] [debug variable = sum]
  %j.6 = add nsw i32 %j.1, 1, !dbg !88            ; [#uses=1 type=i32] [debug line = 101:49]
  call void @llvm.dbg.value(metadata !{i32 %j.6}, i64 0, metadata !81), !dbg !88 ; [debug line = 101:49] [debug variable = j]
  br label %.preheader12, !dbg !88                ; [debug line = 101:49]

; <label>:8                                       ; preds = %.preheader12
  %sum.1.lcssa = phi double [ %sum.1, %.preheader12 ] ; [#uses=1 type=double]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.5) nounwind
  %tmp.59 = sext i32 %_layerSize.load.5 to i64, !dbg !89 ; [#uses=1 type=i64] [debug line = 108:4]
  %_WandB.addr.3 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.23, i64 %tmp.33, i64 %tmp.59, !dbg !89 ; [#uses=1 type=double*] [debug line = 108:4]
  %_WandB.load.3 = load double* %_WandB.addr.3, align 8, !dbg !89 ; [#uses=2 type=double] [debug line = 108:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_WandB.load.3) nounwind
  %sum.5 = fadd double %sum.1.lcssa, %_WandB.load.3, !dbg !89 ; [#uses=1 type=double] [debug line = 108:4]
  call void @llvm.dbg.value(metadata !{double %sum.5}, i64 0, metadata !75), !dbg !89 ; [debug line = 108:4] [debug variable = sum]
  %tmp.61 = call double @llvm.exp.f64(double %sum.5), !dbg !90 ; [#uses=3 type=double] [debug line = 112:28]
  %_uOut.addr.4 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.23, i64 %tmp.33, !dbg !90 ; [#uses=1 type=double*] [debug line = 112:28]
  store double %tmp.61, double* %_uOut.addr.4, align 8, !dbg !90 ; [debug line = 112:28]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %tmp.61) nounwind
  %sumsoft.1 = fadd double %sumsoft, %tmp.61, !dbg !91 ; [#uses=1 type=double] [debug line = 113:4]
  call void @llvm.dbg.value(metadata !{double %sumsoft.1}, i64 0, metadata !92), !dbg !91 ; [debug line = 113:4] [debug variable = sumsoft]
  %i.14 = add nsw i32 %i.2, 1, !dbg !93           ; [#uses=1 type=i32] [debug line = 96:56]
  call void @llvm.dbg.value(metadata !{i32 %i.14}, i64 0, metadata !64), !dbg !93 ; [debug line = 96:56] [debug variable = i]
  br label %.preheader13, !dbg !93                ; [debug line = 96:56]

.preheader11:                                     ; preds = %9, %.preheader11.preheader
  %i.3 = phi i32 [ %i.15, %9 ], [ 0, %.preheader11.preheader ] ; [#uses=3 type=i32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %.lcssa1) nounwind
  %tmp.39 = icmp slt i32 %i.3, %.lcssa1, !dbg !94 ; [#uses=1 type=i1] [debug line = 118:11]
  br i1 %tmp.39, label %9, label %10, !dbg !94    ; [debug line = 118:11]

; <label>:9                                       ; preds = %.preheader11
  %tmp.64 = sext i32 %i.3 to i64, !dbg !96        ; [#uses=1 type=i64] [debug line = 120:4]
  %_uOut.addr.5 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %.lcssa2, i64 %tmp.64, !dbg !96 ; [#uses=2 type=double*] [debug line = 120:4]
  %_uOut.load.2 = load double* %_uOut.addr.5, align 8, !dbg !96 ; [#uses=2 type=double] [debug line = 120:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_uOut.load.2) nounwind
  %tmp.65 = fdiv double %_uOut.load.2, %sumsoft.0.lcssa, !dbg !96 ; [#uses=1 type=double] [debug line = 120:4]
  store double %tmp.65, double* %_uOut.addr.5, align 8, !dbg !96 ; [debug line = 120:4]
  %i.15 = add nsw i32 %i.3, 1, !dbg !98           ; [#uses=1 type=i32] [debug line = 118:43]
  call void @llvm.dbg.value(metadata !{i32 %i.15}, i64 0, metadata !64), !dbg !98 ; [debug line = 118:43] [debug variable = i]
  br label %.preheader11, !dbg !98                ; [debug line = 118:43]

; <label>:10                                      ; preds = %.preheader11
  %config.load.3 = load i32* %config, align 4, !dbg !99 ; [#uses=2 type=i32] [debug line = 122:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %config.load.3) nounwind
  %tmp.67 = icmp eq i32 %config.load.3, 0, !dbg !99 ; [#uses=1 type=i1] [debug line = 122:7]
  br i1 %tmp.67, label %.preheader10.preheader, label %.preheader8.preheader, !dbg !99 ; [debug line = 122:7]

.preheader10.preheader:                           ; preds = %10
  br label %.preheader10, !dbg !100               ; [debug line = 130:8]

.preheader8.preheader:                            ; preds = %10
  br label %.preheader8, !dbg !103                ; [debug line = 146:8]

.preheader10:                                     ; preds = %14, %.preheader10.preheader
  %max.2 = phi i32 [ %i.16, %14 ], [ 1, %.preheader10.preheader ] ; [#uses=4 type=i32]
  %max = phi i32 [ %max.1, %14 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i32]
  %_numLayer.load.4 = load i32* @_numLayer, align 4, !dbg !100 ; [#uses=1 type=i32] [debug line = 130:8]
  %tmp.76 = add nsw i32 %_numLayer.load.4, -1, !dbg !100 ; [#uses=1 type=i32] [debug line = 130:8]
  %tmp.77 = sext i32 %tmp.76 to i64, !dbg !100    ; [#uses=3 type=i64] [debug line = 130:8]
  %_layerSize.addr.9 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.77, !dbg !100 ; [#uses=1 type=i32*] [debug line = 130:8]
  %_layerSize.load.9 = load i32* %_layerSize.addr.9, align 4, !dbg !100 ; [#uses=2 type=i32] [debug line = 130:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.9) nounwind
  %tmp.78 = icmp slt i32 %max.2, %_layerSize.load.9, !dbg !100 ; [#uses=1 type=i1] [debug line = 130:8]
  br i1 %tmp.78, label %11, label %15, !dbg !100  ; [debug line = 130:8]

; <label>:11                                      ; preds = %.preheader10
  %tmp.80 = sext i32 %max.2 to i64, !dbg !106     ; [#uses=2 type=i64] [debug line = 132:8]
  %_uOut.addr.6 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.77, i64 %tmp.80, !dbg !106 ; [#uses=1 type=double*] [debug line = 132:8]
  %_uOut.load.3 = load double* %_uOut.addr.6, align 8, !dbg !106 ; [#uses=2 type=double] [debug line = 132:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_uOut.load.3) nounwind
  %tmp.81 = sext i32 %max to i64, !dbg !106       ; [#uses=2 type=i64] [debug line = 132:8]
  %_uOut.addr.7 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.77, i64 %tmp.81, !dbg !106 ; [#uses=1 type=double*] [debug line = 132:8]
  %_uOut.load.4 = load double* %_uOut.addr.7, align 8, !dbg !106 ; [#uses=2 type=double] [debug line = 132:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_uOut.load.4) nounwind
  %tmp.82 = fcmp ogt double %_uOut.load.3, %_uOut.load.4, !dbg !106 ; [#uses=1 type=i1] [debug line = 132:8]
  br i1 %tmp.82, label %12, label %13, !dbg !106  ; [debug line = 132:8]

; <label>:12                                      ; preds = %11
  %netOut.addr.1 = getelementptr inbounds i32* %netOut, i64 %tmp.81, !dbg !108 ; [#uses=1 type=i32*] [debug line = 134:5]
  store i32 0, i32* %netOut.addr.1, align 4, !dbg !108 ; [debug line = 134:5]
  call void @llvm.dbg.value(metadata !{i32 %max.2}, i64 0, metadata !110), !dbg !111 ; [debug line = 135:5] [debug variable = max]
  br label %14, !dbg !112                         ; [debug line = 136:3]

; <label>:13                                      ; preds = %11
  %netOut.addr.2 = getelementptr inbounds i32* %netOut, i64 %tmp.80, !dbg !113 ; [#uses=1 type=i32*] [debug line = 139:5]
  store i32 0, i32* %netOut.addr.2, align 4, !dbg !113 ; [debug line = 139:5]
  br label %14

; <label>:14                                      ; preds = %13, %12
  %max.1 = phi i32 [ %max.2, %12 ], [ %max, %13 ] ; [#uses=1 type=i32]
  %i.16 = add nsw i32 %max.2, 1, !dbg !115        ; [#uses=1 type=i32] [debug line = 130:47]
  call void @llvm.dbg.value(metadata !{i32 %i.16}, i64 0, metadata !64), !dbg !115 ; [debug line = 130:47] [debug variable = i]
  br label %.preheader10, !dbg !115               ; [debug line = 130:47]

; <label>:15                                      ; preds = %.preheader10
  %max.0.lcssa = phi i32 [ %max, %.preheader10 ]  ; [#uses=1 type=i32]
  %tmp.83 = sext i32 %max.0.lcssa to i64, !dbg !116 ; [#uses=1 type=i64] [debug line = 142:4]
  %netOut.addr = getelementptr inbounds i32* %netOut, i64 %tmp.83, !dbg !116 ; [#uses=1 type=i32*] [debug line = 142:4]
  store i32 1, i32* %netOut.addr, align 4, !dbg !116 ; [debug line = 142:4]
  br label %.loopexit9, !dbg !117                 ; [debug line = 143:2]

.preheader8:                                      ; preds = %17, %.preheader8.preheader
  %i.5 = phi i32 [ %i.17, %17 ], [ 0, %.preheader8.preheader ] ; [#uses=3 type=i32]
  %tmp.79 = icmp slt i32 %i.5, %.lcssa3, !dbg !103 ; [#uses=1 type=i1] [debug line = 146:8]
  br i1 %tmp.79, label %.preheader7.preheader, label %.loopexit9.loopexit, !dbg !103 ; [debug line = 146:8]

.preheader7.preheader:                            ; preds = %.preheader8
  %tmp.84 = sext i32 %i.5 to i64, !dbg !118       ; [#uses=3 type=i64] [debug line = 148:12]
  %_layerSize.addr.10 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.84, !dbg !118 ; [#uses=1 type=i32*] [debug line = 148:12]
  br label %.preheader7, !dbg !118                ; [debug line = 148:12]

.preheader7:                                      ; preds = %16, %.preheader7.preheader
  %j.2 = phi i32 [ %j.9, %16 ], [ 0, %.preheader7.preheader ] ; [#uses=3 type=i32]
  %_layerSize.load.10 = load i32* %_layerSize.addr.10, align 4, !dbg !118 ; [#uses=2 type=i32] [debug line = 148:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.10) nounwind
  %tmp.85 = icmp slt i32 %j.2, %_layerSize.load.10, !dbg !118 ; [#uses=1 type=i1] [debug line = 148:12]
  br i1 %tmp.85, label %16, label %17, !dbg !118  ; [debug line = 148:12]

; <label>:16                                      ; preds = %.preheader7
  %tmp.87 = sext i32 %j.2 to i64, !dbg !121       ; [#uses=2 type=i64] [debug line = 150:5]
  %_uOut.addr.8 = getelementptr inbounds [4 x [35 x double]]* @_uOut, i64 0, i64 %tmp.84, i64 %tmp.87, !dbg !121 ; [#uses=1 type=double*] [debug line = 150:5]
  %_uOut.load.5 = load double* %_uOut.addr.8, align 8, !dbg !121 ; [#uses=2 type=double] [debug line = 150:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %_uOut.load.5) nounwind
  %uOut.addr = getelementptr inbounds [35 x double]* %uOut, i64 %tmp.84, i64 %tmp.87, !dbg !121 ; [#uses=1 type=double*] [debug line = 150:5]
  store double %_uOut.load.5, double* %uOut.addr, align 8, !dbg !121 ; [debug line = 150:5]
  %j.9 = add nsw i32 %j.2, 1, !dbg !123           ; [#uses=1 type=i32] [debug line = 148:34]
  call void @llvm.dbg.value(metadata !{i32 %j.9}, i64 0, metadata !81), !dbg !123 ; [debug line = 148:34] [debug variable = j]
  br label %.preheader7, !dbg !123                ; [debug line = 148:34]

; <label>:17                                      ; preds = %.preheader7
  %i.17 = add nsw i32 %i.5, 1, !dbg !124          ; [#uses=1 type=i32] [debug line = 146:26]
  call void @llvm.dbg.value(metadata !{i32 %i.17}, i64 0, metadata !64), !dbg !124 ; [debug line = 146:26] [debug variable = i]
  br label %.preheader8, !dbg !124                ; [debug line = 146:26]

.loopexit9.loopexit:                              ; preds = %.preheader8
  br label %.loopexit9

.loopexit9:                                       ; preds = %.loopexit9.loopexit, %15
  br label %29, !dbg !125                         ; [debug line = 154:5]

; <label>:18                                      ; preds = %1
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %config.load) nounwind
  %tmp.2 = icmp eq i32 %config.load, 1, !dbg !126 ; [#uses=1 type=i1] [debug line = 159:8]
  br i1 %tmp.2, label %19, label %25, !dbg !126   ; [debug line = 159:8]

; <label>:19                                      ; preds = %18
  %config.addr = getelementptr inbounds i32* %config, i64 1, !dbg !127 ; [#uses=1 type=i32*] [debug line = 165:7]
  %config.load.1 = load i32* %config.addr, align 4, !dbg !127 ; [#uses=2 type=i32] [debug line = 165:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %config.load.1) nounwind
  store i32 %config.load.1, i32* @_numLayer, align 4, !dbg !127 ; [debug line = 165:7]
  br label %20, !dbg !129                         ; [debug line = 171:11]

; <label>:20                                      ; preds = %21, %19
  %i.6 = phi i32 [ 0, %19 ], [ %i.10, %21 ]       ; [#uses=4 type=i32]
  %_numLayer.load = load i32* @_numLayer, align 4, !dbg !129 ; [#uses=2 type=i32] [debug line = 171:11]
  %tmp.7 = icmp slt i32 %i.6, %_numLayer.load, !dbg !129 ; [#uses=1 type=i1] [debug line = 171:11]
  br i1 %tmp.7, label %21, label %.preheader5.preheader, !dbg !129 ; [debug line = 171:11]

.preheader5.preheader:                            ; preds = %20
  %.lcssa = phi i32 [ %_numLayer.load, %20 ]      ; [#uses=1 type=i32]
  br label %.preheader5, !dbg !131                ; [debug line = 183:11]

; <label>:21                                      ; preds = %20
  %tmp.9 = add nsw i32 %i.6, 2, !dbg !133         ; [#uses=1 type=i32] [debug line = 173:4]
  %tmp.10 = sext i32 %tmp.9 to i64, !dbg !133     ; [#uses=1 type=i64] [debug line = 173:4]
  %config.addr.1 = getelementptr inbounds i32* %config, i64 %tmp.10, !dbg !133 ; [#uses=1 type=i32*] [debug line = 173:4]
  %config.load.2 = load i32* %config.addr.1, align 4, !dbg !133 ; [#uses=2 type=i32] [debug line = 173:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %config.load.2) nounwind
  %tmp.11 = sext i32 %i.6 to i64, !dbg !133       ; [#uses=1 type=i64] [debug line = 173:4]
  %_layerSize.addr = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.11, !dbg !133 ; [#uses=1 type=i32*] [debug line = 173:4]
  store i32 %config.load.2, i32* %_layerSize.addr, align 4, !dbg !133 ; [debug line = 173:4]
  %i.10 = add nsw i32 %i.6, 1, !dbg !135          ; [#uses=1 type=i32] [debug line = 171:29]
  call void @llvm.dbg.value(metadata !{i32 %i.10}, i64 0, metadata !64), !dbg !135 ; [debug line = 171:29] [debug variable = i]
  br label %20, !dbg !135                         ; [debug line = 171:29]

.preheader5:                                      ; preds = %24, %.preheader5.preheader
  %i.7 = phi i32 [ %i.13, %24 ], [ 1, %.preheader5.preheader ] ; [#uses=4 type=i32]
  %tmp.17 = icmp slt i32 %i.7, %.lcssa, !dbg !131 ; [#uses=1 type=i1] [debug line = 183:11]
  br i1 %tmp.17, label %.preheader4.preheader, label %.loopexit6.loopexit, !dbg !131 ; [debug line = 183:11]

.preheader4.preheader:                            ; preds = %.preheader5
  %tmp.25 = sext i32 %i.7 to i64, !dbg !136       ; [#uses=3 type=i64] [debug line = 185:8]
  %_layerSize.addr.6 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.25, !dbg !136 ; [#uses=1 type=i32*] [debug line = 185:8]
  %tmp.26 = add nsw i32 %i.7, -1, !dbg !139       ; [#uses=1 type=i32] [debug line = 187:12]
  %tmp.27 = sext i32 %tmp.26 to i64, !dbg !139    ; [#uses=1 type=i64] [debug line = 187:12]
  %_layerSize.addr.7 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.27, !dbg !139 ; [#uses=1 type=i32*] [debug line = 187:12]
  br label %.preheader4, !dbg !136                ; [debug line = 185:8]

.preheader4:                                      ; preds = %23, %.preheader4.preheader
  %j.3 = phi i32 [ %j.8, %23 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i32]
  %_layerSize.load.6 = load i32* %_layerSize.addr.6, align 4, !dbg !136 ; [#uses=2 type=i32] [debug line = 185:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.6) nounwind
  %tmp.34 = icmp slt i32 %j.3, %_layerSize.load.6, !dbg !136 ; [#uses=1 type=i1] [debug line = 185:8]
  br i1 %tmp.34, label %.preheader3.preheader, label %24, !dbg !136 ; [debug line = 185:8]

.preheader3.preheader:                            ; preds = %.preheader4
  %tmp.40 = sext i32 %j.3 to i64, !dbg !142       ; [#uses=2 type=i64] [debug line = 189:5]
  br label %.preheader3, !dbg !139                ; [debug line = 187:12]

.preheader3:                                      ; preds = %22, %.preheader3.preheader
  %k.1 = phi i32 [ %k.5, %22 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i32]
  %_layerSize.load.8 = load i32* %_layerSize.addr.7, align 4, !dbg !139 ; [#uses=2 type=i32] [debug line = 187:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.8) nounwind
  %tmp.68 = add nsw i32 %_layerSize.load.8, 1, !dbg !139 ; [#uses=1 type=i32] [debug line = 187:12]
  %tmp.69 = icmp slt i32 %k.1, %tmp.68, !dbg !139 ; [#uses=1 type=i1] [debug line = 187:12]
  br i1 %tmp.69, label %22, label %23, !dbg !139  ; [debug line = 187:12]

; <label>:22                                      ; preds = %.preheader3
  %tmp.73 = sext i32 %k.1 to i64, !dbg !142       ; [#uses=2 type=i64] [debug line = 189:5]
  %WandB.addr.1 = getelementptr inbounds [35 x [36 x double]]* %WandB, i64 %tmp.25, i64 %tmp.40, i64 %tmp.73, !dbg !142 ; [#uses=1 type=double*] [debug line = 189:5]
  %WandB.load.1 = load double* %WandB.addr.1, align 8, !dbg !142 ; [#uses=2 type=double] [debug line = 189:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %WandB.load.1) nounwind
  %_WandB.addr.5 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.25, i64 %tmp.40, i64 %tmp.73, !dbg !142 ; [#uses=1 type=double*] [debug line = 189:5]
  store double %WandB.load.1, double* %_WandB.addr.5, align 8, !dbg !142 ; [debug line = 189:5]
  %k.5 = add nsw i32 %k.1, 1, !dbg !144           ; [#uses=1 type=i32] [debug line = 187:38]
  call void @llvm.dbg.value(metadata !{i32 %k.5}, i64 0, metadata !77), !dbg !144 ; [debug line = 187:38] [debug variable = k]
  br label %.preheader3, !dbg !144                ; [debug line = 187:38]

; <label>:23                                      ; preds = %.preheader3
  %j.8 = add nsw i32 %j.3, 1, !dbg !145           ; [#uses=1 type=i32] [debug line = 185:30]
  call void @llvm.dbg.value(metadata !{i32 %j.8}, i64 0, metadata !81), !dbg !145 ; [debug line = 185:30] [debug variable = j]
  br label %.preheader4, !dbg !145                ; [debug line = 185:30]

; <label>:24                                      ; preds = %.preheader4
  %i.13 = add nsw i32 %i.7, 1, !dbg !146          ; [#uses=1 type=i32] [debug line = 183:29]
  call void @llvm.dbg.value(metadata !{i32 %i.13}, i64 0, metadata !64), !dbg !146 ; [debug line = 183:29] [debug variable = i]
  br label %.preheader5, !dbg !146                ; [debug line = 183:29]

; <label>:25                                      ; preds = %18
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %config.load) nounwind
  %tmp.4 = icmp eq i32 %config.load, 3, !dbg !147 ; [#uses=1 type=i1] [debug line = 200:8]
  br i1 %tmp.4, label %.preheader2.preheader, label %.loopexit, !dbg !147 ; [debug line = 200:8]

.preheader2.preheader:                            ; preds = %25
  %_numLayer.load.1 = load i32* @_numLayer, align 4, !dbg !148 ; [#uses=1 type=i32] [debug line = 209:11]
  br label %.preheader2, !dbg !148                ; [debug line = 209:11]

.preheader2:                                      ; preds = %28, %.preheader2.preheader
  %i.8 = phi i32 [ %i.12, %28 ], [ 1, %.preheader2.preheader ] ; [#uses=4 type=i32]
  %tmp.13 = icmp slt i32 %i.8, %_numLayer.load.1, !dbg !148 ; [#uses=1 type=i1] [debug line = 209:11]
  br i1 %tmp.13, label %.preheader1.preheader, label %.loopexit.loopexit, !dbg !148 ; [debug line = 209:11]

.preheader1.preheader:                            ; preds = %.preheader2
  %tmp.18 = sext i32 %i.8 to i64, !dbg !151       ; [#uses=3 type=i64] [debug line = 211:8]
  %_layerSize.addr.3 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.18, !dbg !151 ; [#uses=1 type=i32*] [debug line = 211:8]
  %tmp.19 = add nsw i32 %i.8, -1, !dbg !154       ; [#uses=1 type=i32] [debug line = 213:12]
  %tmp.20 = sext i32 %tmp.19 to i64, !dbg !154    ; [#uses=1 type=i64] [debug line = 213:12]
  %_layerSize.addr.4 = getelementptr inbounds [4 x i32]* @_layerSize, i64 0, i64 %tmp.20, !dbg !154 ; [#uses=1 type=i32*] [debug line = 213:12]
  br label %.preheader1, !dbg !151                ; [debug line = 211:8]

.preheader1:                                      ; preds = %27, %.preheader1.preheader
  %j.4 = phi i32 [ %j.7, %27 ], [ 0, %.preheader1.preheader ] ; [#uses=3 type=i32]
  %_layerSize.load.3 = load i32* %_layerSize.addr.3, align 4, !dbg !151 ; [#uses=2 type=i32] [debug line = 211:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.3) nounwind
  %tmp.28 = icmp slt i32 %j.4, %_layerSize.load.3, !dbg !151 ; [#uses=1 type=i1] [debug line = 211:8]
  br i1 %tmp.28, label %.preheader.preheader, label %28, !dbg !151 ; [debug line = 211:8]

.preheader.preheader:                             ; preds = %.preheader1
  %tmp.35 = sext i32 %j.4 to i64, !dbg !157       ; [#uses=2 type=i64] [debug line = 215:5]
  br label %.preheader, !dbg !154                 ; [debug line = 213:12]

.preheader:                                       ; preds = %26, %.preheader.preheader
  %k.2 = phi i32 [ %k.4, %26 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %_layerSize.load.7 = load i32* %_layerSize.addr.4, align 4, !dbg !154 ; [#uses=2 type=i32] [debug line = 213:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_layerSize.load.7) nounwind
  %tmp.42 = add nsw i32 %_layerSize.load.7, 1, !dbg !154 ; [#uses=1 type=i32] [debug line = 213:12]
  %tmp.43 = icmp slt i32 %k.2, %tmp.42, !dbg !154 ; [#uses=1 type=i1] [debug line = 213:12]
  br i1 %tmp.43, label %26, label %27, !dbg !154  ; [debug line = 213:12]

; <label>:26                                      ; preds = %.preheader
  %tmp.70 = sext i32 %k.2 to i64, !dbg !157       ; [#uses=2 type=i64] [debug line = 215:5]
  %WandB.addr = getelementptr inbounds [35 x [36 x double]]* %WandB, i64 %tmp.18, i64 %tmp.35, i64 %tmp.70, !dbg !157 ; [#uses=1 type=double*] [debug line = 215:5]
  %WandB.load = load double* %WandB.addr, align 8, !dbg !157 ; [#uses=2 type=double] [debug line = 215:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %WandB.load) nounwind
  %_WandB.addr.4 = getelementptr inbounds [4 x [35 x [36 x double]]]* @_WandB, i64 0, i64 %tmp.18, i64 %tmp.35, i64 %tmp.70, !dbg !157 ; [#uses=1 type=double*] [debug line = 215:5]
  store double %WandB.load, double* %_WandB.addr.4, align 8, !dbg !157 ; [debug line = 215:5]
  %k.4 = add nsw i32 %k.2, 1, !dbg !159           ; [#uses=1 type=i32] [debug line = 213:38]
  call void @llvm.dbg.value(metadata !{i32 %k.4}, i64 0, metadata !77), !dbg !159 ; [debug line = 213:38] [debug variable = k]
  br label %.preheader, !dbg !159                 ; [debug line = 213:38]

; <label>:27                                      ; preds = %.preheader
  %j.7 = add nsw i32 %j.4, 1, !dbg !160           ; [#uses=1 type=i32] [debug line = 211:30]
  call void @llvm.dbg.value(metadata !{i32 %j.7}, i64 0, metadata !81), !dbg !160 ; [debug line = 211:30] [debug variable = j]
  br label %.preheader1, !dbg !160                ; [debug line = 211:30]

; <label>:28                                      ; preds = %.preheader1
  %i.12 = add nsw i32 %i.8, 1, !dbg !161          ; [#uses=1 type=i32] [debug line = 209:29]
  call void @llvm.dbg.value(metadata !{i32 %i.12}, i64 0, metadata !64), !dbg !161 ; [debug line = 209:29] [debug variable = i]
  br label %.preheader2, !dbg !161                ; [debug line = 209:29]

.loopexit.loopexit:                               ; preds = %.preheader2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %25
  br label %.loopexit6

.loopexit6.loopexit:                              ; preds = %.preheader5
  br label %.loopexit6

.loopexit6:                                       ; preds = %.loopexit6.loopexit, %.loopexit
  br label %29

; <label>:29                                      ; preds = %.loopexit6, %.loopexit9
  ret void, !dbg !162                             ; [debug line = 220:1]
}

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"E:/TFM/ANN_project/ANN_project.hls/ANN_complete/ANN_complete/sol_default/.autopilot/db/ANN.pragma.2.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/ANN_complete", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !26} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ANN", metadata !"ANN", metadata !"_Z3ANNPKiPA35_A36_KdPA35_dPS1_Pi", metadata !6, i32 26, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, [35 x [36 x double]]*, [35 x double]*, double*, i32*)* @ANN, null, null, metadata !24, i32 31} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"ANN.cpp", metadata !"e:/TFM/ANN_project/ANN_project.hls/ANN_complete", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12, metadata !19, metadata !22, metadata !23}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80640, i64 64, i32 0, i32 0, metadata !14, metadata !16, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!15 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786465, i64 0, i64 34}       ; [ DW_TAG_subrange_type ]
!18 = metadata !{i32 786465, i64 0, i64 35}       ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2240, i64 64, i32 0, i32 0, metadata !15, metadata !21, i32 0, i32 0} ; [ DW_TAG_array_type ]
!21 = metadata !{metadata !17}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !28, metadata !32, metadata !35, metadata !36}
!28 = metadata !{i32 786484, i32 0, metadata !5, metadata !"_WandB", metadata !"_WandB", metadata !"", metadata !6, i32 42, metadata !29, i32 1, i32 1, [4 x [35 x [36 x double]]]* @_WandB} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 322560, i64 64, i32 0, i32 0, metadata !15, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31, metadata !17, metadata !18}
!31 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !5, metadata !"_uOut", metadata !"_uOut", metadata !"", metadata !6, i32 43, metadata !33, i32 1, i32 1, [4 x [35 x double]]* @_uOut} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8960, i64 64, i32 0, i32 0, metadata !15, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{metadata !31, metadata !17}
!35 = metadata !{i32 786484, i32 0, metadata !5, metadata !"_numLayer", metadata !"_numLayer", metadata !"", metadata !6, i32 46, metadata !11, i32 1, i32 1, i32* @_numLayer} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786484, i32 0, metadata !5, metadata !"_layerSize", metadata !"_layerSize", metadata !"", metadata !6, i32 47, metadata !37, i32 1, i32 1, [4 x i32]* @_layerSize} ; [ DW_TAG_variable ]
!37 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !11, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!38 = metadata !{metadata !31}
!39 = metadata !{i32 786689, metadata !5, metadata !"config", metadata !6, i32 16777242, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 26, i32 20, metadata !5, null}
!41 = metadata !{i32 786689, metadata !5, metadata !"WandB", metadata !6, i32 33554459, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 27, i32 16, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"uOut", metadata !6, i32 50331676, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 28, i32 10, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"netIn", metadata !6, i32 67108893, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 29, i32 16, metadata !5, null}
!47 = metadata !{i32 786689, metadata !5, metadata !"netOut", metadata !6, i32 83886110, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 30, i32 7, metadata !5, null}
!49 = metadata !{i32 31, i32 2, metadata !50, null}
!50 = metadata !{i32 786443, metadata !5, i32 31, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 31, i32 34, metadata !50, null}
!52 = metadata !{i32 31, i32 68, metadata !50, null}
!53 = metadata !{i32 31, i32 104, metadata !50, null}
!54 = metadata !{i32 31, i32 135, metadata !50, null}
!55 = metadata !{i32 56, i32 3, metadata !50, null}
!56 = metadata !{i32 61, i32 11, metadata !57, null}
!57 = metadata !{i32 786443, metadata !58, i32 61, i32 7, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !50, i32 57, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 70, i32 11, metadata !60, null}
!60 = metadata !{i32 786443, metadata !58, i32 70, i32 7, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 63, i32 4, metadata !62, null}
!62 = metadata !{i32 786443, metadata !57, i32 62, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 61, i32 31, metadata !57, null}
!64 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 96, i32 11, metadata !66, null}
!66 = metadata !{i32 786443, metadata !58, i32 96, i32 7, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 72, i32 8, metadata !68, null}
!68 = metadata !{i32 786443, metadata !69, i32 72, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !60, i32 71, i32 2, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 77, i32 12, metadata !71, null}
!71 = metadata !{i32 786443, metadata !72, i32 77, i32 8, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786443, metadata !68, i32 73, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 79, i32 5, metadata !74, null}
!74 = metadata !{i32 786443, metadata !71, i32 78, i32 3, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786688, metadata !50, metadata !"sum", metadata !6, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 77, i32 43, metadata !71, null}
!77 = metadata !{i32 786688, metadata !50, metadata !"k", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 84, i32 8, metadata !72, null}
!79 = metadata !{i32 88, i32 25, metadata !72, null}
!80 = metadata !{i32 72, i32 30, metadata !68, null}
!81 = metadata !{i32 786688, metadata !50, metadata !"j", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 70, i32 27, metadata !60, null}
!83 = metadata !{i32 101, i32 8, metadata !84, null}
!84 = metadata !{i32 786443, metadata !85, i32 101, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !66, i32 97, i32 2, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 103, i32 8, metadata !87, null}
!87 = metadata !{i32 786443, metadata !84, i32 102, i32 6, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 101, i32 49, metadata !84, null}
!89 = metadata !{i32 108, i32 4, metadata !85, null}
!90 = metadata !{i32 112, i32 28, metadata !85, null}
!91 = metadata !{i32 113, i32 4, metadata !85, null}
!92 = metadata !{i32 786688, metadata !50, metadata !"sumsoft", metadata !6, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 96, i32 56, metadata !66, null}
!94 = metadata !{i32 118, i32 11, metadata !95, null}
!95 = metadata !{i32 786443, metadata !58, i32 118, i32 7, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 120, i32 4, metadata !97, null}
!97 = metadata !{i32 786443, metadata !95, i32 119, i32 2, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 118, i32 43, metadata !95, null}
!99 = metadata !{i32 122, i32 7, metadata !58, null}
!100 = metadata !{i32 130, i32 8, metadata !101, null}
!101 = metadata !{i32 786443, metadata !102, i32 130, i32 4, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !58, i32 123, i32 2, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 146, i32 8, metadata !104, null}
!104 = metadata !{i32 786443, metadata !105, i32 146, i32 4, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !58, i32 145, i32 2, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 132, i32 8, metadata !107, null}
!107 = metadata !{i32 786443, metadata !101, i32 131, i32 6, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 134, i32 5, metadata !109, null}
!109 = metadata !{i32 786443, metadata !107, i32 133, i32 3, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786688, metadata !50, metadata !"max", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 135, i32 5, metadata !109, null}
!112 = metadata !{i32 136, i32 3, metadata !109, null}
!113 = metadata !{i32 139, i32 5, metadata !114, null}
!114 = metadata !{i32 786443, metadata !107, i32 138, i32 3, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 130, i32 47, metadata !101, null}
!116 = metadata !{i32 142, i32 4, metadata !102, null}
!117 = metadata !{i32 143, i32 2, metadata !102, null}
!118 = metadata !{i32 148, i32 12, metadata !119, null}
!119 = metadata !{i32 786443, metadata !120, i32 148, i32 8, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786443, metadata !104, i32 147, i32 6, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 150, i32 5, metadata !122, null}
!122 = metadata !{i32 786443, metadata !119, i32 149, i32 3, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 148, i32 34, metadata !119, null}
!124 = metadata !{i32 146, i32 26, metadata !104, null}
!125 = metadata !{i32 154, i32 5, metadata !58, null}
!126 = metadata !{i32 159, i32 8, metadata !50, null}
!127 = metadata !{i32 165, i32 7, metadata !128, null}
!128 = metadata !{i32 786443, metadata !50, i32 160, i32 5, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 171, i32 11, metadata !130, null}
!130 = metadata !{i32 786443, metadata !128, i32 171, i32 7, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 183, i32 11, metadata !132, null}
!132 = metadata !{i32 786443, metadata !128, i32 183, i32 7, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 173, i32 4, metadata !134, null}
!134 = metadata !{i32 786443, metadata !130, i32 172, i32 2, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 171, i32 29, metadata !130, null}
!136 = metadata !{i32 185, i32 8, metadata !137, null}
!137 = metadata !{i32 786443, metadata !138, i32 185, i32 4, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 786443, metadata !132, i32 184, i32 2, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 187, i32 12, metadata !140, null}
!140 = metadata !{i32 786443, metadata !141, i32 187, i32 8, metadata !6, i32 33} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786443, metadata !137, i32 186, i32 6, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 189, i32 5, metadata !143, null}
!143 = metadata !{i32 786443, metadata !140, i32 188, i32 3, metadata !6, i32 34} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 187, i32 38, metadata !140, null}
!145 = metadata !{i32 185, i32 30, metadata !137, null}
!146 = metadata !{i32 183, i32 29, metadata !132, null}
!147 = metadata !{i32 200, i32 8, metadata !50, null}
!148 = metadata !{i32 209, i32 11, metadata !149, null}
!149 = metadata !{i32 786443, metadata !150, i32 209, i32 7, metadata !6, i32 36} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786443, metadata !50, i32 201, i32 5, metadata !6, i32 35} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 211, i32 8, metadata !152, null}
!152 = metadata !{i32 786443, metadata !153, i32 211, i32 4, metadata !6, i32 38} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 786443, metadata !149, i32 210, i32 2, metadata !6, i32 37} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 213, i32 12, metadata !155, null}
!155 = metadata !{i32 786443, metadata !156, i32 213, i32 8, metadata !6, i32 40} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 786443, metadata !152, i32 212, i32 6, metadata !6, i32 39} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 215, i32 5, metadata !158, null}
!158 = metadata !{i32 786443, metadata !155, i32 214, i32 3, metadata !6, i32 41} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 213, i32 38, metadata !155, null}
!160 = metadata !{i32 211, i32 30, metadata !152, null}
!161 = metadata !{i32 209, i32 29, metadata !149, null}
!162 = metadata !{i32 220, i32 1, metadata !50, null}
