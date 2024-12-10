Test FastGraphletTransform...                   
  34x34 GraphBLAS bool matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 0.000230074) 
  34x34 GraphBLAS bool matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_Matrix_build_BOOL (build, 1 threads) (build 64/64 time: 0.000941038) (post iso) (hyper to sparse) 
   0.00169 sec ]
 [ GrB_select (iso select) 
   0.000581 sec ]
 [ GrB_assign (C iso assign) (pending: 0) Method 21: (C full) = scalar 
   0.000257 sec ]
 [ GrB_assign (C iso assign) (pending: 0) Method 21: (C full) = scalar 
   1.31e-05 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot F = S'*F) 
   0.00135 sec ]
 [ GrB_Vector_dup (iso dup) 
   5.01e-06 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot F = S'*F) 
   0.000274 sec ]
 [ GrB_eWiseMult dense C=A+B 
   0.000185 sec ]
 [ GrB_apply (shallow-op) (jit: undefined) (generic unop apply: ) 
   0.000284 sec ]
 [ GrB_apply (in-place-op) 
   0.00031 sec ]

  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 2.14577e-06) 
  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_mxm C<M>=A'*B, masked_dot_product (dot3) (S{S} = S'*S) nthreads 1 ntasks 1 (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/f7/GB_jit__AxB_dot3__4610808280155.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/f7/GB_jit__AxB_dot3__4610808280155.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/f7/libGB_jit__AxB_dot3__4610808280155.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/f7/GB_jit__AxB_dot3__4610808280155.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.355 sec ]
 [ GrB_reduce 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
(wait:A 22 zombies, 0 pending) C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = S'*F) 
   0.00104 sec ]
 [ GrB_apply (in-place-op) 
   1.62e-05 sec ]
 [ GrB_apply (shallow-op) (jit: undefined) (generic unop apply: ) 
   4.7e-05 sec ]
 [ GrB_apply (shallow-op) 
   0.000189 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot F = S'*F) 
   5.29e-05 sec ]
 [ GrB_Vector_eWiseAdd dense C=A+B 
   1.5e-05 sec ]
 [ GrB_Vector_eWiseAdd add:(F<.>=F+B) 
   0.000929 sec ]
 [ GrB_apply (shallow-op) 
   5.1e-05 sec ]
 [ GrB_eWiseMult dense C=A+B 
   1.38e-05 sec ]
 [ GrB_Vector_eWiseAdd add:(F<.>=F+B) 
   2.72e-05 sec ]
 [ GrB_apply (shallow-op) 
   2.5e-05 sec ]
 [ GrB_eWiseMult dense C=A+B 
   1.1e-05 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot F = S'*F) 
   5.22e-05 sec ]
 [ GrB_apply (in-place-op) 
   1e-05 sec ]
 [ GrB_eWiseMult dense C=A+B 
   1e-05 sec ]
 [ GrB_apply (in-place-op) 
   7.15e-06 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = S'*B) (bitmap to full) 
   4.89e-05 sec ]
 [ GrB_Vector_eWiseAdd add:(F<.>=F+B) 
   2.29e-05 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = S'*F) 
   0.0007 sec ]
 [ GrB_eWiseMult emult_bitmap:(B<.>=F.*B) 
   0.000674 sec ]

  34x1 GraphBLAS int64_t matrix, sparse by col, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 240 bytes

(convert ints 32/32 to 64/64, time: 4.05312e-06) 
  34x1 GraphBLAS int64_t matrix, sparse by col, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 248 bytes


  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GxB_Matrix_diag 
   6.91e-06 sec ]
 [ GrB_Matrix_nvals 
   0 sec ]
 [ GxB_Matrix_split (iso split) (sparse/hyper split) (iso sparse split) 
   0.000103 sec ]
 [ GxB_Matrix_split (sparse/hyper split) 
   1.41e-05 sec ]

  34x1 GraphBLAS int64_t matrix, sparse by col, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 240 bytes

(convert ints 32/32 to 64/64, time: 1.40667e-05) 
  34x1 GraphBLAS int64_t matrix, sparse by col, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 248 bytes

 [ GrB_assign (C iso assign) (pending: 0) Method 21: (C full) = scalar 
   2.6e-05 sec ]

  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes


  34x1 GraphBLAS int64_t matrix, sparse by col, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 240 bytes

(convert ints 32/32 to 64/64, time: 1.90735e-06) 
  34x1 GraphBLAS int64_t matrix, sparse by col, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 248 bytes

 [ GrB_mxm C=A*B, saxpy (S = S*S, anz: 156 bnz: 156) (single-threaded Gustavson) (nthreads 1 coarse: 1) (sparse saxpy) (sparse to bitmap) 
   0.00171 sec ]
 [ GrB_eWiseAdd add:(B<.>=B+S) 
   0.000149 sec ]
 [ GrB_apply (in-place-op) (jit: undefined) (generic unop apply: ) 
   2.38e-05 sec ]
 [ GrB_mxm C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   0.000208 sec ]
 [ GxB_Matrix_concat (full concat) 
   2.29e-05 sec ]
 [ GrB_reduce 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
C=A*B, saxpy (B = F*F, anz: 34 bnz: 1) (bitmap saxpy) (bitmap to full) 
   0.000863 sec ]
 [ GrB_apply (in-place-op) 
   5.96e-06 sec ]

  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 2.14577e-06) 
  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_eWiseMult emult:(S<.>=S.*S) (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/0a/GB_jit__emult_08__00112888088145.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/0a/GB_jit__emult_08__00112888088145.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/0a/libGB_jit__emult_08__00112888088145.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/0a/GB_jit__emult_08__00112888088145.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.315 sec ]
 [ GrB_mxm C<M>=A*B, saxpy (S{S} = S*S) axbwork 1045 mwork 156 (use mask) (intensity: 4.13 workspace/(nnz(A)+nnz(B)): 0.117) (nthreads 1 coarse: 1) (sparse saxpy) (C<M>=Z via assign) (pending: 0) Method 06s: C(:,:)<M> = Z ; using S (unjumble: A) (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/13/GB_jit__subassign_06s__407f00028855.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/13/GB_jit__subassign_06s__407f00028855.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/13/libGB_jit__subassign_06s__407f00028855.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/13/GB_jit__subassign_06s__407f00028855.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.343 sec ]
 [ GrB_reduce with binary op : DEPRECATED 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = S'*F) 
   0.000521 sec ]
 [ GrB_apply (in-place-op) 
   2.5e-05 sec ]

  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 8.10623e-06) 
  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes


  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 5.00679e-06) 
  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes


  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 5.00679e-06) 
  34x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_eWiseAdd (iso mask: struct) add:(S<S (mask later)>=S+S) masker:(S:H{S}=S) (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/4d/GB_jit__masker_phase1__32051.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/4d/GB_jit__masker_phase1__32051.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/4d/libGB_jit__masker_phase1__32051.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/4d/GB_jit__masker_phase1__32051.o'  /usr/local/lib/libomp.dylib   2>&1  ") (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/67/GB_jit__masker_phase2__02851.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/67/GB_jit__masker_phase2__02851.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/67/libGB_jit__masker_phase2__02851.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/67/GB_jit__masker_phase2__02851.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.645 sec ]
 [ GrB_apply (iso mask: struct) (shallow-op) (jit: undefined) (generic unop apply: ) masker:(S:H{S}=S) 
   0.000331 sec ]
 [ GrB_eWiseMult emult:(S<.>=S.*S) (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/60/GB_jit__emult_08__00205888081845.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/60/GB_jit__emult_08__00205888081845.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/60/libGB_jit__emult_08__00205888081845.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/60/GB_jit__emult_08__00205888081845.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.319 sec ]
 [ GrB_reduce with binary op : DEPRECATED 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = S'*F) 
   0.000503 sec ]
 [ GrB_apply (in-place-op) 
   2.41e-05 sec ]

  34x34 GraphBLAS uint32_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 1.00136e-05) 
  34x34 GraphBLAS uint32_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_Matrix_nvals 
   0 sec ]
 [ GrB_mxm C<M>=A'*B, masked_dot_product (dot3) (S{S} = S'*S) nthreads 1 ntasks 1  factory 
   0.00051 sec ]
 [ GrB_select (wait:A 22 zombies, 0 pending) 
   0.000488 sec ]
 [ GrB_Matrix_nvals 
   9.54e-07 sec ]
 [ GrB_mxm C<M>=A'*B, masked_dot_product (dot3) (S{S} = S'*S) nthreads 1 ntasks 1  factory 
   0.000204 sec ]
 [ GrB_select (wait:A 8 zombies, 0 pending) 
   0.000319 sec ]
 [ GrB_Matrix_nvals 
   0 sec ]
 [ GrB_mxm C<M>=A'*B, masked_dot_product (dot3) (S{S} = S'*S) nthreads 1 ntasks 1  factory 
   0.000141 sec ]
 [ GrB_select 
   0.000184 sec ]
 [ GrB_Matrix_nvals 
   0 sec ]
 [ GrB_Vector_build_INT64 (build, 1 threads) (build 64/64 time: 4.19617e-05) (hypersparse to full) 
   0.000108 sec ]

  16x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 4.05312e-06) 
  16x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1.6e-05 sec ]
 [ GrB_Vector_nvals 
   9.54e-07 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1e-05 sec ]
(iso wait:C (setElement:to non-iso) 0 zombies, 34 pending) (iso build, 1 threads) (build 32/32 time: 2.7895e-05) (convert ints 32/32 to 64/64, time: 4.05312e-06)  [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1e-05 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A bitmap) 
   4.32e-05 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1e-05 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1e-05 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1e-05 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A bitmap) 
   1.19e-05 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A bitmap) 
   1.19e-05 sec ]
 [ GrB_Vector_nvals 
   9.54e-07 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1e-05 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A bitmap) 
   1.1e-05 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A bitmap) 
   1.1e-05 sec ]
 [ GrB_Vector_nvals 
   9.54e-07 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1e-05 sec ]

  16x16 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  16x16 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_Matrix_build_INT64 (build, 1 threads) (build 64/64 time: 3.50475e-05) (sparse to bitmap) 
   0.000105 sec ]

  16x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 2.14577e-06) 
  16x34 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_mxm (wait:B 0 zombies, 500 pending) (build, 1 threads) (build 32/32 time: 6.19888e-05) (convert ints 32/32 to 64/64, time: 5.96046e-06) add:(H<.>=H+H) (sparse to bitmap) C=A*B, saxpy (B = B*B, anz: 534 bnz: 50) (bitmap saxpy) 
   0.00146 sec ]
 [ GrB_reduce with binary op : DEPRECATED 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   0.000295 sec ]

  16x1 GraphBLAS int64_t vector, full by col
  f_net, 16 entries, memory: 360 bytes

    (0,0)   34
    (1,0)   156
    (2,0)   786
    (3,0)   393
    (4,0)   135
    (5,0)   1362
    (6,0)   1362
    (7,0)   3294
    (8,0)   1098
    (9,0)   452
    (10,0)   904
    (11,0)   452
    (12,0)   144
    (13,0)   170
    (14,0)   170
    (15,0)   44

# Matrix: karate.mtx

  7x7 GraphBLAS bool matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  7x7 GraphBLAS bool matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_Matrix_build_BOOL (build, 1 threads) (build 64/64 time: 3.91006e-05) (post iso) (sparse to bitmap) 
   8.2e-05 sec ]
 [ GrB_select (C bitmap) (A bitmap) (iso select) (bitmap select) 
   0.000102 sec ]
 [ GrB_assign (C iso assign) (pending: 0) Method 21: (C full) = scalar 
   2.6e-05 sec ]
 [ GrB_assign (C iso assign) (pending: 0) Method 21: (C full) = scalar 
   1.6e-05 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   6.41e-05 sec ]
 [ GrB_Vector_dup (iso dup) 
   6.91e-06 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   4.32e-05 sec ]
 [ GrB_eWiseMult dense C=A+B 
   1.31e-05 sec ]
 [ GrB_apply (shallow-op) (jit: undefined) (generic unop apply: ) 
   3.1e-05 sec ]
 [ GrB_apply (in-place-op) 
   7.87e-06 sec ]

  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 2.14577e-06) 
  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_mxm C<M>=A'*B, masked_dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B{B} = B'*B) (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/1c/GB_jit__AxB_dot2__46108082801aa.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/1c/GB_jit__AxB_dot2__46108082801aa.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/1c/libGB_jit__AxB_dot2__46108082801aa.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/1c/GB_jit__AxB_dot2__46108082801aa.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.312 sec ]
 [ GrB_reduce 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   0.000487 sec ]
 [ GrB_apply (in-place-op) 
   2.38e-05 sec ]
 [ GrB_apply (shallow-op) (jit: undefined) (generic unop apply: ) 
   6.41e-05 sec ]
 [ GrB_apply (shallow-op) 
   3.5e-05 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   9.2e-05 sec ]
 [ GrB_Vector_eWiseAdd dense C=A+B 
   2.29e-05 sec ]
 [ GrB_Vector_eWiseAdd dense C=A+B 
   1.5e-05 sec ]
 [ GrB_apply (shallow-op) 
   2.91e-05 sec ]
 [ GrB_eWiseMult dense C=A+B 
   1.29e-05 sec ]
 [ GrB_Vector_eWiseAdd dense C=A+B 
   1.12e-05 sec ]
 [ GrB_apply (shallow-op) 
   2.31e-05 sec ]
 [ GrB_eWiseMult dense C=A+B 
   1.22e-05 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   6.2e-05 sec ]
 [ GrB_apply (in-place-op) 
   1.12e-05 sec ]
 [ GrB_eWiseMult dense C=A+B 
   1.1e-05 sec ]
 [ GrB_apply (in-place-op) 
   1.1e-05 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   6.2e-05 sec ]
 [ GrB_Vector_eWiseAdd dense C=A+B 
   1e-05 sec ]
 [ GrB_mxv C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   6.58e-05 sec ]
 [ GrB_eWiseMult dense C=A+B 
   1.19e-05 sec ]

  7x1 GraphBLAS int64_t matrix, sparse by col, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 240 bytes

(convert ints 32/32 to 64/64, time: 7.15256e-06) 
  7x1 GraphBLAS int64_t matrix, sparse by col, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 248 bytes


  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GxB_Matrix_diag (sparse to bitmap) 
   2.41e-05 sec ]
 [ GrB_Matrix_nvals 
   0 sec ]
 [ GxB_Matrix_split (iso split) (bitmap split) 
   2.29e-05 sec ]
 [ GxB_Matrix_split (bitmap split) 
   1.38e-05 sec ]

  7x1 GraphBLAS int64_t matrix, sparse by col, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 240 bytes

(convert ints 32/32 to 64/64, time: 2.86102e-06) 
  7x1 GraphBLAS int64_t matrix, sparse by col, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 248 bytes

 [ GrB_assign (C iso assign) (pending: 0) Method 21: (C full) = scalar 
   3.79e-05 sec ]

  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes


  7x1 GraphBLAS int64_t matrix, sparse by col, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 240 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  7x1 GraphBLAS int64_t matrix, sparse by col, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 248 bytes

 [ GrB_mxm C=A*B, saxpy (B = B*B, anz: 30 bnz: 30) (bitmap saxpy) (bitmap to full) 
   0.00161 sec ]
 [ GrB_eWiseAdd add:(F<.>=F+B) 
   4.51e-05 sec ]
 [ GrB_apply (in-place-op) (jit: undefined) (generic unop apply: ) 
   2.29e-05 sec ]
 [ GrB_mxm C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot F = F'*F) 
   4.2e-05 sec ]
 [ GxB_Matrix_concat (full concat) 
   1.5e-05 sec ]
 [ GrB_reduce 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
C=A*B, saxpy (B = F*F, anz: 7 bnz: 1) (bitmap saxpy) (bitmap to full) 
   0.000239 sec ]
 [ GrB_apply (in-place-op) 
   8.82e-06 sec ]

  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_eWiseMult emult_bitmap:(B<.>=B.*B) (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/66/GB_jit__emult_bitmap__0011288808818a.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/66/GB_jit__emult_bitmap__0011288808818a.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/66/libGB_jit__emult_bitmap__0011288808818a.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/66/GB_jit__emult_bitmap__0011288808818a.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.315 sec ]
 [ GrB_mxm C<M>=A*B, saxpy (B{B} = B*B) (bitmap saxpy) (C<M>=Z via assign) (pending: 0) Method: bitmap_subassign (bit2_whole: C<M,bitmap,struct> = A ) (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/f2/GB_jit__bitmap_assign_2_whole__003f000288a2.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/f2/GB_jit__bitmap_assign_2_whole__003f000288a2.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/f2/libGB_jit__bitmap_assign_2_whole__003f000288a2.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/f2/GB_jit__bitmap_assign_2_whole__003f000288a2.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.333 sec ]
 [ GrB_reduce with binary op : DEPRECATED 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   0.00051 sec ]
 [ GrB_apply (in-place-op) 
   2.29e-05 sec ]

  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 8.10623e-06) 
  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes


  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 4.05312e-06) 
  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes


  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 5.00679e-06) 
  7x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_eWiseAdd (iso mask: struct) add:(B<B>=B+B) 
   8.89e-05 sec ]
 [ GrB_apply (iso mask: struct) (shallow-op) (jit: undefined) (generic unop apply: ) masker:(B:H{B}=B) (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/26/GB_jit__masker_phase2__028a2.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/26/GB_jit__masker_phase2__028a2.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/26/libGB_jit__masker_phase2__028a2.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/26/GB_jit__masker_phase2__028a2.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.323 sec ]
 [ GrB_eWiseMult emult_bitmap:(B<.>=B.*B) (jit: compile and load) (jit: sh -c "/Library/Developer/CommandLineTools/usr/bin/cc -DGB_JIT_RUNTIME=1  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp -I'/Users/davis/.SuiteSparse/GrB10.0.0/src' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/template' -I'/Users/davis/.SuiteSparse/GrB10.0.0/src/include'  -I/usr/local/include -o '/Users/davis/.SuiteSparse/GrB10.0.0/c/c3/GB_jit__emult_bitmap__0020588808188a.o' -c '/Users/davis/.SuiteSparse/GrB10.0.0/c/c3/GB_jit__emult_bitmap__0020588808188a.c'   2>&1   ; /Library/Developer/CommandLineTools/usr/bin/cc  -g -fPIC  -arch arm64  -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX15.1.sdk  -Xclang -fopenmp  -dynamiclib  -o '/Users/davis/.SuiteSparse/GrB10.0.0/lib/c3/libGB_jit__emult_bitmap__0020588808188a.dylib' '/Users/davis/.SuiteSparse/GrB10.0.0/c/c3/GB_jit__emult_bitmap__0020588808188a.o'  /usr/local/lib/libomp.dylib   2>&1  ") 
   0.318 sec ]
 [ GrB_reduce with binary op : DEPRECATED 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B = B'*F) (bitmap to full) 
   0.000491 sec ]
 [ GrB_apply (in-place-op) 
   2.38e-05 sec ]

  7x7 GraphBLAS uint32_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 9.05991e-06) 
  7x7 GraphBLAS uint32_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_Matrix_nvals 
   9.54e-07 sec ]
 [ GrB_mxm C<M>=A'*B, masked_dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B{B} = B'*B) 
   0.000475 sec ]
 [ GrB_select (C bitmap) (A bitmap) (bitmap select) 
   0.000132 sec ]
 [ GrB_Matrix_nvals 
   0 sec ]
 [ GrB_mxm C<M>=A'*B, masked_dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B{B} = B'*B) 
   6.7e-05 sec ]
 [ GrB_select (C bitmap) (A bitmap) (bitmap select) 
   7.8e-05 sec ]
 [ GrB_Matrix_nvals 
   0 sec ]
 [ GrB_mxm C<M>=A'*B, masked_dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot B{B} = B'*B) 
   6.29e-05 sec ]
 [ GrB_select (C bitmap) (A bitmap) (bitmap select) 
   7.49e-05 sec ]
 [ GrB_Matrix_nvals 
   0 sec ]
 [ GrB_Vector_build_INT64 (build, 1 threads) (build 64/64 time: 2.98023e-05) (hypersparse to full) 
   0.000103 sec ]

  16x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  16x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1.38e-05 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   1e-05 sec ]
(iso wait:C (setElement:to non-iso) 0 zombies, 7 pending) (iso build, 1 threads) (build 32/32 time: 2.59876e-05) (convert ints 32/32 to 64/64, time: 4.05312e-06)  [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   8.82e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   9.54e-07 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   8.82e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   8.82e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   7.87e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   8.82e-06 sec ]
 [ GrB_Vector_nvals 
   9.54e-07 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   7.87e-06 sec ]
 [ GrB_Vector_nvals 
   0 sec ]
 [ GrB_Vector_extractTuples_INT64 (A full) 
   9.06e-06 sec ]

  16x16 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  16x16 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_Matrix_build_INT64 (build, 1 threads) (build 64/64 time: 3.60012e-05) (sparse to bitmap) 
   0.000109 sec ]

  16x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 32/32
  GrB_Matrix_new before convert, no entries, memory: 248 bytes

(convert ints 32/32 to 64/64, time: 3.09944e-06) 
  16x7 GraphBLAS int64_t matrix, hypersparse by row, ints: 64/64
  GrB_Matrix_new after convert, no entries, memory: 256 bytes

 [ GrB_mxm (wait:B 0 zombies, 105 pending) (build, 1 threads) (build 32/32 time: 2.7895e-05) (convert ints 32/32 to 64/64, time: 5.00679e-06) add:(H<.>=H+H) (hypersparse to full) C=A*B, saxpy (B = F*B, anz: 112 bnz: 50) (bitmap saxpy) (bitmap to full) 
   0.000259 sec ]
 [ GrB_reduce with binary op : DEPRECATED 
    GraphBLAS Semiring: semiring for reduce-to-vector (built-in): (plus,first)
    GraphBLAS Monoid: semiring->add (built-in):
    GraphBLAS BinaryOp: monoid->op (built-in): z=plus(x,y)
    BinaryOp given name: [GrB_PLUS_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    GraphBLAS Type: ytype int64_t size: 8
    Monoid given name: [GrB_PLUS_MONOID_INT64]
    identity: [   0 ] 
    GraphBLAS BinaryOp: semiring->multiply (built-in): z=first(x,y)
    BinaryOp given name: [GrB_FIRST_INT64]
    GraphBLAS Type: ztype int64_t size: 8
    GraphBLAS Type: xtype int64_t size: 8
    Semiring given name: [GxB_PLUS_FIRST_INT64]
C=A'*B, dot_product (dot2) (nthreads: 1 naslice 1 nbslice 1) (dot F = F'*F) 
   0.000234 sec ]

  16x1 GraphBLAS int64_t vector, full by col
  f_net, 16 entries, memory: 360 bytes

    (0,0)   7
    (1,0)   30
    (2,0)   38
    (3,0)   19
    (4,0)   33
    (5,0)   2
    (6,0)   2
    (7,0)   6
    (8,0)   2
    (9,0)   10
    (10,0)   20
    (11,0)   10
    (12,0)   20
    (13,0)   26
    (14,0)   26
    (15,0)   8

# Matrix: A.mtx
[ OK ]
SUCCESS: All unit tests have passed.
