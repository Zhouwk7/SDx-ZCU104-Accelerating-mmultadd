; ModuleID = 'D:/xilinx/SDSoC_IDE/workspace/muladd/src/main.cpp'
source_filename = "D:/xilinx/SDSoC_IDE/workspace/muladd/src/main.cpp"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.perf_counter = type { i64, i64, i64 }

$_ZN12perf_counterC2Ev = comdat any

$_ZN12perf_counter5startEv = comdat any

$_ZN12perf_counter4stopEv = comdat any

$_ZN12perf_counter14avg_cpu_cyclesEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [9 x i8] c"Testing \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" iterations of \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" floating point mmultadd...\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Average number of CPU cycles running mmultadd in software: \00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Average number of CPU cycles running mmultadd in hardware: \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Speed up: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"TEST \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"PASSED\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Mismatch: data index=\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"d=\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c", dout=\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !946 {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !947
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3, !dbg !948
  ret void, !dbg !947
}

declare !xidane.fname !950 !xidane.function_declaration_type !951 !xidane.function_declaration_filename !952 void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare !xidane.fname !953 !xidane.function_declaration_type !951 !xidane.function_declaration_filename !952 void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: nounwind
define void @_Z12mmult_goldenPfS_S_(float*, float*, float*) #4 !dbg !954 !xidane.fname !958 !xidane.function_declaration_type !959 !xidane.function_declaration_filename !960 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store float* %0, float** %4, align 8
  call void @llvm.dbg.declare(metadata float** %4, metadata !961, metadata !962), !dbg !963
  store float* %1, float** %5, align 8
  call void @llvm.dbg.declare(metadata float** %5, metadata !964, metadata !962), !dbg !965
  store float* %2, float** %6, align 8
  call void @llvm.dbg.declare(metadata float** %6, metadata !966, metadata !962), !dbg !967
  call void @llvm.dbg.declare(metadata i32* %7, metadata !968, metadata !962), !dbg !970
  store i32 0, i32* %7, align 4, !dbg !970
  br label %11, !dbg !971

; <label>:11:                                     ; preds = %58, %3
  %12 = load i32, i32* %7, align 4, !dbg !972
  %13 = icmp slt i32 %12, 32, !dbg !975
  br i1 %13, label %14, label %61, !dbg !976

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i32* %8, metadata !977, metadata !962), !dbg !980
  store i32 0, i32* %8, align 4, !dbg !980
  br label %15, !dbg !981

; <label>:15:                                     ; preds = %54, %14
  %16 = load i32, i32* %8, align 4, !dbg !982
  %17 = icmp slt i32 %16, 32, !dbg !985
  br i1 %17, label %18, label %57, !dbg !986

; <label>:18:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata float* %9, metadata !987, metadata !962), !dbg !989
  store float 0.000000e+00, float* %9, align 4, !dbg !989
  call void @llvm.dbg.declare(metadata i32* %10, metadata !990, metadata !962), !dbg !992
  store i32 0, i32* %10, align 4, !dbg !992
  br label %19, !dbg !993

; <label>:19:                                     ; preds = %42, %18
  %20 = load i32, i32* %10, align 4, !dbg !994
  %21 = icmp slt i32 %20, 32, !dbg !997
  br i1 %21, label %22, label %45, !dbg !998

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %7, align 4, !dbg !999
  %24 = mul nsw i32 %23, 32, !dbg !1001
  %25 = load i32, i32* %10, align 4, !dbg !1002
  %26 = add nsw i32 %24, %25, !dbg !1003
  %27 = sext i32 %26 to i64, !dbg !1004
  %28 = load float*, float** %4, align 8, !dbg !1004
  %29 = getelementptr inbounds float, float* %28, i64 %27, !dbg !1004
  %30 = load float, float* %29, align 4, !dbg !1004
  %31 = load i32, i32* %10, align 4, !dbg !1005
  %32 = mul nsw i32 %31, 32, !dbg !1006
  %33 = load i32, i32* %8, align 4, !dbg !1007
  %34 = add nsw i32 %32, %33, !dbg !1008
  %35 = sext i32 %34 to i64, !dbg !1009
  %36 = load float*, float** %5, align 8, !dbg !1009
  %37 = getelementptr inbounds float, float* %36, i64 %35, !dbg !1009
  %38 = load float, float* %37, align 4, !dbg !1009
  %39 = fmul float %30, %38, !dbg !1010
  %40 = load float, float* %9, align 4, !dbg !1011
  %41 = fadd float %40, %39, !dbg !1011
  store float %41, float* %9, align 4, !dbg !1011
  br label %42, !dbg !1012

; <label>:42:                                     ; preds = %22
  %43 = load i32, i32* %10, align 4, !dbg !1013
  %44 = add nsw i32 %43, 1, !dbg !1013
  store i32 %44, i32* %10, align 4, !dbg !1013
  br label %19, !dbg !1015, !llvm.loop !1016

; <label>:45:                                     ; preds = %19
  %46 = load float, float* %9, align 4, !dbg !1018
  %47 = load i32, i32* %7, align 4, !dbg !1019
  %48 = mul nsw i32 %47, 32, !dbg !1020
  %49 = load i32, i32* %8, align 4, !dbg !1021
  %50 = add nsw i32 %48, %49, !dbg !1022
  %51 = sext i32 %50 to i64, !dbg !1023
  %52 = load float*, float** %6, align 8, !dbg !1023
  %53 = getelementptr inbounds float, float* %52, i64 %51, !dbg !1023
  store float %46, float* %53, align 4, !dbg !1024
  br label %54, !dbg !1025

; <label>:54:                                     ; preds = %45
  %55 = load i32, i32* %8, align 4, !dbg !1026
  %56 = add nsw i32 %55, 1, !dbg !1026
  store i32 %56, i32* %8, align 4, !dbg !1026
  br label %15, !dbg !1028, !llvm.loop !1029

; <label>:57:                                     ; preds = %15
  br label %58, !dbg !1031

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %7, align 4, !dbg !1032
  %60 = add nsw i32 %59, 1, !dbg !1032
  store i32 %60, i32* %7, align 4, !dbg !1032
  br label %11, !dbg !1034, !llvm.loop !1035

; <label>:61:                                     ; preds = %11
  ret void, !dbg !1037
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nounwind
define void @_Z11madd_goldenPfS_S_(float*, float*, float*) #4 !dbg !1038 !xidane.fname !1039 !xidane.function_declaration_type !959 !xidane.function_declaration_filename !960 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  call void @llvm.dbg.declare(metadata float** %4, metadata !1040, metadata !962), !dbg !1041
  store float* %1, float** %5, align 8
  call void @llvm.dbg.declare(metadata float** %5, metadata !1042, metadata !962), !dbg !1043
  store float* %2, float** %6, align 8
  call void @llvm.dbg.declare(metadata float** %6, metadata !1044, metadata !962), !dbg !1045
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1046, metadata !962), !dbg !1048
  store i32 0, i32* %7, align 4, !dbg !1048
  br label %9, !dbg !1049

; <label>:9:                                      ; preds = %45, %3
  %10 = load i32, i32* %7, align 4, !dbg !1050
  %11 = icmp slt i32 %10, 32, !dbg !1053
  br i1 %11, label %12, label %48, !dbg !1054

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1055, metadata !962), !dbg !1058
  store i32 0, i32* %8, align 4, !dbg !1058
  br label %13, !dbg !1059

; <label>:13:                                     ; preds = %41, %12
  %14 = load i32, i32* %8, align 4, !dbg !1060
  %15 = icmp slt i32 %14, 32, !dbg !1063
  br i1 %15, label %16, label %44, !dbg !1064

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %7, align 4, !dbg !1065
  %18 = mul nsw i32 %17, 32, !dbg !1067
  %19 = load i32, i32* %8, align 4, !dbg !1068
  %20 = add nsw i32 %18, %19, !dbg !1069
  %21 = sext i32 %20 to i64, !dbg !1070
  %22 = load float*, float** %4, align 8, !dbg !1070
  %23 = getelementptr inbounds float, float* %22, i64 %21, !dbg !1070
  %24 = load float, float* %23, align 4, !dbg !1070
  %25 = load i32, i32* %7, align 4, !dbg !1071
  %26 = mul nsw i32 %25, 32, !dbg !1072
  %27 = load i32, i32* %8, align 4, !dbg !1073
  %28 = add nsw i32 %26, %27, !dbg !1074
  %29 = sext i32 %28 to i64, !dbg !1075
  %30 = load float*, float** %5, align 8, !dbg !1075
  %31 = getelementptr inbounds float, float* %30, i64 %29, !dbg !1075
  %32 = load float, float* %31, align 4, !dbg !1075
  %33 = fadd float %24, %32, !dbg !1076
  %34 = load i32, i32* %7, align 4, !dbg !1077
  %35 = mul nsw i32 %34, 32, !dbg !1078
  %36 = load i32, i32* %8, align 4, !dbg !1079
  %37 = add nsw i32 %35, %36, !dbg !1080
  %38 = sext i32 %37 to i64, !dbg !1081
  %39 = load float*, float** %6, align 8, !dbg !1081
  %40 = getelementptr inbounds float, float* %39, i64 %38, !dbg !1081
  store float %33, float* %40, align 4, !dbg !1082
  br label %41, !dbg !1083

; <label>:41:                                     ; preds = %16
  %42 = load i32, i32* %8, align 4, !dbg !1084
  %43 = add nsw i32 %42, 1, !dbg !1084
  store i32 %43, i32* %8, align 4, !dbg !1084
  br label %13, !dbg !1086, !llvm.loop !1087

; <label>:44:                                     ; preds = %13
  br label %45, !dbg !1089

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %7, align 4, !dbg !1090
  %47 = add nsw i32 %46, 1, !dbg !1090
  store i32 %47, i32* %7, align 4, !dbg !1090
  br label %9, !dbg !1092, !llvm.loop !1093

; <label>:48:                                     ; preds = %9
  ret void, !dbg !1095
}

define i32 @_Z10mmult_testPfS_S_S_S_(float*, float*, float*, float*, float*) #0 !dbg !1096 !xidane.fname !1099 !xidane.function_declaration_type !1100 !xidane.function_declaration_filename !960 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca %class.perf_counter, align 8
  %13 = alloca %class.perf_counter, align 8
  %14 = alloca i32, align 4
  %15 = alloca [1024 x float], align 4
  %16 = alloca [1024 x float], align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  store float* %0, float** %7, align 8
  call void @llvm.dbg.declare(metadata float** %7, metadata !1101, metadata !962), !dbg !1102
  store float* %1, float** %8, align 8
  call void @llvm.dbg.declare(metadata float** %8, metadata !1103, metadata !962), !dbg !1104
  store float* %2, float** %9, align 8
  call void @llvm.dbg.declare(metadata float** %9, metadata !1105, metadata !962), !dbg !1106
  store float* %3, float** %10, align 8
  call void @llvm.dbg.declare(metadata float** %10, metadata !1107, metadata !962), !dbg !1108
  store float* %4, float** %11, align 8
  call void @llvm.dbg.declare(metadata float** %11, metadata !1109, metadata !962), !dbg !1110
  %20 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)), !dbg !1111
  %21 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %20, i32 1024), !dbg !1112
  %22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !1114
  %23 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %22, i32 32), !dbg !1116
  %24 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !1118
  %25 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %24, i32 32), !dbg !1120
  %26 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)), !dbg !1122
  %27 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %26, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1123
  call void @llvm.dbg.declare(metadata %class.perf_counter* %12, metadata !1124, metadata !962), !dbg !1140
  call void @_ZN12perf_counterC2Ev(%class.perf_counter* %12), !dbg !1140
  call void @llvm.dbg.declare(metadata %class.perf_counter* %13, metadata !1141, metadata !962), !dbg !1142
  call void @_ZN12perf_counterC2Ev(%class.perf_counter* %13), !dbg !1143
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1144, metadata !962), !dbg !1146
  store i32 0, i32* %14, align 4, !dbg !1146
  br label %28, !dbg !1147

; <label>:28:                                     ; preds = %55, %5
  %29 = load i32, i32* %14, align 4, !dbg !1148
  %30 = icmp slt i32 %29, 1024, !dbg !1151
  br i1 %30, label %31, label %58, !dbg !1152

; <label>:31:                                     ; preds = %28
  %32 = load float*, float** %7, align 8, !dbg !1153
  %33 = load float*, float** %8, align 8, !dbg !1155
  %34 = load float*, float** %9, align 8, !dbg !1156
  %35 = load float*, float** %10, align 8, !dbg !1157
  %36 = load float*, float** %11, align 8, !dbg !1158
  call void @_ZL11init_arraysPfS_S_S_S_(float* %32, float* %33, float* %34, float* %35, float* %36), !dbg !1159
  call void @llvm.dbg.declare(metadata [1024 x float]* %15, metadata !1160, metadata !962), !dbg !1164
  call void @llvm.dbg.declare(metadata [1024 x float]* %16, metadata !1165, metadata !962), !dbg !1166
  call void @_ZN12perf_counter5startEv(%class.perf_counter* %13), !dbg !1167
  %37 = load float*, float** %7, align 8, !dbg !1168
  %38 = load float*, float** %8, align 8, !dbg !1169
  %39 = getelementptr inbounds [1024 x float], [1024 x float]* %15, i32 0, i32 0, !dbg !1170
  call void @_Z12mmult_goldenPfS_S_(float* %37, float* %38, float* %39), !dbg !1171
  %40 = getelementptr inbounds [1024 x float], [1024 x float]* %15, i32 0, i32 0, !dbg !1172
  %41 = load float*, float** %9, align 8, !dbg !1173
  %42 = load float*, float** %11, align 8, !dbg !1174
  call void @_Z11madd_goldenPfS_S_(float* %40, float* %41, float* %42), !dbg !1175
  call void @_ZN12perf_counter4stopEv(%class.perf_counter* %13), !dbg !1176
  call void @_ZN12perf_counter5startEv(%class.perf_counter* %12), !dbg !1177
  %43 = load float*, float** %7, align 8, !dbg !1178
  %44 = load float*, float** %8, align 8, !dbg !1179
  %45 = getelementptr inbounds [1024 x float], [1024 x float]* %16, i32 0, i32 0, !dbg !1180
  call void @_Z5mmultPfS_S_(float* %43, float* %44, float* %45), !dbg !1181
  %46 = getelementptr inbounds [1024 x float], [1024 x float]* %16, i32 0, i32 0, !dbg !1182
  %47 = load float*, float** %9, align 8, !dbg !1183
  %48 = load float*, float** %10, align 8, !dbg !1184
  call void @_Z4maddPfS_S_(float* %46, float* %47, float* %48), !dbg !1185
  call void @_ZN12perf_counter4stopEv(%class.perf_counter* %12), !dbg !1186
  %49 = load float*, float** %10, align 8, !dbg !1187
  %50 = load float*, float** %11, align 8, !dbg !1189
  %51 = call i32 @_ZL12result_checkPfS_(float* %49, float* %50), !dbg !1190
  %52 = icmp ne i32 %51, 0, !dbg !1190
  br i1 %52, label %53, label %54, !dbg !1191

; <label>:53:                                     ; preds = %31
  store i32 1, i32* %6, align 4, !dbg !1192
  br label %78, !dbg !1192

; <label>:54:                                     ; preds = %31
  br label %55, !dbg !1193

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %14, align 4, !dbg !1194
  %57 = add nsw i32 %56, 1, !dbg !1194
  store i32 %57, i32* %14, align 4, !dbg !1194
  br label %28, !dbg !1196, !llvm.loop !1197

; <label>:58:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1199, metadata !962), !dbg !1200
  %59 = call i64 @_ZN12perf_counter14avg_cpu_cyclesEv(%class.perf_counter* %13), !dbg !1201
  store i64 %59, i64* %17, align 8, !dbg !1200
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1202, metadata !962), !dbg !1203
  %60 = call i64 @_ZN12perf_counter14avg_cpu_cyclesEv(%class.perf_counter* %12), !dbg !1204
  store i64 %60, i64* %18, align 8, !dbg !1203
  call void @llvm.dbg.declare(metadata double* %19, metadata !1205, metadata !962), !dbg !1206
  %61 = load i64, i64* %17, align 8, !dbg !1207
  %62 = uitofp i64 %61 to double, !dbg !1207
  %63 = load i64, i64* %18, align 8, !dbg !1208
  %64 = uitofp i64 %63 to double, !dbg !1208
  %65 = fdiv double %62, %64, !dbg !1209
  store double %65, double* %19, align 8, !dbg !1206
  %66 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i32 0, i32 0)), !dbg !1210
  %67 = load i64, i64* %17, align 8, !dbg !1211
  %68 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %66, i64 %67), !dbg !1212
  %69 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %68, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1213
  %70 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i32 0, i32 0)), !dbg !1214
  %71 = load i64, i64* %18, align 8, !dbg !1215
  %72 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %70, i64 %71), !dbg !1216
  %73 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %72, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1217
  %74 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)), !dbg !1218
  %75 = load double, double* %19, align 8, !dbg !1219
  %76 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %74, double %75), !dbg !1220
  %77 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %76, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1221
  store i32 0, i32* %6, align 4, !dbg !1222
  br label %78, !dbg !1222

; <label>:78:                                     ; preds = %58, %53
  %79 = load i32, i32* %6, align 4, !dbg !1223
  ret i32 %79, !dbg !1223
}

declare !xidane.fname !1224 !xidane.function_declaration_type !1225 !xidane.function_declaration_filename !1226 dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare !xidane.fname !1227 !xidane.function_declaration_type !1228 !xidane.function_declaration_filename !1226 dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare !xidane.fname !1227 !xidane.function_declaration_type !1229 !xidane.function_declaration_filename !1226 dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare !xidane.fname !1230 !xidane.function_declaration_type !1231 !xidane.function_declaration_filename !1226 dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: nounwind
define linkonce_odr void @_ZN12perf_counterC2Ev(%class.perf_counter*) unnamed_addr #4 comdat align 2 !dbg !1232 !xidane.fname !1233 !xidane.function_declaration_type !951 !xidane.function_declaration_filename !960 {
  %2 = alloca %class.perf_counter*, align 8
  store %class.perf_counter* %0, %class.perf_counter** %2, align 8
  call void @llvm.dbg.declare(metadata %class.perf_counter** %2, metadata !1234, metadata !962), !dbg !1236
  %3 = load %class.perf_counter*, %class.perf_counter** %2, align 8
  %4 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 0, !dbg !1237
  store i64 0, i64* %4, align 8, !dbg !1237
  %5 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 1, !dbg !1238
  store i64 0, i64* %5, align 8, !dbg !1238
  %6 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 2, !dbg !1239
  store i64 0, i64* %6, align 8, !dbg !1239
  ret void, !dbg !1240
}

; Function Attrs: nounwind
define internal void @_ZL11init_arraysPfS_S_S_S_(float*, float*, float*, float*, float*) #4 !dbg !1241 !xidane.fname !1244 !xidane.function_declaration_type !1245 !xidane.function_declaration_filename !960 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float* %0, float** %6, align 8
  call void @llvm.dbg.declare(metadata float** %6, metadata !1246, metadata !962), !dbg !1247
  store float* %1, float** %7, align 8
  call void @llvm.dbg.declare(metadata float** %7, metadata !1248, metadata !962), !dbg !1249
  store float* %2, float** %8, align 8
  call void @llvm.dbg.declare(metadata float** %8, metadata !1250, metadata !962), !dbg !1251
  store float* %3, float** %9, align 8
  call void @llvm.dbg.declare(metadata float** %9, metadata !1252, metadata !962), !dbg !1253
  store float* %4, float** %10, align 8
  call void @llvm.dbg.declare(metadata float** %10, metadata !1254, metadata !962), !dbg !1255
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1256, metadata !962), !dbg !1258
  store i32 0, i32* %11, align 4, !dbg !1258
  br label %13, !dbg !1259

; <label>:13:                                     ; preds = %71, %5
  %14 = load i32, i32* %11, align 4, !dbg !1260
  %15 = icmp slt i32 %14, 32, !dbg !1263
  br i1 %15, label %16, label %74, !dbg !1264

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1265, metadata !962), !dbg !1268
  store i32 0, i32* %12, align 4, !dbg !1268
  br label %17, !dbg !1269

; <label>:17:                                     ; preds = %67, %16
  %18 = load i32, i32* %12, align 4, !dbg !1270
  %19 = icmp slt i32 %18, 32, !dbg !1273
  br i1 %19, label %20, label %70, !dbg !1274

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %11, align 4, !dbg !1275
  %22 = mul nsw i32 %21, 32, !dbg !1277
  %23 = add nsw i32 1, %22, !dbg !1278
  %24 = load i32, i32* %12, align 4, !dbg !1279
  %25 = add nsw i32 %23, %24, !dbg !1280
  %26 = sitofp i32 %25 to float, !dbg !1281
  %27 = load i32, i32* %11, align 4, !dbg !1282
  %28 = mul nsw i32 %27, 32, !dbg !1283
  %29 = load i32, i32* %12, align 4, !dbg !1284
  %30 = add nsw i32 %28, %29, !dbg !1285
  %31 = sext i32 %30 to i64, !dbg !1286
  %32 = load float*, float** %6, align 8, !dbg !1286
  %33 = getelementptr inbounds float, float* %32, i64 %31, !dbg !1286
  store float %26, float* %33, align 4, !dbg !1287
  %34 = call i32 @rand() #3, !dbg !1288
  %35 = srem i32 %34, 1024, !dbg !1289
  %36 = sitofp i32 %35 to float, !dbg !1288
  %37 = load i32, i32* %11, align 4, !dbg !1290
  %38 = mul nsw i32 %37, 32, !dbg !1291
  %39 = load i32, i32* %12, align 4, !dbg !1292
  %40 = add nsw i32 %38, %39, !dbg !1293
  %41 = sext i32 %40 to i64, !dbg !1294
  %42 = load float*, float** %7, align 8, !dbg !1294
  %43 = getelementptr inbounds float, float* %42, i64 %41, !dbg !1294
  store float %36, float* %43, align 4, !dbg !1295
  %44 = load i32, i32* %11, align 4, !dbg !1296
  %45 = sitofp i32 %44 to float, !dbg !1296
  %46 = load i32, i32* %11, align 4, !dbg !1297
  %47 = mul nsw i32 %46, 32, !dbg !1298
  %48 = load i32, i32* %12, align 4, !dbg !1299
  %49 = add nsw i32 %47, %48, !dbg !1300
  %50 = sext i32 %49 to i64, !dbg !1301
  %51 = load float*, float** %8, align 8, !dbg !1301
  %52 = getelementptr inbounds float, float* %51, i64 %50, !dbg !1301
  store float %45, float* %52, align 4, !dbg !1302
  %53 = load i32, i32* %11, align 4, !dbg !1303
  %54 = mul nsw i32 %53, 32, !dbg !1304
  %55 = load i32, i32* %12, align 4, !dbg !1305
  %56 = add nsw i32 %54, %55, !dbg !1306
  %57 = sext i32 %56 to i64, !dbg !1307
  %58 = load float*, float** %9, align 8, !dbg !1307
  %59 = getelementptr inbounds float, float* %58, i64 %57, !dbg !1307
  store float 0.000000e+00, float* %59, align 4, !dbg !1308
  %60 = load i32, i32* %11, align 4, !dbg !1309
  %61 = mul nsw i32 %60, 32, !dbg !1310
  %62 = load i32, i32* %12, align 4, !dbg !1311
  %63 = add nsw i32 %61, %62, !dbg !1312
  %64 = sext i32 %63 to i64, !dbg !1313
  %65 = load float*, float** %10, align 8, !dbg !1313
  %66 = getelementptr inbounds float, float* %65, i64 %64, !dbg !1313
  store float 0.000000e+00, float* %66, align 4, !dbg !1314
  br label %67, !dbg !1315

; <label>:67:                                     ; preds = %20
  %68 = load i32, i32* %12, align 4, !dbg !1316
  %69 = add nsw i32 %68, 1, !dbg !1316
  store i32 %69, i32* %12, align 4, !dbg !1316
  br label %17, !dbg !1318, !llvm.loop !1319

; <label>:70:                                     ; preds = %17
  br label %71, !dbg !1321

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %11, align 4, !dbg !1322
  %73 = add nsw i32 %72, 1, !dbg !1322
  store i32 %73, i32* %11, align 4, !dbg !1322
  br label %13, !dbg !1324, !llvm.loop !1325

; <label>:74:                                     ; preds = %13
  ret void, !dbg !1327
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZN12perf_counter5startEv(%class.perf_counter*) #6 comdat align 2 !dbg !1328 !xidane.fname !1329 !xidane.function_declaration_type !951 !xidane.function_declaration_filename !960 {
  %2 = alloca %class.perf_counter*, align 8
  store %class.perf_counter* %0, %class.perf_counter** %2, align 8
  call void @llvm.dbg.declare(metadata %class.perf_counter** %2, metadata !1330, metadata !962), !dbg !1331
  %3 = load %class.perf_counter*, %class.perf_counter** %2, align 8
  %4 = call i64 @sds_clock_counter(), !dbg !1332
  %5 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 1, !dbg !1333
  store i64 %4, i64* %5, align 8, !dbg !1334
  %6 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 2, !dbg !1335
  %7 = load i64, i64* %6, align 8, !dbg !1336
  %8 = add i64 %7, 1, !dbg !1336
  store i64 %8, i64* %6, align 8, !dbg !1336
  ret void, !dbg !1337
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZN12perf_counter4stopEv(%class.perf_counter*) #6 comdat align 2 !dbg !1338 !xidane.fname !1339 !xidane.function_declaration_type !951 !xidane.function_declaration_filename !960 {
  %2 = alloca %class.perf_counter*, align 8
  store %class.perf_counter* %0, %class.perf_counter** %2, align 8
  call void @llvm.dbg.declare(metadata %class.perf_counter** %2, metadata !1340, metadata !962), !dbg !1341
  %3 = load %class.perf_counter*, %class.perf_counter** %2, align 8
  %4 = call i64 @sds_clock_counter(), !dbg !1342
  %5 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 1, !dbg !1343
  %6 = load i64, i64* %5, align 8, !dbg !1343
  %7 = sub i64 %4, %6, !dbg !1344
  %8 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 0, !dbg !1345
  %9 = load i64, i64* %8, align 8, !dbg !1346
  %10 = add i64 %9, %7, !dbg !1346
  store i64 %10, i64* %8, align 8, !dbg !1346
  ret void, !dbg !1347
}

declare !xidane.fname !1348 !xidane.function_declaration_type !1349 !xidane.function_declaration_filename !1350 !xidane.function_argument_annotation !1351 void @_Z5mmultPfS_S_(float*, float*, float*) #1

declare !xidane.fname !1352 !xidane.function_declaration_type !1349 !xidane.function_declaration_filename !1350 !xidane.function_argument_annotation !1351 void @_Z4maddPfS_S_(float*, float*, float*) #1

define internal i32 @_ZL12result_checkPfS_(float*, float*) #0 !dbg !1353 !xidane.fname !1356 !xidane.function_declaration_type !1357 !xidane.function_declaration_filename !960 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  store float* %0, float** %4, align 8
  call void @llvm.dbg.declare(metadata float** %4, metadata !1358, metadata !962), !dbg !1359
  store float* %1, float** %5, align 8
  call void @llvm.dbg.declare(metadata float** %5, metadata !1360, metadata !962), !dbg !1361
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1362, metadata !962), !dbg !1364
  store i32 0, i32* %6, align 4, !dbg !1364
  br label %7, !dbg !1365

; <label>:7:                                      ; preds = %42, %2
  %8 = load i32, i32* %6, align 4, !dbg !1366
  %9 = icmp slt i32 %8, 1024, !dbg !1369
  br i1 %9, label %10, label %45, !dbg !1370

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %6, align 4, !dbg !1371
  %12 = sext i32 %11 to i64, !dbg !1374
  %13 = load float*, float** %5, align 8, !dbg !1374
  %14 = getelementptr inbounds float, float* %13, i64 %12, !dbg !1374
  %15 = load float, float* %14, align 4, !dbg !1374
  %16 = load i32, i32* %6, align 4, !dbg !1375
  %17 = sext i32 %16 to i64, !dbg !1376
  %18 = load float*, float** %4, align 8, !dbg !1376
  %19 = getelementptr inbounds float, float* %18, i64 %17, !dbg !1376
  %20 = load float, float* %19, align 4, !dbg !1376
  %21 = fcmp une float %15, %20, !dbg !1377
  br i1 %21, label %22, label %41, !dbg !1378

; <label>:22:                                     ; preds = %10
  %23 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0)), !dbg !1379
  %24 = load i32, i32* %6, align 4, !dbg !1381
  %25 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %23, i32 %24), !dbg !1382
  %26 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)), !dbg !1384
  %27 = load i32, i32* %6, align 4, !dbg !1386
  %28 = sext i32 %27 to i64, !dbg !1387
  %29 = load float*, float** %5, align 8, !dbg !1387
  %30 = getelementptr inbounds float, float* %29, i64 %28, !dbg !1387
  %31 = load float, float* %30, align 4, !dbg !1387
  %32 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %26, float %31), !dbg !1388
  %33 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1390
  %34 = load i32, i32* %6, align 4, !dbg !1391
  %35 = sext i32 %34 to i64, !dbg !1392
  %36 = load float*, float** %4, align 8, !dbg !1392
  %37 = getelementptr inbounds float, float* %36, i64 %35, !dbg !1392
  %38 = load float, float* %37, align 4, !dbg !1392
  %39 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %33, float %38), !dbg !1393
  %40 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %39, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1394
  store i32 1, i32* %3, align 4, !dbg !1395
  br label %46, !dbg !1395

; <label>:41:                                     ; preds = %10
  br label %42, !dbg !1396

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %6, align 4, !dbg !1397
  %44 = add nsw i32 %43, 1, !dbg !1397
  store i32 %44, i32* %6, align 4, !dbg !1397
  br label %7, !dbg !1399, !llvm.loop !1400

; <label>:45:                                     ; preds = %7
  store i32 0, i32* %3, align 4, !dbg !1402
  br label %46, !dbg !1402

; <label>:46:                                     ; preds = %45, %22
  %47 = load i32, i32* %3, align 4, !dbg !1403
  ret i32 %47, !dbg !1403
}

; Function Attrs: inlinehint nounwind
define linkonce_odr i64 @_ZN12perf_counter14avg_cpu_cyclesEv(%class.perf_counter*) #7 comdat align 2 !dbg !1404 !xidane.fname !1405 !xidane.function_declaration_type !1406 !xidane.function_declaration_filename !960 {
  %2 = alloca %class.perf_counter*, align 8
  store %class.perf_counter* %0, %class.perf_counter** %2, align 8
  call void @llvm.dbg.declare(metadata %class.perf_counter** %2, metadata !1407, metadata !962), !dbg !1408
  %3 = load %class.perf_counter*, %class.perf_counter** %2, align 8
  %4 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 0, !dbg !1409
  %5 = load i64, i64* %4, align 8, !dbg !1409
  %6 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 2, !dbg !1410
  %7 = load i64, i64* %6, align 8, !dbg !1410
  %8 = lshr i64 %7, 1, !dbg !1411
  %9 = add i64 %5, %8, !dbg !1412
  %10 = getelementptr inbounds %class.perf_counter, %class.perf_counter* %3, i32 0, i32 2, !dbg !1413
  %11 = load i64, i64* %10, align 8, !dbg !1413
  %12 = udiv i64 %9, %11, !dbg !1414
  ret i64 %12, !dbg !1415
}

declare !xidane.fname !1227 !xidane.function_declaration_type !1416 !xidane.function_declaration_filename !1226 dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"*, i64) #1

declare !xidane.fname !1227 !xidane.function_declaration_type !1417 !xidane.function_declaration_filename !1226 dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

; Function Attrs: norecurse
define i32 @main(i32, i8**) #8 !dbg !1418 !xidane.fname !1421 !xidane.function_declaration_type !1422 !xidane.function_declaration_filename !960 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1423, metadata !962), !dbg !1424
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1425, metadata !962), !dbg !1426
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1427, metadata !962), !dbg !1428
  store i32 0, i32* %6, align 4, !dbg !1428
  call void @llvm.dbg.declare(metadata float** %7, metadata !1429, metadata !962), !dbg !1430
  call void @llvm.dbg.declare(metadata float** %8, metadata !1431, metadata !962), !dbg !1432
  call void @llvm.dbg.declare(metadata float** %9, metadata !1433, metadata !962), !dbg !1434
  call void @llvm.dbg.declare(metadata float** %10, metadata !1435, metadata !962), !dbg !1436
  call void @llvm.dbg.declare(metadata float** %11, metadata !1437, metadata !962), !dbg !1438
  %12 = call i8* @sds_alloc(i32 4096), !dbg !1439
  %13 = bitcast i8* %12 to float*, !dbg !1440
  store float* %13, float** %7, align 8, !dbg !1441
  %14 = call i8* @sds_alloc(i32 4096), !dbg !1442
  %15 = bitcast i8* %14 to float*, !dbg !1443
  store float* %15, float** %8, align 8, !dbg !1444
  %16 = call i8* @sds_alloc(i32 4096), !dbg !1445
  %17 = bitcast i8* %16 to float*, !dbg !1446
  store float* %17, float** %9, align 8, !dbg !1447
  %18 = call i8* @sds_alloc(i32 4096), !dbg !1448
  %19 = bitcast i8* %18 to float*, !dbg !1449
  store float* %19, float** %10, align 8, !dbg !1450
  %20 = call noalias i8* @malloc(i64 4096) #3, !dbg !1451
  %21 = bitcast i8* %20 to float*, !dbg !1452
  store float* %21, float** %11, align 8, !dbg !1453
  %22 = load float*, float** %7, align 8, !dbg !1454
  %23 = icmp ne float* %22, null, !dbg !1454
  br i1 %23, label %24, label %36, !dbg !1456

; <label>:24:                                     ; preds = %2
  %25 = load float*, float** %8, align 8, !dbg !1457
  %26 = icmp ne float* %25, null, !dbg !1457
  br i1 %26, label %27, label %36, !dbg !1459

; <label>:27:                                     ; preds = %24
  %28 = load float*, float** %9, align 8, !dbg !1460
  %29 = icmp ne float* %28, null, !dbg !1460
  br i1 %29, label %30, label %36, !dbg !1462

; <label>:30:                                     ; preds = %27
  %31 = load float*, float** %10, align 8, !dbg !1463
  %32 = icmp ne float* %31, null, !dbg !1463
  br i1 %32, label %33, label %36, !dbg !1465

; <label>:33:                                     ; preds = %30
  %34 = load float*, float** %11, align 8, !dbg !1466
  %35 = icmp ne float* %34, null, !dbg !1466
  br i1 %35, label %67, label %36, !dbg !1468

; <label>:36:                                     ; preds = %33, %30, %27, %24, %2
  %37 = load float*, float** %7, align 8, !dbg !1469
  %38 = icmp ne float* %37, null, !dbg !1469
  br i1 %38, label %39, label %42, !dbg !1472

; <label>:39:                                     ; preds = %36
  %40 = load float*, float** %7, align 8, !dbg !1473
  %41 = bitcast float* %40 to i8*, !dbg !1473
  call void @sds_free(i8* %41), !dbg !1475
  br label %42, !dbg !1475

; <label>:42:                                     ; preds = %39, %36
  %43 = load float*, float** %8, align 8, !dbg !1476
  %44 = icmp ne float* %43, null, !dbg !1476
  br i1 %44, label %45, label %48, !dbg !1478

; <label>:45:                                     ; preds = %42
  %46 = load float*, float** %8, align 8, !dbg !1479
  %47 = bitcast float* %46 to i8*, !dbg !1479
  call void @sds_free(i8* %47), !dbg !1481
  br label %48, !dbg !1481

; <label>:48:                                     ; preds = %45, %42
  %49 = load float*, float** %9, align 8, !dbg !1482
  %50 = icmp ne float* %49, null, !dbg !1482
  br i1 %50, label %51, label %54, !dbg !1484

; <label>:51:                                     ; preds = %48
  %52 = load float*, float** %9, align 8, !dbg !1485
  %53 = bitcast float* %52 to i8*, !dbg !1485
  call void @sds_free(i8* %53), !dbg !1487
  br label %54, !dbg !1487

; <label>:54:                                     ; preds = %51, %48
  %55 = load float*, float** %10, align 8, !dbg !1488
  %56 = icmp ne float* %55, null, !dbg !1488
  br i1 %56, label %57, label %60, !dbg !1490

; <label>:57:                                     ; preds = %54
  %58 = load float*, float** %10, align 8, !dbg !1491
  %59 = bitcast float* %58 to i8*, !dbg !1491
  call void @sds_free(i8* %59), !dbg !1493
  br label %60, !dbg !1493

; <label>:60:                                     ; preds = %57, %54
  %61 = load float*, float** %11, align 8, !dbg !1494
  %62 = icmp ne float* %61, null, !dbg !1494
  br i1 %62, label %63, label %66, !dbg !1496

; <label>:63:                                     ; preds = %60
  %64 = load float*, float** %11, align 8, !dbg !1497
  %65 = bitcast float* %64 to i8*, !dbg !1497
  call void @free(i8* %65) #3, !dbg !1499
  br label %66, !dbg !1499

; <label>:66:                                     ; preds = %63, %60
  store i32 2, i32* %3, align 4, !dbg !1500
  br label %97, !dbg !1500

; <label>:67:                                     ; preds = %33
  %68 = load float*, float** %7, align 8, !dbg !1501
  %69 = load float*, float** %8, align 8, !dbg !1502
  %70 = load float*, float** %9, align 8, !dbg !1503
  %71 = load float*, float** %10, align 8, !dbg !1504
  %72 = load float*, float** %11, align 8, !dbg !1505
  %73 = call i32 @_Z10mmult_testPfS_S_S_S_(float* %68, float* %69, float* %70, float* %71, float* %72), !dbg !1506
  store i32 %73, i32* %6, align 4, !dbg !1507
  %74 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)), !dbg !1508
  %75 = load i32, i32* %6, align 4, !dbg !1509
  %76 = icmp ne i32 %75, 0, !dbg !1509
  br i1 %76, label %77, label %78, !dbg !1509

; <label>:77:                                     ; preds = %67
  br label %79, !dbg !1510

; <label>:78:                                     ; preds = %67
  br label %79, !dbg !1512

; <label>:79:                                     ; preds = %78, %77
  %80 = phi [7 x i8]* [ @.str.8, %77 ], [ @.str.9, %78 ], !dbg !1514
  %81 = getelementptr inbounds [7 x i8], [7 x i8]* %80, i32 0, i32 0, !dbg !1516
  %82 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %74, i8* %81), !dbg !1517
  %83 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %82, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1518
  %84 = load float*, float** %7, align 8, !dbg !1520
  %85 = bitcast float* %84 to i8*, !dbg !1520
  call void @sds_free(i8* %85), !dbg !1521
  %86 = load float*, float** %8, align 8, !dbg !1522
  %87 = bitcast float* %86 to i8*, !dbg !1522
  call void @sds_free(i8* %87), !dbg !1523
  %88 = load float*, float** %9, align 8, !dbg !1524
  %89 = bitcast float* %88 to i8*, !dbg !1524
  call void @sds_free(i8* %89), !dbg !1525
  %90 = load float*, float** %10, align 8, !dbg !1526
  %91 = bitcast float* %90 to i8*, !dbg !1526
  call void @sds_free(i8* %91), !dbg !1527
  %92 = load float*, float** %11, align 8, !dbg !1528
  %93 = bitcast float* %92 to i8*, !dbg !1528
  call void @free(i8* %93) #3, !dbg !1529
  %94 = load i32, i32* %6, align 4, !dbg !1530
  %95 = icmp ne i32 %94, 0, !dbg !1530
  %96 = select i1 %95, i32 -1, i32 0, !dbg !1530
  store i32 %96, i32* %3, align 4, !dbg !1531
  br label %97, !dbg !1531

; <label>:97:                                     ; preds = %79, %66
  %98 = load i32, i32* %3, align 4, !dbg !1532
  ret i32 %98, !dbg !1532
}

declare !xidane.fname !1533 !xidane.function_declaration_type !1534 !xidane.function_declaration_filename !1535 !xidane.ExternC !1536 i8* @sds_alloc(i32) #1

; Function Attrs: nounwind
declare !xidane.fname !1537 !xidane.function_declaration_type !1538 !xidane.function_declaration_filename !1539 !xidane.ExternC !1536 noalias i8* @malloc(i64) #2

declare !xidane.fname !1540 !xidane.function_declaration_type !1541 !xidane.function_declaration_filename !1535 !xidane.ExternC !1536 void @sds_free(i8*) #1

; Function Attrs: nounwind
declare !xidane.fname !1542 !xidane.function_declaration_type !1541 !xidane.function_declaration_filename !1539 !xidane.ExternC !1536 void @free(i8*) #2

; Function Attrs: nounwind
declare !xidane.fname !1543 !xidane.function_declaration_type !1544 !xidane.function_declaration_filename !1539 !xidane.ExternC !1536 i32 @rand() #2

declare !xidane.fname !1545 !xidane.function_declaration_type !1546 !xidane.function_declaration_filename !1535 !xidane.ExternC !1536 i64 @sds_clock_counter() #1

declare !xidane.fname !1227 !xidane.function_declaration_type !1547 !xidane.function_declaration_filename !1226 dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #1

define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" !dbg !1548 {
  call void @__cxx_global_var_init(), !dbg !1550
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a53" "target-features"="+crc,+crypto,+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a53" "target-features"="+crc,+crypto,+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a53" "target-features"="+crc,+crypto,+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a53" "target-features"="+crc,+crypto,+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { inlinehint "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a53" "target-features"="+crc,+crypto,+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a53" "target-features"="+crc,+crypto,+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a53" "target-features"="+crc,+crypto,+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!943, !944}
!llvm.ident = !{!945}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7, imports: !27)
!1 = !DIFile(filename: "../src\5Cmain.cpp", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!7 = !{!8}
!8 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !9, file: !11, line: 74, type: !12, isLocal: true, isDefinition: true, variable: %"class.std::ios_base::Init"* @_ZStL8__ioinit)
!9 = !DINamespace(name: "std", scope: null, file: !10, line: 229)
!10 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1/aarch64-linux-gnu\5Cbits/c++config.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!11 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Ciostream", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!12 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !14, file: !13, line: 601, size: 8, align: 8, elements: !15, identifier: "_ZTSNSt8ios_base4InitE")
!13 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Cbits/ios_base.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!14 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !9, file: !13, line: 228, size: 1728, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!15 = !{!16, !20, !22, !26}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !12, file: !13, line: 609, baseType: !17, flags: DIFlagStaticMember)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !18, line: 32, baseType: !19)
!18 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1/aarch64-linux-gnu\5Cbits/atomic_word.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !12, file: !13, line: 610, baseType: !21, flags: DIFlagStaticMember)
!21 = !DIBasicType(name: "bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!22 = !DISubprogram(name: "Init", scope: !12, file: !13, line: 605, type: !23, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!26 = !DISubprogram(name: "~Init", scope: !12, file: !13, line: 606, type: !23, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!27 = !{!28, !46, !49, !54, !62, !70, !74, !81, !85, !89, !91, !93, !97, !109, !113, !119, !125, !127, !131, !135, !139, !143, !159, !161, !165, !169, !173, !175, !181, !185, !189, !191, !193, !197, !205, !209, !213, !217, !219, !225, !227, !233, !237, !241, !246, !250, !254, !258, !260, !262, !266, !270, !274, !276, !280, !284, !286, !288, !292, !298, !303, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !372, !376, !380, !386, !390, !393, !396, !399, !401, !403, !405, !407, !409, !411, !413, !416, !418, !423, !427, !430, !433, !435, !437, !439, !441, !443, !445, !447, !449, !452, !454, !457, !461, !466, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !504, !507, !513, !517, !522, !524, !528, !532, !536, !546, !550, !554, !558, !562, !566, !570, !574, !578, !582, !586, !590, !594, !596, !600, !604, !608, !614, !618, !622, !624, !628, !632, !638, !640, !644, !648, !652, !656, !660, !664, !668, !669, !670, !671, !674, !675, !676, !677, !678, !679, !680, !683, !689, !694, !698, !700, !702, !704, !706, !713, !717, !721, !725, !729, !733, !738, !742, !744, !748, !754, !758, !763, !765, !767, !771, !775, !779, !781, !783, !785, !787, !791, !793, !795, !799, !803, !807, !811, !815, !817, !819, !823, !827, !831, !835, !837, !839, !843, !847, !848, !849, !850, !851, !852, !857, !860, !861, !863, !865, !867, !869, !873, !875, !877, !879, !881, !883, !885, !887, !889, !893, !897, !899, !903, !907, !908, !909, !910, !911, !912, !913, !914, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942}
!28 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !29, line: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !30, line: 6, baseType: !31)
!30 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cbits/types/mbstate_t.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !32, line: 21, baseType: !33)
!32 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cbits/types/__mbstate_t.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 13, size: 64, align: 32, elements: !34, identifier: "_ZTS11__mbstate_t")
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !33, file: !32, line: 15, baseType: !19, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !33, file: !32, line: 20, baseType: !37, size: 32, align: 32, offset: 32)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !32, line: 16, size: 32, align: 32, elements: !38, identifier: "_ZTSN11__mbstate_tUt_E")
!38 = !{!39, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !37, file: !32, line: 18, baseType: !40, size: 32, align: 32)
!40 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !37, file: !32, line: 19, baseType: !42, size: 32, align: 8)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, align: 8, elements: !44)
!43 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!44 = !{!45}
!45 = !DISubrange(count: 4)
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !47, line: 139)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !48, line: 20, baseType: !40)
!48 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cbits/types/wint_t.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !50, line: 141)
!50 = !DISubprogram(name: "btowc", scope: !51, file: !51, line: 284, type: !52, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!51 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cwchar.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!52 = !DISubroutineType(types: !53)
!53 = !{!47, !19}
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !55, line: 142)
!55 = !DISubprogram(name: "fgetwc", scope: !51, file: !51, line: 660, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DISubroutineType(types: !57)
!57 = !{!47, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !60, line: 5, baseType: !61)
!60 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cbits/types/__FILE.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !63, line: 143)
!63 = !DISubprogram(name: "fgetws", scope: !51, file: !51, line: 689, type: !64, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !68, !19, !69}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIBasicType(name: "wchar_t", size: 32, align: 32, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !71, line: 144)
!71 = !DISubprogram(name: "fputwc", scope: !51, file: !51, line: 674, type: !72, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!72 = !DISubroutineType(types: !73)
!73 = !{!47, !67, !58}
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !75, line: 145)
!75 = !DISubprogram(name: "fputws", scope: !51, file: !51, line: 696, type: !76, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!76 = !DISubroutineType(types: !77)
!77 = !{!19, !78, !69}
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !82, line: 146)
!82 = !DISubprogram(name: "fwide", scope: !51, file: !51, line: 506, type: !83, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!83 = !DISubroutineType(types: !84)
!84 = !{!19, !58, !19}
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !86, line: 147)
!86 = !DISubprogram(name: "fwprintf", scope: !51, file: !51, line: 513, type: !87, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!87 = !DISubroutineType(types: !88)
!88 = !{!19, !69, !78, null}
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !90, line: 148)
!90 = !DISubprogram(name: "fwscanf", scope: !51, file: !51, line: 554, type: !87, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !92, line: 149)
!92 = !DISubprogram(name: "getwc", scope: !51, file: !51, line: 661, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !94, line: 150)
!94 = !DISubprogram(name: "getwchar", scope: !51, file: !51, line: 667, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{!47}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !98, line: 151)
!98 = !DISubprogram(name: "mbrlen", scope: !51, file: !51, line: 307, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !104, !101, !107}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 216, baseType: !103)
!102 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/lib/gcc/aarch64-linux-gnu/7.3.1/include\5Cstddef.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!103 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !110, line: 152)
!110 = !DISubprogram(name: "mbrtowc", scope: !51, file: !51, line: 296, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DISubroutineType(types: !112)
!112 = !{!101, !68, !104, !101, !107}
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !114, line: 153)
!114 = !DISubprogram(name: "mbsinit", scope: !51, file: !51, line: 292, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DISubroutineType(types: !116)
!116 = !{!19, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !120, line: 154)
!120 = !DISubprogram(name: "mbsrtowcs", scope: !51, file: !51, line: 337, type: !121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{!101, !68, !123, !101, !107}
!123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !126, line: 155)
!126 = !DISubprogram(name: "putwc", scope: !51, file: !51, line: 675, type: !72, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !128, line: 156)
!128 = !DISubprogram(name: "putwchar", scope: !51, file: !51, line: 681, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!47, !67}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !132, line: 158)
!132 = !DISubprogram(name: "swprintf", scope: !51, file: !51, line: 523, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!19, !68, !101, !78, null}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !136, line: 160)
!136 = !DISubprogram(name: "swscanf", scope: !51, file: !51, line: 564, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{!19, !78, !78, null}
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !140, line: 161)
!140 = !DISubprogram(name: "ungetwc", scope: !51, file: !51, line: 704, type: !141, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DISubroutineType(types: !142)
!142 = !{!47, !47, !58}
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !144, line: 162)
!144 = !DISubprogram(name: "vfwprintf", scope: !51, file: !51, line: 531, type: !145, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DISubroutineType(types: !146)
!146 = !{!19, !69, !78, !147}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 40, baseType: !149)
!148 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/lib/gcc/aarch64-linux-gnu/7.3.1/include\5Cstdarg.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !151, file: !1, size: 256, align: 64, elements: !152, identifier: "_ZTSSt9__va_list")
!151 = !DINamespace(name: "std", scope: null, file: !1)
!152 = !{!153, !155, !156, !157, !158}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !150, file: !1, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !150, file: !1, baseType: !154, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !150, file: !1, baseType: !154, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !150, file: !1, baseType: !19, size: 32, align: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !150, file: !1, baseType: !19, size: 32, align: 32, offset: 224)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !160, line: 164)
!160 = !DISubprogram(name: "vfwscanf", scope: !51, file: !51, line: 606, type: !145, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !162, line: 167)
!162 = !DISubprogram(name: "vswprintf", scope: !51, file: !51, line: 544, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!19, !68, !101, !78, !147}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !166, line: 170)
!166 = !DISubprogram(name: "vswscanf", scope: !51, file: !51, line: 618, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!19, !78, !78, !147}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !170, line: 172)
!170 = !DISubprogram(name: "vwprintf", scope: !51, file: !51, line: 539, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!19, !78, !147}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !174, line: 174)
!174 = !DISubprogram(name: "vwscanf", scope: !51, file: !51, line: 614, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !176, line: 176)
!176 = !DISubprogram(name: "wcrtomb", scope: !51, file: !51, line: 301, type: !177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DISubroutineType(types: !178)
!178 = !{!101, !179, !67, !107}
!179 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !182, line: 177)
!182 = !DISubprogram(name: "wcscat", scope: !51, file: !51, line: 97, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{!66, !68, !78}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !186, line: 178)
!186 = !DISubprogram(name: "wcscmp", scope: !51, file: !51, line: 106, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubroutineType(types: !188)
!188 = !{!19, !79, !79}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !190, line: 179)
!190 = !DISubprogram(name: "wcscoll", scope: !51, file: !51, line: 131, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !192, line: 180)
!192 = !DISubprogram(name: "wcscpy", scope: !51, file: !51, line: 87, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !194, line: 181)
!194 = !DISubprogram(name: "wcscspn", scope: !51, file: !51, line: 187, type: !195, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DISubroutineType(types: !196)
!196 = !{!101, !79, !79}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !198, line: 182)
!198 = !DISubprogram(name: "wcsftime", scope: !51, file: !51, line: 768, type: !199, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DISubroutineType(types: !200)
!200 = !{!101, !68, !101, !78, !201}
!201 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !51, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !206, line: 183)
!206 = !DISubprogram(name: "wcslen", scope: !51, file: !51, line: 222, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!101, !79}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !210, line: 184)
!210 = !DISubprogram(name: "wcsncat", scope: !51, file: !51, line: 101, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!66, !68, !78, !101}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !214, line: 185)
!214 = !DISubprogram(name: "wcsncmp", scope: !51, file: !51, line: 109, type: !215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DISubroutineType(types: !216)
!216 = !{!19, !79, !79, !101}
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !218, line: 186)
!218 = !DISubprogram(name: "wcsncpy", scope: !51, file: !51, line: 92, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !220, line: 187)
!220 = !DISubprogram(name: "wcsrtombs", scope: !51, file: !51, line: 343, type: !221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{!101, !179, !223, !101, !107}
!223 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !226, line: 188)
!226 = !DISubprogram(name: "wcsspn", scope: !51, file: !51, line: 191, type: !195, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !228, line: 189)
!228 = !DISubprogram(name: "wcstod", scope: !51, file: !51, line: 377, type: !229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DISubroutineType(types: !230)
!230 = !{!4, !78, !231}
!231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !234, line: 191)
!234 = !DISubprogram(name: "wcstof", scope: !51, file: !51, line: 382, type: !235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DISubroutineType(types: !236)
!236 = !{!6, !78, !231}
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !238, line: 193)
!238 = !DISubprogram(name: "wcstok", scope: !51, file: !51, line: 217, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!66, !68, !78, !231}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !242, line: 194)
!242 = !DISubprogram(name: "wcstol", scope: !51, file: !51, line: 397, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !78, !231, !19}
!245 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !247, line: 195)
!247 = !DISubprogram(name: "wcstoul", scope: !51, file: !51, line: 402, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!103, !78, !231, !19}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !251, line: 196)
!251 = !DISubprogram(name: "wcsxfrm", scope: !51, file: !51, line: 135, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DISubroutineType(types: !253)
!253 = !{!101, !68, !78, !101}
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !255, line: 197)
!255 = !DISubprogram(name: "wctob", scope: !51, file: !51, line: 288, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!256 = !DISubroutineType(types: !257)
!257 = !{!19, !47}
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !259, line: 198)
!259 = !DISubprogram(name: "wmemcmp", scope: !51, file: !51, line: 258, type: !215, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !261, line: 199)
!261 = !DISubprogram(name: "wmemcpy", scope: !51, file: !51, line: 262, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !263, line: 200)
!263 = !DISubprogram(name: "wmemmove", scope: !51, file: !51, line: 267, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!66, !66, !79, !101}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !267, line: 201)
!267 = !DISubprogram(name: "wmemset", scope: !51, file: !51, line: 271, type: !268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubroutineType(types: !269)
!269 = !{!66, !66, !67, !101}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !271, line: 202)
!271 = !DISubprogram(name: "wprintf", scope: !51, file: !51, line: 520, type: !272, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DISubroutineType(types: !273)
!273 = !{!19, !78, null}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !275, line: 203)
!275 = !DISubprogram(name: "wscanf", scope: !51, file: !51, line: 561, type: !272, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !277, line: 204)
!277 = !DISubprogram(name: "wcschr", scope: !51, file: !51, line: 164, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!66, !79, !67}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !281, line: 205)
!281 = !DISubprogram(name: "wcspbrk", scope: !51, file: !51, line: 201, type: !282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DISubroutineType(types: !283)
!283 = !{!66, !79, !79}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !285, line: 206)
!285 = !DISubprogram(name: "wcsrchr", scope: !51, file: !51, line: 174, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !287, line: 207)
!287 = !DISubprogram(name: "wcsstr", scope: !51, file: !51, line: 212, type: !282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !289, line: 208)
!289 = !DISubprogram(name: "wmemchr", scope: !51, file: !51, line: 253, type: !290, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DISubroutineType(types: !291)
!291 = !{!66, !79, !67, !101}
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !294, line: 248)
!293 = !DINamespace(name: "__gnu_cxx", scope: null, file: !10, line: 255)
!294 = !DISubprogram(name: "wcstold", scope: !51, file: !51, line: 384, type: !295, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !78, !231}
!297 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !299, line: 257)
!299 = !DISubprogram(name: "wcstoll", scope: !51, file: !51, line: 410, type: !300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !78, !231, !19}
!302 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !304, line: 258)
!304 = !DISubprogram(name: "wcstoull", scope: !51, file: !51, line: 417, type: !305, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !78, !231, !19}
!307 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !294, line: 264)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !299, line: 265)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !304, line: 266)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !234, line: 280)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !160, line: 283)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !166, line: 286)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !174, line: 289)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !294, line: 293)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !299, line: 294)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !304, line: 295)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !319, line: 57)
!319 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !321, file: !320, line: 79, size: 64, align: 64, elements: !322, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!320 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Cbits/exception_ptr.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!321 = !DINamespace(name: "__exception_ptr", scope: !9, file: !320, line: 52)
!322 = !{!323, !324, !328, !331, !332, !337, !338, !342, !347, !351, !355, !358, !359, !362, !365}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !319, file: !320, line: 81, baseType: !154, size: 64, align: 64)
!324 = !DISubprogram(name: "exception_ptr", scope: !319, file: !320, line: 83, type: !325, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327, !154}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!328 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !319, file: !320, line: 85, type: !329, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !327}
!331 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !319, file: !320, line: 86, type: !329, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !319, file: !320, line: 88, type: !333, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!333 = !DISubroutineType(types: !334)
!334 = !{!154, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!337 = !DISubprogram(name: "exception_ptr", scope: !319, file: !320, line: 96, type: !329, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!338 = !DISubprogram(name: "exception_ptr", scope: !319, file: !320, line: 98, type: !339, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !327, !341}
!341 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !336, size: 64, align: 64)
!342 = !DISubprogram(name: "exception_ptr", scope: !319, file: !320, line: 101, type: !343, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !327, !345}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !9, file: !10, line: 235, baseType: !346)
!346 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!347 = !DISubprogram(name: "exception_ptr", scope: !319, file: !320, line: 105, type: !348, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !327, !350}
!350 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !319, size: 64, align: 64)
!351 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !319, file: !320, line: 118, type: !352, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !327, !341}
!354 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !319, size: 64, align: 64)
!355 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !319, file: !320, line: 122, type: !356, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!356 = !DISubroutineType(types: !357)
!357 = !{!354, !327, !350}
!358 = !DISubprogram(name: "~exception_ptr", scope: !319, file: !320, line: 129, type: !329, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!359 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !319, file: !320, line: 132, type: !360, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !327, !354}
!362 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !319, file: !320, line: 144, type: !363, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{!21, !335}
!365 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !319, file: !320, line: 153, type: !366, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !335}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !9, file: !371, line: 88, size: 128, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!371 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Ctypeinfo", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !373, line: 73)
!373 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !9, file: !320, line: 69, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !319}
!376 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !377, entity: !379, line: 58)
!377 = !DINamespace(name: "__gnu_debug", scope: null, file: !378, line: 56)
!378 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Cdebug/debug.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!379 = !DINamespace(name: "__debug", scope: !9, file: !378, line: 50)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !381, line: 48)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !382, line: 24, baseType: !383)
!382 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cbits/stdint-intn.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !384, line: 36, baseType: !385)
!384 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cbits/types.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!385 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !387, line: 49)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !382, line: 25, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !384, line: 38, baseType: !389)
!389 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !391, line: 50)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !382, line: 26, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !384, line: 40, baseType: !19)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !394, line: 51)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !382, line: 27, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !384, line: 43, baseType: !245)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !397, line: 53)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !398, line: 68, baseType: !385)
!398 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cstdint.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !400, line: 54)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !398, line: 70, baseType: !245)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !402, line: 55)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !398, line: 71, baseType: !245)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !404, line: 56)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !398, line: 72, baseType: !245)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !406, line: 58)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !398, line: 43, baseType: !385)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !408, line: 59)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !398, line: 44, baseType: !389)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !410, line: 60)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !398, line: 45, baseType: !19)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !412, line: 61)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !398, line: 47, baseType: !245)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !414, line: 63)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !398, line: 111, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !384, line: 61, baseType: !245)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !417, line: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !398, line: 97, baseType: !245)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !419, line: 66)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !420, line: 24, baseType: !421)
!420 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cbits/stdint-uintn.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !384, line: 37, baseType: !422)
!422 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !424, line: 67)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !420, line: 25, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !384, line: 39, baseType: !426)
!426 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !428, line: 68)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !420, line: 26, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !384, line: 41, baseType: !40)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !431, line: 69)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !420, line: 27, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !384, line: 44, baseType: !103)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !434, line: 71)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !398, line: 81, baseType: !422)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !436, line: 72)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !398, line: 83, baseType: !103)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !438, line: 73)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !398, line: 84, baseType: !103)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !440, line: 74)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !398, line: 85, baseType: !103)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !442, line: 76)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !398, line: 54, baseType: !422)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !444, line: 77)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !398, line: 55, baseType: !426)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !446, line: 78)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !398, line: 56, baseType: !40)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !448, line: 79)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !398, line: 58, baseType: !103)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !450, line: 81)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !398, line: 112, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !384, line: 62, baseType: !103)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !453, line: 82)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !398, line: 100, baseType: !103)
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !455, line: 53)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !456, line: 51, size: 768, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!456 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Clocale.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !458, line: 54)
!458 = !DISubprogram(name: "setlocale", scope: !456, file: !456, line: 122, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{!180, !19, !105}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !462, line: 55)
!462 = !DISubprogram(name: "localeconv", scope: !456, file: !456, line: 125, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !467, line: 64)
!467 = !DISubprogram(name: "isalnum", scope: !468, file: !468, line: 108, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!468 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cctype.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!469 = !DISubroutineType(types: !470)
!470 = !{!19, !19}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !472, line: 65)
!472 = !DISubprogram(name: "isalpha", scope: !468, file: !468, line: 109, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !474, line: 66)
!474 = !DISubprogram(name: "iscntrl", scope: !468, file: !468, line: 110, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !476, line: 67)
!476 = !DISubprogram(name: "isdigit", scope: !468, file: !468, line: 111, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !478, line: 68)
!478 = !DISubprogram(name: "isgraph", scope: !468, file: !468, line: 113, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !480, line: 69)
!480 = !DISubprogram(name: "islower", scope: !468, file: !468, line: 112, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !482, line: 70)
!482 = !DISubprogram(name: "isprint", scope: !468, file: !468, line: 114, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !484, line: 71)
!484 = !DISubprogram(name: "ispunct", scope: !468, file: !468, line: 115, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !486, line: 72)
!486 = !DISubprogram(name: "isspace", scope: !468, file: !468, line: 116, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !488, line: 73)
!488 = !DISubprogram(name: "isupper", scope: !468, file: !468, line: 117, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !490, line: 74)
!490 = !DISubprogram(name: "isxdigit", scope: !468, file: !468, line: 118, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !492, line: 75)
!492 = !DISubprogram(name: "tolower", scope: !468, file: !468, line: 122, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !494, line: 76)
!494 = !DISubprogram(name: "toupper", scope: !468, file: !468, line: 125, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !496, line: 87)
!496 = !DISubprogram(name: "isblank", scope: !468, file: !468, line: 130, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !498, line: 44)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !9, file: !10, line: 231, baseType: !103)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !500, line: 45)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !9, file: !10, line: 232, baseType: !245)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !502, line: 52)
!502 = !DISubprogram(name: "abs", scope: !503, file: !503, line: 722, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!503 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cstdlib.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !505, line: 127)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !503, line: 62, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 58, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !508, line: 128)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !503, line: 70, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 66, size: 128, align: 64, elements: !510, identifier: "_ZTS6ldiv_t")
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !509, file: !503, line: 68, baseType: !245, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !509, file: !503, line: 69, baseType: !245, size: 64, align: 64, offset: 64)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !514, line: 130)
!514 = !DISubprogram(name: "abort", scope: !503, file: !503, line: 473, type: !515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!515 = !DISubroutineType(types: !516)
!516 = !{null}
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !518, line: 134)
!518 = !DISubprogram(name: "atexit", scope: !503, file: !503, line: 477, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!519 = !DISubroutineType(types: !520)
!520 = !{!19, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !523, line: 137)
!523 = !DISubprogram(name: "at_quick_exit", scope: !503, file: !503, line: 482, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !525, line: 140)
!525 = !DISubprogram(name: "atof", scope: !503, file: !503, line: 101, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!4, !105}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !529, line: 141)
!529 = !DISubprogram(name: "atoi", scope: !503, file: !503, line: 104, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!19, !105}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !533, line: 142)
!533 = !DISubprogram(name: "atol", scope: !503, file: !503, line: 107, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{!245, !105}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !537, line: 143)
!537 = !DISubprogram(name: "bsearch", scope: !503, file: !503, line: 702, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!154, !540, !540, !101, !101, !542}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !503, line: 690, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!19, !540, !540}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !547, line: 144)
!547 = !DISubprogram(name: "calloc", scope: !503, file: !503, line: 426, type: !548, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DISubroutineType(types: !549)
!549 = !{!154, !101, !101}
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !551, line: 145)
!551 = !DISubprogram(name: "div", scope: !503, file: !503, line: 734, type: !552, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!552 = !DISubroutineType(types: !553)
!553 = !{!505, !19, !19}
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !555, line: 146)
!555 = !DISubprogram(name: "exit", scope: !503, file: !503, line: 499, type: !556, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !19}
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !559, line: 147)
!559 = !DISubprogram(name: "free", scope: !503, file: !503, line: 448, type: !560, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !154}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !563, line: 148)
!563 = !DISubprogram(name: "getenv", scope: !503, file: !503, line: 516, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!564 = !DISubroutineType(types: !565)
!565 = !{!180, !105}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !567, line: 149)
!567 = !DISubprogram(name: "labs", scope: !503, file: !503, line: 723, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{!245, !245}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !571, line: 150)
!571 = !DISubprogram(name: "ldiv", scope: !503, file: !503, line: 736, type: !572, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DISubroutineType(types: !573)
!573 = !{!508, !245, !245}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !575, line: 151)
!575 = !DISubprogram(name: "malloc", scope: !503, file: !503, line: 424, type: !576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!154, !101}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !579, line: 153)
!579 = !DISubprogram(name: "mblen", scope: !503, file: !503, line: 804, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{!19, !105, !101}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !583, line: 154)
!583 = !DISubprogram(name: "mbstowcs", scope: !503, file: !503, line: 815, type: !584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{!101, !68, !104, !101}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !587, line: 155)
!587 = !DISubprogram(name: "mbtowc", scope: !503, file: !503, line: 807, type: !588, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!588 = !DISubroutineType(types: !589)
!589 = !{!19, !68, !104, !101}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !591, line: 157)
!591 = !DISubprogram(name: "qsort", scope: !503, file: !503, line: 712, type: !592, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !154, !101, !101, !542}
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !595, line: 160)
!595 = !DISubprogram(name: "quick_exit", scope: !503, file: !503, line: 505, type: !556, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !597, line: 163)
!597 = !DISubprogram(name: "rand", scope: !503, file: !503, line: 338, type: !598, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!598 = !DISubroutineType(types: !599)
!599 = !{!19}
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !601, line: 164)
!601 = !DISubprogram(name: "realloc", scope: !503, file: !503, line: 434, type: !602, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!602 = !DISubroutineType(types: !603)
!603 = !{!154, !154, !101}
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !605, line: 165)
!605 = !DISubprogram(name: "srand", scope: !503, file: !503, line: 340, type: !606, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !40}
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !609, line: 166)
!609 = !DISubprogram(name: "strtod", scope: !503, file: !503, line: 117, type: !610, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!610 = !DISubroutineType(types: !611)
!611 = !{!4, !104, !612}
!612 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !615, line: 167)
!615 = !DISubprogram(name: "strtol", scope: !503, file: !503, line: 139, type: !616, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!616 = !DISubroutineType(types: !617)
!617 = !{!245, !104, !612, !19}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !619, line: 168)
!619 = !DISubprogram(name: "strtoul", scope: !503, file: !503, line: 143, type: !620, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!620 = !DISubroutineType(types: !621)
!621 = !{!103, !104, !612, !19}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !623, line: 169)
!623 = !DISubprogram(name: "system", scope: !503, file: !503, line: 666, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !625, line: 171)
!625 = !DISubprogram(name: "wcstombs", scope: !503, file: !503, line: 818, type: !626, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!626 = !DISubroutineType(types: !627)
!627 = !{!101, !179, !78, !101}
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !629, line: 172)
!629 = !DISubprogram(name: "wctomb", scope: !503, file: !503, line: 811, type: !630, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!630 = !DISubroutineType(types: !631)
!631 = !{!19, !180, !67}
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !633, line: 200)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !503, line: 80, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 76, size: 128, align: 64, elements: !635, identifier: "_ZTS7lldiv_t")
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !634, file: !503, line: 78, baseType: !302, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !634, file: !503, line: 79, baseType: !302, size: 64, align: 64, offset: 64)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !639, line: 206)
!639 = !DISubprogram(name: "_Exit", scope: !503, file: !503, line: 511, type: !556, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !641, line: 210)
!641 = !DISubprogram(name: "llabs", scope: !503, file: !503, line: 726, type: !642, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!642 = !DISubroutineType(types: !643)
!643 = !{!302, !302}
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !645, line: 216)
!645 = !DISubprogram(name: "lldiv", scope: !503, file: !503, line: 740, type: !646, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!646 = !DISubroutineType(types: !647)
!647 = !{!633, !302, !302}
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !649, line: 227)
!649 = !DISubprogram(name: "atoll", scope: !503, file: !503, line: 112, type: !650, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!650 = !DISubroutineType(types: !651)
!651 = !{!302, !105}
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !653, line: 228)
!653 = !DISubprogram(name: "strtoll", scope: !503, file: !503, line: 163, type: !654, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!654 = !DISubroutineType(types: !655)
!655 = !{!302, !104, !612, !19}
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !657, line: 229)
!657 = !DISubprogram(name: "strtoull", scope: !503, file: !503, line: 168, type: !658, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!658 = !DISubroutineType(types: !659)
!659 = !{!307, !104, !612, !19}
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !661, line: 231)
!661 = !DISubprogram(name: "strtof", scope: !503, file: !503, line: 123, type: !662, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!662 = !DISubroutineType(types: !663)
!663 = !{!6, !104, !612}
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !665, line: 232)
!665 = !DISubprogram(name: "strtold", scope: !503, file: !503, line: 126, type: !666, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!666 = !DISubroutineType(types: !667)
!667 = !{!297, !104, !612}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !633, line: 240)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !639, line: 242)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !641, line: 244)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !672, line: 245)
!672 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !293, file: !673, line: 213, type: !646, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!673 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Ccstdlib", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !645, line: 246)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !649, line: 248)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !661, line: 249)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !653, line: 250)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !657, line: 251)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !665, line: 252)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !681, line: 98)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !682, line: 7, baseType: !61)
!682 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cbits/types/FILE.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !684, line: 99)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !685, line: 78, baseType: !686)
!685 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cstdio.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !687, line: 26, baseType: !688)
!687 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5C_G_config.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!688 = !DICompositeType(tag: DW_TAG_structure_type, file: !687, line: 22, size: 128, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !690, line: 101)
!690 = !DISubprogram(name: "clearerr", scope: !685, file: !685, line: 757, type: !691, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64, align: 64)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !695, line: 102)
!695 = !DISubprogram(name: "fclose", scope: !685, file: !685, line: 199, type: !696, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!696 = !DISubroutineType(types: !697)
!697 = !{!19, !693}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !699, line: 103)
!699 = !DISubprogram(name: "feof", scope: !685, file: !685, line: 759, type: !696, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !701, line: 104)
!701 = !DISubprogram(name: "ferror", scope: !685, file: !685, line: 761, type: !696, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !703, line: 105)
!703 = !DISubprogram(name: "fflush", scope: !685, file: !685, line: 204, type: !696, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !705, line: 106)
!705 = !DISubprogram(name: "fgetc", scope: !685, file: !685, line: 477, type: !696, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !707, line: 107)
!707 = !DISubprogram(name: "fgetpos", scope: !685, file: !685, line: 731, type: !708, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!708 = !DISubroutineType(types: !709)
!709 = !{!19, !710, !711}
!710 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !693)
!711 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64, align: 64)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !714, line: 108)
!714 = !DISubprogram(name: "fgets", scope: !685, file: !685, line: 564, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!715 = !DISubroutineType(types: !716)
!716 = !{!180, !179, !19, !710}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !718, line: 109)
!718 = !DISubprogram(name: "fopen", scope: !685, file: !685, line: 232, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DISubroutineType(types: !720)
!720 = !{!693, !104, !104}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !722, line: 110)
!722 = !DISubprogram(name: "fprintf", scope: !685, file: !685, line: 312, type: !723, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DISubroutineType(types: !724)
!724 = !{!19, !710, !104, null}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !726, line: 111)
!726 = !DISubprogram(name: "fputc", scope: !685, file: !685, line: 517, type: !727, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DISubroutineType(types: !728)
!728 = !{!19, !19, !693}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !730, line: 112)
!730 = !DISubprogram(name: "fputs", scope: !685, file: !685, line: 626, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!731 = !DISubroutineType(types: !732)
!732 = !{!19, !104, !710}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !734, line: 113)
!734 = !DISubprogram(name: "fread", scope: !685, file: !685, line: 646, type: !735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!735 = !DISubroutineType(types: !736)
!736 = !{!101, !737, !101, !101, !710}
!737 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !154)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !739, line: 114)
!739 = !DISubprogram(name: "freopen", scope: !685, file: !685, line: 238, type: !740, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!740 = !DISubroutineType(types: !741)
!741 = !{!693, !104, !104, !710}
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !743, line: 115)
!743 = !DISubprogram(name: "fscanf", scope: !685, file: !685, line: 377, type: !723, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !745, line: 116)
!745 = !DISubprogram(name: "fseek", scope: !685, file: !685, line: 684, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!19, !693, !245, !19}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !749, line: 117)
!749 = !DISubprogram(name: "fsetpos", scope: !685, file: !685, line: 736, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!19, !693, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !755, line: 118)
!755 = !DISubprogram(name: "ftell", scope: !685, file: !685, line: 689, type: !756, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!756 = !DISubroutineType(types: !757)
!757 = !{!245, !693}
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !759, line: 119)
!759 = !DISubprogram(name: "fwrite", scope: !685, file: !685, line: 652, type: !760, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!760 = !DISubroutineType(types: !761)
!761 = !{!101, !762, !101, !101, !710}
!762 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !540)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !764, line: 120)
!764 = !DISubprogram(name: "getc", scope: !685, file: !685, line: 478, type: !696, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !766, line: 121)
!766 = !DISubprogram(name: "getchar", scope: !685, file: !685, line: 484, type: !598, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !768, line: 124)
!768 = !DISubprogram(name: "gets", scope: !685, file: !685, line: 577, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!180, !180}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !772, line: 126)
!772 = !DISubprogram(name: "perror", scope: !685, file: !685, line: 775, type: !773, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !105}
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !776, line: 127)
!776 = !DISubprogram(name: "printf", scope: !685, file: !685, line: 318, type: !777, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!777 = !DISubroutineType(types: !778)
!778 = !{!19, !104, null}
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !780, line: 128)
!780 = !DISubprogram(name: "putc", scope: !685, file: !685, line: 518, type: !727, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !782, line: 129)
!782 = !DISubprogram(name: "putchar", scope: !685, file: !685, line: 524, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !784, line: 130)
!784 = !DISubprogram(name: "puts", scope: !685, file: !685, line: 632, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !786, line: 131)
!786 = !DISubprogram(name: "remove", scope: !685, file: !685, line: 144, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !788, line: 132)
!788 = !DISubprogram(name: "rename", scope: !685, file: !685, line: 146, type: !789, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!789 = !DISubroutineType(types: !790)
!790 = !{!19, !105, !105}
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !792, line: 133)
!792 = !DISubprogram(name: "rewind", scope: !685, file: !685, line: 694, type: !691, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !794, line: 134)
!794 = !DISubprogram(name: "scanf", scope: !685, file: !685, line: 383, type: !777, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !796, line: 135)
!796 = !DISubprogram(name: "setbuf", scope: !685, file: !685, line: 290, type: !797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !710, !179}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !800, line: 136)
!800 = !DISubprogram(name: "setvbuf", scope: !685, file: !685, line: 294, type: !801, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!801 = !DISubroutineType(types: !802)
!802 = !{!19, !710, !179, !19, !101}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !804, line: 137)
!804 = !DISubprogram(name: "sprintf", scope: !685, file: !685, line: 320, type: !805, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!805 = !DISubroutineType(types: !806)
!806 = !{!19, !179, !104, null}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !808, line: 138)
!808 = !DISubprogram(name: "sscanf", scope: !685, file: !685, line: 385, type: !809, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!809 = !DISubroutineType(types: !810)
!810 = !{!19, !104, !104, null}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !812, line: 139)
!812 = !DISubprogram(name: "tmpfile", scope: !685, file: !685, line: 159, type: !813, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!813 = !DISubroutineType(types: !814)
!814 = !{!693}
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !816, line: 141)
!816 = !DISubprogram(name: "tmpnam", scope: !685, file: !685, line: 173, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !818, line: 143)
!818 = !DISubprogram(name: "ungetc", scope: !685, file: !685, line: 639, type: !727, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !820, line: 144)
!820 = !DISubprogram(name: "vfprintf", scope: !685, file: !685, line: 327, type: !821, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!821 = !DISubroutineType(types: !822)
!822 = !{!19, !710, !104, !147}
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !824, line: 145)
!824 = !DISubprogram(name: "vprintf", scope: !685, file: !685, line: 333, type: !825, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!825 = !DISubroutineType(types: !826)
!826 = !{!19, !104, !147}
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !828, line: 146)
!828 = !DISubprogram(name: "vsprintf", scope: !685, file: !685, line: 335, type: !829, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!829 = !DISubroutineType(types: !830)
!830 = !{!19, !179, !104, !147}
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !832, line: 175)
!832 = !DISubprogram(name: "snprintf", scope: !685, file: !685, line: 340, type: !833, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!833 = !DISubroutineType(types: !834)
!834 = !{!19, !179, !101, !104, null}
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !836, line: 176)
!836 = !DISubprogram(name: "vfscanf", scope: !685, file: !685, line: 420, type: !821, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !838, line: 177)
!838 = !DISubprogram(name: "vscanf", scope: !685, file: !685, line: 428, type: !825, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !840, line: 178)
!840 = !DISubprogram(name: "vsnprintf", scope: !685, file: !685, line: 344, type: !841, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!841 = !DISubroutineType(types: !842)
!842 = !{!19, !179, !101, !104, !147}
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !293, entity: !844, line: 179)
!844 = !DISubprogram(name: "vsscanf", scope: !685, file: !685, line: 432, type: !845, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!845 = !DISubroutineType(types: !846)
!846 = !{!19, !104, !104, !147}
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !832, line: 185)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !836, line: 186)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !838, line: 187)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !840, line: 188)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !844, line: 189)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !853, line: 82)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !854, line: 48, baseType: !855)
!854 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cwctype.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !858, line: 83)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !859, line: 38, baseType: !103)
!859 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cbits/wctype-wchar.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !47, line: 84)
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !862, line: 86)
!862 = !DISubprogram(name: "iswalnum", scope: !859, file: !859, line: 95, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !864, line: 87)
!864 = !DISubprogram(name: "iswalpha", scope: !859, file: !859, line: 101, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !866, line: 89)
!866 = !DISubprogram(name: "iswblank", scope: !859, file: !859, line: 146, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !868, line: 91)
!868 = !DISubprogram(name: "iswcntrl", scope: !859, file: !859, line: 104, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !870, line: 92)
!870 = !DISubprogram(name: "iswctype", scope: !859, file: !859, line: 159, type: !871, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!871 = !DISubroutineType(types: !872)
!872 = !{!19, !47, !858}
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !874, line: 93)
!874 = !DISubprogram(name: "iswdigit", scope: !859, file: !859, line: 108, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !876, line: 94)
!876 = !DISubprogram(name: "iswgraph", scope: !859, file: !859, line: 112, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !878, line: 95)
!878 = !DISubprogram(name: "iswlower", scope: !859, file: !859, line: 117, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !880, line: 96)
!880 = !DISubprogram(name: "iswprint", scope: !859, file: !859, line: 120, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !882, line: 97)
!882 = !DISubprogram(name: "iswpunct", scope: !859, file: !859, line: 125, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !884, line: 98)
!884 = !DISubprogram(name: "iswspace", scope: !859, file: !859, line: 130, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !886, line: 99)
!886 = !DISubprogram(name: "iswupper", scope: !859, file: !859, line: 135, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !888, line: 100)
!888 = !DISubprogram(name: "iswxdigit", scope: !859, file: !859, line: 140, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !890, line: 101)
!890 = !DISubprogram(name: "towctrans", scope: !854, file: !854, line: 55, type: !891, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!891 = !DISubroutineType(types: !892)
!892 = !{!47, !47, !853}
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !894, line: 102)
!894 = !DISubprogram(name: "towlower", scope: !859, file: !859, line: 166, type: !895, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!895 = !DISubroutineType(types: !896)
!896 = !{!47, !47}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !898, line: 103)
!898 = !DISubprogram(name: "towupper", scope: !859, file: !859, line: 169, type: !895, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !900, line: 104)
!900 = !DISubprogram(name: "wctrans", scope: !854, file: !854, line: 52, type: !901, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!901 = !DISubroutineType(types: !902)
!902 = !{!853, !105}
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !904, line: 105)
!904 = !DISubprogram(name: "wctype", scope: !859, file: !859, line: 155, type: !905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!905 = !DISubroutineType(types: !906)
!906 = !{!858, !105}
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !514, line: 38)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !518, line: 39)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !555, line: 40)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !523, line: 43)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !595, line: 46)
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !505, line: 51)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !508, line: 52)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !915, line: 54)
!915 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !9, file: !916, line: 78, type: !917, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!916 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Cbits/std_abs.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!917 = !DISubroutineType(types: !918)
!918 = !{!297, !297}
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !525, line: 55)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !529, line: 56)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !533, line: 57)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !537, line: 58)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !547, line: 59)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !672, line: 60)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !559, line: 61)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !563, line: 62)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !567, line: 63)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !571, line: 64)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !575, line: 65)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !579, line: 67)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !583, line: 68)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !587, line: 69)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !591, line: 71)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !597, line: 72)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !601, line: 73)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !605, line: 74)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !609, line: 75)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !615, line: 76)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !619, line: 77)
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !623, line: 78)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !625, line: 80)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !629, line: 81)
!943 = !{i32 2, !"Dwarf Version", i32 4}
!944 = !{i32 2, !"Debug Info Version", i32 3}
!945 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!946 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !11, file: !11, line: 74, type: !515, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!947 = !DILocation(line: 74, column: 25, scope: !946)
!948 = !DILocation(line: 74, column: 25, scope: !949)
!949 = !DILexicalBlockFile(scope: !946, file: !11, discriminator: 1)
!950 = !{!"Init"}
!951 = !{!"void."}
!952 = !{!"D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Cbits/ios_base.h"}
!953 = !{!"~Init"}
!954 = distinct !DISubprogram(name: "mmult_golden", linkageName: "_Z12mmult_goldenPfS_S_", scope: !955, file: !955, line: 75, type: !956, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!955 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/workspace/muladd/src/main.cpp", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!956 = !DISubroutineType(types: !957)
!957 = !{null, !5, !5, !5}
!958 = !{!"mmult_golden"}
!959 = !{!"void.float *.1.float *.1.float *.1"}
!960 = !{!"D:/xilinx/SDSoC_IDE/workspace/muladd/src/main.cpp"}
!961 = !DILocalVariable(name: "A", arg: 1, scope: !954, file: !955, line: 75, type: !5)
!962 = !DIExpression()
!963 = !DILocation(line: 75, column: 26, scope: !954)
!964 = !DILocalVariable(name: "B", arg: 2, scope: !954, file: !955, line: 75, type: !5)
!965 = !DILocation(line: 75, column: 37, scope: !954)
!966 = !DILocalVariable(name: "C", arg: 3, scope: !954, file: !955, line: 75, type: !5)
!967 = !DILocation(line: 75, column: 47, scope: !954)
!968 = !DILocalVariable(name: "row", scope: !969, file: !955, line: 77, type: !19)
!969 = distinct !DILexicalBlock(scope: !954, file: !955, line: 77, column: 6)
!970 = !DILocation(line: 77, column: 15, scope: !969)
!971 = !DILocation(line: 77, column: 11, scope: !969)
!972 = !DILocation(line: 77, column: 24, scope: !973)
!973 = !DILexicalBlockFile(scope: !974, file: !955, discriminator: 1)
!974 = distinct !DILexicalBlock(scope: !969, file: !955, line: 77, column: 6)
!975 = !DILocation(line: 77, column: 28, scope: !973)
!976 = !DILocation(line: 77, column: 6, scope: !973)
!977 = !DILocalVariable(name: "col", scope: !978, file: !955, line: 78, type: !19)
!978 = distinct !DILexicalBlock(scope: !979, file: !955, line: 78, column: 11)
!979 = distinct !DILexicalBlock(scope: !974, file: !955, line: 77, column: 40)
!980 = !DILocation(line: 78, column: 20, scope: !978)
!981 = !DILocation(line: 78, column: 16, scope: !978)
!982 = !DILocation(line: 78, column: 29, scope: !983)
!983 = !DILexicalBlockFile(scope: !984, file: !955, discriminator: 1)
!984 = distinct !DILexicalBlock(scope: !978, file: !955, line: 78, column: 11)
!985 = !DILocation(line: 78, column: 33, scope: !983)
!986 = !DILocation(line: 78, column: 11, scope: !983)
!987 = !DILocalVariable(name: "result", scope: !988, file: !955, line: 79, type: !6)
!988 = distinct !DILexicalBlock(scope: !984, file: !955, line: 78, column: 45)
!989 = !DILocation(line: 79, column: 22, scope: !988)
!990 = !DILocalVariable(name: "k", scope: !991, file: !955, line: 80, type: !19)
!991 = distinct !DILexicalBlock(scope: !988, file: !955, line: 80, column: 16)
!992 = !DILocation(line: 80, column: 25, scope: !991)
!993 = !DILocation(line: 80, column: 21, scope: !991)
!994 = !DILocation(line: 80, column: 32, scope: !995)
!995 = !DILexicalBlockFile(scope: !996, file: !955, discriminator: 1)
!996 = distinct !DILexicalBlock(scope: !991, file: !955, line: 80, column: 16)
!997 = !DILocation(line: 80, column: 34, scope: !995)
!998 = !DILocation(line: 80, column: 16, scope: !995)
!999 = !DILocation(line: 81, column: 33, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !955, line: 80, column: 44)
!1001 = !DILocation(line: 81, column: 36, scope: !1000)
!1002 = !DILocation(line: 81, column: 39, scope: !1000)
!1003 = !DILocation(line: 81, column: 38, scope: !1000)
!1004 = !DILocation(line: 81, column: 31, scope: !1000)
!1005 = !DILocation(line: 81, column: 46, scope: !1000)
!1006 = !DILocation(line: 81, column: 47, scope: !1000)
!1007 = !DILocation(line: 81, column: 50, scope: !1000)
!1008 = !DILocation(line: 81, column: 49, scope: !1000)
!1009 = !DILocation(line: 81, column: 44, scope: !1000)
!1010 = !DILocation(line: 81, column: 42, scope: !1000)
!1011 = !DILocation(line: 81, column: 28, scope: !1000)
!1012 = !DILocation(line: 82, column: 16, scope: !1000)
!1013 = !DILocation(line: 80, column: 40, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !996, file: !955, discriminator: 2)
!1015 = !DILocation(line: 80, column: 16, scope: !1014)
!1016 = distinct !{!1016, !1017}
!1017 = !DILocation(line: 80, column: 16, scope: !988)
!1018 = !DILocation(line: 83, column: 31, scope: !988)
!1019 = !DILocation(line: 83, column: 18, scope: !988)
!1020 = !DILocation(line: 83, column: 21, scope: !988)
!1021 = !DILocation(line: 83, column: 24, scope: !988)
!1022 = !DILocation(line: 83, column: 23, scope: !988)
!1023 = !DILocation(line: 83, column: 16, scope: !988)
!1024 = !DILocation(line: 83, column: 29, scope: !988)
!1025 = !DILocation(line: 84, column: 11, scope: !988)
!1026 = !DILocation(line: 78, column: 41, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !984, file: !955, discriminator: 2)
!1028 = !DILocation(line: 78, column: 11, scope: !1027)
!1029 = distinct !{!1029, !1030}
!1030 = !DILocation(line: 78, column: 11, scope: !979)
!1031 = !DILocation(line: 85, column: 6, scope: !979)
!1032 = !DILocation(line: 77, column: 36, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !974, file: !955, discriminator: 2)
!1034 = !DILocation(line: 77, column: 6, scope: !1033)
!1035 = distinct !{!1035, !1036}
!1036 = !DILocation(line: 77, column: 6, scope: !954)
!1037 = !DILocation(line: 86, column: 1, scope: !954)
!1038 = distinct !DISubprogram(name: "madd_golden", linkageName: "_Z11madd_goldenPfS_S_", scope: !955, file: !955, line: 88, type: !956, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1039 = !{!"madd_golden"}
!1040 = !DILocalVariable(name: "A", arg: 1, scope: !1038, file: !955, line: 88, type: !5)
!1041 = !DILocation(line: 88, column: 25, scope: !1038)
!1042 = !DILocalVariable(name: "B", arg: 2, scope: !1038, file: !955, line: 88, type: !5)
!1043 = !DILocation(line: 88, column: 35, scope: !1038)
!1044 = !DILocalVariable(name: "C", arg: 3, scope: !1038, file: !955, line: 88, type: !5)
!1045 = !DILocation(line: 88, column: 45, scope: !1038)
!1046 = !DILocalVariable(name: "row", scope: !1047, file: !955, line: 90, type: !19)
!1047 = distinct !DILexicalBlock(scope: !1038, file: !955, line: 90, column: 6)
!1048 = !DILocation(line: 90, column: 15, scope: !1047)
!1049 = !DILocation(line: 90, column: 11, scope: !1047)
!1050 = !DILocation(line: 90, column: 24, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1052, file: !955, discriminator: 1)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !955, line: 90, column: 6)
!1053 = !DILocation(line: 90, column: 28, scope: !1051)
!1054 = !DILocation(line: 90, column: 6, scope: !1051)
!1055 = !DILocalVariable(name: "col", scope: !1056, file: !955, line: 91, type: !19)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !955, line: 91, column: 11)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !955, line: 90, column: 40)
!1058 = !DILocation(line: 91, column: 20, scope: !1056)
!1059 = !DILocation(line: 91, column: 16, scope: !1056)
!1060 = !DILocation(line: 91, column: 29, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1062, file: !955, discriminator: 1)
!1062 = distinct !DILexicalBlock(scope: !1056, file: !955, line: 91, column: 11)
!1063 = !DILocation(line: 91, column: 33, scope: !1061)
!1064 = !DILocation(line: 91, column: 11, scope: !1061)
!1065 = !DILocation(line: 92, column: 33, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !955, line: 91, column: 45)
!1067 = !DILocation(line: 92, column: 36, scope: !1066)
!1068 = !DILocation(line: 92, column: 39, scope: !1066)
!1069 = !DILocation(line: 92, column: 38, scope: !1066)
!1070 = !DILocation(line: 92, column: 31, scope: !1066)
!1071 = !DILocation(line: 92, column: 48, scope: !1066)
!1072 = !DILocation(line: 92, column: 51, scope: !1066)
!1073 = !DILocation(line: 92, column: 54, scope: !1066)
!1074 = !DILocation(line: 92, column: 53, scope: !1066)
!1075 = !DILocation(line: 92, column: 46, scope: !1066)
!1076 = !DILocation(line: 92, column: 44, scope: !1066)
!1077 = !DILocation(line: 92, column: 18, scope: !1066)
!1078 = !DILocation(line: 92, column: 21, scope: !1066)
!1079 = !DILocation(line: 92, column: 24, scope: !1066)
!1080 = !DILocation(line: 92, column: 23, scope: !1066)
!1081 = !DILocation(line: 92, column: 16, scope: !1066)
!1082 = !DILocation(line: 92, column: 29, scope: !1066)
!1083 = !DILocation(line: 93, column: 11, scope: !1066)
!1084 = !DILocation(line: 91, column: 41, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1062, file: !955, discriminator: 2)
!1086 = !DILocation(line: 91, column: 11, scope: !1085)
!1087 = distinct !{!1087, !1088}
!1088 = !DILocation(line: 91, column: 11, scope: !1057)
!1089 = !DILocation(line: 94, column: 6, scope: !1057)
!1090 = !DILocation(line: 90, column: 36, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1052, file: !955, discriminator: 2)
!1092 = !DILocation(line: 90, column: 6, scope: !1091)
!1093 = distinct !{!1093, !1094}
!1094 = !DILocation(line: 90, column: 6, scope: !1038)
!1095 = !DILocation(line: 95, column: 1, scope: !1038)
!1096 = distinct !DISubprogram(name: "mmult_test", linkageName: "_Z10mmult_testPfS_S_S_S_", scope: !955, file: !955, line: 109, type: !1097, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!19, !5, !5, !5, !5, !5}
!1099 = !{!"mmult_test"}
!1100 = !{!"int.float *.1.float *.1.float *.1.float *.1.float *.1"}
!1101 = !DILocalVariable(name: "A", arg: 1, scope: !1096, file: !955, line: 109, type: !5)
!1102 = !DILocation(line: 109, column: 23, scope: !1096)
!1103 = !DILocalVariable(name: "B", arg: 2, scope: !1096, file: !955, line: 109, type: !5)
!1104 = !DILocation(line: 109, column: 34, scope: !1096)
!1105 = !DILocalVariable(name: "C", arg: 3, scope: !1096, file: !955, line: 109, type: !5)
!1106 = !DILocation(line: 109, column: 44, scope: !1096)
!1107 = !DILocalVariable(name: "D", arg: 4, scope: !1096, file: !955, line: 109, type: !5)
!1108 = !DILocation(line: 109, column: 54, scope: !1096)
!1109 = !DILocalVariable(name: "D_sw", arg: 5, scope: !1096, file: !955, line: 109, type: !5)
!1110 = !DILocation(line: 109, column: 64, scope: !1096)
!1111 = !DILocation(line: 111, column: 16, scope: !1096)
!1112 = !DILocation(line: 111, column: 30, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1096, file: !955, discriminator: 1)
!1114 = !DILocation(line: 111, column: 43, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1096, file: !955, discriminator: 2)
!1116 = !DILocation(line: 111, column: 64, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1096, file: !955, discriminator: 3)
!1118 = !DILocation(line: 111, column: 69, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1096, file: !955, discriminator: 4)
!1120 = !DILocation(line: 111, column: 76, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1096, file: !955, discriminator: 5)
!1122 = !DILocation(line: 112, column: 16, scope: !1096)
!1123 = !DILocation(line: 112, column: 49, scope: !1113)
!1124 = !DILocalVariable(name: "hw_ctr", scope: !1096, file: !955, line: 114, type: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "perf_counter", file: !955, line: 51, size: 192, align: 64, elements: !1126, identifier: "_ZTS12perf_counter")
!1126 = !{!1127, !1128, !1129, !1130, !1134, !1135, !1136, !1137}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "tot", scope: !1125, file: !955, line: 54, baseType: !431, size: 64, align: 64, flags: DIFlagPublic)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !1125, file: !955, line: 54, baseType: !431, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1125, file: !955, line: 54, baseType: !431, size: 64, align: 64, offset: 128, flags: DIFlagPublic)
!1130 = !DISubprogram(name: "perf_counter", scope: !1125, file: !955, line: 55, type: !1131, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1134 = !DISubprogram(name: "reset", linkageName: "_ZN12perf_counter5resetEv", scope: !1125, file: !955, line: 56, type: !1131, isLocal: false, isDefinition: false, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1135 = !DISubprogram(name: "start", linkageName: "_ZN12perf_counter5startEv", scope: !1125, file: !955, line: 57, type: !1131, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1136 = !DISubprogram(name: "stop", linkageName: "_ZN12perf_counter4stopEv", scope: !1125, file: !955, line: 58, type: !1131, isLocal: false, isDefinition: false, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1137 = !DISubprogram(name: "avg_cpu_cycles", linkageName: "_ZN12perf_counter14avg_cpu_cyclesEv", scope: !1125, file: !955, line: 59, type: !1138, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!431, !1133}
!1140 = !DILocation(line: 114, column: 19, scope: !1096)
!1141 = !DILocalVariable(name: "sw_ctr", scope: !1096, file: !955, line: 114, type: !1125)
!1142 = !DILocation(line: 114, column: 27, scope: !1096)
!1143 = !DILocation(line: 114, column: 27, scope: !1113)
!1144 = !DILocalVariable(name: "i", scope: !1145, file: !955, line: 116, type: !19)
!1145 = distinct !DILexicalBlock(scope: !1096, file: !955, line: 116, column: 6)
!1146 = !DILocation(line: 116, column: 15, scope: !1145)
!1147 = !DILocation(line: 116, column: 11, scope: !1145)
!1148 = !DILocation(line: 116, column: 22, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1150, file: !955, discriminator: 1)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !955, line: 116, column: 6)
!1151 = !DILocation(line: 116, column: 24, scope: !1149)
!1152 = !DILocation(line: 116, column: 6, scope: !1149)
!1153 = !DILocation(line: 118, column: 23, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !955, line: 117, column: 6)
!1155 = !DILocation(line: 118, column: 26, scope: !1154)
!1156 = !DILocation(line: 118, column: 29, scope: !1154)
!1157 = !DILocation(line: 118, column: 32, scope: !1154)
!1158 = !DILocation(line: 118, column: 35, scope: !1154)
!1159 = !DILocation(line: 118, column: 11, scope: !1154)
!1160 = !DILocalVariable(name: "tmp", scope: !1154, file: !955, line: 120, type: !1161)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32768, align: 32, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 1024)
!1164 = !DILocation(line: 120, column: 17, scope: !1154)
!1165 = !DILocalVariable(name: "tmp1", scope: !1154, file: !955, line: 120, type: !1161)
!1166 = !DILocation(line: 120, column: 27, scope: !1154)
!1167 = !DILocation(line: 121, column: 18, scope: !1154)
!1168 = !DILocation(line: 122, column: 24, scope: !1154)
!1169 = !DILocation(line: 122, column: 27, scope: !1154)
!1170 = !DILocation(line: 122, column: 30, scope: !1154)
!1171 = !DILocation(line: 122, column: 11, scope: !1154)
!1172 = !DILocation(line: 123, column: 23, scope: !1154)
!1173 = !DILocation(line: 123, column: 28, scope: !1154)
!1174 = !DILocation(line: 123, column: 31, scope: !1154)
!1175 = !DILocation(line: 123, column: 11, scope: !1154)
!1176 = !DILocation(line: 124, column: 18, scope: !1154)
!1177 = !DILocation(line: 126, column: 18, scope: !1154)
!1178 = !DILocation(line: 127, column: 17, scope: !1154)
!1179 = !DILocation(line: 127, column: 20, scope: !1154)
!1180 = !DILocation(line: 127, column: 23, scope: !1154)
!1181 = !DILocation(line: 127, column: 11, scope: !1154)
!1182 = !DILocation(line: 128, column: 16, scope: !1154)
!1183 = !DILocation(line: 128, column: 22, scope: !1154)
!1184 = !DILocation(line: 128, column: 25, scope: !1154)
!1185 = !DILocation(line: 128, column: 11, scope: !1154)
!1186 = !DILocation(line: 129, column: 18, scope: !1154)
!1187 = !DILocation(line: 131, column: 28, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1154, file: !955, line: 131, column: 15)
!1189 = !DILocation(line: 131, column: 31, scope: !1188)
!1190 = !DILocation(line: 131, column: 15, scope: !1188)
!1191 = !DILocation(line: 131, column: 15, scope: !1154)
!1192 = !DILocation(line: 132, column: 16, scope: !1188)
!1193 = !DILocation(line: 133, column: 6, scope: !1154)
!1194 = !DILocation(line: 116, column: 38, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1150, file: !955, discriminator: 2)
!1196 = !DILocation(line: 116, column: 6, scope: !1195)
!1197 = distinct !{!1197, !1198}
!1198 = !DILocation(line: 116, column: 6, scope: !1096)
!1199 = !DILocalVariable(name: "sw_cycles", scope: !1096, file: !955, line: 135, type: !431)
!1200 = !DILocation(line: 135, column: 15, scope: !1096)
!1201 = !DILocation(line: 135, column: 34, scope: !1096)
!1202 = !DILocalVariable(name: "hw_cycles", scope: !1096, file: !955, line: 136, type: !431)
!1203 = !DILocation(line: 136, column: 15, scope: !1096)
!1204 = !DILocation(line: 136, column: 34, scope: !1096)
!1205 = !DILocalVariable(name: "speedup", scope: !1096, file: !955, line: 137, type: !4)
!1206 = !DILocation(line: 137, column: 13, scope: !1096)
!1207 = !DILocation(line: 137, column: 32, scope: !1096)
!1208 = !DILocation(line: 137, column: 53, scope: !1096)
!1209 = !DILocation(line: 137, column: 42, scope: !1096)
!1210 = !DILocation(line: 139, column: 16, scope: !1096)
!1211 = !DILocation(line: 140, column: 19, scope: !1096)
!1212 = !DILocation(line: 140, column: 16, scope: !1096)
!1213 = !DILocation(line: 140, column: 29, scope: !1113)
!1214 = !DILocation(line: 141, column: 16, scope: !1096)
!1215 = !DILocation(line: 142, column: 19, scope: !1096)
!1216 = !DILocation(line: 142, column: 16, scope: !1096)
!1217 = !DILocation(line: 142, column: 29, scope: !1113)
!1218 = !DILocation(line: 143, column: 16, scope: !1096)
!1219 = !DILocation(line: 143, column: 35, scope: !1096)
!1220 = !DILocation(line: 143, column: 32, scope: !1113)
!1221 = !DILocation(line: 143, column: 43, scope: !1115)
!1222 = !DILocation(line: 145, column: 6, scope: !1096)
!1223 = !DILocation(line: 146, column: 1, scope: !1096)
!1224 = !{!"std::operator<<"}
!1225 = !{!"basic_ostream<char, struct std::char_traits<char> > .basic_ostream<char, struct std::char_traits<char> > &.0.const char *.1"}
!1226 = !{!"D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Costream"}
!1227 = !{!"operator<<"}
!1228 = !{!"__ostream_type .int.0"}
!1229 = !{!"__ostream_type .__ostream_type &(*)(__ostream_type &).1"}
!1230 = !{!"std::endl"}
!1231 = !{!"basic_ostream<char, struct std::char_traits<char> > .basic_ostream<char, struct std::char_traits<char> > &.0"}
!1232 = distinct !DISubprogram(name: "perf_counter", linkageName: "_ZN12perf_counterC2Ev", scope: !1125, file: !955, line: 55, type: !1131, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1130, variables: !2)
!1233 = !{!"perf_counter"}
!1234 = !DILocalVariable(name: "this", arg: 1, scope: !1232, type: !1235, flags: DIFlagArtificial | DIFlagObjectPointer)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64, align: 64)
!1236 = !DILocation(line: 0, scope: !1232)
!1237 = !DILocation(line: 55, column: 23, scope: !1232)
!1238 = !DILocation(line: 55, column: 31, scope: !1232)
!1239 = !DILocation(line: 55, column: 39, scope: !1232)
!1240 = !DILocation(line: 55, column: 49, scope: !1232)
!1241 = distinct !DISubprogram(name: "init_arrays", linkageName: "_ZL11init_arraysPfS_S_S_S_", scope: !955, file: !955, line: 62, type: !1242, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !5, !5, !5, !5, !5}
!1244 = !{!"init_arrays"}
!1245 = !{!"void.float *.1.float *.1.float *.1.float *.1.float *.1"}
!1246 = !DILocalVariable(name: "A", arg: 1, scope: !1241, file: !955, line: 62, type: !5)
!1247 = !DILocation(line: 62, column: 32, scope: !1241)
!1248 = !DILocalVariable(name: "B", arg: 2, scope: !1241, file: !955, line: 62, type: !5)
!1249 = !DILocation(line: 62, column: 43, scope: !1241)
!1250 = !DILocalVariable(name: "C", arg: 3, scope: !1241, file: !955, line: 62, type: !5)
!1251 = !DILocation(line: 62, column: 53, scope: !1241)
!1252 = !DILocalVariable(name: "D", arg: 4, scope: !1241, file: !955, line: 62, type: !5)
!1253 = !DILocation(line: 62, column: 63, scope: !1241)
!1254 = !DILocalVariable(name: "D_sw", arg: 5, scope: !1241, file: !955, line: 62, type: !5)
!1255 = !DILocation(line: 62, column: 73, scope: !1241)
!1256 = !DILocalVariable(name: "i", scope: !1257, file: !955, line: 64, type: !19)
!1257 = distinct !DILexicalBlock(scope: !1241, file: !955, line: 64, column: 6)
!1258 = !DILocation(line: 64, column: 15, scope: !1257)
!1259 = !DILocation(line: 64, column: 11, scope: !1257)
!1260 = !DILocation(line: 64, column: 22, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1262, file: !955, discriminator: 1)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !955, line: 64, column: 6)
!1263 = !DILocation(line: 64, column: 24, scope: !1261)
!1264 = !DILocation(line: 64, column: 6, scope: !1261)
!1265 = !DILocalVariable(name: "j", scope: !1266, file: !955, line: 65, type: !19)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !955, line: 65, column: 11)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !955, line: 64, column: 34)
!1268 = !DILocation(line: 65, column: 20, scope: !1266)
!1269 = !DILocation(line: 65, column: 16, scope: !1266)
!1270 = !DILocation(line: 65, column: 27, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !955, discriminator: 1)
!1272 = distinct !DILexicalBlock(scope: !1266, file: !955, line: 65, column: 11)
!1273 = !DILocation(line: 65, column: 29, scope: !1271)
!1274 = !DILocation(line: 65, column: 11, scope: !1271)
!1275 = !DILocation(line: 66, column: 33, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !955, line: 65, column: 39)
!1277 = !DILocation(line: 66, column: 34, scope: !1276)
!1278 = !DILocation(line: 66, column: 32, scope: !1276)
!1279 = !DILocation(line: 66, column: 37, scope: !1276)
!1280 = !DILocation(line: 66, column: 36, scope: !1276)
!1281 = !DILocation(line: 66, column: 31, scope: !1276)
!1282 = !DILocation(line: 66, column: 18, scope: !1276)
!1283 = !DILocation(line: 66, column: 20, scope: !1276)
!1284 = !DILocation(line: 66, column: 26, scope: !1276)
!1285 = !DILocation(line: 66, column: 24, scope: !1276)
!1286 = !DILocation(line: 66, column: 16, scope: !1276)
!1287 = !DILocation(line: 66, column: 29, scope: !1276)
!1288 = !DILocation(line: 67, column: 31, scope: !1276)
!1289 = !DILocation(line: 67, column: 38, scope: !1276)
!1290 = !DILocation(line: 67, column: 18, scope: !1276)
!1291 = !DILocation(line: 67, column: 20, scope: !1276)
!1292 = !DILocation(line: 67, column: 26, scope: !1276)
!1293 = !DILocation(line: 67, column: 24, scope: !1276)
!1294 = !DILocation(line: 67, column: 16, scope: !1276)
!1295 = !DILocation(line: 67, column: 29, scope: !1276)
!1296 = !DILocation(line: 68, column: 31, scope: !1276)
!1297 = !DILocation(line: 68, column: 18, scope: !1276)
!1298 = !DILocation(line: 68, column: 20, scope: !1276)
!1299 = !DILocation(line: 68, column: 26, scope: !1276)
!1300 = !DILocation(line: 68, column: 24, scope: !1276)
!1301 = !DILocation(line: 68, column: 16, scope: !1276)
!1302 = !DILocation(line: 68, column: 29, scope: !1276)
!1303 = !DILocation(line: 69, column: 18, scope: !1276)
!1304 = !DILocation(line: 69, column: 20, scope: !1276)
!1305 = !DILocation(line: 69, column: 26, scope: !1276)
!1306 = !DILocation(line: 69, column: 24, scope: !1276)
!1307 = !DILocation(line: 69, column: 16, scope: !1276)
!1308 = !DILocation(line: 69, column: 29, scope: !1276)
!1309 = !DILocation(line: 70, column: 21, scope: !1276)
!1310 = !DILocation(line: 70, column: 23, scope: !1276)
!1311 = !DILocation(line: 70, column: 29, scope: !1276)
!1312 = !DILocation(line: 70, column: 27, scope: !1276)
!1313 = !DILocation(line: 70, column: 16, scope: !1276)
!1314 = !DILocation(line: 70, column: 32, scope: !1276)
!1315 = !DILocation(line: 71, column: 11, scope: !1276)
!1316 = !DILocation(line: 65, column: 35, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1272, file: !955, discriminator: 2)
!1318 = !DILocation(line: 65, column: 11, scope: !1317)
!1319 = distinct !{!1319, !1320}
!1320 = !DILocation(line: 65, column: 11, scope: !1267)
!1321 = !DILocation(line: 72, column: 6, scope: !1267)
!1322 = !DILocation(line: 64, column: 30, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1262, file: !955, discriminator: 2)
!1324 = !DILocation(line: 64, column: 6, scope: !1323)
!1325 = distinct !{!1325, !1326}
!1326 = !DILocation(line: 64, column: 6, scope: !1241)
!1327 = !DILocation(line: 73, column: 1, scope: !1241)
!1328 = distinct !DISubprogram(name: "start", linkageName: "_ZN12perf_counter5startEv", scope: !1125, file: !955, line: 57, type: !1131, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1135, variables: !2)
!1329 = !{!"start"}
!1330 = !DILocalVariable(name: "this", arg: 1, scope: !1328, type: !1235, flags: DIFlagArtificial | DIFlagObjectPointer)
!1331 = !DILocation(line: 0, scope: !1328)
!1332 = !DILocation(line: 57, column: 34, scope: !1328)
!1333 = !DILocation(line: 57, column: 28, scope: !1328)
!1334 = !DILocation(line: 57, column: 32, scope: !1328)
!1335 = !DILocation(line: 57, column: 55, scope: !1328)
!1336 = !DILocation(line: 57, column: 60, scope: !1328)
!1337 = !DILocation(line: 57, column: 64, scope: !1328)
!1338 = distinct !DISubprogram(name: "stop", linkageName: "_ZN12perf_counter4stopEv", scope: !1125, file: !955, line: 58, type: !1131, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1136, variables: !2)
!1339 = !{!"stop"}
!1340 = !DILocalVariable(name: "this", arg: 1, scope: !1338, type: !1235, flags: DIFlagArtificial | DIFlagObjectPointer)
!1341 = !DILocation(line: 0, scope: !1338)
!1342 = !DILocation(line: 58, column: 35, scope: !1338)
!1343 = !DILocation(line: 58, column: 57, scope: !1338)
!1344 = !DILocation(line: 58, column: 55, scope: !1338)
!1345 = !DILocation(line: 58, column: 27, scope: !1338)
!1346 = !DILocation(line: 58, column: 31, scope: !1338)
!1347 = !DILocation(line: 58, column: 63, scope: !1338)
!1348 = !{!"mmult"}
!1349 = !{!"void.float [1024].1.float [1024].1.float [1024].1"}
!1350 = !{!"../src/mmultadd.h"}
!1351 = !{!"A,,,,,,,,,,,,SEQUENTIAL B,,,,,,,,,,,,SEQUENTIAL C,,,,,,,,,,,,SEQUENTIAL "}
!1352 = !{!"madd"}
!1353 = distinct !DISubprogram(name: "result_check", linkageName: "_ZL12result_checkPfS_", scope: !955, file: !955, line: 97, type: !1354, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!19, !5, !5}
!1356 = !{!"result_check"}
!1357 = !{!"int.float *.1.float *.1"}
!1358 = !DILocalVariable(name: "D", arg: 1, scope: !1353, file: !955, line: 97, type: !5)
!1359 = !DILocation(line: 97, column: 32, scope: !1353)
!1360 = !DILocalVariable(name: "D_sw", arg: 2, scope: !1353, file: !955, line: 97, type: !5)
!1361 = !DILocation(line: 97, column: 42, scope: !1353)
!1362 = !DILocalVariable(name: "i", scope: !1363, file: !955, line: 99, type: !19)
!1363 = distinct !DILexicalBlock(scope: !1353, file: !955, line: 99, column: 6)
!1364 = !DILocation(line: 99, column: 15, scope: !1363)
!1365 = !DILocation(line: 99, column: 11, scope: !1363)
!1366 = !DILocation(line: 99, column: 22, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1368, file: !955, discriminator: 1)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !955, line: 99, column: 6)
!1369 = !DILocation(line: 99, column: 24, scope: !1367)
!1370 = !DILocation(line: 99, column: 6, scope: !1367)
!1371 = !DILocation(line: 100, column: 20, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !955, line: 100, column: 15)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !955, line: 99, column: 38)
!1374 = !DILocation(line: 100, column: 15, scope: !1372)
!1375 = !DILocation(line: 100, column: 28, scope: !1372)
!1376 = !DILocation(line: 100, column: 26, scope: !1372)
!1377 = !DILocation(line: 100, column: 23, scope: !1372)
!1378 = !DILocation(line: 100, column: 15, scope: !1373)
!1379 = !DILocation(line: 101, column: 26, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1372, file: !955, line: 100, column: 32)
!1381 = !DILocation(line: 101, column: 56, scope: !1380)
!1382 = !DILocation(line: 101, column: 53, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1380, file: !955, discriminator: 1)
!1384 = !DILocation(line: 101, column: 58, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1380, file: !955, discriminator: 2)
!1386 = !DILocation(line: 101, column: 74, scope: !1380)
!1387 = !DILocation(line: 101, column: 69, scope: !1380)
!1388 = !DILocation(line: 101, column: 66, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1380, file: !955, discriminator: 3)
!1390 = !DILocation(line: 102, column: 25, scope: !1380)
!1391 = !DILocation(line: 102, column: 43, scope: !1380)
!1392 = !DILocation(line: 102, column: 41, scope: !1380)
!1393 = !DILocation(line: 102, column: 38, scope: !1383)
!1394 = !DILocation(line: 102, column: 46, scope: !1385)
!1395 = !DILocation(line: 103, column: 16, scope: !1380)
!1396 = !DILocation(line: 105, column: 6, scope: !1373)
!1397 = !DILocation(line: 99, column: 34, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1368, file: !955, discriminator: 2)
!1399 = !DILocation(line: 99, column: 6, scope: !1398)
!1400 = distinct !{!1400, !1401}
!1401 = !DILocation(line: 99, column: 6, scope: !1353)
!1402 = !DILocation(line: 106, column: 6, scope: !1353)
!1403 = !DILocation(line: 107, column: 1, scope: !1353)
!1404 = distinct !DISubprogram(name: "avg_cpu_cycles", linkageName: "_ZN12perf_counter14avg_cpu_cyclesEv", scope: !1125, file: !955, line: 59, type: !1138, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !1137, variables: !2)
!1405 = !{!"avg_cpu_cycles"}
!1406 = !{!"uint64_t."}
!1407 = !DILocalVariable(name: "this", arg: 1, scope: !1404, type: !1235, flags: DIFlagArtificial | DIFlagObjectPointer)
!1408 = !DILocation(line: 0, scope: !1404)
!1409 = !DILocation(line: 59, column: 50, scope: !1404)
!1410 = !DILocation(line: 59, column: 55, scope: !1404)
!1411 = !DILocation(line: 59, column: 60, scope: !1404)
!1412 = !DILocation(line: 59, column: 53, scope: !1404)
!1413 = !DILocation(line: 59, column: 68, scope: !1404)
!1414 = !DILocation(line: 59, column: 66, scope: !1404)
!1415 = !DILocation(line: 59, column: 41, scope: !1404)
!1416 = !{!"__ostream_type .unsigned long.0"}
!1417 = !{!"__ostream_type .double.0"}
!1418 = distinct !DISubprogram(name: "main", scope: !955, file: !955, line: 148, type: !1419, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!19, !19, !613}
!1421 = !{!"main"}
!1422 = !{!"int.int.0.char *[].1"}
!1423 = !DILocalVariable(name: "argc", arg: 1, scope: !1418, file: !955, line: 148, type: !19)
!1424 = !DILocation(line: 148, column: 14, scope: !1418)
!1425 = !DILocalVariable(name: "argv", arg: 2, scope: !1418, file: !955, line: 148, type: !613)
!1426 = !DILocation(line: 148, column: 26, scope: !1418)
!1427 = !DILocalVariable(name: "test_passed", scope: !1418, file: !955, line: 149, type: !19)
!1428 = !DILocation(line: 149, column: 10, scope: !1418)
!1429 = !DILocalVariable(name: "A", scope: !1418, file: !955, line: 150, type: !5)
!1430 = !DILocation(line: 150, column: 13, scope: !1418)
!1431 = !DILocalVariable(name: "B", scope: !1418, file: !955, line: 150, type: !5)
!1432 = !DILocation(line: 150, column: 17, scope: !1418)
!1433 = !DILocalVariable(name: "C", scope: !1418, file: !955, line: 150, type: !5)
!1434 = !DILocation(line: 150, column: 21, scope: !1418)
!1435 = !DILocalVariable(name: "D", scope: !1418, file: !955, line: 150, type: !5)
!1436 = !DILocation(line: 150, column: 25, scope: !1418)
!1437 = !DILocalVariable(name: "D_sw", scope: !1418, file: !955, line: 150, type: !5)
!1438 = !DILocation(line: 150, column: 29, scope: !1418)
!1439 = !DILocation(line: 152, column: 19, scope: !1418)
!1440 = !DILocation(line: 152, column: 10, scope: !1418)
!1441 = !DILocation(line: 152, column: 8, scope: !1418)
!1442 = !DILocation(line: 153, column: 19, scope: !1418)
!1443 = !DILocation(line: 153, column: 10, scope: !1418)
!1444 = !DILocation(line: 153, column: 8, scope: !1418)
!1445 = !DILocation(line: 154, column: 19, scope: !1418)
!1446 = !DILocation(line: 154, column: 10, scope: !1418)
!1447 = !DILocation(line: 154, column: 8, scope: !1418)
!1448 = !DILocation(line: 155, column: 19, scope: !1418)
!1449 = !DILocation(line: 155, column: 10, scope: !1418)
!1450 = !DILocation(line: 155, column: 8, scope: !1418)
!1451 = !DILocation(line: 156, column: 22, scope: !1418)
!1452 = !DILocation(line: 156, column: 13, scope: !1418)
!1453 = !DILocation(line: 156, column: 11, scope: !1418)
!1454 = !DILocation(line: 158, column: 11, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1418, file: !955, line: 158, column: 10)
!1456 = !DILocation(line: 158, column: 13, scope: !1455)
!1457 = !DILocation(line: 158, column: 17, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1455, file: !955, discriminator: 1)
!1459 = !DILocation(line: 158, column: 19, scope: !1458)
!1460 = !DILocation(line: 158, column: 23, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1455, file: !955, discriminator: 2)
!1462 = !DILocation(line: 158, column: 25, scope: !1461)
!1463 = !DILocation(line: 158, column: 29, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1455, file: !955, discriminator: 3)
!1465 = !DILocation(line: 158, column: 31, scope: !1464)
!1466 = !DILocation(line: 158, column: 35, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1455, file: !955, discriminator: 4)
!1468 = !DILocation(line: 158, column: 10, scope: !1467)
!1469 = !DILocation(line: 159, column: 15, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !955, line: 159, column: 15)
!1471 = distinct !DILexicalBlock(scope: !1455, file: !955, line: 158, column: 41)
!1472 = !DILocation(line: 159, column: 15, scope: !1471)
!1473 = !DILocation(line: 159, column: 27, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1470, file: !955, discriminator: 1)
!1475 = !DILocation(line: 159, column: 18, scope: !1474)
!1476 = !DILocation(line: 160, column: 15, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1471, file: !955, line: 160, column: 15)
!1478 = !DILocation(line: 160, column: 15, scope: !1471)
!1479 = !DILocation(line: 160, column: 27, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1477, file: !955, discriminator: 1)
!1481 = !DILocation(line: 160, column: 18, scope: !1480)
!1482 = !DILocation(line: 161, column: 15, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1471, file: !955, line: 161, column: 15)
!1484 = !DILocation(line: 161, column: 15, scope: !1471)
!1485 = !DILocation(line: 161, column: 27, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1483, file: !955, discriminator: 1)
!1487 = !DILocation(line: 161, column: 18, scope: !1486)
!1488 = !DILocation(line: 162, column: 15, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1471, file: !955, line: 162, column: 15)
!1490 = !DILocation(line: 162, column: 15, scope: !1471)
!1491 = !DILocation(line: 162, column: 27, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1489, file: !955, discriminator: 1)
!1493 = !DILocation(line: 162, column: 18, scope: !1492)
!1494 = !DILocation(line: 163, column: 15, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1471, file: !955, line: 163, column: 15)
!1496 = !DILocation(line: 163, column: 15, scope: !1471)
!1497 = !DILocation(line: 163, column: 26, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1495, file: !955, discriminator: 1)
!1499 = !DILocation(line: 163, column: 21, scope: !1498)
!1500 = !DILocation(line: 164, column: 11, scope: !1471)
!1501 = !DILocation(line: 167, column: 31, scope: !1418)
!1502 = !DILocation(line: 167, column: 34, scope: !1418)
!1503 = !DILocation(line: 167, column: 37, scope: !1418)
!1504 = !DILocation(line: 167, column: 40, scope: !1418)
!1505 = !DILocation(line: 167, column: 43, scope: !1418)
!1506 = !DILocation(line: 167, column: 20, scope: !1418)
!1507 = !DILocation(line: 167, column: 18, scope: !1418)
!1508 = !DILocation(line: 169, column: 16, scope: !1418)
!1509 = !DILocation(line: 169, column: 31, scope: !1418)
!1510 = !DILocation(line: 169, column: 31, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1418, file: !955, discriminator: 1)
!1512 = !DILocation(line: 169, column: 31, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1418, file: !955, discriminator: 2)
!1514 = !DILocation(line: 169, column: 31, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1418, file: !955, discriminator: 3)
!1516 = !DILocation(line: 169, column: 30, scope: !1515)
!1517 = !DILocation(line: 169, column: 27, scope: !1515)
!1518 = !DILocation(line: 169, column: 66, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1515, file: !955, discriminator: 4)
!1520 = !DILocation(line: 171, column: 15, scope: !1418)
!1521 = !DILocation(line: 171, column: 6, scope: !1418)
!1522 = !DILocation(line: 172, column: 15, scope: !1418)
!1523 = !DILocation(line: 172, column: 6, scope: !1418)
!1524 = !DILocation(line: 173, column: 15, scope: !1418)
!1525 = !DILocation(line: 173, column: 6, scope: !1418)
!1526 = !DILocation(line: 174, column: 15, scope: !1418)
!1527 = !DILocation(line: 174, column: 6, scope: !1418)
!1528 = !DILocation(line: 175, column: 11, scope: !1418)
!1529 = !DILocation(line: 175, column: 6, scope: !1418)
!1530 = !DILocation(line: 177, column: 14, scope: !1418)
!1531 = !DILocation(line: 177, column: 6, scope: !1418)
!1532 = !DILocation(line: 178, column: 1, scope: !1418)
!1533 = !{!"sds_alloc"}
!1534 = !{!"void .unsigned int.0"}
!1535 = !{!"D:/xilinx/SDSoC_IDE/SDx/2018.3/target/aarch64-linux/include\5Csds_lib.h"}
!1536 = !{!"t"}
!1537 = !{!"malloc"}
!1538 = !{!"void .size_t.0"}
!1539 = !{!"D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cstdlib.h"}
!1540 = !{!"sds_free"}
!1541 = !{!"void.void *.1"}
!1542 = !{!"free"}
!1543 = !{!"rand"}
!1544 = !{!"int."}
!1545 = !{!"sds_clock_counter"}
!1546 = !{!"unsigned long long."}
!1547 = !{!"__ostream_type .float.0"}
!1548 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_main.cpp", scope: !1, file: !1, type: !1549, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: false, unit: !0, variables: !2)
!1549 = !DISubroutineType(types: !2)
!1550 = !DILocation(line: 0, scope: !1548)
