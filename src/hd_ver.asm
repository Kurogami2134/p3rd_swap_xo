.psp

.relativeinclude on


LOAD_ADD        equ 0x08800230;
HOOK            equ 0x088A49A0
CtrlReadBuffer  equ 0x089659D8

CROSS_ICON_X    equ 0x089FE84E
CIRCLE_ICON_X1  equ 0x089FE880
CIRCLE_ICON_X2  equ 0x089FE844

ITEM_SCROLL_H   equ 0x0A0FD804
ITEM_SCROLL_V_O equ 0x0A10A008
ITEM_SCROLL_V_X equ 0x0A10A020

PATCH_FILE      equ "007BP"

CHECK_CROSS     equ 0x0A1097AC; AB1AC

.include "main.asm"

.include "battle.asm"
