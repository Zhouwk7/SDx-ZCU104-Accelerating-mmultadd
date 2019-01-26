; ModuleID = 'D:/xilinx/SDSoC_IDE/workspace/muladd/src/madd.cpp'
source_filename = "D:/xilinx/SDSoC_IDE/workspace/muladd/src/madd.cpp"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnu"

; Function Attrs: nounwind
define void @_Z4maddPfS_S_(float*, float*, float*) #0 !dbg !251 !xidane.fname !256 !xidane.function_argument_annotation !257 !xidane.function_declaration_type !258 !xidane.function_declaration_filename !259 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  call void @llvm.dbg.declare(metadata float** %4, metadata !260, metadata !261), !dbg !262
  store float* %1, float** %5, align 8
  call void @llvm.dbg.declare(metadata float** %5, metadata !263, metadata !261), !dbg !264
  store float* %2, float** %6, align 8
  call void @llvm.dbg.declare(metadata float** %6, metadata !265, metadata !261), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %7, metadata !267, metadata !261), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %8, metadata !269, metadata !261), !dbg !270
  store i32 0, i32* %7, align 4, !dbg !271
  br label %9, !dbg !273

; <label>:9:                                      ; preds = %45, %3
  %10 = load i32, i32* %7, align 4, !dbg !274
  %11 = icmp slt i32 %10, 32, !dbg !277
  br i1 %11, label %12, label %48, !dbg !278

; <label>:12:                                     ; preds = %9
  store i32 0, i32* %8, align 4, !dbg !279
  br label %13, !dbg !281

; <label>:13:                                     ; preds = %41, %12
  %14 = load i32, i32* %8, align 4, !dbg !282
  %15 = icmp slt i32 %14, 32, !dbg !285
  br i1 %15, label %16, label %44, !dbg !286

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %7, align 4, !dbg !287
  %18 = mul nsw i32 %17, 32, !dbg !288
  %19 = load i32, i32* %8, align 4, !dbg !289
  %20 = add nsw i32 %18, %19, !dbg !290
  %21 = sext i32 %20 to i64, !dbg !291
  %22 = load float*, float** %4, align 8, !dbg !291
  %23 = getelementptr inbounds float, float* %22, i64 %21, !dbg !291
  %24 = load float, float* %23, align 4, !dbg !291
  %25 = load i32, i32* %7, align 4, !dbg !292
  %26 = mul nsw i32 %25, 32, !dbg !293
  %27 = load i32, i32* %8, align 4, !dbg !294
  %28 = add nsw i32 %26, %27, !dbg !295
  %29 = sext i32 %28 to i64, !dbg !296
  %30 = load float*, float** %5, align 8, !dbg !296
  %31 = getelementptr inbounds float, float* %30, i64 %29, !dbg !296
  %32 = load float, float* %31, align 4, !dbg !296
  %33 = fadd float %24, %32, !dbg !297
  %34 = load i32, i32* %7, align 4, !dbg !298
  %35 = mul nsw i32 %34, 32, !dbg !299
  %36 = load i32, i32* %8, align 4, !dbg !300
  %37 = add nsw i32 %35, %36, !dbg !301
  %38 = sext i32 %37 to i64, !dbg !302
  %39 = load float*, float** %6, align 8, !dbg !302
  %40 = getelementptr inbounds float, float* %39, i64 %38, !dbg !302
  store float %33, float* %40, align 4, !dbg !303
  br label %41, !dbg !302

; <label>:41:                                     ; preds = %16
  %42 = load i32, i32* %8, align 4, !dbg !304
  %43 = add nsw i32 %42, 1, !dbg !304
  store i32 %43, i32* %8, align 4, !dbg !304
  br label %13, !dbg !306, !llvm.loop !307

; <label>:44:                                     ; preds = %13
  br label %45, !dbg !309

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %7, align 4, !dbg !311
  %47 = add nsw i32 %46, 1, !dbg !311
  store i32 %47, i32* %7, align 4, !dbg !311
  br label %9, !dbg !313, !llvm.loop !314

; <label>:48:                                     ; preds = %9
  ret void, !dbg !316
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a53" "target-features"="+crc,+crypto,+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!248, !249}
!llvm.ident = !{!250}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3)
!1 = !DIFile(filename: "../src\5Cmadd.cpp", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!2 = !{}
!3 = !{!4, !12, !15, !22, !26, !31, !33, !41, !45, !49, !63, !67, !71, !75, !79, !84, !88, !92, !96, !100, !108, !112, !116, !118, !122, !126, !131, !137, !141, !145, !147, !155, !159, !167, !169, !173, !177, !181, !185, !190, !195, !200, !201, !202, !203, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!4 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !7, line: 52)
!5 = !DINamespace(name: "std", scope: null, file: !6, line: 229)
!6 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1/aarch64-linux-gnu\5Cbits/c++config.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!7 = !DISubprogram(name: "abs", scope: !8, file: !8, line: 722, type: !9, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!8 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/libc/usr/include\5Cstdlib.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !13, line: 127)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !8, line: 62, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 58, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!15 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !16, line: 128)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !8, line: 70, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 66, size: 128, align: 64, elements: !18, identifier: "_ZTS6ldiv_t")
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !17, file: !8, line: 68, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !17, file: !8, line: 69, baseType: !20, size: 64, align: 64, offset: 64)
!22 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !23, line: 130)
!23 = !DISubprogram(name: "abort", scope: !8, file: !8, line: 473, type: !24, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!24 = !DISubroutineType(types: !25)
!25 = !{null}
!26 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !27, line: 134)
!27 = !DISubprogram(name: "atexit", scope: !8, file: !8, line: 477, type: !28, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!28 = !DISubroutineType(types: !29)
!29 = !{!11, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!31 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !32, line: 137)
!32 = !DISubprogram(name: "at_quick_exit", scope: !8, file: !8, line: 482, type: !28, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !34, line: 140)
!34 = !DISubprogram(name: "atof", scope: !8, file: !8, line: 101, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !38}
!37 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !42, line: 141)
!42 = !DISubprogram(name: "atoi", scope: !8, file: !8, line: 104, type: !43, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!43 = !DISubroutineType(types: !44)
!44 = !{!11, !38}
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !46, line: 142)
!46 = !DISubprogram(name: "atol", scope: !8, file: !8, line: 107, type: !47, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!47 = !DISubroutineType(types: !48)
!48 = !{!20, !38}
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !50, line: 143)
!50 = !DISubprogram(name: "bsearch", scope: !8, file: !8, line: 702, type: !51, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !54, !54, !56, !56, !59}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 216, baseType: !58)
!57 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/lib/gcc/aarch64-linux-gnu/7.3.1/include\5Cstddef.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!58 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !8, line: 690, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!11, !54, !54}
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !64, line: 144)
!64 = !DISubprogram(name: "calloc", scope: !8, file: !8, line: 426, type: !65, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!65 = !DISubroutineType(types: !66)
!66 = !{!53, !56, !56}
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !68, line: 145)
!68 = !DISubprogram(name: "div", scope: !8, file: !8, line: 734, type: !69, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DISubroutineType(types: !70)
!70 = !{!13, !11, !11}
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !72, line: 146)
!72 = !DISubprogram(name: "exit", scope: !8, file: !8, line: 499, type: !73, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !11}
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !76, line: 147)
!76 = !DISubprogram(name: "free", scope: !8, file: !8, line: 448, type: !77, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !53}
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !80, line: 148)
!80 = !DISubprogram(name: "getenv", scope: !8, file: !8, line: 516, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !38}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !85, line: 149)
!85 = !DISubprogram(name: "labs", scope: !8, file: !8, line: 723, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{!20, !20}
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !89, line: 150)
!89 = !DISubprogram(name: "ldiv", scope: !8, file: !8, line: 736, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DISubroutineType(types: !91)
!91 = !{!16, !20, !20}
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !93, line: 151)
!93 = !DISubprogram(name: "malloc", scope: !8, file: !8, line: 424, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DISubroutineType(types: !95)
!95 = !{!53, !56}
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !97, line: 153)
!97 = !DISubprogram(name: "mblen", scope: !8, file: !8, line: 804, type: !98, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!98 = !DISubroutineType(types: !99)
!99 = !{!11, !38, !56}
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !101, line: 154)
!101 = !DISubprogram(name: "mbstowcs", scope: !8, file: !8, line: 815, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!102 = !DISubroutineType(types: !103)
!103 = !{!56, !104, !107, !56}
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIBasicType(name: "wchar_t", size: 32, align: 32, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !109, line: 155)
!109 = !DISubprogram(name: "mbtowc", scope: !8, file: !8, line: 807, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!110 = !DISubroutineType(types: !111)
!111 = !{!11, !104, !107, !56}
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !113, line: 157)
!113 = !DISubprogram(name: "qsort", scope: !8, file: !8, line: 712, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !53, !56, !56, !59}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !117, line: 160)
!117 = !DISubprogram(name: "quick_exit", scope: !8, file: !8, line: 505, type: !73, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !119, line: 163)
!119 = !DISubprogram(name: "rand", scope: !8, file: !8, line: 338, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DISubroutineType(types: !121)
!121 = !{!11}
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !123, line: 164)
!123 = !DISubprogram(name: "realloc", scope: !8, file: !8, line: 434, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DISubroutineType(types: !125)
!125 = !{!53, !53, !56}
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !127, line: 165)
!127 = !DISubprogram(name: "srand", scope: !8, file: !8, line: 340, type: !128, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130}
!130 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !132, line: 166)
!132 = !DISubprogram(name: "strtod", scope: !8, file: !8, line: 117, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!37, !107, !135}
!135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !138, line: 167)
!138 = !DISubprogram(name: "strtol", scope: !8, file: !8, line: 139, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DISubroutineType(types: !140)
!140 = !{!20, !107, !135, !11}
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !142, line: 168)
!142 = !DISubprogram(name: "strtoul", scope: !8, file: !8, line: 143, type: !143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DISubroutineType(types: !144)
!144 = !{!58, !107, !135, !11}
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !146, line: 169)
!146 = !DISubprogram(name: "system", scope: !8, file: !8, line: 666, type: !43, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !148, line: 171)
!148 = !DISubprogram(name: "wcstombs", scope: !8, file: !8, line: 818, type: !149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DISubroutineType(types: !150)
!150 = !{!56, !151, !152, !56}
!151 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !156, line: 172)
!156 = !DISubprogram(name: "wctomb", scope: !8, file: !8, line: 811, type: !157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DISubroutineType(types: !158)
!158 = !{!11, !83, !106}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !161, line: 200)
!160 = !DINamespace(name: "__gnu_cxx", scope: null, file: !6, line: 255)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !8, line: 80, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 76, size: 128, align: 64, elements: !163, identifier: "_ZTS7lldiv_t")
!163 = !{!164, !166}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !162, file: !8, line: 78, baseType: !165, size: 64, align: 64)
!165 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !162, file: !8, line: 79, baseType: !165, size: 64, align: 64, offset: 64)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !168, line: 206)
!168 = !DISubprogram(name: "_Exit", scope: !8, file: !8, line: 511, type: !73, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !170, line: 210)
!170 = !DISubprogram(name: "llabs", scope: !8, file: !8, line: 726, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!165, !165}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !174, line: 216)
!174 = !DISubprogram(name: "lldiv", scope: !8, file: !8, line: 740, type: !175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DISubroutineType(types: !176)
!176 = !{!161, !165, !165}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !178, line: 227)
!178 = !DISubprogram(name: "atoll", scope: !8, file: !8, line: 112, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!165, !38}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !182, line: 228)
!182 = !DISubprogram(name: "strtoll", scope: !8, file: !8, line: 163, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{!165, !107, !135, !11}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !186, line: 229)
!186 = !DISubprogram(name: "strtoull", scope: !8, file: !8, line: 168, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubroutineType(types: !188)
!188 = !{!189, !107, !135, !11}
!189 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !191, line: 231)
!191 = !DISubprogram(name: "strtof", scope: !8, file: !8, line: 123, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !107, !135}
!194 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !196, line: 232)
!196 = !DISubprogram(name: "strtold", scope: !8, file: !8, line: 126, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !107, !135}
!199 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !161, line: 240)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !168, line: 242)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !170, line: 244)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !204, line: 245)
!204 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !160, file: !205, line: 213, type: !175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Ccstdlib", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !174, line: 246)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !178, line: 248)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !191, line: 249)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !182, line: 250)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !186, line: 251)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !196, line: 252)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !23, line: 38)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !27, line: 39)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !72, line: 40)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !32, line: 43)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !117, line: 46)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !13, line: 51)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !16, line: 52)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !220, line: 54)
!220 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !5, file: !221, line: 78, type: !222, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/SDK/2018.3/gnu/aarch64/nt/aarch64-linux/aarch64-linux-gnu/include/c++/7.3.1\5Cbits/std_abs.h", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!222 = !DISubroutineType(types: !223)
!223 = !{!199, !199}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !34, line: 55)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !42, line: 56)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !46, line: 57)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !50, line: 58)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !64, line: 59)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !204, line: 60)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !76, line: 61)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !80, line: 62)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !85, line: 63)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !89, line: 64)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !93, line: 65)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !97, line: 67)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !101, line: 68)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !109, line: 69)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !113, line: 71)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !119, line: 72)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !123, line: 73)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !127, line: 74)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !132, line: 75)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !138, line: 76)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !142, line: 77)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !146, line: 78)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !148, line: 80)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !156, line: 81)
!248 = !{i32 2, !"Dwarf Version", i32 4}
!249 = !{i32 2, !"Debug Info Version", i32 3}
!250 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!251 = distinct !DISubprogram(name: "madd", linkageName: "_Z4maddPfS_S_", scope: !252, file: !252, line: 43, type: !253, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!252 = !DIFile(filename: "D:/xilinx/SDSoC_IDE/workspace/muladd/src/madd.cpp", directory: "D:\5Cxilinx\5CSDSoC_IDE\5Cworkspace\5Cmuladd\5CRelease")
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255, !255, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!256 = !{!"madd"}
!257 = !{!"A,,,,,,,,,,,,SEQUENTIAL B,,,,,,,,,,,,SEQUENTIAL C,,,,,,,,,,,,SEQUENTIAL "}
!258 = !{!"void.float [1024].1.float [1024].1.float [1024].1"}
!259 = !{!"../src/mmultadd.h"}
!260 = !DILocalVariable(name: "A", arg: 1, scope: !251, file: !252, line: 43, type: !255)
!261 = !DIExpression()
!262 = !DILocation(line: 43, column: 17, scope: !251)
!263 = !DILocalVariable(name: "B", arg: 2, scope: !251, file: !252, line: 43, type: !255)
!264 = !DILocation(line: 43, column: 31, scope: !251)
!265 = !DILocalVariable(name: "C", arg: 3, scope: !251, file: !252, line: 43, type: !255)
!266 = !DILocation(line: 43, column: 45, scope: !251)
!267 = !DILocalVariable(name: "i", scope: !251, file: !252, line: 45, type: !11)
!268 = !DILocation(line: 45, column: 7, scope: !251)
!269 = !DILocalVariable(name: "j", scope: !251, file: !252, line: 45, type: !11)
!270 = !DILocation(line: 45, column: 10, scope: !251)
!271 = !DILocation(line: 47, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !251, file: !252, line: 47, column: 3)
!273 = !DILocation(line: 47, column: 8, scope: !272)
!274 = !DILocation(line: 47, column: 15, scope: !275)
!275 = !DILexicalBlockFile(scope: !276, file: !252, discriminator: 1)
!276 = distinct !DILexicalBlock(scope: !272, file: !252, line: 47, column: 3)
!277 = !DILocation(line: 47, column: 17, scope: !275)
!278 = !DILocation(line: 47, column: 3, scope: !275)
!279 = !DILocation(line: 48, column: 12, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !252, line: 48, column: 5)
!281 = !DILocation(line: 48, column: 10, scope: !280)
!282 = !DILocation(line: 48, column: 17, scope: !283)
!283 = !DILexicalBlockFile(scope: !284, file: !252, discriminator: 1)
!284 = distinct !DILexicalBlock(scope: !280, file: !252, line: 48, column: 5)
!285 = !DILocation(line: 48, column: 19, scope: !283)
!286 = !DILocation(line: 48, column: 5, scope: !283)
!287 = !DILocation(line: 50, column: 20, scope: !284)
!288 = !DILocation(line: 50, column: 21, scope: !284)
!289 = !DILocation(line: 50, column: 24, scope: !284)
!290 = !DILocation(line: 50, column: 23, scope: !284)
!291 = !DILocation(line: 50, column: 18, scope: !284)
!292 = !DILocation(line: 50, column: 31, scope: !284)
!293 = !DILocation(line: 50, column: 32, scope: !284)
!294 = !DILocation(line: 50, column: 35, scope: !284)
!295 = !DILocation(line: 50, column: 34, scope: !284)
!296 = !DILocation(line: 50, column: 29, scope: !284)
!297 = !DILocation(line: 50, column: 27, scope: !284)
!298 = !DILocation(line: 50, column: 9, scope: !284)
!299 = !DILocation(line: 50, column: 10, scope: !284)
!300 = !DILocation(line: 50, column: 13, scope: !284)
!301 = !DILocation(line: 50, column: 12, scope: !284)
!302 = !DILocation(line: 50, column: 7, scope: !284)
!303 = !DILocation(line: 50, column: 16, scope: !284)
!304 = !DILocation(line: 48, column: 25, scope: !305)
!305 = !DILexicalBlockFile(scope: !284, file: !252, discriminator: 2)
!306 = !DILocation(line: 48, column: 5, scope: !305)
!307 = distinct !{!307, !308}
!308 = !DILocation(line: 48, column: 5, scope: !276)
!309 = !DILocation(line: 50, column: 36, scope: !310)
!310 = !DILexicalBlockFile(scope: !280, file: !252, discriminator: 1)
!311 = !DILocation(line: 47, column: 23, scope: !312)
!312 = !DILexicalBlockFile(scope: !276, file: !252, discriminator: 2)
!313 = !DILocation(line: 47, column: 3, scope: !312)
!314 = distinct !{!314, !315}
!315 = !DILocation(line: 47, column: 3, scope: !251)
!316 = !DILocation(line: 52, column: 1, scope: !251)
