; ModuleID = 'a.c'
source_filename = "a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f() #0 !dbg !10 {
entry:
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %i, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %a, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 1, i32* %a, align 4, !dbg !18
  store i32 0, i32* %i, align 4, !dbg !19
  br label %for.cond, !dbg !21

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !22
  %cmp = icmp slt i32 %0, 3, !dbg !24
  br i1 %cmp, label %for.body, label %for.end, !dbg !25

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %a, align 4, !dbg !26
  %mul = mul nsw i32 %1, 10, !dbg !28
  store i32 %mul, i32* %a, align 4, !dbg !29
  br label %for.inc, !dbg !30

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !31
  %inc = add nsw i32 %2, 1, !dbg !31
  store i32 %inc, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !32, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %a, align 4, !dbg !36
  %4 = load i32, i32* %i, align 4, !dbg !37
  %mul1 = mul nsw i32 %3, %4, !dbg !38
  store i32 %mul1, i32* %a, align 4, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 15.0.7", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "a.c", directory: "/home/wangwanfu/fl/note/test", checksumkind: CSK_MD5, checksum: "d793f13a261f46aba367be5636685f97")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 15.0.7"}
!10 = distinct !DISubprogram(name: "f", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !{}
!14 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 2, type: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocation(line: 2, column: 9, scope: !10)
!17 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 2, type: !15)
!18 = !DILocation(line: 2, column: 14, scope: !10)
!19 = !DILocation(line: 3, column: 10, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 3, column: 5)
!21 = !DILocation(line: 3, column: 9, scope: !20)
!22 = !DILocation(line: 3, column: 13, scope: !23)
!23 = distinct !DILexicalBlock(scope: !20, file: !1, line: 3, column: 5)
!24 = !DILocation(line: 3, column: 14, scope: !23)
!25 = !DILocation(line: 3, column: 5, scope: !20)
!26 = !DILocation(line: 4, column: 13, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 3, column: 21)
!28 = !DILocation(line: 4, column: 15, scope: !27)
!29 = !DILocation(line: 4, column: 11, scope: !27)
!30 = !DILocation(line: 5, column: 5, scope: !27)
!31 = !DILocation(line: 3, column: 18, scope: !23)
!32 = !DILocation(line: 3, column: 5, scope: !23)
!33 = distinct !{!33, !25, !34, !35}
!34 = !DILocation(line: 5, column: 5, scope: !20)
!35 = !{!"llvm.loop.mustprogress"}
!36 = !DILocation(line: 6, column: 9, scope: !10)
!37 = !DILocation(line: 6, column: 13, scope: !10)
!38 = !DILocation(line: 6, column: 11, scope: !10)
!39 = !DILocation(line: 6, column: 7, scope: !10)
!40 = !DILocation(line: 7, column: 1, scope: !10)
