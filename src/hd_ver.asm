.psp

.relativeinclude on


LOAD_ADD        equ 0x08800230;
HOOK            equ 0x088A49A0
CtrlReadBuffer  equ 0x089659D8

PATCH_FILE      equ "007BP"

CHECK_CROSS     equ 0x0A1097AC; AB1AC

.include "main.asm"

.include "battle.asm"
