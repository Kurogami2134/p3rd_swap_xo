.psp

CHECK_CIRCLE1   equ CHECK_CROSS + 0x350
CHECK_CIRCLE2   equ CHECK_CIRCLE1 + 0x130
CHECK_CIRCLE3   equ CHECK_CIRCLE2 + 0xF0

CHECK_CT1       equ CHECK_CROSS - 0x13C
CHECK_CT2       equ CHECK_CROSS - 0x138
CHECK_CT3       equ CHECK_CROSS + 0x370
CHECK_CT4       equ CHECK_CROSS + 0x374

CHECK_CTS1      equ CHECK_CROSS - 0x12C
CHECK_CTS2      equ CHECK_CROSS + 0x314
CHECK_CTS3      equ CHECK_CROSS + 0x538

TRIANGLE        equ 0x1000
CIRCLE          equ 0x2000
CROSS           equ 0x4000
SQUARE          equ 0x8000

.createfile "../bin/swap_xo.bin", LOAD_ADD-8

.word LOAD_ADD
.word @end-LOAD_ADD
.func swap
    jal     CtrlReadBuffer
    nop
    lh      a0, 0x10(sp)
    andi    a1, a0, CROSS
    andi    a2, a0, CIRCLE
    
    beq     a1, zero, @@skip_cross1
    nop
    xori    a0, a0, CROSS
@@skip_cross1:
    beq     a2, zero, @@skip_circle1
    nop
    xori    a0, a0, CIRCLE
@@skip_circle1:

    bnel    a1, zero, @@skip_cross2
    ori     a0, a0, CIRCLE
@@skip_cross2:
    bnel    a2, zero, @@skip_circle2
    ori     a0, a0, CROSS
@@skip_circle2:
    j       HOOK + 8
    sh      a0, 0x10(sp)
.endfunc
@end:

.word HOOK
.word 4
    j       swap

.word CIRCLE_ICON_X1
.word 2
.halfword 0x90

.word CIRCLE_ICON_X2
.word 2
.halfword 0x90

.word CROSS_ICON_X
.word 2
.halfword 0x81

.word -1
.word 0

.close
