	.include "constants/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	.text	

        @ Unused
	thumb_func_start PrintFuncFileLineOrNotEntry
PrintFuncFileLineOrNotEntry:
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	adds r0, r1, 0
	cmp r0, 0
	beq _08011A90
	ldr r1, _08011A8C
	ldr r2, [r0, 0x8]
	ldr r3, [r0]
	ldr r0, [r0, 0x4]
	str r0, [sp]
	adds r0, r4, 0
	bl sprintf
	b _08011A98
	.align 2, 0
_08011A8C: .4byte gUnknown_80D418C
_08011A90:
	ldr r1, _08011AA0
	adds r0, r4, 0
	bl sprintf
_08011A98:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011AA0: .4byte gNotEntryText
	thumb_func_end PrintFuncFileLineOrNotEntry

	thumb_func_start PrintFuncFileLine
PrintFuncFileLine:
	push {r4,r5,lr}
	sub sp, 0x8
	ldr r5, _08011AC4
	ldr r3, [r1, 0x8]
	ldr r4, [r1]
	str r4, [sp]
	ldr r1, [r1, 0x4]
	str r1, [sp, 0x4]
	adds r1, r5, 0
	bl sprintf
	add sp, 0x8
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011AC4: .4byte gUnknown_80D41C4
	thumb_func_end PrintFuncFileLine

        @ Unused
	thumb_func_start PrintMessageWithFuncFileLine
PrintMessageWithFuncFileLine:
	push {r2,r3}
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r0, 0
	adds r5, r1, 0
	ldr r1, [sp, 0x10]
	add r2, sp, 0x14
	bl vsprintf
	adds r0, r4, 0
	bl strlen
	adds r4, r0
	ldr r1, _08011AFC
	ldr r2, [r5, 0x8]
	ldr r3, [r5]
	ldr r0, [r5, 0x4]
	str r0, [sp]
	adds r0, r4, 0
	bl sprintf
	add sp, 0x4
	pop {r4,r5}
	pop {r3}
	add sp, 0x8
	bx r3
	.align 2, 0
_08011AFC: .4byte gUnknown_80D41EC
	thumb_func_end PrintMessageWithFuncFileLine

        .align 2,0 @ Don't pad with nop
