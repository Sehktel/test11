
.section ".text"
.align 8
.local  $__do_global_dtors_aux.31

$__do_global_dtors_aux.31:
.size	$__do_global_dtors_aux.31, .- $__do_global_dtors_aux.31

.lcomm $completed.1.32, 1, 8

.section ".text"
.align 8
.local  $frame_dummy.33

$frame_dummy.33:
.size	$frame_dummy.33, .- $frame_dummy.33

.section ".text"
.align 8
.global $__libc_csu_fini

$__libc_csu_fini:
.ignore ld_st_style
.ignore strict_delay
 {
   nop 5
   return %ctpr3
   setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
 }
 {
   ct %ctpr3
   ipd 3
 }
.size	$__libc_csu_fini, .- $__libc_csu_fini

.section ".text"
.align 8
.global $_fini

$_fini:
.size	$_fini, .- $_fini

.section ".data"
.align 8
.global $__dso_handle

$__dso_handle:
.byte   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
.size	$__dso_handle, .- $__dso_handle

.section ".text"
.align 8
.global $__libc_csu_init

$__libc_csu_init:
 {
   disp %ctpr2, M_10360
   setwd wsz = 0xb, nfx = 0x1, dbl = 0x0
   setbn rsz = 0x3, rbs = 0x7, rcur = 0x0 
   rrd,0 %ip, %dr11
   addd,1 0x0, _f64,_lts1 0x1a08, %dr12
   addd,2 0x0, 0x0, %dr7
 }
 {
   getsp,0 _f32s,_lts0 0xffffffe0, %dr4
 }
   addd,0 %dr11, %dr12, %dr5
 {
   nop 1
   addd,0,sm %dr5, _f64,_lts0 0xfffffffffffffe00, %dr9
   addd,1,sm %dr5, _f64,_lts2 0xfffffffffffffe08, %dr4
 }
 {
   ipd 3
   call %ctpr2, wbs = 0x7 
   sxt,1,sm 0x2, %r0, %dr10
 }
 {
   return %ctpr3
   subd,0 %dr4, %dr9, %dr4
 }
   sard,0 %dr4, _f16s,_lts0lo 0x3f, %dr5
   andd,0 %dr5, 0x7, %dr5
   addd,0 %dr4, %dr5, %dr4
   sard,0 %dr4, 0x3, %dr8
 {
   nop 1
   cmpbdb,0 0x0, %dr8, %pred0
 }
   addd,0,sm 0x0, 0x0, %dr6 ? %pred0
 {
   ct %ctpr3 ? ~ %pred0
   ipd 3
   ldd,0,sm %dr9, %dr6, %dr0
 }
   nop
   nop
M_106d8:
 {
   movtd,0,sm %dr0, %ctpr2
   addd,1,sm 0x0, %dr2, %db[2]
   addd,2,sm 0x0, %dr1, %db[1]
   addd,3,sm 0x0, %dr10, %db[0]
   addd,4 %dr7, 0x1, %dr7
   addd,5,sm 0x8, %dr6, %dr6
 }
 {
   nop 7
   cmpbdb,3 %dr7, %dr8, %pred0
 }
 {
   ipd 3
   call %ctpr2, wbs = 0x7 
 }
 {
   nop 4
   disp %ctpr1, M_106d8
   ldd,0 %dr9, %dr6, %dr0 ? %pred0
 }
 {
   ct %ctpr1 ? %pred0
   ipd 3
 }
 {
   nop 5
   return %ctpr3
 }
 {
   ct %ctpr3
   ipd 3
 }
.size	$__libc_csu_init, .- $__libc_csu_init

.section ".text"
.align 8
.global $_start

$_start:
 {
   disp %ctpr1, $__libc_start_main@plt
   setwd wsz = 0x8, nfx = 0x1, dbl = 0x0
   setbn rsz = 0x3, rbs = 0x4, rcur = 0x0 
   getsp,0 _f32s,_lts1 0xffffffc0, %dr2
   adds,1 0x0, 0x0, %r3
 }
 {
   addd,0 0x0, [ _lts0 $main ], %db[0]
   addd,1 0x0, 0x0, %db[6]
   addd,2 0x0, [ _lts2 $__libc_csu_fini ], %db[4]
 }
 {
   addd,0 %dr2, _f64,_lts0 0x40, %dr1
   addd,1 0x0, [ _lts2 $__libc_csu_init ], %db[3]
 }
 {
   nop 1
   ldw,0 %dr1, 0x0, %r4
 }
 {
   addd,0,sm 0x0, %dr0, %db[5]
   addd,1 %dr1, 0x8, %db[2]
 }
   sxt,0 0x2, %r4, %db[1]
 {
   ipd 3
   call %ctpr1, wbs = 0x4 
 }
 {
   nop 5
   return %ctpr3
   stw,2 0x0, 0x0, %r3
 }
 {
   ct %ctpr3
   ipd 3
 }
.size	$_start, .- $_start

.section ".text"
.align 8
.global $main

$main:
 {
   disp %ctpr1, $puts@plt
   setwd wsz = 0x8, nfx = 0x1, dbl = 0x0
   setbn rsz = 0x3, rbs = 0x4, rcur = 0x0 
   getsp,0 _f32s,_lts1 0xfffffff0, %dr2
 }
 {
   nop 3
   addd,0 0x0, _f64,_lts0 0x10780, %db[0]
 }
 {
   ipd 3
   call %ctpr1, wbs = 0x4 
 }
 {
   nop 5
   return %ctpr3
   addd,3 0x0, 0x0, %dr0
 }
 {
   ct %ctpr3
   ipd 3
 }
.size	$main, .- $main

.section ".text"
.align 8
.global $_init

$_init:
.size	$_init, .- $_init
