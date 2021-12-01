
! function '_start', entry = 56, value = 0x010498, size = 0x0a8, sect = ELF_TEXT num = 13 

0000<000000010498> _start: 
                    getsp,0 _f32s,_lts1 0xffffffc0, %dr2
                    adds,1 0x0, 0x0, %r3
                    disp %ctpr1, $__libc_start_main@plt
                    setwd wsz = 0x8, nfx = 0x1, dbl = 0x0
                    setbn rsz = 0x3, rbs = 0x4, rcur = 0x0 
                  
0001<0000000104b8> :
                    addd,0 0x0, _f64,_lts0 0x105a0 -> main , %db[0]
                    addd,1 0x0, 0x0, %db[6]
                    addd,2 0x0, _f64,_lts2 0x10738 -> __libc_csu_fini , %db[4]
0002<0000000104d8> :
                    addd,0 %dr2, _f64,_lts0 0x40, %dr1
                    addd,1 0x0, _f64,_lts2 0x105f8 -> __libc_csu_init , %db[3]
                    
0003<0000000104f8> :nop 1
                    ldw,0 [ %dr1 + 0x0 ], %r4
0005<000000010500> :
                    addd,0,sm 0x0, %dr0, %db[5]
                    addd,1 %dr1, 0x8, %db[2]
0006<000000010510> :
                    sxt,0 0x2, %r4, %db[1]
0007<000000010518> :
                    ipd 3
                    call %ctpr1, wbs = 0x4 
0008<000000010528> :nop 5
                    stw,2 %r3, [ 0x0 ]
                    return %ctpr3
0014<000000010538> :
                    ct %ctpr3
                    ipd 3

! function 'main', entry = 58, value = 0x0105a0, size = 0x058, sect = ELF_TEXT num = 13 

0000<0000000105a0> main:                                      ! helloworld.c : 4
                    getsp,0 _f32s,_lts1 0xfffffff0, %dr2
                    disp %ctpr1, $puts@plt
                    setwd wsz = 0x8, nfx = 0x1, dbl = 0x0
                    setbn rsz = 0x3, rbs = 0x4, rcur = 0x0 
                  
0001<0000000105c0> :nop 3
                    addd,0 0x0, _f64,_lts0 0x10780, %db[0]
0005<0000000105d0> :
                    ipd 3
                    call %ctpr1, wbs = 0x4 
0006<0000000105e0> :nop 5
                    addd,3 0x0, 0x0, %dr0
                    return %ctpr3
0012<0000000105f0> :
                    ct %ctpr3
                    ipd 3

! function '__libc_csu_init', entry = 54, value = 0x0105f8, size = 0x140, sect = ELF_TEXT num = 13 

0000<0000000105f8> __libc_csu_init: 
                    rrd,0 %ip, %dr11
                    addd,1 0x0, _f64,_lts1 0x1a08, %dr12
                    addd,2 0x0, 0x0, %dr7
                    disp %ctpr2, M_10360
                    setwd wsz = 0xb, nfx = 0x1, dbl = 0x0
                    setbn rsz = 0x3, rbs = 0x7, rcur = 0x0 
                  
0001<000000010620> :
                    getsp,0 _f32s,_lts0 0xffffffe0, %dr4
                  
0002<000000010630> :
                    addd,0 %dr11, %dr12, %dr5
0003<000000010638> :nop 1
                    addd,0,sm %dr5, _f64,_lts0 0xfffffffffffffe00, %dr9
                    addd,1,sm %dr5, _f64,_lts2 0xfffffffffffffe08, %dr4
                    
0005<000000010658> :
                    ipd 3
                    sxt,1,sm 0x2, %r0, %dr10
                    call %ctpr2, wbs = 0x7 
0006<000000010668> :
                    subd,0 %dr4, %dr9, %dr4
                    return %ctpr3
0007<000000010678> :
                    sard,0 %dr4, _f16s,_lts0lo 0x3f, %dr5
0008<000000010688> :
                    andd,0 %dr5, 0x7, %dr5
0009<000000010690> :
                    addd,0 %dr4, %dr5, %dr4
0010<000000010698> :
                    sard,0 %dr4, 0x3, %dr8
0011<0000000106a0> :nop 1
                    cmpbdb,0 0x0, %dr8, %pred0
0013<0000000106a8> :
                    addd,0,sm 0x0, 0x0, %dr6 ? %pred0
0014<0000000106b8> :
                    ct %ctpr3 ? ~ %pred0
                    ipd 3
                    ldd,0,sm [ %dr9 + %dr6 ], %dr0
0015<0000000106c8> :nop
0016<0000000106d0> :nop
0017<0000000106d8> M_106d8:
                    movtd,0,sm %dr0, %ctpr2
                    addd,1,sm 0x0, %dr2, %db[2]
                    addd,2,sm 0x0, %dr1, %db[1]
                    addd,3,sm 0x0, %dr10, %db[0]
                    addd,4 %dr7, 0x1, %dr7
                    addd,5,sm 0x8, %dr6, %dr6
0018<0000000106f8> :nop 7
                    cmpbdb,3 %dr7, %dr8, %pred0
0026<000000010700> :
                    ipd 3
                    call %ctpr2, wbs = 0x7 
0027<000000010710> :nop 4
                    ldd,0 [ %dr9 + %dr6 ], %dr0 ? %pred0
                    disp %ctpr1, M_106d8
0032<000000010720> :
                    ct %ctpr1 ? %pred0
                    ipd 3
0033<000000010728> :nop 5
                    return %ctpr3
0039<000000010730> :
                    ct %ctpr3
                    ipd 3

! function '__libc_csu_fini', entry = 45, value = 0x010738, size = 0x018, sect = ELF_TEXT num = 13 

0000<000000010738> __libc_csu_fini: nop 5
                    return %ctpr3
                    setwd wsz = 0x4, nfx = 0x1, dbl = 0x0
0006<000000010748> :
                    ct %ctpr3
                    ipd 3
