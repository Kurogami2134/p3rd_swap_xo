.createfile "../bin/"+PATCH_FILE, 0

.word CHECK_CROSS
.word 2
.halfword CIRCLE

.word CHECK_CIRCLE1
.word 2
.halfword CROSS
.word CHECK_CIRCLE2
.word 2
.halfword CROSS
.word CHECK_CIRCLE3
.word 2
.halfword CROSS

.word CHECK_CT1
.word 2
.halfword (CROSS | TRIANGLE)
.word CHECK_CT2
.word 2
.halfword (CROSS | TRIANGLE)
.word CHECK_CT3
.word 2
.halfword (CROSS | TRIANGLE)
.word CHECK_CT4
.word 2
.halfword (CROSS | TRIANGLE)

.word CHECK_CTS1
.word 2
.halfword (CROSS | TRIANGLE | SQUARE)
.word CHECK_CTS2
.word 2
.halfword (CROSS | TRIANGLE | SQUARE)
.word CHECK_CTS3
.word 2
.halfword (CROSS | TRIANGLE | SQUARE)

.word -1
.word 0
.close
