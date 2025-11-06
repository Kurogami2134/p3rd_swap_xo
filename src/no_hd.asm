.psp

.relativeinclude on


LOAD_ADD        equ 0x08800230
HOOK            equ 0x088A3334
CtrlReadBuffer  equ 0x08960D40

CROSS_ICON_X    equ 0x089F8826
CIRCLE_ICON_X1  equ 0x089F8844
CIRCLE_ICON_X2  equ 0x089F881C

ITEM_SCROLL_H   equ 0x09CF6E54
ITEM_SCROLL_V_O equ 0x09D03550
ITEM_SCROLL_V_X equ 0x09D03568

PATCH_FILE      equ "0064P"

CHECK_CROSS     equ 0x09D02CF4

.include "main.asm"

.include "battle.asm"
