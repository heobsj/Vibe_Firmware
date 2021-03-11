	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"ecp.c"
	.text
.Ltext0:
	.section	.text.mbedtls_zeroize,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_zeroize, %function
mbedtls_zeroize:
.LFB0:
	.file 1 "C:\\Users\\zeste\\Desktop\\CEEDUP\\develop\\nRF52840-fw\\nRF5_SDK_15.3.0_59ac345\\external\\mbedtls\\library\\ecp.c"
	.loc 1 71 50
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI0:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 72 29
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	.loc 1 72 41
	b	.L2
.L3:
	.loc 1 72 51 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #1
	str	r2, [sp, #12]
	.loc 1 72 54 discriminator 3
	movs	r2, #0
	strb	r2, [r3]
.L2:
	.loc 1 72 44 discriminator 1
	ldr	r3, [sp]
	subs	r2, r3, #1
	str	r2, [sp]
	.loc 1 72 41 discriminator 1
	cmp	r3, #0
	bne	.L3
	.loc 1 73 1
	nop
	add	sp, sp, #16
.LCFI1:
	@ sp needed
	bx	lr
.LFE0:
	.size	mbedtls_zeroize, .-mbedtls_zeroize
	.section	.bss.add_count,"aw",%nobits
	.align	2
	.type	add_count, %object
	.size	add_count, 4
add_count:
	.space	4
	.section	.bss.dbl_count,"aw",%nobits
	.align	2
	.type	dbl_count, %object
	.size	dbl_count, 4
dbl_count:
	.space	4
	.section	.bss.mul_count,"aw",%nobits
	.align	2
	.type	mul_count, %object
	.size	mul_count, 4
mul_count:
	.space	4
	.section .rodata
	.align	2
.LC7:
	.ascii	"secp521r1\000"
	.align	2
.LC8:
	.ascii	"brainpoolP512r1\000"
	.align	2
.LC9:
	.ascii	"secp384r1\000"
	.align	2
.LC10:
	.ascii	"brainpoolP384r1\000"
	.align	2
.LC11:
	.ascii	"secp256r1\000"
	.align	2
.LC12:
	.ascii	"secp256k1\000"
	.align	2
.LC13:
	.ascii	"brainpoolP256r1\000"
	.align	2
.LC14:
	.ascii	"secp224r1\000"
	.align	2
.LC15:
	.ascii	"secp224k1\000"
	.align	2
.LC16:
	.ascii	"secp192r1\000"
	.align	2
.LC17:
	.ascii	"secp192k1\000"
	.section	.rodata.ecp_supported_curves,"a"
	.align	2
	.type	ecp_supported_curves, %object
	.size	ecp_supported_curves, 144
ecp_supported_curves:
	.byte	5
	.space	1
	.short	25
	.short	521
	.space	2
	.word	.LC7
	.byte	8
	.space	1
	.short	28
	.short	512
	.space	2
	.word	.LC8
	.byte	4
	.space	1
	.short	24
	.short	384
	.space	2
	.word	.LC9
	.byte	7
	.space	1
	.short	27
	.short	384
	.space	2
	.word	.LC10
	.byte	3
	.space	1
	.short	23
	.short	256
	.space	2
	.word	.LC11
	.byte	12
	.space	1
	.short	22
	.short	256
	.space	2
	.word	.LC12
	.byte	6
	.space	1
	.short	26
	.short	256
	.space	2
	.word	.LC13
	.byte	2
	.space	1
	.short	21
	.short	224
	.space	2
	.word	.LC14
	.byte	11
	.space	1
	.short	20
	.short	224
	.space	2
	.word	.LC15
	.byte	1
	.space	1
	.short	19
	.short	192
	.space	2
	.word	.LC16
	.byte	10
	.space	1
	.short	18
	.short	192
	.space	2
	.word	.LC17
	.byte	0
	.space	1
	.short	0
	.short	0
	.space	2
	.word	0
	.section	.bss.ecp_supported_grp_id,"aw",%nobits
	.align	2
	.type	ecp_supported_grp_id, %object
	.size	ecp_supported_grp_id, 12
ecp_supported_grp_id:
	.space	12
	.section	.text.mbedtls_ecp_curve_list,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_curve_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_curve_list, %function
mbedtls_ecp_curve_list:
.LFB1:
	.loc 1 170 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 171 11
	ldr	r3, .L6
	.loc 1 172 1
	mov	r0, r3
	bx	lr
.L7:
	.align	2
.L6:
	.word	ecp_supported_curves
.LFE1:
	.size	mbedtls_ecp_curve_list, .-mbedtls_ecp_curve_list
	.section	.text.mbedtls_ecp_grp_id_list,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_grp_id_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_grp_id_list, %function
mbedtls_ecp_grp_id_list:
.LFB2:
	.loc 1 178 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI2:
	sub	sp, sp, #12
.LCFI3:
	.loc 1 181 9
	ldr	r3, .L13
	ldr	r3, [r3]
	.loc 1 181 7
	cmp	r3, #0
	bne	.L9
.LBB2:
	.loc 1 183 16
	movs	r3, #0
	str	r3, [sp, #4]
	.loc 1 186 27
	bl	mbedtls_ecp_curve_list
	str	r0, [sp]
	.loc 1 186 9
	b	.L10
.L11:
	.loc 1 190 35
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	str	r2, [sp, #4]
	.loc 1 190 51
	ldr	r2, [sp]
	ldrb	r1, [r2]	@ zero_extendqisi2
	.loc 1 190 39
	ldr	r2, .L13+4
	strb	r1, [r2, r3]
	.loc 1 188 24
	ldr	r3, [sp]
	adds	r3, r3, #12
	str	r3, [sp]
.L10:
	.loc 1 187 24 discriminator 1
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 186 9 discriminator 1
	cmp	r3, #0
	bne	.L11
	.loc 1 192 33
	ldr	r2, .L13+4
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 194 19
	ldr	r3, .L13
	movs	r2, #1
	str	r2, [r3]
.L9:
.LBE2:
	.loc 1 197 11
	ldr	r3, .L13+4
	.loc 1 198 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI4:
	@ sp needed
	ldr	pc, [sp], #4
.L14:
	.align	2
.L13:
	.word	init_done.6092
	.word	ecp_supported_grp_id
.LFE2:
	.size	mbedtls_ecp_grp_id_list, .-mbedtls_ecp_grp_id_list
	.section	.text.mbedtls_ecp_curve_info_from_grp_id,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_curve_info_from_grp_id
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_curve_info_from_grp_id, %function
mbedtls_ecp_curve_info_from_grp_id:
.LFB3:
	.loc 1 204 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI5:
	sub	sp, sp, #20
.LCFI6:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 207 23
	bl	mbedtls_ecp_curve_list
	str	r0, [sp, #12]
	.loc 1 207 5
	b	.L16
.L19:
	.loc 1 211 23
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 211 11
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L17
	.loc 1 212 19
	ldr	r3, [sp, #12]
	b	.L18
.L17:
	.loc 1 209 20
	ldr	r3, [sp, #12]
	adds	r3, r3, #12
	str	r3, [sp, #12]
.L16:
	.loc 1 208 20 discriminator 1
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 207 5 discriminator 1
	cmp	r3, #0
	bne	.L19
	.loc 1 215 11
	movs	r3, #0
.L18:
	.loc 1 216 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI7:
	@ sp needed
	ldr	pc, [sp], #4
.LFE3:
	.size	mbedtls_ecp_curve_info_from_grp_id, .-mbedtls_ecp_curve_info_from_grp_id
	.section	.text.mbedtls_ecp_curve_info_from_tls_id,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_curve_info_from_tls_id
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_curve_info_from_tls_id, %function
mbedtls_ecp_curve_info_from_tls_id:
.LFB4:
	.loc 1 222 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI8:
	sub	sp, sp, #20
.LCFI9:
	mov	r3, r0
	strh	r3, [sp, #6]	@ movhi
	.loc 1 225 23
	bl	mbedtls_ecp_curve_list
	str	r0, [sp, #12]
	.loc 1 225 5
	b	.L21
.L24:
	.loc 1 229 23
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #2]
	.loc 1 229 11
	ldrh	r2, [sp, #6]
	cmp	r2, r3
	bne	.L22
	.loc 1 230 19
	ldr	r3, [sp, #12]
	b	.L23
.L22:
	.loc 1 227 20
	ldr	r3, [sp, #12]
	adds	r3, r3, #12
	str	r3, [sp, #12]
.L21:
	.loc 1 226 20 discriminator 1
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 225 5 discriminator 1
	cmp	r3, #0
	bne	.L24
	.loc 1 233 11
	movs	r3, #0
.L23:
	.loc 1 234 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI10:
	@ sp needed
	ldr	pc, [sp], #4
.LFE4:
	.size	mbedtls_ecp_curve_info_from_tls_id, .-mbedtls_ecp_curve_info_from_tls_id
	.section	.text.mbedtls_ecp_curve_info_from_name,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_curve_info_from_name
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_curve_info_from_name, %function
mbedtls_ecp_curve_info_from_name:
.LFB5:
	.loc 1 240 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI11:
	sub	sp, sp, #20
.LCFI12:
	str	r0, [sp, #4]
	.loc 1 243 23
	bl	mbedtls_ecp_curve_list
	str	r0, [sp, #12]
	.loc 1 243 5
	b	.L26
.L29:
	.loc 1 247 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	strcmp
	mov	r3, r0
	.loc 1 247 11
	cmp	r3, #0
	bne	.L27
	.loc 1 248 19
	ldr	r3, [sp, #12]
	b	.L28
.L27:
	.loc 1 245 20
	ldr	r3, [sp, #12]
	adds	r3, r3, #12
	str	r3, [sp, #12]
.L26:
	.loc 1 244 20 discriminator 1
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 243 5 discriminator 1
	cmp	r3, #0
	bne	.L29
	.loc 1 251 11
	movs	r3, #0
.L28:
	.loc 1 252 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI13:
	@ sp needed
	ldr	pc, [sp], #4
.LFE5:
	.size	mbedtls_ecp_curve_info_from_name, .-mbedtls_ecp_curve_info_from_name
	.section	.text.ecp_get_type,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_get_type, %function
ecp_get_type:
.LFB6:
	.loc 1 258 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI14:
	str	r0, [sp, #4]
	.loc 1 259 17
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #48]
	.loc 1 259 7
	cmp	r3, #0
	bne	.L31
	.loc 1 260 15
	movs	r3, #0
	b	.L32
.L31:
	.loc 1 262 17
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #60]
	.loc 1 262 7
	cmp	r3, #0
	bne	.L33
	.loc 1 263 15
	movs	r3, #2
	b	.L32
.L33:
	.loc 1 265 15
	movs	r3, #1
.L32:
	.loc 1 266 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI15:
	@ sp needed
	bx	lr
.LFE6:
	.size	ecp_get_type, .-ecp_get_type
	.section	.text.mbedtls_ecp_point_init,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_point_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_point_init, %function
mbedtls_ecp_point_init:
.LFB7:
	.loc 1 272 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI16:
	sub	sp, sp, #12
.LCFI17:
	str	r0, [sp, #4]
	.loc 1 273 7
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L37
	.loc 1 276 5
	ldr	r3, [sp, #4]
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 277 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 278 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	mbedtls_mpi_init
	b	.L34
.L37:
	.loc 1 274 9
	nop
.L34:
	.loc 1 279 1
	add	sp, sp, #12
.LCFI18:
	@ sp needed
	ldr	pc, [sp], #4
.LFE7:
	.size	mbedtls_ecp_point_init, .-mbedtls_ecp_point_init
	.section	.text.mbedtls_ecp_group_init,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_group_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_group_init, %function
mbedtls_ecp_group_init:
.LFB8:
	.loc 1 285 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI19:
	sub	sp, sp, #12
.LCFI20:
	str	r0, [sp, #4]
	.loc 1 286 7
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L41
	.loc 1 289 5
	movs	r2, #124
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	memset
	b	.L38
.L41:
	.loc 1 287 9
	nop
.L38:
	.loc 1 290 1
	add	sp, sp, #12
.LCFI21:
	@ sp needed
	ldr	pc, [sp], #4
.LFE8:
	.size	mbedtls_ecp_group_init, .-mbedtls_ecp_group_init
	.section	.text.mbedtls_ecp_keypair_init,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_keypair_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_keypair_init, %function
mbedtls_ecp_keypair_init:
.LFB9:
	.loc 1 296 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI22:
	sub	sp, sp, #12
.LCFI23:
	str	r0, [sp, #4]
	.loc 1 297 7
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L45
	.loc 1 300 5
	ldr	r3, [sp, #4]
	mov	r0, r3
	bl	mbedtls_ecp_group_init
	.loc 1 301 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #124
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 302 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #136
	mov	r0, r3
	bl	mbedtls_ecp_point_init
	b	.L42
.L45:
	.loc 1 298 9
	nop
.L42:
	.loc 1 303 1
	add	sp, sp, #12
.LCFI24:
	@ sp needed
	ldr	pc, [sp], #4
.LFE9:
	.size	mbedtls_ecp_keypair_init, .-mbedtls_ecp_keypair_init
	.section	.text.mbedtls_ecp_point_free,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_point_free
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_point_free, %function
mbedtls_ecp_point_free:
.LFB10:
	.loc 1 309 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI25:
	sub	sp, sp, #12
.LCFI26:
	str	r0, [sp, #4]
	.loc 1 310 7
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L49
	.loc 1 313 5
	ldr	r3, [sp, #4]
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 314 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 315 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	mbedtls_mpi_free
	b	.L46
.L49:
	.loc 1 311 9
	nop
.L46:
	.loc 1 316 1
	add	sp, sp, #12
.LCFI27:
	@ sp needed
	ldr	pc, [sp], #4
.LFE10:
	.size	mbedtls_ecp_point_free, .-mbedtls_ecp_point_free
	.section	.text.mbedtls_ecp_group_free,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_group_free
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_group_free, %function
mbedtls_ecp_group_free:
.LFB11:
	.loc 1 322 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI28:
	sub	sp, sp, #20
.LCFI29:
	str	r0, [sp, #4]
	.loc 1 325 7
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L57
	.loc 1 328 12
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #96]
	.loc 1 328 7
	cmp	r3, #1
	beq	.L53
	.loc 1 330 9
	ldr	r3, [sp, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 331 9
	ldr	r3, [sp, #4]
	adds	r3, r3, #16
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 332 9
	ldr	r3, [sp, #4]
	adds	r3, r3, #28
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 333 9
	ldr	r3, [sp, #4]
	adds	r3, r3, #40
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	.loc 1 334 9
	ldr	r3, [sp, #4]
	adds	r3, r3, #76
	mov	r0, r3
	bl	mbedtls_mpi_free
.L53:
	.loc 1 337 12
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #116]
	.loc 1 337 7
	cmp	r3, #0
	beq	.L54
	.loc 1 339 16
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 339 9
	b	.L55
.L56:
	.loc 1 340 41 discriminator 3
	ldr	r3, [sp, #4]
	ldr	r1, [r3, #116]
	.loc 1 340 44 discriminator 3
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	.loc 1 340 13 discriminator 3
	add	r3, r3, r1
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	.loc 1 339 39 discriminator 3
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.L55:
	.loc 1 339 28 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #120]
	.loc 1 339 9 discriminator 1
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcc	.L56
	.loc 1 341 26
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #116]
	.loc 1 341 9
	mov	r0, r3
	bl	free
.L54:
	.loc 1 344 5
	movs	r1, #124
	ldr	r0, [sp, #4]
	bl	mbedtls_zeroize
	b	.L50
.L57:
	.loc 1 326 9
	nop
.L50:
	.loc 1 345 1
	add	sp, sp, #20
.LCFI30:
	@ sp needed
	ldr	pc, [sp], #4
.LFE11:
	.size	mbedtls_ecp_group_free, .-mbedtls_ecp_group_free
	.section	.text.mbedtls_ecp_keypair_free,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_keypair_free
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_keypair_free, %function
mbedtls_ecp_keypair_free:
.LFB12:
	.loc 1 351 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI31:
	sub	sp, sp, #12
.LCFI32:
	str	r0, [sp, #4]
	.loc 1 352 7
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L61
	.loc 1 355 5
	ldr	r3, [sp, #4]
	mov	r0, r3
	bl	mbedtls_ecp_group_free
	.loc 1 356 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #124
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 357 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #136
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	b	.L58
.L61:
	.loc 1 353 9
	nop
.L58:
	.loc 1 358 1
	add	sp, sp, #12
.LCFI33:
	@ sp needed
	ldr	pc, [sp], #4
.LFE12:
	.size	mbedtls_ecp_keypair_free, .-mbedtls_ecp_keypair_free
	.section	.text.mbedtls_ecp_copy,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_copy
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_copy, %function
mbedtls_ecp_copy:
.LFB13:
	.loc 1 364 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI34:
	sub	sp, sp, #20
.LCFI35:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 367 5
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_copy
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L67
	.loc 1 368 5
	ldr	r3, [sp, #4]
	add	r2, r3, #12
	ldr	r3, [sp]
	adds	r3, r3, #12
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_copy
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L68
	.loc 1 369 5
	ldr	r3, [sp, #4]
	add	r2, r3, #24
	ldr	r3, [sp]
	adds	r3, r3, #24
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_copy
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	.loc 1 371 1
	b	.L64
.L67:
	.loc 1 367 5
	nop
	b	.L64
.L68:
	.loc 1 368 5
	nop
.L64:
	.loc 1 372 11
	ldr	r3, [sp, #12]
	.loc 1 373 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI36:
	@ sp needed
	ldr	pc, [sp], #4
.LFE13:
	.size	mbedtls_ecp_copy, .-mbedtls_ecp_copy
	.section	.text.mbedtls_ecp_group_copy,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_group_copy
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_group_copy, %function
mbedtls_ecp_group_copy:
.LFB14:
	.loc 1 379 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI37:
	sub	sp, sp, #12
.LCFI38:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 380 12
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	mbedtls_ecp_group_load
	mov	r3, r0
	.loc 1 381 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI39:
	@ sp needed
	ldr	pc, [sp], #4
.LFE14:
	.size	mbedtls_ecp_group_copy, .-mbedtls_ecp_group_copy
	.section	.text.mbedtls_ecp_set_zero,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_set_zero
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_set_zero, %function
mbedtls_ecp_set_zero:
.LFB15:
	.loc 1 387 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI40:
	sub	sp, sp, #20
.LCFI41:
	str	r0, [sp, #4]
	.loc 1 390 5
	ldr	r3, [sp, #4]
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L76
	.loc 1 391 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #12
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L77
	.loc 1 392 5
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	.loc 1 394 1
	b	.L73
.L76:
	.loc 1 390 5
	nop
	b	.L73
.L77:
	.loc 1 391 5
	nop
.L73:
	.loc 1 395 11
	ldr	r3, [sp, #12]
	.loc 1 396 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI42:
	@ sp needed
	ldr	pc, [sp], #4
.LFE15:
	.size	mbedtls_ecp_set_zero, .-mbedtls_ecp_set_zero
	.section	.text.mbedtls_ecp_is_zero,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_is_zero
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_is_zero, %function
mbedtls_ecp_is_zero:
.LFB16:
	.loc 1 402 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI43:
	sub	sp, sp, #12
.LCFI44:
	str	r0, [sp, #4]
	.loc 1 403 34
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	.loc 1 403 13
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 403 46
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	.loc 1 404 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI45:
	@ sp needed
	ldr	pc, [sp], #4
.LFE16:
	.size	mbedtls_ecp_is_zero, .-mbedtls_ecp_is_zero
	.section	.text.mbedtls_ecp_point_cmp,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_point_cmp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_point_cmp, %function
mbedtls_ecp_point_cmp:
.LFB17:
	.loc 1 411 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI46:
	sub	sp, sp, #12
.LCFI47:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 412 9
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 412 7
	cmp	r3, #0
	bne	.L81
	.loc 1 413 9 discriminator 1
	ldr	r3, [sp, #4]
	add	r2, r3, #12
	ldr	r3, [sp]
	adds	r3, r3, #12
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 412 50 discriminator 1
	cmp	r3, #0
	bne	.L81
	.loc 1 414 9
	ldr	r3, [sp, #4]
	add	r2, r3, #24
	ldr	r3, [sp]
	adds	r3, r3, #24
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 413 50
	cmp	r3, #0
	bne	.L81
	.loc 1 416 15
	movs	r3, #0
	b	.L82
.L81:
	.loc 1 419 11
	ldr	r3, .L83
.L82:
	.loc 1 420 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI48:
	@ sp needed
	ldr	pc, [sp], #4
.L84:
	.align	2
.L83:
	.word	-20352
.LFE17:
	.size	mbedtls_ecp_point_cmp, .-mbedtls_ecp_point_cmp
	.section	.text.mbedtls_ecp_point_read_string,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_point_read_string
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_point_read_string, %function
mbedtls_ecp_point_read_string:
.LFB18:
	.loc 1 427 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI49:
	sub	sp, sp, #28
.LCFI50:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 430 5
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	mbedtls_mpi_read_string
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L90
	.loc 1 431 5
	ldr	r3, [sp, #12]
	adds	r3, r3, #12
	ldr	r2, [sp]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	mbedtls_mpi_read_string
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L91
	.loc 1 432 5
	ldr	r3, [sp, #12]
	adds	r3, r3, #24
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	.loc 1 434 1
	b	.L87
.L90:
	.loc 1 430 5
	nop
	b	.L87
.L91:
	.loc 1 431 5
	nop
.L87:
	.loc 1 435 11
	ldr	r3, [sp, #20]
	.loc 1 436 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI51:
	@ sp needed
	ldr	pc, [sp], #4
.LFE18:
	.size	mbedtls_ecp_point_read_string, .-mbedtls_ecp_point_read_string
	.section	.text.mbedtls_ecp_point_write_binary,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_point_write_binary
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_point_write_binary, %function
mbedtls_ecp_point_write_binary:
.LFB19:
	.loc 1 444 1
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI52:
	sub	sp, sp, #28
.LCFI53:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 445 9
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 448 7
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L93
	.loc 1 448 47 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #1
	beq	.L93
	.loc 1 450 15
	ldr	r3, .L104
	b	.L94
.L93:
	.loc 1 455 9
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 455 7
	cmp	r3, #0
	bne	.L95
	.loc 1 457 11
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L96
	.loc 1 458 19
	ldr	r3, .L104+4
	b	.L94
.L96:
	.loc 1 460 16
	ldr	r3, [sp, #32]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 461 15
	ldr	r3, [sp]
	movs	r2, #1
	str	r2, [r3]
	.loc 1 463 15
	movs	r3, #0
	b	.L94
.L95:
	.loc 1 466 12
	ldr	r3, [sp, #12]
	adds	r3, r3, #4
	mov	r0, r3
	bl	mbedtls_mpi_size
	str	r0, [sp, #16]
	.loc 1 468 7
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L97
	.loc 1 470 19
	ldr	r3, [sp, #16]
	lsls	r3, r3, #1
	.loc 1 470 26
	adds	r2, r3, #1
	.loc 1 470 15
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 1 472 22
	ldr	r3, [sp]
	ldr	r3, [r3]
	.loc 1 472 11
	ldr	r2, [sp, #36]
	cmp	r2, r3
	bcs	.L98
	.loc 1 473 19
	ldr	r3, .L104+4
	b	.L94
.L98:
	.loc 1 475 16
	ldr	r3, [sp, #32]
	movs	r2, #4
	strb	r2, [r3]
	.loc 1 476 9
	ldr	r0, [sp, #8]
	ldr	r3, [sp, #32]
	adds	r3, r3, #1
	ldr	r2, [sp, #16]
	mov	r1, r3
	bl	mbedtls_mpi_write_binary
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L102
	.loc 1 477 9
	ldr	r3, [sp, #8]
	add	r0, r3, #12
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	ldr	r2, [sp, #32]
	add	r3, r3, r2
	ldr	r2, [sp, #16]
	mov	r1, r3
	bl	mbedtls_mpi_write_binary
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	b	.L100
.L97:
	.loc 1 479 12
	ldr	r3, [sp, #4]
	cmp	r3, #1
	bne	.L103
	.loc 1 481 22
	ldr	r3, [sp, #16]
	adds	r2, r3, #1
	.loc 1 481 15
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 1 483 22
	ldr	r3, [sp]
	ldr	r3, [r3]
	.loc 1 483 11
	ldr	r2, [sp, #36]
	cmp	r2, r3
	bcs	.L101
	.loc 1 484 19
	ldr	r3, .L104+4
	b	.L94
.L101:
	.loc 1 486 25
	ldr	r3, [sp, #8]
	adds	r3, r3, #12
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_get_bit
	mov	r3, r0
	.loc 1 486 23
	uxtb	r3, r3
	adds	r3, r3, #2
	uxtb	r2, r3
	.loc 1 486 16
	ldr	r3, [sp, #32]
	strb	r2, [r3]
	.loc 1 487 9
	ldr	r0, [sp, #8]
	ldr	r3, [sp, #32]
	adds	r3, r3, #1
	ldr	r2, [sp, #16]
	mov	r1, r3
	bl	mbedtls_mpi_write_binary
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	.loc 1 490 1
	b	.L103
.L102:
	.loc 1 476 9
	nop
	b	.L100
.L103:
	.loc 1 490 1
	nop
.L100:
	.loc 1 491 11
	ldr	r3, [sp, #20]
.L94:
	.loc 1 492 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI54:
	@ sp needed
	ldr	pc, [sp], #4
.L105:
	.align	2
.L104:
	.word	-20352
	.word	-20224
.LFE19:
	.size	mbedtls_ecp_point_write_binary, .-mbedtls_ecp_point_write_binary
	.section	.text.mbedtls_ecp_point_read_binary,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_point_read_binary
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_point_read_binary, %function
mbedtls_ecp_point_read_binary:
.LFB20:
	.loc 1 499 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI55:
	sub	sp, sp, #28
.LCFI56:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 503 7
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L107
	.loc 1 504 15
	ldr	r3, .L118
	b	.L108
.L107:
	.loc 1 506 12
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 506 7
	cmp	r3, #0
	bne	.L109
	.loc 1 508 11
	ldr	r3, [sp]
	cmp	r3, #1
	bne	.L110
	.loc 1 509 21
	ldr	r0, [sp, #8]
	bl	mbedtls_ecp_set_zero
	mov	r3, r0
	b	.L108
.L110:
	.loc 1 511 19
	ldr	r3, .L118
	b	.L108
.L109:
	.loc 1 514 12
	ldr	r3, [sp, #12]
	adds	r3, r3, #4
	mov	r0, r3
	bl	mbedtls_mpi_size
	str	r0, [sp, #16]
	.loc 1 516 12
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 516 7
	cmp	r3, #4
	beq	.L111
	.loc 1 517 15
	ldr	r3, .L118+4
	b	.L108
.L111:
	.loc 1 519 19
	ldr	r3, [sp, #16]
	lsls	r3, r3, #1
	.loc 1 519 26
	adds	r3, r3, #1
	.loc 1 519 7
	ldr	r2, [sp]
	cmp	r2, r3
	beq	.L112
	.loc 1 520 15
	ldr	r3, .L118
	b	.L108
.L112:
	.loc 1 522 5
	ldr	r0, [sp, #8]
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	ldr	r2, [sp, #16]
	mov	r1, r3
	bl	mbedtls_mpi_read_binary
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L116
	.loc 1 523 5
	ldr	r3, [sp, #8]
	add	r0, r3, #12
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	ldr	r2, [sp, #16]
	mov	r1, r3
	bl	mbedtls_mpi_read_binary
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L117
	.loc 1 524 5
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	.loc 1 526 1
	b	.L114
.L116:
	.loc 1 522 5
	nop
	b	.L114
.L117:
	.loc 1 523 5
	nop
.L114:
	.loc 1 527 11
	ldr	r3, [sp, #20]
.L108:
	.loc 1 528 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI57:
	@ sp needed
	ldr	pc, [sp], #4
.L119:
	.align	2
.L118:
	.word	-20352
	.word	-20096
.LFE20:
	.size	mbedtls_ecp_point_read_binary, .-mbedtls_ecp_point_read_binary
	.section	.text.mbedtls_ecp_tls_read_point,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_tls_read_point
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_tls_read_point, %function
mbedtls_ecp_tls_read_point:
.LFB21:
	.loc 1 538 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI58:
	sub	sp, sp, #28
.LCFI59:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 545 7
	ldr	r3, [sp]
	cmp	r3, #1
	bhi	.L121
	.loc 1 546 15
	ldr	r3, .L125
	b	.L122
.L121:
	.loc 1 548 18
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 548 23
	adds	r1, r3, #1
	ldr	r2, [sp, #4]
	str	r1, [r2]
	.loc 1 548 14
	ldrb	r3, [r3]
	strb	r3, [sp, #23]
	.loc 1 549 7
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L123
	.loc 1 549 34 discriminator 1
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	.loc 1 549 44 discriminator 1
	ldr	r3, [sp]
	subs	r3, r3, #1
	.loc 1 549 22 discriminator 1
	cmp	r2, r3
	bls	.L124
.L123:
	.loc 1 550 15
	ldr	r3, .L125
	b	.L122
.L124:
	.loc 1 555 15
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	.loc 1 556 10
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 558 12
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	mbedtls_ecp_point_read_binary
	mov	r3, r0
.L122:
	.loc 1 559 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI60:
	@ sp needed
	ldr	pc, [sp], #4
.L126:
	.align	2
.L125:
	.word	-20352
.LFE21:
	.size	mbedtls_ecp_tls_read_point, .-mbedtls_ecp_tls_read_point
	.section	.text.mbedtls_ecp_tls_write_point,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_tls_write_point
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_tls_write_point, %function
mbedtls_ecp_tls_write_point:
.LFB22:
	.loc 1 570 1
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI61:
	sub	sp, sp, #36
.LCFI62:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 576 7
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bne	.L128
	.loc 1 577 15
	ldr	r3, .L131
	b	.L129
.L128:
	.loc 1 579 17
	ldr	r3, [sp, #40]
	adds	r3, r3, #1
	ldr	r2, [sp, #44]
	subs	r2, r2, #1
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	mbedtls_ecp_point_write_binary
	str	r0, [sp, #28]
	.loc 1 579 7
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L130
	.loc 1 581 15
	ldr	r3, [sp, #28]
	b	.L129
.L130:
	.loc 1 586 30
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	.loc 1 586 14
	uxtb	r2, r3
	.loc 1 586 12
	ldr	r3, [sp, #40]
	strb	r2, [r3]
	.loc 1 587 7
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	.loc 1 587 5
	adds	r2, r3, #1
	ldr	r3, [sp, #8]
	str	r2, [r3]
	.loc 1 589 11
	movs	r3, #0
.L129:
	.loc 1 590 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI63:
	@ sp needed
	ldr	pc, [sp], #4
.L132:
	.align	2
.L131:
	.word	-20352
.LFE22:
	.size	mbedtls_ecp_tls_write_point, .-mbedtls_ecp_tls_write_point
	.section	.text.mbedtls_ecp_tls_read_group,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_tls_read_group
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_tls_read_group, %function
mbedtls_ecp_tls_read_group:
.LFB23:
	.loc 1 596 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI64:
	sub	sp, sp, #28
.LCFI65:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 603 7
	ldr	r3, [sp, #4]
	cmp	r3, #2
	bhi	.L134
	.loc 1 604 15
	ldr	r3, .L138
	b	.L135
.L134:
	.loc 1 609 11
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	.loc 1 609 16
	adds	r1, r3, #1
	ldr	r2, [sp, #8]
	str	r1, [r2]
	.loc 1 609 9
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 609 7
	cmp	r3, #3
	beq	.L136
	.loc 1 610 15
	ldr	r3, .L138
	b	.L135
.L136:
	.loc 1 615 16
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	.loc 1 615 21
	adds	r1, r3, #1
	ldr	r2, [sp, #8]
	str	r1, [r2]
	.loc 1 615 14
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 615 12
	strh	r3, [sp, #22]	@ movhi
	.loc 1 616 12
	ldrh	r3, [sp, #22]	@ movhi
	lsls	r3, r3, #8
	strh	r3, [sp, #22]	@ movhi
	.loc 1 617 17
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	.loc 1 617 22
	adds	r1, r3, #1
	ldr	r2, [sp, #8]
	str	r1, [r2]
	.loc 1 617 15
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	.loc 1 617 12
	ldrh	r3, [sp, #22]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [sp, #22]	@ movhi
	.loc 1 619 24
	ldrh	r3, [sp, #22]
	mov	r0, r3
	bl	mbedtls_ecp_curve_info_from_tls_id
	str	r0, [sp, #16]
	.loc 1 619 7
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L137
	.loc 1 620 15
	ldr	r3, .L138+4
	b	.L135
.L137:
	.loc 1 622 12
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	mbedtls_ecp_group_load
	mov	r3, r0
.L135:
	.loc 1 623 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI66:
	@ sp needed
	ldr	pc, [sp], #4
.L139:
	.align	2
.L138:
	.word	-20352
	.word	-20096
.LFE23:
	.size	mbedtls_ecp_tls_read_group, .-mbedtls_ecp_tls_read_group
	.section	.text.mbedtls_ecp_tls_write_group,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_tls_write_group
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_tls_write_group, %function
mbedtls_ecp_tls_write_group:
.LFB24:
	.loc 1 630 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI67:
	sub	sp, sp, #28
.LCFI68:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 633 24
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	mbedtls_ecp_curve_info_from_grp_id
	str	r0, [sp, #20]
	.loc 1 633 7
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L141
	.loc 1 634 15
	ldr	r3, .L144
	b	.L142
.L141:
	.loc 1 639 11
	ldr	r3, [sp, #8]
	movs	r2, #3
	str	r2, [r3]
	.loc 1 640 16
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	.loc 1 640 7
	ldr	r2, [sp]
	cmp	r2, r3
	bcs	.L143
	.loc 1 641 15
	ldr	r3, .L144+4
	b	.L142
.L143:
	.loc 1 646 9
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	str	r2, [sp, #4]
	.loc 1 646 12
	movs	r2, #3
	strb	r2, [r3]
	.loc 1 651 24
	ldr	r3, [sp, #20]
	ldrh	r3, [r3, #2]
	.loc 1 651 12
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 652 24
	ldr	r3, [sp, #20]
	ldrh	r2, [r3, #2]
	.loc 1 652 8
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	.loc 1 652 12
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 654 11
	movs	r3, #0
.L142:
	.loc 1 655 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI69:
	@ sp needed
	ldr	pc, [sp], #4
.L145:
	.align	2
.L144:
	.word	-20352
	.word	-20224
.LFE24:
	.size	mbedtls_ecp_tls_write_group, .-mbedtls_ecp_tls_write_group
	.section	.text.ecp_modp,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_modp, %function
ecp_modp:
.LFB25:
	.loc 1 664 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI70:
	sub	sp, sp, #20
.LCFI71:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 667 12
	ldr	r3, [sp]
	ldr	r3, [r3, #100]
	.loc 1 667 7
	cmp	r3, #0
	bne	.L147
	.loc 1 668 17
	ldr	r3, [sp]
	adds	r3, r3, #4
	mov	r2, r3
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #4]
	bl	mbedtls_mpi_mod_mpi
	mov	r3, r0
	b	.L148
.L147:
	.loc 1 671 12
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 671 7
	cmp	r3, #0
	bge	.L149
	.loc 1 671 23 discriminator 1
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 671 20 discriminator 1
	cmp	r3, #0
	bne	.L150
.L149:
	.loc 1 672 9 discriminator 3
	ldr	r0, [sp, #4]
	bl	mbedtls_mpi_bitlen
	mov	r2, r0
	.loc 1 672 42 discriminator 3
	ldr	r3, [sp]
	ldr	r3, [r3, #88]
	.loc 1 672 37 discriminator 3
	lsls	r3, r3, #1
	.loc 1 671 58 discriminator 3
	cmp	r2, r3
	bls	.L151
.L150:
	.loc 1 674 15
	ldr	r3, .L162
	b	.L148
.L151:
	.loc 1 677 5
	ldr	r3, [sp]
	ldr	r3, [r3, #100]
	ldr	r0, [sp, #4]
	blx	r3
.LVL0:
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L159
	.loc 1 680 10
	b	.L154
.L156:
	.loc 1 681 9
	ldr	r3, [sp]
	adds	r3, r3, #4
	mov	r2, r3
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #4]
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L160
.L154:
	.loc 1 680 13
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 680 10
	cmp	r3, #0
	bge	.L157
	.loc 1 680 24 discriminator 1
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 680 21 discriminator 1
	cmp	r3, #0
	bne	.L156
	.loc 1 683 10
	b	.L157
.L158:
	.loc 1 685 9
	ldr	r3, [sp]
	adds	r3, r3, #4
	mov	r2, r3
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #4]
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L161
.L157:
	.loc 1 683 12
	ldr	r3, [sp]
	adds	r3, r3, #4
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 683 10
	cmp	r3, #0
	bge	.L158
	.loc 1 687 1
	b	.L153
.L159:
	.loc 1 677 5
	nop
	b	.L153
.L160:
	.loc 1 681 9
	nop
	b	.L153
.L161:
	.loc 1 685 9
	nop
.L153:
	.loc 1 688 11
	ldr	r3, [sp, #12]
.L148:
	.loc 1 689 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI72:
	@ sp needed
	ldr	pc, [sp], #4
.L163:
	.align	2
.L162:
	.word	-20352
.LFE25:
	.size	ecp_modp, .-ecp_modp
	.section	.text.ecp_normalize_jac,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_normalize_jac, %function
ecp_normalize_jac:
.LFB26:
	.loc 1 744 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI73:
	sub	sp, sp, #44
.LCFI74:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 748 30
	ldr	r3, [sp]
	adds	r3, r3, #24
	.loc 1 748 9
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 748 7
	cmp	r3, #0
	bne	.L165
	.loc 1 749 15
	movs	r3, #0
	b	.L177
.L165:
	.loc 1 751 5
	add	r3, sp, #24
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 751 30
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 756 5
	ldr	r3, [sp]
	add	r1, r3, #24
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	add	r3, sp, #24
	mov	r0, r3
	bl	mbedtls_mpi_inv_mod
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L178
	.loc 1 757 5
	add	r2, sp, #24
	add	r1, sp, #24
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L179
	.loc 1 757 78 discriminator 2
	add	r3, sp, #12
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L180
	.loc 1 757 78 is_stmt 0 discriminator 4
	ldr	r3, .L187
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L187
	str	r3, [r2]
	.loc 1 758 5 is_stmt 1 discriminator 4
	ldr	r3, [sp]
	ldr	r1, [sp]
	add	r2, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L181
	.loc 1 758 78 discriminator 2
	ldr	r3, [sp]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L182
	.loc 1 758 78 is_stmt 0 discriminator 4
	ldr	r3, .L187
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L187
	str	r3, [r2]
	.loc 1 763 5 is_stmt 1 discriminator 4
	ldr	r3, [sp]
	add	r0, r3, #12
	ldr	r3, [sp]
	adds	r3, r3, #12
	add	r2, sp, #12
	mov	r1, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L183
	.loc 1 763 78 discriminator 2
	ldr	r3, [sp]
	adds	r3, r3, #12
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L184
	.loc 1 763 78 is_stmt 0 discriminator 4
	ldr	r3, .L187
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L187
	str	r3, [r2]
	.loc 1 764 5 is_stmt 1 discriminator 4
	ldr	r3, [sp]
	add	r0, r3, #12
	ldr	r3, [sp]
	adds	r3, r3, #12
	add	r2, sp, #24
	mov	r1, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L185
	.loc 1 764 78 discriminator 2
	ldr	r3, [sp]
	adds	r3, r3, #12
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L186
	.loc 1 764 78 is_stmt 0 discriminator 4
	ldr	r3, .L187
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L187
	str	r3, [r2]
	.loc 1 769 5 is_stmt 1 discriminator 4
	ldr	r3, [sp]
	adds	r3, r3, #24
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	.loc 1 771 1 discriminator 4
	b	.L168
.L178:
	.loc 1 756 5
	nop
	b	.L168
.L179:
	.loc 1 757 5
	nop
	b	.L168
.L180:
	.loc 1 757 78
	nop
	b	.L168
.L181:
	.loc 1 758 5
	nop
	b	.L168
.L182:
	.loc 1 758 78
	nop
	b	.L168
.L183:
	.loc 1 763 5
	nop
	b	.L168
.L184:
	.loc 1 763 78
	nop
	b	.L168
.L185:
	.loc 1 764 5
	nop
	b	.L168
.L186:
	.loc 1 764 78
	nop
.L168:
	.loc 1 773 5
	add	r3, sp, #24
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 773 30
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 775 11
	ldr	r3, [sp, #36]
.L177:
	.loc 1 776 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #44
.LCFI75:
	@ sp needed
	ldr	pc, [sp], #4
.L188:
	.align	2
.L187:
	.word	mul_count
.LFE26:
	.size	ecp_normalize_jac, .-ecp_normalize_jac
	.section	.text.ecp_normalize_jac_many,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_normalize_jac_many, %function
ecp_normalize_jac_many:
.LFB27:
	.loc 1 791 1
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI76:
	sub	sp, sp, #68
.LCFI77:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 796 7
	ldr	r3, [sp, #4]
	cmp	r3, #1
	bhi	.L190
	.loc 1 797 17
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	ecp_normalize_jac
	mov	r3, r0
	b	.L220
.L190:
	.loc 1 799 15
	movs	r1, #12
	ldr	r0, [sp, #4]
	bl	calloc
	str	r0, [sp, #52]
	.loc 1 799 7
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L192
	.loc 1 800 15
	ldr	r3, .L240
	b	.L220
.L192:
	.loc 1 802 5
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 802 29
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 802 54
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 807 5
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	adds	r3, r3, #24
	mov	r1, r3
	ldr	r0, [sp, #52]
	bl	mbedtls_mpi_copy
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L221
	.loc 1 808 12
	movs	r3, #1
	str	r3, [sp, #56]
	.loc 1 808 5
	b	.L195
.L198:
	.loc 1 810 9
	ldr	r2, [sp, #56]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #52]
	adds	r0, r3, r2
	ldr	r2, [sp, #56]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #12
	ldr	r2, [sp, #52]
	adds	r1, r2, r3
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #24
	mov	r2, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L222
	.loc 1 811 9
	ldr	r2, [sp, #56]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #52]
	add	r3, r3, r2
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L223
	.loc 1 811 9 is_stmt 0 discriminator 2
	ldr	r3, .L240+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L240+4
	str	r3, [r2]
	.loc 1 808 29 is_stmt 1 discriminator 2
	ldr	r3, [sp, #56]
	adds	r3, r3, #1
	str	r3, [sp, #56]
.L195:
	.loc 1 808 5 discriminator 2
	ldr	r2, [sp, #56]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L198
	.loc 1 817 5
	ldr	r2, [sp, #4]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #12
	ldr	r2, [sp, #52]
	adds	r1, r2, r3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_inv_mod
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L224
	.loc 1 819 12
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #56]
.L217:
	.loc 1 825 11
	ldr	r3, [sp, #56]
	cmp	r3, #0
	bne	.L200
	.loc 1 826 13
	add	r2, sp, #40
	add	r3, sp, #28
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_copy
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	beq	.L201
	b	.L194
.L241:
	.align	2
.L240:
	.word	-19840
	.word	mul_count
.L200:
	.loc 1 830 13
	ldr	r2, [sp, #56]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #12
	ldr	r2, [sp, #52]
	add	r2, r2, r3
	add	r1, sp, #40
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L225
	.loc 1 830 74 discriminator 2
	add	r3, sp, #28
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L226
	.loc 1 830 74 is_stmt 0 discriminator 4
	ldr	r3, .L242
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L242
	str	r3, [r2]
	.loc 1 831 13 is_stmt 1 discriminator 4
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	add	r2, r3, #24
	add	r1, sp, #40
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L227
	.loc 1 831 74 discriminator 2
	add	r3, sp, #40
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L228
	.loc 1 831 74 is_stmt 0 discriminator 4
	ldr	r3, .L242
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L242
	str	r3, [r2]
.L201:
	.loc 1 837 9 is_stmt 1
	add	r2, sp, #28
	add	r1, sp, #28
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L229
	.loc 1 837 77 discriminator 2
	add	r3, sp, #16
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L230
	.loc 1 837 77 is_stmt 0 discriminator 4
	ldr	r3, .L242
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L242
	str	r3, [r2]
	.loc 1 838 9 is_stmt 1 discriminator 4
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r1, r3
	add	r3, sp, #16
	mov	r2, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L231
	.loc 1 838 77 discriminator 2
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L232
	.loc 1 838 77 is_stmt 0 discriminator 4
	ldr	r3, .L242
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L242
	str	r3, [r2]
	.loc 1 839 9 is_stmt 1 discriminator 4
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	add	r0, r3, #12
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #12
	add	r2, sp, #16
	mov	r1, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L233
	.loc 1 839 77 discriminator 2
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L234
	.loc 1 839 77 is_stmt 0 discriminator 4
	ldr	r3, .L242
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L242
	str	r3, [r2]
	.loc 1 840 9 is_stmt 1 discriminator 4
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	add	r0, r3, #12
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #12
	add	r2, sp, #28
	mov	r1, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L235
	.loc 1 840 77 discriminator 2
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L236
	.loc 1 840 77 is_stmt 0 discriminator 4
	ldr	r3, .L242
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L242
	str	r3, [r2]
	.loc 1 848 9 is_stmt 1 discriminator 4
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_shrink
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L237
	.loc 1 849 9
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	add	r2, r3, #12
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_shrink
	str	r0, [sp, #60]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L238
	.loc 1 850 29
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	.loc 1 850 9
	adds	r3, r3, #24
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 852 11
	ldr	r3, [sp, #56]
	cmp	r3, #0
	beq	.L239
	.loc 1 819 28
	ldr	r3, [sp, #56]
	subs	r3, r3, #1
	str	r3, [sp, #56]
	.loc 1 825 11
	b	.L217
.L221:
	.loc 1 807 5
	nop
	b	.L194
.L222:
	.loc 1 810 9
	nop
	b	.L194
.L223:
	.loc 1 811 9
	nop
	b	.L194
.L224:
	.loc 1 817 5
	nop
	b	.L194
.L225:
	.loc 1 830 13
	nop
	b	.L194
.L226:
	.loc 1 830 74
	nop
	b	.L194
.L227:
	.loc 1 831 13
	nop
	b	.L194
.L228:
	.loc 1 831 74
	nop
	b	.L194
.L229:
	.loc 1 837 9
	nop
	b	.L194
.L230:
	.loc 1 837 77
	nop
	b	.L194
.L231:
	.loc 1 838 9
	nop
	b	.L194
.L232:
	.loc 1 838 77
	nop
	b	.L194
.L233:
	.loc 1 839 9
	nop
	b	.L194
.L234:
	.loc 1 839 77
	nop
	b	.L194
.L235:
	.loc 1 840 9
	nop
	b	.L194
.L236:
	.loc 1 840 77
	nop
	b	.L194
.L237:
	.loc 1 848 9
	nop
	b	.L194
.L238:
	.loc 1 849 9
	nop
	b	.L194
.L239:
	.loc 1 853 13
	nop
.L194:
	.loc 1 858 5
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 858 29
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 858 54
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 859 12
	movs	r3, #0
	str	r3, [sp, #56]
	.loc 1 859 5
	b	.L218
.L219:
	.loc 1 860 29 discriminator 3
	ldr	r2, [sp, #56]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	.loc 1 860 9 discriminator 3
	ldr	r3, [sp, #52]
	add	r3, r3, r2
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 859 29 discriminator 3
	ldr	r3, [sp, #56]
	adds	r3, r3, #1
	str	r3, [sp, #56]
.L218:
	.loc 1 859 5 discriminator 1
	ldr	r2, [sp, #56]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L219
	.loc 1 861 5
	ldr	r0, [sp, #52]
	bl	free
	.loc 1 863 11
	ldr	r3, [sp, #60]
.L220:
	.loc 1 864 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #68
.LCFI78:
	@ sp needed
	ldr	pc, [sp], #4
.L243:
	.align	2
.L242:
	.word	mul_count
.LFE27:
	.size	ecp_normalize_jac_many, .-ecp_normalize_jac_many
	.section	.text.ecp_safe_invert_jac,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_safe_invert_jac, %function
ecp_safe_invert_jac:
.LFB28:
	.loc 1 873 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI79:
	sub	sp, sp, #44
.LCFI80:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strb	r3, [sp, #7]
	.loc 1 878 5
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 881 5
	ldr	r3, [sp, #12]
	adds	r1, r3, #4
	ldr	r3, [sp, #8]
	add	r2, r3, #12
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L248
	.loc 1 882 36
	ldr	r3, [sp, #8]
	adds	r3, r3, #12
	.loc 1 882 15
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 882 47
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	.loc 1 882 13
	strb	r3, [sp, #35]
	.loc 1 883 5
	ldr	r3, [sp, #8]
	add	r0, r3, #12
	ldrb	r2, [sp, #7]
	ldrb	r3, [sp, #35]
	ands	r3, r3, r2
	uxtb	r2, r3
	add	r3, sp, #20
	mov	r1, r3
	bl	mbedtls_mpi_safe_cond_assign
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	.loc 1 885 1
	b	.L246
.L248:
	.loc 1 881 5
	nop
.L246:
	.loc 1 886 5
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 888 11
	ldr	r3, [sp, #36]
	.loc 1 889 1
	mov	r0, r3
	add	sp, sp, #44
.LCFI81:
	@ sp needed
	ldr	pc, [sp], #4
.LFE28:
	.size	ecp_safe_invert_jac, .-ecp_safe_invert_jac
	.section	.text.ecp_double_jac,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_double_jac, %function
ecp_double_jac:
.LFB29:
	.loc 1 907 1
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI82:
	sub	sp, sp, #76
.LCFI83:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 912 14
	ldr	r3, .L376
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L376
	str	r3, [r2]
	.loc 1 915 5
	add	r3, sp, #56
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 915 29
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 915 53
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 915 77
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 918 15
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #24]
	.loc 1 918 7
	cmp	r3, #0
	bne	.L250
	.loc 1 921 9
	ldr	r3, [sp, #4]
	add	r1, r3, #24
	ldr	r3, [sp, #4]
	add	r2, r3, #24
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L324
	.loc 1 921 73 discriminator 2
	add	r3, sp, #44
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L325
	.loc 1 921 73 is_stmt 0 discriminator 4
	ldr	r3, .L376+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L376+4
	str	r3, [r2]
	.loc 1 922 9 is_stmt 1 discriminator 4
	ldr	r1, [sp, #4]
	add	r2, sp, #44
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L326
	.loc 1 922 73
	b	.L255
.L256:
	.loc 1 922 73 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #32
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L327
.L255:
	.loc 1 922 73 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #32
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L256
	.loc 1 923 9 is_stmt 1
	ldr	r1, [sp, #4]
	add	r2, sp, #44
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L328
	.loc 1 923 73
	b	.L258
.L260:
	.loc 1 923 73 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #20
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L329
.L258:
	.loc 1 923 73 discriminator 3
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bge	.L259
	.loc 1 923 73 discriminator 4
	add	r3, sp, #20
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L260
.L259:
	.loc 1 924 9 is_stmt 1
	add	r2, sp, #20
	add	r1, sp, #32
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L330
	.loc 1 924 73 discriminator 2
	add	r3, sp, #44
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L331
	.loc 1 924 73 is_stmt 0 discriminator 4
	ldr	r3, .L376+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L376+4
	str	r3, [r2]
	.loc 1 925 9 is_stmt 1 discriminator 4
	add	r1, sp, #44
	add	r3, sp, #56
	movs	r2, #3
	mov	r0, r3
	bl	mbedtls_mpi_mul_int
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L332
	.loc 1 925 73
	b	.L264
.L265:
	.loc 1 925 73 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #56
	add	r3, sp, #56
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L333
.L264:
	.loc 1 925 73 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #56
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L265
	b	.L266
.L250:
	.loc 1 930 9 is_stmt 1
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #4]
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L334
	.loc 1 930 73 discriminator 2
	add	r3, sp, #44
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L335
	.loc 1 930 73 is_stmt 0 discriminator 4
	ldr	r3, .L376+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L376+4
	str	r3, [r2]
	.loc 1 931 9 is_stmt 1 discriminator 4
	add	r1, sp, #44
	add	r3, sp, #56
	movs	r2, #3
	mov	r0, r3
	bl	mbedtls_mpi_mul_int
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L336
	.loc 1 931 73
	b	.L270
.L271:
	.loc 1 931 73 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #56
	add	r3, sp, #56
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L337
.L270:
	.loc 1 931 73 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #56
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L271
	.loc 1 934 13 is_stmt 1
	ldr	r3, [sp, #12]
	adds	r3, r3, #16
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 934 11
	cmp	r3, #0
	beq	.L266
	.loc 1 937 13
	ldr	r3, [sp, #4]
	add	r1, r3, #24
	ldr	r3, [sp, #4]
	add	r2, r3, #24
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L338
	.loc 1 937 77 discriminator 2
	add	r3, sp, #44
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L339
	.loc 1 937 77 is_stmt 0 discriminator 4
	ldr	r3, .L376+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L376+4
	str	r3, [r2]
	.loc 1 938 13 is_stmt 1 discriminator 4
	add	r2, sp, #44
	add	r1, sp, #44
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L340
	.loc 1 938 77 discriminator 2
	add	r3, sp, #32
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L341
	.loc 1 938 77 is_stmt 0 discriminator 4
	ldr	r3, .L376+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L376+4
	str	r3, [r2]
	.loc 1 939 13 is_stmt 1 discriminator 4
	ldr	r3, [sp, #12]
	add	r2, r3, #16
	add	r1, sp, #32
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L342
	.loc 1 939 77 discriminator 2
	add	r3, sp, #44
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L343
	.loc 1 939 77 is_stmt 0 discriminator 4
	ldr	r3, .L376+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L376+4
	str	r3, [r2]
	.loc 1 940 13 is_stmt 1 discriminator 4
	add	r2, sp, #44
	add	r1, sp, #56
	add	r3, sp, #56
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L344
	.loc 1 940 77
	b	.L279
.L377:
	.align	2
.L376:
	.word	dbl_count
	.word	mul_count
.L280:
	.loc 1 940 77 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #56
	add	r3, sp, #56
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L345
.L279:
	.loc 1 940 77 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #56
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L280
.L266:
	.loc 1 945 5 is_stmt 1
	ldr	r3, [sp, #4]
	add	r1, r3, #12
	ldr	r3, [sp, #4]
	add	r2, r3, #12
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L346
	.loc 1 945 69 discriminator 2
	add	r3, sp, #32
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L347
	.loc 1 945 69 is_stmt 0 discriminator 4
	ldr	r3, .L378
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L378
	str	r3, [r2]
	.loc 1 946 5 is_stmt 1 discriminator 4
	add	r3, sp, #32
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_shift_l
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L348
	.loc 1 946 69
	b	.L284
.L285:
	.loc 1 946 69 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #32
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L349
.L284:
	.loc 1 946 69 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #32
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L285
	.loc 1 947 5 is_stmt 1
	ldr	r1, [sp, #4]
	add	r2, sp, #32
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L350
	.loc 1 947 69 discriminator 2
	add	r3, sp, #44
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L351
	.loc 1 947 69 is_stmt 0 discriminator 4
	ldr	r3, .L378
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L378
	str	r3, [r2]
	.loc 1 948 5 is_stmt 1 discriminator 4
	add	r3, sp, #44
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_shift_l
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L352
	.loc 1 948 69
	b	.L289
.L290:
	.loc 1 948 69 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #44
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L353
.L289:
	.loc 1 948 69 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L290
	.loc 1 951 5 is_stmt 1
	add	r2, sp, #32
	add	r1, sp, #32
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L354
	.loc 1 951 69 discriminator 2
	add	r3, sp, #20
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L355
	.loc 1 951 69 is_stmt 0 discriminator 4
	ldr	r3, .L378
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L378
	str	r3, [r2]
	.loc 1 952 5 is_stmt 1 discriminator 4
	add	r3, sp, #20
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_shift_l
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L356
	.loc 1 952 69
	b	.L294
.L295:
	.loc 1 952 69 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #20
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L357
.L294:
	.loc 1 952 69 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L295
	.loc 1 955 5 is_stmt 1
	add	r2, sp, #56
	add	r1, sp, #56
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L358
	.loc 1 955 69 discriminator 2
	add	r3, sp, #32
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L359
	.loc 1 955 69 is_stmt 0 discriminator 4
	ldr	r3, .L378
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L378
	str	r3, [r2]
	.loc 1 956 5 is_stmt 1 discriminator 4
	add	r2, sp, #44
	add	r1, sp, #32
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L360
	.loc 1 956 69
	b	.L299
.L301:
	.loc 1 956 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #32
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L361
.L299:
	.loc 1 956 69 discriminator 3
	ldr	r3, [sp, #32]
	cmp	r3, #0
	bge	.L300
	.loc 1 956 69 discriminator 4
	add	r3, sp, #32
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L301
.L300:
	.loc 1 957 5 is_stmt 1
	add	r2, sp, #44
	add	r1, sp, #32
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L362
	.loc 1 957 69
	b	.L303
.L305:
	.loc 1 957 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #32
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L363
.L303:
	.loc 1 957 69 discriminator 3
	ldr	r3, [sp, #32]
	cmp	r3, #0
	bge	.L304
	.loc 1 957 69 discriminator 4
	add	r3, sp, #32
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L305
.L304:
	.loc 1 960 5 is_stmt 1
	add	r2, sp, #32
	add	r1, sp, #44
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L364
	.loc 1 960 69
	b	.L307
.L309:
	.loc 1 960 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #44
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L365
.L307:
	.loc 1 960 69 discriminator 3
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bge	.L308
	.loc 1 960 69 discriminator 4
	add	r3, sp, #44
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L309
.L308:
	.loc 1 961 5 is_stmt 1
	add	r2, sp, #56
	add	r1, sp, #44
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L366
	.loc 1 961 69 discriminator 2
	add	r3, sp, #44
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L367
	.loc 1 961 69 is_stmt 0 discriminator 4
	ldr	r3, .L378
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L378
	str	r3, [r2]
	.loc 1 962 5 is_stmt 1 discriminator 4
	add	r2, sp, #20
	add	r1, sp, #44
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L368
	.loc 1 962 69
	b	.L313
.L379:
	.align	2
.L378:
	.word	mul_count
.L315:
	.loc 1 962 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #44
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L369
.L313:
	.loc 1 962 69 discriminator 3
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bge	.L314
	.loc 1 962 69 discriminator 4
	add	r3, sp, #44
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L315
.L314:
	.loc 1 965 5 is_stmt 1
	ldr	r3, [sp, #4]
	add	r1, r3, #12
	ldr	r3, [sp, #4]
	add	r2, r3, #24
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L370
	.loc 1 965 69 discriminator 2
	add	r3, sp, #20
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L371
	.loc 1 965 69 is_stmt 0 discriminator 4
	ldr	r3, .L380
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L380
	str	r3, [r2]
	.loc 1 966 5 is_stmt 1 discriminator 4
	add	r3, sp, #20
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_shift_l
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L372
	.loc 1 966 69
	b	.L319
.L320:
	.loc 1 966 69 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #20
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L373
.L319:
	.loc 1 966 69 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L320
	.loc 1 968 5 is_stmt 1
	ldr	r3, [sp, #8]
	add	r2, sp, #32
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_copy
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L374
	.loc 1 969 5
	ldr	r3, [sp, #8]
	adds	r3, r3, #12
	add	r2, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_copy
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L375
	.loc 1 970 5
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	add	r2, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_copy
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	.loc 1 972 1
	b	.L252
.L324:
	.loc 1 921 9
	nop
	b	.L252
.L325:
	.loc 1 921 73
	nop
	b	.L252
.L326:
	.loc 1 922 9
	nop
	b	.L252
.L327:
	.loc 1 922 73
	nop
	b	.L252
.L328:
	.loc 1 923 9
	nop
	b	.L252
.L329:
	.loc 1 923 73
	nop
	b	.L252
.L330:
	.loc 1 924 9
	nop
	b	.L252
.L331:
	.loc 1 924 73
	nop
	b	.L252
.L332:
	.loc 1 925 9
	nop
	b	.L252
.L333:
	.loc 1 925 73
	nop
	b	.L252
.L334:
	.loc 1 930 9
	nop
	b	.L252
.L335:
	.loc 1 930 73
	nop
	b	.L252
.L336:
	.loc 1 931 9
	nop
	b	.L252
.L337:
	.loc 1 931 73
	nop
	b	.L252
.L338:
	.loc 1 937 13
	nop
	b	.L252
.L339:
	.loc 1 937 77
	nop
	b	.L252
.L340:
	.loc 1 938 13
	nop
	b	.L252
.L341:
	.loc 1 938 77
	nop
	b	.L252
.L342:
	.loc 1 939 13
	nop
	b	.L252
.L343:
	.loc 1 939 77
	nop
	b	.L252
.L344:
	.loc 1 940 13
	nop
	b	.L252
.L345:
	.loc 1 940 77
	nop
	b	.L252
.L346:
	.loc 1 945 5
	nop
	b	.L252
.L347:
	.loc 1 945 69
	nop
	b	.L252
.L348:
	.loc 1 946 5
	nop
	b	.L252
.L349:
	.loc 1 946 69
	nop
	b	.L252
.L350:
	.loc 1 947 5
	nop
	b	.L252
.L351:
	.loc 1 947 69
	nop
	b	.L252
.L352:
	.loc 1 948 5
	nop
	b	.L252
.L353:
	.loc 1 948 69
	nop
	b	.L252
.L354:
	.loc 1 951 5
	nop
	b	.L252
.L355:
	.loc 1 951 69
	nop
	b	.L252
.L356:
	.loc 1 952 5
	nop
	b	.L252
.L357:
	.loc 1 952 69
	nop
	b	.L252
.L358:
	.loc 1 955 5
	nop
	b	.L252
.L359:
	.loc 1 955 69
	nop
	b	.L252
.L360:
	.loc 1 956 5
	nop
	b	.L252
.L361:
	.loc 1 956 69
	nop
	b	.L252
.L362:
	.loc 1 957 5
	nop
	b	.L252
.L363:
	.loc 1 957 69
	nop
	b	.L252
.L364:
	.loc 1 960 5
	nop
	b	.L252
.L365:
	.loc 1 960 69
	nop
	b	.L252
.L366:
	.loc 1 961 5
	nop
	b	.L252
.L367:
	.loc 1 961 69
	nop
	b	.L252
.L368:
	.loc 1 962 5
	nop
	b	.L252
.L369:
	.loc 1 962 69
	nop
	b	.L252
.L370:
	.loc 1 965 5
	nop
	b	.L252
.L371:
	.loc 1 965 69
	nop
	b	.L252
.L372:
	.loc 1 966 5
	nop
	b	.L252
.L373:
	.loc 1 966 69
	nop
	b	.L252
.L374:
	.loc 1 968 5
	nop
	b	.L252
.L375:
	.loc 1 969 5
	nop
.L252:
	.loc 1 973 5
	add	r3, sp, #56
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 973 29
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 973 53
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 973 77
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 975 11
	ldr	r3, [sp, #68]
	.loc 1 976 1
	mov	r0, r3
	add	sp, sp, #76
.LCFI84:
	@ sp needed
	ldr	pc, [sp], #4
.L381:
	.align	2
.L380:
	.word	mul_count
.LFE29:
	.size	ecp_double_jac, .-ecp_double_jac
	.section	.text.ecp_add_mixed,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_add_mixed, %function
ecp_add_mixed:
.LFB30:
	.loc 1 998 1
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI85:
	sub	sp, sp, #108
.LCFI86:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1003 14
	ldr	r3, .L480
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L480
	str	r3, [r2]
	.loc 1 1009 9
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1009 7
	cmp	r3, #0
	bne	.L383
	.loc 1 1010 17
	ldr	r1, [sp]
	ldr	r0, [sp, #8]
	bl	mbedtls_ecp_copy
	mov	r3, r0
	b	.L441
.L383:
	.loc 1 1012 13
	ldr	r3, [sp]
	ldr	r3, [r3, #32]
	.loc 1 1012 7
	cmp	r3, #0
	beq	.L385
	.loc 1 1012 27 discriminator 1
	ldr	r3, [sp]
	adds	r3, r3, #24
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1012 24 discriminator 1
	cmp	r3, #0
	bne	.L385
	.loc 1 1013 17
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	mbedtls_ecp_copy
	mov	r3, r0
	b	.L441
.L385:
	.loc 1 1018 13
	ldr	r3, [sp]
	ldr	r3, [r3, #32]
	.loc 1 1018 7
	cmp	r3, #0
	beq	.L386
	.loc 1 1018 27 discriminator 1
	ldr	r3, [sp]
	adds	r3, r3, #24
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1018 24 discriminator 1
	cmp	r3, #0
	beq	.L386
	.loc 1 1019 15
	ldr	r3, .L480+4
	b	.L441
.L386:
	.loc 1 1021 5
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1021 30
	add	r3, sp, #76
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1021 55
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1021 80
	add	r3, sp, #52
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1022 5
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1022 29
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1022 53
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1024 5
	ldr	r3, [sp, #4]
	add	r1, r3, #24
	ldr	r3, [sp, #4]
	add	r2, r3, #24
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L442
	.loc 1 1024 69 discriminator 2
	add	r3, sp, #88
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L443
	.loc 1 1024 69 is_stmt 0 discriminator 4
	ldr	r3, .L480+8
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L480+8
	str	r3, [r2]
	.loc 1 1025 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #4]
	add	r2, r3, #24
	add	r1, sp, #88
	add	r3, sp, #76
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L444
	.loc 1 1025 69 discriminator 2
	add	r3, sp, #76
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L445
	.loc 1 1025 69 is_stmt 0 discriminator 4
	ldr	r3, .L480+8
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L480+8
	str	r3, [r2]
	.loc 1 1026 5 is_stmt 1 discriminator 4
	ldr	r2, [sp]
	add	r1, sp, #88
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L446
	.loc 1 1026 69 discriminator 2
	add	r3, sp, #88
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L447
	.loc 1 1026 69 is_stmt 0 discriminator 4
	ldr	r3, .L480+8
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L480+8
	str	r3, [r2]
	.loc 1 1027 5 is_stmt 1 discriminator 4
	ldr	r3, [sp]
	add	r2, r3, #12
	add	r1, sp, #76
	add	r3, sp, #76
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L448
	.loc 1 1027 69 discriminator 2
	add	r3, sp, #76
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L449
	.loc 1 1027 69 is_stmt 0 discriminator 4
	ldr	r3, .L480+8
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L480+8
	str	r3, [r2]
	.loc 1 1028 5 is_stmt 1 discriminator 4
	ldr	r2, [sp, #4]
	add	r1, sp, #88
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L450
	.loc 1 1028 69
	b	.L397
.L399:
	.loc 1 1028 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #88
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L451
.L397:
	.loc 1 1028 69 discriminator 3
	ldr	r3, [sp, #88]
	cmp	r3, #0
	bge	.L398
	.loc 1 1028 69 discriminator 4
	add	r3, sp, #88
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L399
.L398:
	.loc 1 1029 5 is_stmt 1
	ldr	r3, [sp, #4]
	add	r2, r3, #12
	add	r1, sp, #76
	add	r3, sp, #76
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L452
	.loc 1 1029 69
	b	.L401
.L403:
	.loc 1 1029 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #76
	add	r3, sp, #76
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L453
.L401:
	.loc 1 1029 69 discriminator 3
	ldr	r3, [sp, #76]
	cmp	r3, #0
	bge	.L402
	.loc 1 1029 69 discriminator 4
	add	r3, sp, #76
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L403
.L402:
	.loc 1 1032 9 is_stmt 1
	add	r3, sp, #88
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1032 7
	cmp	r3, #0
	bne	.L404
	.loc 1 1034 13
	add	r3, sp, #76
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1034 11
	cmp	r3, #0
	bne	.L405
	.loc 1 1036 19
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	ecp_double_jac
	str	r0, [sp, #100]
	.loc 1 1037 13
	b	.L388
.L405:
	.loc 1 1041 19
	ldr	r0, [sp, #8]
	bl	mbedtls_ecp_set_zero
	str	r0, [sp, #100]
	.loc 1 1042 13
	b	.L388
.L481:
	.align	2
.L480:
	.word	add_count
	.word	-20352
	.word	mul_count
.L404:
	.loc 1 1046 5
	ldr	r3, [sp, #4]
	add	r1, r3, #24
	add	r2, sp, #88
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L454
	.loc 1 1046 69 discriminator 2
	add	r3, sp, #16
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L455
	.loc 1 1046 69 is_stmt 0 discriminator 4
	ldr	r3, .L482
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L482
	str	r3, [r2]
	.loc 1 1047 5 is_stmt 1 discriminator 4
	add	r2, sp, #88
	add	r1, sp, #88
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L456
	.loc 1 1047 69 discriminator 2
	add	r3, sp, #64
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L457
	.loc 1 1047 69 is_stmt 0 discriminator 4
	ldr	r3, .L482
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L482
	str	r3, [r2]
	.loc 1 1048 5 is_stmt 1 discriminator 4
	add	r2, sp, #88
	add	r1, sp, #64
	add	r3, sp, #52
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L458
	.loc 1 1048 69 discriminator 2
	add	r3, sp, #52
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L459
	.loc 1 1048 69 is_stmt 0 discriminator 4
	ldr	r3, .L482
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L482
	str	r3, [r2]
	.loc 1 1049 5 is_stmt 1 discriminator 4
	ldr	r2, [sp, #4]
	add	r1, sp, #64
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L460
	.loc 1 1049 69 discriminator 2
	add	r3, sp, #64
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L461
	.loc 1 1049 69 is_stmt 0 discriminator 4
	ldr	r3, .L482
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L482
	str	r3, [r2]
	.loc 1 1050 5 is_stmt 1 discriminator 4
	add	r1, sp, #64
	add	r3, sp, #88
	movs	r2, #2
	mov	r0, r3
	bl	mbedtls_mpi_mul_int
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L462
	.loc 1 1050 69
	b	.L415
.L416:
	.loc 1 1050 69 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #88
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L463
.L415:
	.loc 1 1050 69 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #88
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L416
	.loc 1 1051 5 is_stmt 1
	add	r2, sp, #76
	add	r1, sp, #76
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L464
	.loc 1 1051 69 discriminator 2
	add	r3, sp, #40
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L465
	.loc 1 1051 69 is_stmt 0 discriminator 4
	ldr	r3, .L482
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L482
	str	r3, [r2]
	.loc 1 1052 5 is_stmt 1 discriminator 4
	add	r2, sp, #88
	add	r1, sp, #40
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L466
	.loc 1 1052 69
	b	.L420
.L422:
	.loc 1 1052 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #40
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L467
.L420:
	.loc 1 1052 69 discriminator 3
	ldr	r3, [sp, #40]
	cmp	r3, #0
	bge	.L421
	.loc 1 1052 69 discriminator 4
	add	r3, sp, #40
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L422
.L421:
	.loc 1 1053 5 is_stmt 1
	add	r2, sp, #52
	add	r1, sp, #40
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L468
	.loc 1 1053 69
	b	.L424
.L426:
	.loc 1 1053 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #40
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L469
.L424:
	.loc 1 1053 69 discriminator 3
	ldr	r3, [sp, #40]
	cmp	r3, #0
	bge	.L425
	.loc 1 1053 69 discriminator 4
	add	r3, sp, #40
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L426
.L425:
	.loc 1 1054 5 is_stmt 1
	add	r2, sp, #40
	add	r1, sp, #64
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L470
	.loc 1 1054 69
	b	.L428
.L430:
	.loc 1 1054 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #64
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L471
.L428:
	.loc 1 1054 69 discriminator 3
	ldr	r3, [sp, #64]
	cmp	r3, #0
	bge	.L429
	.loc 1 1054 69 discriminator 4
	add	r3, sp, #64
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L430
.L429:
	.loc 1 1055 5 is_stmt 1
	add	r2, sp, #76
	add	r1, sp, #64
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L472
	.loc 1 1055 69 discriminator 2
	add	r3, sp, #64
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L473
	.loc 1 1055 69 is_stmt 0 discriminator 4
	ldr	r3, .L482
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L482
	str	r3, [r2]
	.loc 1 1056 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #4]
	add	r2, r3, #12
	add	r1, sp, #52
	add	r3, sp, #52
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L474
	.loc 1 1056 69 discriminator 2
	add	r3, sp, #52
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L475
	.loc 1 1056 69 is_stmt 0 discriminator 4
	ldr	r3, .L482
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L482
	str	r3, [r2]
	.loc 1 1057 5 is_stmt 1 discriminator 4
	add	r2, sp, #52
	add	r1, sp, #64
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L476
	.loc 1 1057 69
	b	.L436
.L483:
	.align	2
.L482:
	.word	mul_count
.L438:
	.loc 1 1057 69 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #28
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L477
.L436:
	.loc 1 1057 69 discriminator 3
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bge	.L437
	.loc 1 1057 69 discriminator 4
	add	r3, sp, #28
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L438
.L437:
	.loc 1 1059 5 is_stmt 1
	ldr	r3, [sp, #8]
	add	r2, sp, #40
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_copy
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L478
	.loc 1 1060 5
	ldr	r3, [sp, #8]
	adds	r3, r3, #12
	add	r2, sp, #28
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_copy
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L479
	.loc 1 1061 5
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	add	r2, sp, #16
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_copy
	str	r0, [sp, #100]
	ldr	r3, [sp, #100]
	cmp	r3, #0
	.loc 1 1063 1
	b	.L388
.L442:
	.loc 1 1024 5
	nop
	b	.L388
.L443:
	.loc 1 1024 69
	nop
	b	.L388
.L444:
	.loc 1 1025 5
	nop
	b	.L388
.L445:
	.loc 1 1025 69
	nop
	b	.L388
.L446:
	.loc 1 1026 5
	nop
	b	.L388
.L447:
	.loc 1 1026 69
	nop
	b	.L388
.L448:
	.loc 1 1027 5
	nop
	b	.L388
.L449:
	.loc 1 1027 69
	nop
	b	.L388
.L450:
	.loc 1 1028 5
	nop
	b	.L388
.L451:
	.loc 1 1028 69
	nop
	b	.L388
.L452:
	.loc 1 1029 5
	nop
	b	.L388
.L453:
	.loc 1 1029 69
	nop
	b	.L388
.L454:
	.loc 1 1046 5
	nop
	b	.L388
.L455:
	.loc 1 1046 69
	nop
	b	.L388
.L456:
	.loc 1 1047 5
	nop
	b	.L388
.L457:
	.loc 1 1047 69
	nop
	b	.L388
.L458:
	.loc 1 1048 5
	nop
	b	.L388
.L459:
	.loc 1 1048 69
	nop
	b	.L388
.L460:
	.loc 1 1049 5
	nop
	b	.L388
.L461:
	.loc 1 1049 69
	nop
	b	.L388
.L462:
	.loc 1 1050 5
	nop
	b	.L388
.L463:
	.loc 1 1050 69
	nop
	b	.L388
.L464:
	.loc 1 1051 5
	nop
	b	.L388
.L465:
	.loc 1 1051 69
	nop
	b	.L388
.L466:
	.loc 1 1052 5
	nop
	b	.L388
.L467:
	.loc 1 1052 69
	nop
	b	.L388
.L468:
	.loc 1 1053 5
	nop
	b	.L388
.L469:
	.loc 1 1053 69
	nop
	b	.L388
.L470:
	.loc 1 1054 5
	nop
	b	.L388
.L471:
	.loc 1 1054 69
	nop
	b	.L388
.L472:
	.loc 1 1055 5
	nop
	b	.L388
.L473:
	.loc 1 1055 69
	nop
	b	.L388
.L474:
	.loc 1 1056 5
	nop
	b	.L388
.L475:
	.loc 1 1056 69
	nop
	b	.L388
.L476:
	.loc 1 1057 5
	nop
	b	.L388
.L477:
	.loc 1 1057 69
	nop
	b	.L388
.L478:
	.loc 1 1059 5
	nop
	b	.L388
.L479:
	.loc 1 1060 5
	nop
.L388:
	.loc 1 1065 5
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1065 30
	add	r3, sp, #76
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1065 55
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1065 80
	add	r3, sp, #52
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1066 5
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1066 29
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1066 53
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1068 11
	ldr	r3, [sp, #100]
.L441:
	.loc 1 1069 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #108
.LCFI87:
	@ sp needed
	ldr	pc, [sp], #4
.LFE30:
	.size	ecp_add_mixed, .-ecp_add_mixed
	.section	.text.ecp_randomize_jac,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_randomize_jac, %function
ecp_randomize_jac:
.LFB31:
	.loc 1 1080 1
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI88:
	sub	sp, sp, #60
.LCFI89:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1083 26
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #88]
	.loc 1 1083 34
	adds	r3, r3, #7
	.loc 1 1083 12
	lsrs	r3, r3, #3
	str	r3, [sp, #44]
	.loc 1 1084 9
	movs	r3, #0
	str	r3, [sp, #48]
	.loc 1 1086 5
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1086 29
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_init
.L490:
	.loc 1 1091 9
	add	r0, sp, #32
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #44]
	bl	mbedtls_mpi_fill_random
	.loc 1 1093 14
	b	.L485
.L487:
	.loc 1 1094 13
	add	r3, sp, #32
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_shift_r
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L502
.L485:
	.loc 1 1093 16
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #32
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1093 14
	cmp	r3, #0
	bge	.L487
	.loc 1 1096 18
	ldr	r3, [sp, #48]
	adds	r2, r3, #1
	str	r2, [sp, #48]
	.loc 1 1096 11
	cmp	r3, #10
	ble	.L488
	.loc 1 1097 19
	ldr	r3, .L513
	b	.L501
.L488:
	.loc 1 1099 12
	add	r3, sp, #32
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1099 5
	cmp	r3, #0
	ble	.L490
	.loc 1 1102 5
	ldr	r3, [sp, #8]
	add	r0, r3, #24
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	add	r2, sp, #32
	mov	r1, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L503
	.loc 1 1102 74 discriminator 2
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L504
	.loc 1 1102 74 is_stmt 0 discriminator 4
	ldr	r3, .L513+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L513+4
	str	r3, [r2]
	.loc 1 1105 5 is_stmt 1 discriminator 4
	add	r2, sp, #32
	add	r1, sp, #32
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L505
	.loc 1 1105 74 discriminator 2
	add	r3, sp, #20
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L506
	.loc 1 1105 74 is_stmt 0 discriminator 4
	ldr	r3, .L513+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L513+4
	str	r3, [r2]
	.loc 1 1106 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #8]
	add	r2, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L507
	.loc 1 1106 74 discriminator 2
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L508
	.loc 1 1106 74 is_stmt 0 discriminator 4
	ldr	r3, .L513+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L513+4
	str	r3, [r2]
	.loc 1 1109 5 is_stmt 1 discriminator 4
	add	r2, sp, #32
	add	r1, sp, #20
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L509
	.loc 1 1109 74 discriminator 2
	add	r3, sp, #20
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L510
	.loc 1 1109 74 is_stmt 0 discriminator 4
	ldr	r3, .L513+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L513+4
	str	r3, [r2]
	.loc 1 1110 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #8]
	add	r0, r3, #12
	ldr	r3, [sp, #8]
	adds	r3, r3, #12
	add	r2, sp, #20
	mov	r1, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L511
	.loc 1 1110 74 discriminator 2
	ldr	r3, [sp, #8]
	adds	r3, r3, #12
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L512
	.loc 1 1110 74 is_stmt 0 discriminator 4
	ldr	r3, .L513+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L513+4
	str	r3, [r2]
	b	.L486
.L502:
	.loc 1 1094 13 is_stmt 1
	nop
	b	.L486
.L503:
	.loc 1 1102 5
	nop
	b	.L486
.L504:
	.loc 1 1102 74
	nop
	b	.L486
.L505:
	.loc 1 1105 5
	nop
	b	.L486
.L506:
	.loc 1 1105 74
	nop
	b	.L486
.L507:
	.loc 1 1106 5
	nop
	b	.L486
.L508:
	.loc 1 1106 74
	nop
	b	.L486
.L509:
	.loc 1 1109 5
	nop
	b	.L486
.L510:
	.loc 1 1109 74
	nop
	b	.L486
.L511:
	.loc 1 1110 5
	nop
	b	.L486
.L512:
	.loc 1 1110 74
	nop
.L486:
	.loc 1 1113 5
	add	r3, sp, #32
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1113 29
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1115 11
	ldr	r3, [sp, #52]
.L501:
	.loc 1 1116 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #60
.LCFI90:
	@ sp needed
	ldr	pc, [sp], #4
.L514:
	.align	2
.L513:
	.word	-19712
	.word	mul_count
.LFE31:
	.size	ecp_randomize_jac, .-ecp_randomize_jac
	.section	.text.ecp_comb_fixed,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_comb_fixed, %function
ecp_comb_fixed:
.LFB32:
	.loc 1 1153 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI91:
	sub	sp, sp, #36
.LCFI92:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	mov	r3, r2
	strb	r3, [sp, #7]
	.loc 1 1157 5
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [sp, #12]
	bl	memset
	.loc 1 1160 12
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 1160 5
	b	.L516
.L519:
	.loc 1 1161 16
	movs	r3, #0
	str	r3, [sp, #24]
	.loc 1 1161 9
	b	.L517
.L518:
	.loc 1 1162 51 discriminator 3
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #24]
	mul	r2, r2, r3
	.loc 1 1162 21 discriminator 3
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp]
	bl	mbedtls_mpi_get_bit
	mov	r2, r0
	.loc 1 1162 57 discriminator 3
	ldr	r3, [sp, #24]
	lsl	r1, r2, r3
	.loc 1 1162 18 discriminator 3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r2, r3
	sxtb	r3, r1
	orrs	r3, r3, r2
	sxtb	r1, r3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	.loc 1 1161 29 discriminator 3
	ldr	r3, [sp, #24]
	adds	r3, r3, #1
	str	r3, [sp, #24]
.L517:
	.loc 1 1161 23 discriminator 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 1161 9 discriminator 1
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bcc	.L518
	.loc 1 1160 25 discriminator 2
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.L516:
	.loc 1 1160 5 discriminator 1
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bcc	.L519
	.loc 1 1165 7
	movs	r3, #0
	strb	r3, [sp, #23]
	.loc 1 1166 12
	movs	r3, #1
	str	r3, [sp, #28]
	.loc 1 1166 5
	b	.L520
.L521:
	.loc 1 1169 17 discriminator 3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1169 14 discriminator 3
	ldrb	r3, [sp, #23]
	ands	r3, r3, r2
	strb	r3, [sp, #22]
	.loc 1 1170 17 discriminator 3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	.loc 1 1170 10 discriminator 3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	.loc 1 1170 14 discriminator 3
	ldrb	r2, [sp, #23]
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 1171 11 discriminator 3
	ldrb	r3, [sp, #22]
	strb	r3, [sp, #23]
	.loc 1 1174 25 discriminator 3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1174 20 discriminator 3
	and	r3, r3, #1
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	.loc 1 1174 16 discriminator 3
	strb	r3, [sp, #21]
	.loc 1 1175 17 discriminator 3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 1175 26 discriminator 3
	ldr	r3, [sp, #28]
	subs	r3, r3, #1
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1175 32 discriminator 3
	ldrb	r1, [sp, #21]
	smulbb	r3, r1, r3
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 1 1175 21 discriminator 3
	ands	r3, r3, r2
	sxtb	r2, r3
	.loc 1 1175 13 discriminator 3
	ldrsb	r3, [sp, #23]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [sp, #23]
	.loc 1 1176 17 discriminator 3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 1176 26 discriminator 3
	ldr	r3, [sp, #28]
	subs	r3, r3, #1
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1176 32 discriminator 3
	ldrb	r1, [sp, #21]
	smulbb	r3, r1, r3
	uxtb	r3, r3
	sxtb	r3, r3
	.loc 1 1176 21 discriminator 3
	eors	r3, r3, r2
	sxtb	r1, r3
	.loc 1 1176 10 discriminator 3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	.loc 1 1176 21 discriminator 3
	uxtb	r2, r1
	.loc 1 1176 14 discriminator 3
	strb	r2, [r3]
	.loc 1 1177 16 discriminator 3
	ldr	r3, [sp, #28]
	subs	r3, r3, #1
	ldr	r2, [sp, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 1177 26 discriminator 3
	ldrb	r3, [sp, #21]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 1177 16 discriminator 3
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r1, r3
	ldr	r3, [sp, #28]
	subs	r3, r3, #1
	ldr	r2, [sp, #12]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	.loc 1 1166 26 discriminator 3
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.L520:
	.loc 1 1166 5 discriminator 1
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bls	.L521
	.loc 1 1179 1
	nop
	add	sp, sp, #36
.LCFI93:
	@ sp needed
	ldr	pc, [sp], #4
.LFE32:
	.size	ecp_comb_fixed, .-ecp_comb_fixed
	.section	.text.ecp_precompute_comb,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_precompute_comb, %function
ecp_precompute_comb:
.LFB33:
	.loc 1 1194 1
	@ args = 4, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI94:
	sub	sp, sp, #164
.LCFI95:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strb	r3, [sp, #3]
	.loc 1 1204 5
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	mbedtls_ecp_copy
	str	r0, [sp, #156]
	ldr	r3, [sp, #156]
	cmp	r3, #0
	bne	.L538
	.loc 1 1206 7
	movs	r3, #0
	strb	r3, [sp, #154]
	.loc 1 1207 12
	movs	r3, #1
	strb	r3, [sp, #155]
	.loc 1 1207 5
	b	.L525
.L530:
	.loc 1 1209 17
	ldrb	r2, [sp, #155]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	.loc 1 1209 13
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	str	r3, [sp, #144]
	.loc 1 1210 9
	ldrb	r3, [sp, #155]	@ zero_extendqisi2
	lsrs	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #144]
	bl	mbedtls_ecp_copy
	str	r0, [sp, #156]
	ldr	r3, [sp, #156]
	cmp	r3, #0
	bne	.L539
	.loc 1 1211 16
	movs	r3, #0
	str	r3, [sp, #148]
	.loc 1 1211 9
	b	.L527
.L529:
	.loc 1 1212 13
	ldr	r2, [sp, #144]
	ldr	r1, [sp, #144]
	ldr	r0, [sp, #12]
	bl	ecp_double_jac
	str	r0, [sp, #156]
	ldr	r3, [sp, #156]
	cmp	r3, #0
	bne	.L540
	.loc 1 1211 29 discriminator 2
	ldr	r3, [sp, #148]
	adds	r3, r3, #1
	str	r3, [sp, #148]
.L527:
	.loc 1 1211 9 discriminator 1
	ldr	r2, [sp, #148]
	ldr	r3, [sp, #168]
	cmp	r2, r3
	bcc	.L529
	.loc 1 1214 13 discriminator 2
	ldrb	r3, [sp, #154]	@ zero_extendqisi2
	adds	r2, r3, #1
	strb	r2, [sp, #154]
	.loc 1 1214 17 discriminator 2
	lsls	r3, r3, #2
	add	r2, sp, #160
	add	r3, r3, r2
	ldr	r2, [sp, #144]
	str	r2, [r3, #-140]
	.loc 1 1207 44 discriminator 2
	ldrb	r3, [sp, #155]
	lsls	r3, r3, #1
	strb	r3, [sp, #155]
.L525:
	.loc 1 1207 19 discriminator 1
	ldrb	r2, [sp, #155]	@ zero_extendqisi2
	.loc 1 1207 33 discriminator 1
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	.loc 1 1207 19 discriminator 1
	lsr	r3, r2, r3
	.loc 1 1207 5 discriminator 1
	cmp	r3, #0
	beq	.L530
	.loc 1 1217 5
	ldrb	r2, [sp, #154]	@ zero_extendqisi2
	add	r3, sp, #20
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	ecp_normalize_jac_many
	str	r0, [sp, #156]
	ldr	r3, [sp, #156]
	cmp	r3, #0
	bne	.L541
	.loc 1 1223 7
	movs	r3, #0
	strb	r3, [sp, #154]
	.loc 1 1224 12
	movs	r3, #1
	strb	r3, [sp, #155]
	.loc 1 1224 5
	b	.L532
.L536:
	.loc 1 1226 11
	ldrb	r3, [sp, #155]	@ zero_extendqisi2
	str	r3, [sp, #148]
	.loc 1 1227 14
	b	.L533
.L535:
	.loc 1 1229 13
	ldrb	r2, [sp, #155]	@ zero_extendqisi2
	ldr	r3, [sp, #148]
	add	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #8]
	adds	r1, r3, r2
	ldr	r2, [sp, #148]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #8]
	adds	r0, r3, r2
	ldrb	r2, [sp, #155]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	mov	r2, r0
	ldr	r0, [sp, #12]
	bl	ecp_add_mixed
	str	r0, [sp, #156]
	ldr	r3, [sp, #156]
	cmp	r3, #0
	bne	.L542
	.loc 1 1230 28
	ldrb	r2, [sp, #155]	@ zero_extendqisi2
	ldr	r3, [sp, #148]
	add	r2, r2, r3
	.loc 1 1230 25
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	.loc 1 1230 17
	ldrb	r3, [sp, #154]	@ zero_extendqisi2
	adds	r1, r3, #1
	strb	r1, [sp, #154]
	mov	r1, r3
	.loc 1 1230 23
	ldr	r3, [sp, #8]
	add	r2, r2, r3
	.loc 1 1230 21
	lsls	r3, r1, #2
	add	r1, sp, #160
	add	r3, r3, r1
	str	r2, [r3, #-140]
.L533:
	.loc 1 1227 17
	ldr	r3, [sp, #148]
	subs	r2, r3, #1
	str	r2, [sp, #148]
	.loc 1 1227 14
	cmp	r3, #0
	bne	.L535
	.loc 1 1224 44 discriminator 2
	ldrb	r3, [sp, #155]
	lsls	r3, r3, #1
	strb	r3, [sp, #155]
.L532:
	.loc 1 1224 19 discriminator 1
	ldrb	r2, [sp, #155]	@ zero_extendqisi2
	.loc 1 1224 33 discriminator 1
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	.loc 1 1224 19 discriminator 1
	lsr	r3, r2, r3
	.loc 1 1224 5 discriminator 1
	cmp	r3, #0
	beq	.L536
	.loc 1 1234 5
	ldrb	r2, [sp, #154]	@ zero_extendqisi2
	add	r3, sp, #20
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	ecp_normalize_jac_many
	str	r0, [sp, #156]
	ldr	r3, [sp, #156]
	cmp	r3, #0
	.loc 1 1236 1
	b	.L524
.L538:
	.loc 1 1204 5
	nop
	b	.L524
.L539:
	.loc 1 1210 9
	nop
	b	.L524
.L540:
	.loc 1 1212 13
	nop
	b	.L524
.L541:
	.loc 1 1217 5
	nop
	b	.L524
.L542:
	.loc 1 1229 13
	nop
.L524:
	.loc 1 1237 11
	ldr	r3, [sp, #156]
	.loc 1 1238 1
	mov	r0, r3
	add	sp, sp, #164
.LCFI96:
	@ sp needed
	ldr	pc, [sp], #4
.LFE33:
	.size	ecp_precompute_comb, .-ecp_precompute_comb
	.section	.text.ecp_select_comb,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_select_comb, %function
ecp_select_comb:
.LFB34:
	.loc 1 1246 1
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI97:
	sub	sp, sp, #28
.LCFI98:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strb	r3, [sp, #3]
	.loc 1 1251 25
	ldrb	r3, [sp, #32]	@ zero_extendqisi2
	lsrs	r3, r3, #1
	uxtb	r3, r3
	.loc 1 1251 8
	and	r3, r3, #63
	strb	r3, [sp, #18]
	.loc 1 1254 12
	movs	r3, #0
	strb	r3, [sp, #19]
	.loc 1 1254 5
	b	.L544
.L548:
	.loc 1 1256 9
	ldr	r0, [sp, #8]
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	mov	r1, r3
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	ldrb	r3, [sp, #18]	@ zero_extendqisi2
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	bl	mbedtls_mpi_safe_cond_assign
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L550
	.loc 1 1257 9
	ldr	r3, [sp, #8]
	add	r0, r3, #12
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	add	r1, r3, #12
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	ldrb	r3, [sp, #18]	@ zero_extendqisi2
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	bl	mbedtls_mpi_safe_cond_assign
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L551
	.loc 1 1254 29 discriminator 2
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #19]
.L544:
	.loc 1 1254 5 discriminator 1
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L548
	.loc 1 1261 5
	ldrb	r3, [sp, #32]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r2, r3
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	ecp_safe_invert_jac
	str	r0, [sp, #20]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	.loc 1 1263 1
	b	.L546
.L550:
	.loc 1 1256 9
	nop
	b	.L546
.L551:
	.loc 1 1257 9
	nop
.L546:
	.loc 1 1264 11
	ldr	r3, [sp, #20]
	.loc 1 1265 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI99:
	@ sp needed
	ldr	pc, [sp], #4
.LFE34:
	.size	ecp_select_comb, .-ecp_select_comb
	.section	.text.ecp_mul_comb_core,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_mul_comb_core, %function
ecp_mul_comb_core:
.LFB35:
	.loc 1 1278 1
	@ args = 16, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI100:
	sub	sp, sp, #76
.LCFI101:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	strb	r3, [sp, #11]
	.loc 1 1283 5
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_ecp_point_init
	.loc 1 1286 7
	ldr	r3, [sp, #84]
	str	r3, [sp, #64]
	.loc 1 1287 5
	ldr	r2, [sp, #80]
	ldr	r3, [sp, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [sp, #11]	@ zero_extendqisi2
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	ecp_select_comb
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L562
	.loc 1 1288 5
	ldr	r3, [sp, #16]
	adds	r3, r3, #24
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L563
	.loc 1 1289 7
	ldr	r3, [sp, #88]
	cmp	r3, #0
	beq	.L557
	.loc 1 1290 9
	ldr	r3, [sp, #92]
	ldr	r2, [sp, #88]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	ecp_randomize_jac
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L564
	.loc 1 1292 10
	b	.L557
.L560:
	.loc 1 1294 9
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	ecp_double_jac
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L565
	.loc 1 1295 9
	ldr	r2, [sp, #80]
	ldr	r3, [sp, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [sp, #11]	@ zero_extendqisi2
	add	r1, sp, #28
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [sp, #12]
	ldr	r0, [sp, #20]
	bl	ecp_select_comb
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L566
	.loc 1 1296 9
	add	r3, sp, #28
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	ecp_add_mixed
	str	r0, [sp, #68]
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L567
.L557:
	.loc 1 1292 13
	ldr	r3, [sp, #64]
	subs	r2, r3, #1
	str	r2, [sp, #64]
	.loc 1 1292 10
	cmp	r3, #0
	bne	.L560
	.loc 1 1299 1
	b	.L554
.L562:
	.loc 1 1287 5
	nop
	b	.L554
.L563:
	.loc 1 1288 5
	nop
	b	.L554
.L564:
	.loc 1 1290 9
	nop
	b	.L554
.L565:
	.loc 1 1294 9
	nop
	b	.L554
.L566:
	.loc 1 1295 9
	nop
	b	.L554
.L567:
	.loc 1 1296 9
	nop
.L554:
	.loc 1 1300 5
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	.loc 1 1302 11
	ldr	r3, [sp, #68]
	.loc 1 1303 1
	mov	r0, r3
	add	sp, sp, #76
.LCFI102:
	@ sp needed
	ldr	pc, [sp], #4
.LFE35:
	.size	ecp_mul_comb_core, .-ecp_mul_comb_core
	.section	.text.ecp_mul_comb,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_mul_comb, %function
ecp_mul_comb:
.LFB36:
	.loc 1 1313 1
	@ args = 8, pretend = 0, frame = 328
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI103:
	sub	sp, sp, #344
.LCFI104:
	add	r4, sp, #28
	str	r0, [r4]
	add	r0, sp, #24
	str	r1, [r0]
	add	r1, sp, #20
	str	r2, [r1]
	add	r2, sp, #16
	str	r3, [r2]
	.loc 1 1321 5
	add	r3, sp, #48
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1322 5
	add	r3, sp, #36
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1325 30
	add	r3, sp, #28
	ldr	r3, [r3]
	adds	r3, r3, #76
	.loc 1 1325 9
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_get_bit
	mov	r3, r0
	.loc 1 1325 7
	cmp	r3, #1
	beq	.L569
	.loc 1 1326 15
	ldr	r3, .L600
	b	.L593
.L569:
	.loc 1 1333 12
	add	r3, sp, #28
	ldr	r3, [r3]
	ldr	r3, [r3, #92]
	.loc 1 1333 7
	cmp	r3, #384
	bcc	.L571
	.loc 1 1333 7 is_stmt 0 discriminator 1
	movs	r3, #5
	b	.L572
.L571:
	.loc 1 1333 7 discriminator 2
	movs	r3, #4
.L572:
	.loc 1 1333 7 discriminator 4
	strb	r3, [sp, #339]
	.loc 1 1341 16 is_stmt 1 discriminator 4
	add	r3, sp, #16
	ldr	r3, [r3]
	add	r2, r3, #12
	.loc 1 1341 44 discriminator 4
	add	r3, sp, #28
	ldr	r3, [r3]
	adds	r3, r3, #52
	.loc 1 1341 16 discriminator 4
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1341 61 discriminator 4
	cmp	r3, #0
	bne	.L573
	.loc 1 1342 16 discriminator 1
	add	r3, sp, #16
	ldr	r2, [r3]
	.loc 1 1342 44 discriminator 1
	add	r3, sp, #28
	ldr	r3, [r3]
	adds	r3, r3, #40
	.loc 1 1342 16 discriminator 1
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1341 61 discriminator 1
	cmp	r3, #0
	bne	.L573
	.loc 1 1341 61 is_stmt 0 discriminator 3
	movs	r3, #1
	b	.L574
.L573:
	.loc 1 1341 61 discriminator 4
	movs	r3, #0
.L574:
	.loc 1 1341 12 is_stmt 1 discriminator 6
	strb	r3, [sp, #331]
	.loc 1 1343 7 discriminator 6
	ldrb	r3, [sp, #331]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L575
	.loc 1 1344 10
	ldrb	r3, [sp, #339]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #339]
.L575:
	.loc 1 1353 7
	ldrb	r3, [sp, #339]	@ zero_extendqisi2
	cmp	r3, #6
	bls	.L576
	.loc 1 1354 11
	movs	r3, #6
	strb	r3, [sp, #339]
.L576:
	.loc 1 1355 11
	ldrb	r2, [sp, #339]	@ zero_extendqisi2
	.loc 1 1355 17
	add	r3, sp, #28
	ldr	r3, [r3]
	ldr	r3, [r3, #92]
	.loc 1 1355 7
	cmp	r2, r3
	bcc	.L577
	.loc 1 1356 11
	movs	r3, #2
	strb	r3, [sp, #339]
.L577:
	.loc 1 1359 25
	ldrb	r3, [sp, #339]	@ zero_extendqisi2
	subs	r3, r3, #1
	.loc 1 1359 18
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 1 1359 13
	strb	r3, [sp, #330]
	.loc 1 1360 14
	add	r3, sp, #28
	ldr	r3, [r3]
	ldr	r2, [r3, #92]
	.loc 1 1360 22
	ldrb	r3, [sp, #339]	@ zero_extendqisi2
	add	r3, r3, r2
	.loc 1 1360 26
	subs	r2, r3, #1
	.loc 1 1360 32
	ldrb	r3, [sp, #339]	@ zero_extendqisi2
	.loc 1 1360 7
	udiv	r3, r2, r3
	str	r3, [sp, #324]
	.loc 1 1366 25
	ldrb	r3, [sp, #331]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L578
	.loc 1 1366 25 is_stmt 0 discriminator 1
	add	r3, sp, #28
	ldr	r3, [r3]
	ldr	r3, [r3, #116]
	b	.L579
.L578:
	.loc 1 1366 25 discriminator 2
	movs	r3, #0
.L579:
	.loc 1 1366 7 is_stmt 1 discriminator 4
	str	r3, [sp, #332]
	.loc 1 1368 7 discriminator 4
	ldr	r3, [sp, #332]
	cmp	r3, #0
	bne	.L580
	.loc 1 1370 13
	ldrb	r3, [sp, #330]	@ zero_extendqisi2
	movs	r1, #36
	mov	r0, r3
	bl	calloc
	str	r0, [sp, #332]
	.loc 1 1371 11
	ldr	r3, [sp, #332]
	cmp	r3, #0
	bne	.L581
	.loc 1 1373 17
	ldr	r3, .L600+4
	str	r3, [sp, #340]
	.loc 1 1374 13
	b	.L582
.L581:
	.loc 1 1377 9
	ldrb	r1, [sp, #339]	@ zero_extendqisi2
	add	r2, sp, #16
	add	r0, sp, #28
	ldr	r3, [sp, #324]
	str	r3, [sp]
	mov	r3, r1
	ldr	r2, [r2]
	ldr	r1, [sp, #332]
	ldr	r0, [r0]
	bl	ecp_precompute_comb
	str	r0, [sp, #340]
	ldr	r3, [sp, #340]
	cmp	r3, #0
	bne	.L594
	.loc 1 1379 11
	ldrb	r3, [sp, #331]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L580
	.loc 1 1381 20
	add	r3, sp, #28
	ldr	r3, [r3]
	ldr	r2, [sp, #332]
	str	r2, [r3, #116]
	.loc 1 1382 25
	ldrb	r2, [sp, #330]	@ zero_extendqisi2
	add	r3, sp, #28
	ldr	r3, [r3]
	str	r2, [r3, #120]
.L580:
	.loc 1 1390 18
	add	r3, sp, #20
	movs	r1, #0
	ldr	r0, [r3]
	bl	mbedtls_mpi_get_bit
	mov	r3, r0
	.loc 1 1390 46
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	.loc 1 1390 14
	strb	r3, [sp, #323]
	.loc 1 1391 5
	add	r3, sp, #20
	add	r2, sp, #48
	ldr	r1, [r3]
	mov	r0, r2
	bl	mbedtls_mpi_copy
	str	r0, [sp, #340]
	ldr	r3, [sp, #340]
	cmp	r3, #0
	bne	.L595
	.loc 1 1392 5
	add	r3, sp, #28
	ldr	r3, [r3]
	add	r1, r3, #76
	add	r3, sp, #20
	add	r0, sp, #36
	ldr	r2, [r3]
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #340]
	ldr	r3, [sp, #340]
	cmp	r3, #0
	bne	.L596
	.loc 1 1393 5
	ldrb	r3, [sp, #323]	@ zero_extendqisi2
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	add	r1, sp, #36
	add	r3, sp, #48
	mov	r0, r3
	bl	mbedtls_mpi_safe_cond_assign
	str	r0, [sp, #340]
	ldr	r3, [sp, #340]
	cmp	r3, #0
	bne	.L597
	.loc 1 1398 5
	add	r3, sp, #48
	ldrb	r2, [sp, #339]	@ zero_extendqisi2
	add	r0, sp, #60
	ldr	r1, [sp, #324]
	bl	ecp_comb_fixed
	.loc 1 1399 5
	ldrb	r2, [sp, #330]	@ zero_extendqisi2
	add	r1, sp, #24
	add	r0, sp, #28
	ldr	r3, [sp, #356]
	str	r3, [sp, #12]
	ldr	r3, [sp, #352]
	str	r3, [sp, #8]
	ldr	r3, [sp, #324]
	str	r3, [sp, #4]
	add	r3, sp, #60
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [sp, #332]
	ldr	r1, [r1]
	ldr	r0, [r0]
	bl	ecp_mul_comb_core
	str	r0, [sp, #340]
	ldr	r3, [sp, #340]
	cmp	r3, #0
	bne	.L598
	.loc 1 1404 5
	ldrb	r3, [sp, #323]	@ zero_extendqisi2
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	add	r1, sp, #24
	add	r3, sp, #28
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	ecp_safe_invert_jac
	str	r0, [sp, #340]
	ldr	r3, [sp, #340]
	cmp	r3, #0
	bne	.L599
	.loc 1 1405 5
	add	r2, sp, #24
	add	r3, sp, #28
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	ecp_normalize_jac
	str	r0, [sp, #340]
	ldr	r3, [sp, #340]
	cmp	r3, #0
	.loc 1 1407 1
	b	.L582
.L594:
	.loc 1 1377 9
	nop
	b	.L582
.L595:
	.loc 1 1391 5
	nop
	b	.L582
.L596:
	.loc 1 1392 5
	nop
	b	.L582
.L597:
	.loc 1 1393 5
	nop
	b	.L582
.L598:
	.loc 1 1399 5
	nop
	b	.L582
.L599:
	.loc 1 1404 5
	nop
.L582:
	.loc 1 1409 7
	ldr	r3, [sp, #332]
	cmp	r3, #0
	beq	.L589
	.loc 1 1409 19 discriminator 1
	ldrb	r3, [sp, #331]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L589
	.loc 1 1411 16
	movs	r3, #0
	strb	r3, [sp, #338]
	.loc 1 1411 9
	b	.L590
.L591:
	.loc 1 1412 39 discriminator 3
	ldrb	r2, [sp, #338]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	.loc 1 1412 13 discriminator 3
	ldr	r3, [sp, #332]
	add	r3, r3, r2
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	.loc 1 1411 35 discriminator 3
	ldrb	r3, [sp, #338]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #338]
.L590:
	.loc 1 1411 9 discriminator 1
	ldrb	r2, [sp, #338]	@ zero_extendqisi2
	ldrb	r3, [sp, #330]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L591
	.loc 1 1413 9
	ldr	r0, [sp, #332]
	bl	free
.L589:
	.loc 1 1416 5
	add	r3, sp, #48
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1417 5
	add	r3, sp, #36
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1419 7
	ldr	r3, [sp, #340]
	cmp	r3, #0
	beq	.L592
	.loc 1 1420 9
	add	r3, sp, #24
	ldr	r0, [r3]
	bl	mbedtls_ecp_point_free
.L592:
	.loc 1 1422 11
	ldr	r3, [sp, #340]
.L593:
	.loc 1 1423 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #344
.LCFI105:
	@ sp needed
	pop	{r4, pc}
.L601:
	.align	2
.L600:
	.word	-20352
	.word	-19840
.LFE36:
	.size	ecp_mul_comb, .-ecp_mul_comb
	.section	.text.ecp_normalize_mxz,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_normalize_mxz, %function
ecp_normalize_mxz:
.LFB37:
	.loc 1 1441 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI106:
	sub	sp, sp, #20
.LCFI107:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1444 5
	ldr	r3, [sp]
	add	r0, r3, #24
	ldr	r3, [sp]
	add	r1, r3, #24
	ldr	r3, [sp, #4]
	adds	r3, r3, #4
	mov	r2, r3
	bl	mbedtls_mpi_inv_mod
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L608
	.loc 1 1445 5
	ldr	r0, [sp]
	ldr	r1, [sp]
	ldr	r3, [sp]
	adds	r3, r3, #24
	mov	r2, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L609
	.loc 1 1445 68 discriminator 2
	ldr	r3, [sp]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L610
	.loc 1 1445 68 is_stmt 0 discriminator 4
	ldr	r3, .L611
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L611
	str	r3, [r2]
	.loc 1 1446 5 is_stmt 1 discriminator 4
	ldr	r3, [sp]
	adds	r3, r3, #24
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	.loc 1 1448 1 discriminator 4
	b	.L604
.L608:
	.loc 1 1444 5
	nop
	b	.L604
.L609:
	.loc 1 1445 5
	nop
	b	.L604
.L610:
	.loc 1 1445 68
	nop
.L604:
	.loc 1 1449 11
	ldr	r3, [sp, #12]
	.loc 1 1450 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI108:
	@ sp needed
	ldr	pc, [sp], #4
.L612:
	.align	2
.L611:
	.word	mul_count
.LFE37:
	.size	ecp_normalize_mxz, .-ecp_normalize_mxz
	.section	.text.ecp_randomize_mxz,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_randomize_mxz, %function
ecp_randomize_mxz:
.LFB38:
	.loc 1 1462 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI109:
	sub	sp, sp, #44
.LCFI110:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1465 26
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #88]
	.loc 1 1465 34
	adds	r3, r3, #7
	.loc 1 1465 12
	lsrs	r3, r3, #3
	str	r3, [sp, #28]
	.loc 1 1466 9
	movs	r3, #0
	str	r3, [sp, #32]
	.loc 1 1468 5
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_init
.L619:
	.loc 1 1473 9
	add	r0, sp, #16
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #28]
	bl	mbedtls_mpi_fill_random
	.loc 1 1475 14
	b	.L614
.L616:
	.loc 1 1476 13
	add	r3, sp, #16
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_shift_r
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L625
.L614:
	.loc 1 1475 16
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #16
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1475 14
	cmp	r3, #0
	bge	.L616
	.loc 1 1478 18
	ldr	r3, [sp, #32]
	adds	r2, r3, #1
	str	r2, [sp, #32]
	.loc 1 1478 11
	cmp	r3, #10
	ble	.L617
	.loc 1 1479 19
	ldr	r3, .L630
	b	.L624
.L617:
	.loc 1 1481 12
	add	r3, sp, #16
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1481 5
	cmp	r3, #0
	ble	.L619
	.loc 1 1483 5
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #8]
	add	r2, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L626
	.loc 1 1483 65 discriminator 2
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L627
	.loc 1 1483 65 is_stmt 0 discriminator 4
	ldr	r3, .L630+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L630+4
	str	r3, [r2]
	.loc 1 1484 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #8]
	add	r0, r3, #24
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	add	r2, sp, #16
	mov	r1, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L628
	.loc 1 1484 65 discriminator 2
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L629
	.loc 1 1484 65 is_stmt 0 discriminator 4
	ldr	r3, .L630+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L630+4
	str	r3, [r2]
	b	.L615
.L625:
	.loc 1 1476 13 is_stmt 1
	nop
	b	.L615
.L626:
	.loc 1 1483 5
	nop
	b	.L615
.L627:
	.loc 1 1483 65
	nop
	b	.L615
.L628:
	.loc 1 1484 5
	nop
	b	.L615
.L629:
	.loc 1 1484 65
	nop
.L615:
	.loc 1 1487 5
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1489 11
	ldr	r3, [sp, #36]
.L624:
	.loc 1 1490 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #44
.LCFI111:
	@ sp needed
	ldr	pc, [sp], #4
.L631:
	.align	2
.L630:
	.word	-19712
	.word	mul_count
.LFE38:
	.size	ecp_randomize_mxz, .-ecp_randomize_mxz
	.section	.text.ecp_double_add_mxz,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_double_add_mxz, %function
ecp_double_add_mxz:
.LFB39:
	.loc 1 1511 1
	@ args = 8, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI112:
	sub	sp, sp, #132
.LCFI113:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1515 5
	add	r3, sp, #112
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1515 29
	add	r3, sp, #100
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1515 54
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1516 5
	add	r3, sp, #76
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1516 30
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1516 54
	add	r3, sp, #52
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1517 5
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1517 29
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1517 54
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1519 5
	ldr	r1, [sp]
	ldr	r3, [sp]
	add	r2, r3, #24
	add	r3, sp, #112
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L682
	.loc 1 1519 70
	b	.L635
.L636:
	.loc 1 1519 70 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #112
	add	r3, sp, #112
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L683
.L635:
	.loc 1 1519 70 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #112
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L636
	.loc 1 1520 5 is_stmt 1
	add	r2, sp, #112
	add	r1, sp, #112
	add	r3, sp, #100
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L684
	.loc 1 1520 70 discriminator 2
	add	r3, sp, #100
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L685
	.loc 1 1520 70 is_stmt 0 discriminator 4
	ldr	r3, .L718
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L718
	str	r3, [r2]
	.loc 1 1521 5 is_stmt 1 discriminator 4
	ldr	r1, [sp]
	ldr	r3, [sp]
	add	r2, r3, #24
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L686
	.loc 1 1521 70
	b	.L640
.L642:
	.loc 1 1521 70 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #88
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L687
.L640:
	.loc 1 1521 70 discriminator 3
	ldr	r3, [sp, #88]
	cmp	r3, #0
	bge	.L641
	.loc 1 1521 70 discriminator 4
	add	r3, sp, #88
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L642
.L641:
	.loc 1 1522 5 is_stmt 1
	add	r2, sp, #88
	add	r1, sp, #88
	add	r3, sp, #76
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L688
	.loc 1 1522 70 discriminator 2
	add	r3, sp, #76
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L689
	.loc 1 1522 70 is_stmt 0 discriminator 4
	ldr	r3, .L718
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L718
	str	r3, [r2]
	.loc 1 1523 5 is_stmt 1 discriminator 4
	add	r2, sp, #76
	add	r1, sp, #100
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L690
	.loc 1 1523 70
	b	.L646
.L648:
	.loc 1 1523 70 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #64
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L691
.L646:
	.loc 1 1523 70 discriminator 3
	ldr	r3, [sp, #64]
	cmp	r3, #0
	bge	.L647
	.loc 1 1523 70 discriminator 4
	add	r3, sp, #64
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L648
.L647:
	.loc 1 1524 5 is_stmt 1
	ldr	r1, [sp, #136]
	ldr	r3, [sp, #136]
	add	r2, r3, #24
	add	r3, sp, #52
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L692
	.loc 1 1524 70
	b	.L650
.L651:
	.loc 1 1524 70 is_stmt 0 discriminator 4
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #52
	add	r3, sp, #52
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L693
.L650:
	.loc 1 1524 70 discriminator 3
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r3, sp, #52
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L651
	.loc 1 1525 5 is_stmt 1
	ldr	r1, [sp, #136]
	ldr	r3, [sp, #136]
	add	r2, r3, #24
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L694
	.loc 1 1525 70
	b	.L653
.L655:
	.loc 1 1525 70 is_stmt 0 discriminator 5
	ldr	r3, [sp, #12]
	adds	r2, r3, #4
	add	r1, sp, #40
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L695
.L653:
	.loc 1 1525 70 discriminator 3
	ldr	r3, [sp, #40]
	cmp	r3, #0
	bge	.L654
	.loc 1 1525 70 discriminator 4
	add	r3, sp, #40
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L655
.L654:
	.loc 1 1526 5 is_stmt 1
	add	r2, sp, #112
	add	r1, sp, #40
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L696
	.loc 1 1526 70 discriminator 2
	add	r3, sp, #28
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L697
	.loc 1 1526 70 is_stmt 0 discriminator 4
	ldr	r3, .L718
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L718
	str	r3, [r2]
	.loc 1 1527 5 is_stmt 1 discriminator 4
	add	r2, sp, #88
	add	r1, sp, #52
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L698
	.loc 1 1527 70 discriminator 2
	add	r3, sp, #16
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L699
	.loc 1 1527 70 is_stmt 0 discriminator 4
	ldr	r3, .L718
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L718
	str	r3, [r2]
	.loc 1 1528 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #4]
	add	r2, sp, #16
	add	r1, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L700
	.loc 1 1528 70 discriminator 2
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L701
	.loc 1 1528 70 is_stmt 0 discriminator 4
	ldr	r3, .L718
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L718
	str	r3, [r2]
	.loc 1 1529 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #4]
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L702
	.loc 1 1529 70 discriminator 2
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L703
	.loc 1 1529 70 is_stmt 0 discriminator 4
	ldr	r3, .L718
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L718
	str	r3, [r2]
	.loc 1 1530 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	add	r2, sp, #16
	add	r1, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L704
	.loc 1 1530 70
	b	.L665
.L719:
	.align	2
.L718:
	.word	mul_count
.L667:
	.loc 1 1530 70 is_stmt 0 discriminator 5
	ldr	r3, [sp, #4]
	add	r0, r3, #24
	ldr	r3, [sp, #4]
	add	r1, r3, #24
	ldr	r3, [sp, #12]
	adds	r3, r3, #4
	mov	r2, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L705
.L665:
	.loc 1 1530 70 discriminator 3
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bge	.L666
	.loc 1 1530 70 discriminator 4
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L667
.L666:
	.loc 1 1531 5 is_stmt 1
	ldr	r3, [sp, #4]
	add	r0, r3, #24
	ldr	r3, [sp, #4]
	add	r1, r3, #24
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	mov	r2, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L706
	.loc 1 1531 70 discriminator 2
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L707
	.loc 1 1531 70 is_stmt 0 discriminator 4
	ldr	r3, .L720
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L720
	str	r3, [r2]
	.loc 1 1532 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #4]
	add	r0, r3, #24
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	mov	r2, r3
	ldr	r1, [sp, #140]
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L708
	.loc 1 1532 70 discriminator 2
	ldr	r3, [sp, #4]
	adds	r3, r3, #24
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L709
	.loc 1 1532 70 is_stmt 0 discriminator 4
	ldr	r3, .L720
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L720
	str	r3, [r2]
	.loc 1 1533 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #8]
	add	r2, sp, #76
	add	r1, sp, #100
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L710
	.loc 1 1533 70 discriminator 2
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L711
	.loc 1 1533 70 is_stmt 0 discriminator 4
	ldr	r3, .L720
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L720
	str	r3, [r2]
	.loc 1 1534 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #8]
	add	r0, r3, #24
	ldr	r3, [sp, #12]
	adds	r3, r3, #16
	add	r2, sp, #64
	mov	r1, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L712
	.loc 1 1534 70 discriminator 2
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L713
	.loc 1 1534 70 is_stmt 0 discriminator 4
	ldr	r3, .L720
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L720
	str	r3, [r2]
	.loc 1 1535 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #8]
	add	r0, r3, #24
	ldr	r3, [sp, #8]
	add	r2, r3, #24
	add	r3, sp, #76
	mov	r1, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L714
	.loc 1 1535 70
	b	.L677
.L678:
	.loc 1 1535 70 is_stmt 0 discriminator 4
	ldr	r3, [sp, #8]
	add	r0, r3, #24
	ldr	r3, [sp, #8]
	add	r1, r3, #24
	ldr	r3, [sp, #12]
	adds	r3, r3, #4
	mov	r2, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L715
.L677:
	.loc 1 1535 70 discriminator 3
	ldr	r3, [sp, #8]
	add	r2, r3, #24
	ldr	r3, [sp, #12]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L678
	.loc 1 1536 5 is_stmt 1
	ldr	r3, [sp, #8]
	add	r0, r3, #24
	ldr	r3, [sp, #8]
	add	r2, r3, #24
	add	r3, sp, #64
	mov	r1, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L716
	.loc 1 1536 70 discriminator 2
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	ldr	r1, [sp, #12]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #124]
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L717
	.loc 1 1536 70 is_stmt 0 discriminator 4
	ldr	r3, .L720
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L720
	str	r3, [r2]
	b	.L634
.L682:
	.loc 1 1519 5 is_stmt 1
	nop
	b	.L634
.L683:
	.loc 1 1519 70
	nop
	b	.L634
.L684:
	.loc 1 1520 5
	nop
	b	.L634
.L685:
	.loc 1 1520 70
	nop
	b	.L634
.L686:
	.loc 1 1521 5
	nop
	b	.L634
.L687:
	.loc 1 1521 70
	nop
	b	.L634
.L688:
	.loc 1 1522 5
	nop
	b	.L634
.L689:
	.loc 1 1522 70
	nop
	b	.L634
.L690:
	.loc 1 1523 5
	nop
	b	.L634
.L691:
	.loc 1 1523 70
	nop
	b	.L634
.L692:
	.loc 1 1524 5
	nop
	b	.L634
.L693:
	.loc 1 1524 70
	nop
	b	.L634
.L694:
	.loc 1 1525 5
	nop
	b	.L634
.L695:
	.loc 1 1525 70
	nop
	b	.L634
.L696:
	.loc 1 1526 5
	nop
	b	.L634
.L697:
	.loc 1 1526 70
	nop
	b	.L634
.L698:
	.loc 1 1527 5
	nop
	b	.L634
.L699:
	.loc 1 1527 70
	nop
	b	.L634
.L700:
	.loc 1 1528 5
	nop
	b	.L634
.L701:
	.loc 1 1528 70
	nop
	b	.L634
.L702:
	.loc 1 1529 5
	nop
	b	.L634
.L703:
	.loc 1 1529 70
	nop
	b	.L634
.L704:
	.loc 1 1530 5
	nop
	b	.L634
.L705:
	.loc 1 1530 70
	nop
	b	.L634
.L706:
	.loc 1 1531 5
	nop
	b	.L634
.L707:
	.loc 1 1531 70
	nop
	b	.L634
.L708:
	.loc 1 1532 5
	nop
	b	.L634
.L709:
	.loc 1 1532 70
	nop
	b	.L634
.L710:
	.loc 1 1533 5
	nop
	b	.L634
.L711:
	.loc 1 1533 70
	nop
	b	.L634
.L712:
	.loc 1 1534 5
	nop
	b	.L634
.L713:
	.loc 1 1534 70
	nop
	b	.L634
.L714:
	.loc 1 1535 5
	nop
	b	.L634
.L715:
	.loc 1 1535 70
	nop
	b	.L634
.L716:
	.loc 1 1536 5
	nop
	b	.L634
.L717:
	.loc 1 1536 70
	nop
.L634:
	.loc 1 1539 5
	add	r3, sp, #112
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1539 29
	add	r3, sp, #100
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1539 54
	add	r3, sp, #88
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1540 5
	add	r3, sp, #76
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1540 30
	add	r3, sp, #64
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1540 54
	add	r3, sp, #52
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1541 5
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1541 29
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1541 54
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1543 11
	ldr	r3, [sp, #124]
	.loc 1 1544 1
	mov	r0, r3
	add	sp, sp, #132
.LCFI114:
	@ sp needed
	ldr	pc, [sp], #4
.L721:
	.align	2
.L720:
	.word	mul_count
.LFE39:
	.size	ecp_double_add_mxz, .-ecp_double_add_mxz
	.section	.text.ecp_mul_mxz,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_mul_mxz, %function
ecp_mul_mxz:
.LFB40:
	.loc 1 1554 1
	@ args = 8, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI115:
	sub	sp, sp, #92
.LCFI116:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 1561 5
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_ecp_point_init
	.loc 1 1561 36
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1564 5
	ldr	r2, [sp, #8]
	add	r3, sp, #28
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_copy
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L738
	.loc 1 1565 5
	add	r3, sp, #40
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	mbedtls_ecp_copy
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L739
	.loc 1 1568 5
	ldr	r3, [sp, #16]
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L740
	.loc 1 1569 5
	ldr	r3, [sp, #16]
	adds	r3, r3, #24
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L741
	.loc 1 1570 5
	ldr	r3, [sp, #16]
	adds	r3, r3, #12
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1573 5
	b	.L728
.L729:
	.loc 1 1573 5 is_stmt 0 discriminator 3
	ldr	r3, [sp, #20]
	adds	r2, r3, #4
	add	r1, sp, #40
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L742
.L728:
	.loc 1 1573 5 discriminator 2
	ldr	r3, [sp, #20]
	adds	r2, r3, #4
	add	r3, sp, #40
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L729
	.loc 1 1576 7 is_stmt 1
	ldr	r3, [sp, #96]
	cmp	r3, #0
	beq	.L730
	.loc 1 1577 9
	add	r1, sp, #40
	ldr	r3, [sp, #100]
	ldr	r2, [sp, #96]
	ldr	r0, [sp, #20]
	bl	ecp_randomize_mxz
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L743
.L730:
	.loc 1 1580 9
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_bitlen
	str	r0, [sp, #80]
	.loc 1 1581 10
	b	.L731
.L736:
	.loc 1 1583 13
	ldr	r1, [sp, #80]
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_get_bit
	mov	r3, r0
	.loc 1 1583 11
	strb	r3, [sp, #79]
	.loc 1 1591 9
	ldr	r3, [sp, #16]
	ldrb	r2, [sp, #79]	@ zero_extendqisi2
	add	r1, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_safe_cond_swap
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L744
	.loc 1 1592 9
	ldr	r3, [sp, #16]
	add	r0, r3, #24
	ldrb	r2, [sp, #79]	@ zero_extendqisi2
	add	r3, sp, #40
	adds	r3, r3, #24
	mov	r1, r3
	bl	mbedtls_mpi_safe_cond_swap
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L745
	.loc 1 1593 9
	add	r2, sp, #40
	add	r3, sp, #28
	str	r3, [sp, #4]
	add	r3, sp, #40
	str	r3, [sp]
	ldr	r3, [sp, #16]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	ecp_double_add_mxz
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L746
	.loc 1 1594 9
	ldr	r3, [sp, #16]
	ldrb	r2, [sp, #79]	@ zero_extendqisi2
	add	r1, sp, #40
	mov	r0, r3
	bl	mbedtls_mpi_safe_cond_swap
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L747
	.loc 1 1595 9
	ldr	r3, [sp, #16]
	add	r0, r3, #24
	ldrb	r2, [sp, #79]	@ zero_extendqisi2
	add	r3, sp, #40
	adds	r3, r3, #24
	mov	r1, r3
	bl	mbedtls_mpi_safe_cond_swap
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	bne	.L748
.L731:
	.loc 1 1581 13
	ldr	r3, [sp, #80]
	subs	r2, r3, #1
	str	r2, [sp, #80]
	.loc 1 1581 10
	cmp	r3, #0
	bne	.L736
	.loc 1 1598 5
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	ecp_normalize_mxz
	str	r0, [sp, #84]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	.loc 1 1600 1
	b	.L724
.L738:
	.loc 1 1564 5
	nop
	b	.L724
.L739:
	.loc 1 1565 5
	nop
	b	.L724
.L740:
	.loc 1 1568 5
	nop
	b	.L724
.L741:
	.loc 1 1569 5
	nop
	b	.L724
.L742:
	.loc 1 1573 5
	nop
	b	.L724
.L743:
	.loc 1 1577 9
	nop
	b	.L724
.L744:
	.loc 1 1591 9
	nop
	b	.L724
.L745:
	.loc 1 1592 9
	nop
	b	.L724
.L746:
	.loc 1 1593 9
	nop
	b	.L724
.L747:
	.loc 1 1594 9
	nop
	b	.L724
.L748:
	.loc 1 1595 9
	nop
.L724:
	.loc 1 1601 5
	add	r3, sp, #40
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	.loc 1 1601 36
	add	r3, sp, #28
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1603 11
	ldr	r3, [sp, #84]
	.loc 1 1604 1
	mov	r0, r3
	add	sp, sp, #92
.LCFI117:
	@ sp needed
	ldr	pc, [sp], #4
.LFE40:
	.size	ecp_mul_mxz, .-ecp_mul_mxz
	.section	.text.mbedtls_ecp_mul,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_mul
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_mul, %function
mbedtls_ecp_mul:
.LFB41:
	.loc 1 1614 1
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI118:
	sub	sp, sp, #36
.LCFI119:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 1618 9
	ldr	r3, [sp, #8]
	adds	r3, r3, #24
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1618 7
	cmp	r3, #0
	beq	.L750
	.loc 1 1619 15
	ldr	r3, .L756
	b	.L751
.L750:
	.loc 1 1621 17
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #20]
	bl	mbedtls_ecp_check_privkey
	str	r0, [sp, #28]
	.loc 1 1621 7
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L752
	.loc 1 1622 17 discriminator 1
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #20]
	bl	mbedtls_ecp_check_pubkey
	str	r0, [sp, #28]
	.loc 1 1621 60 discriminator 1
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L753
.L752:
	.loc 1 1623 15
	ldr	r3, [sp, #28]
	b	.L751
.L753:
	.loc 1 1626 9
	ldr	r0, [sp, #20]
	bl	ecp_get_type
	mov	r3, r0
	.loc 1 1626 7
	cmp	r3, #2
	bne	.L754
	.loc 1 1627 17
	ldr	r3, [sp, #44]
	str	r3, [sp, #4]
	ldr	r3, [sp, #40]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	ecp_mul_mxz
	mov	r3, r0
	b	.L751
.L754:
	.loc 1 1630 9
	ldr	r0, [sp, #20]
	bl	ecp_get_type
	mov	r3, r0
	.loc 1 1630 7
	cmp	r3, #1
	bne	.L755
	.loc 1 1631 17
	ldr	r3, [sp, #44]
	str	r3, [sp, #4]
	ldr	r3, [sp, #40]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	ecp_mul_comb
	mov	r3, r0
	b	.L751
.L755:
	.loc 1 1633 11
	ldr	r3, .L756
.L751:
	.loc 1 1634 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI120:
	@ sp needed
	ldr	pc, [sp], #4
.L757:
	.align	2
.L756:
	.word	-20352
.LFE41:
	.size	mbedtls_ecp_mul, .-mbedtls_ecp_mul
	.section	.text.ecp_check_pubkey_sw,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_check_pubkey_sw, %function
ecp_check_pubkey_sw:
.LFB42:
	.loc 1 1642 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI121:
	sub	sp, sp, #44
.LCFI122:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1647 9
	ldr	r3, [sp]
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1647 7
	cmp	r3, #0
	blt	.L759
	.loc 1 1648 9 discriminator 1
	ldr	r3, [sp]
	adds	r3, r3, #12
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1647 46 discriminator 1
	cmp	r3, #0
	blt	.L759
	.loc 1 1649 9
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1648 46
	cmp	r3, #0
	bge	.L759
	.loc 1 1650 9
	ldr	r3, [sp]
	add	r2, r3, #12
	ldr	r3, [sp, #4]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1649 53
	cmp	r3, #0
	blt	.L760
.L759:
	.loc 1 1651 15
	ldr	r3, .L794
	b	.L780
.L760:
	.loc 1 1653 5
	add	r3, sp, #24
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1653 30
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1659 5
	ldr	r3, [sp]
	add	r1, r3, #12
	ldr	r3, [sp]
	add	r2, r3, #12
	add	r3, sp, #24
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L781
	.loc 1 1659 73 discriminator 2
	add	r3, sp, #24
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L782
	.loc 1 1659 73 is_stmt 0 discriminator 4
	ldr	r3, .L794+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L794+4
	str	r3, [r2]
	.loc 1 1660 5 is_stmt 1 discriminator 4
	ldr	r1, [sp]
	ldr	r2, [sp]
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L783
	.loc 1 1660 73 discriminator 2
	add	r3, sp, #12
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L784
	.loc 1 1660 73 is_stmt 0 discriminator 4
	ldr	r3, .L794+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L794+4
	str	r3, [r2]
	.loc 1 1663 15 is_stmt 1 discriminator 4
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	.loc 1 1663 7 discriminator 4
	cmp	r3, #0
	bne	.L767
	.loc 1 1665 9
	add	r1, sp, #12
	add	r3, sp, #12
	movs	r2, #3
	mov	r0, r3
	bl	mbedtls_mpi_sub_int
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L785
	.loc 1 1665 73
	b	.L769
.L771:
	.loc 1 1665 73 is_stmt 0 discriminator 5
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	add	r1, sp, #12
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L786
.L769:
	.loc 1 1665 73 discriminator 3
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bge	.L770
	.loc 1 1665 73 discriminator 4
	add	r3, sp, #12
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	cmp	r3, #0
	bne	.L771
	b	.L770
.L767:
	.loc 1 1669 9 is_stmt 1
	ldr	r3, [sp, #4]
	add	r2, r3, #16
	add	r1, sp, #12
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L787
	.loc 1 1669 73
	b	.L773
.L774:
	.loc 1 1669 73 is_stmt 0 discriminator 4
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	add	r1, sp, #12
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L788
.L773:
	.loc 1 1669 73 discriminator 3
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	add	r3, sp, #12
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L774
.L770:
	.loc 1 1672 5 is_stmt 1
	ldr	r2, [sp]
	add	r1, sp, #12
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_mul_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L789
	.loc 1 1672 73 discriminator 2
	add	r3, sp, #12
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	ecp_modp
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L790
	.loc 1 1672 73 is_stmt 0 discriminator 4
	ldr	r3, .L794+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L794+4
	str	r3, [r2]
	.loc 1 1673 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #4]
	add	r2, r3, #28
	add	r1, sp, #12
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_add_mpi
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L791
	.loc 1 1673 73
	b	.L778
.L779:
	.loc 1 1673 73 is_stmt 0 discriminator 4
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	add	r1, sp, #12
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_sub_abs
	str	r0, [sp, #36]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L792
.L778:
	.loc 1 1673 73 discriminator 3
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	add	r3, sp, #12
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	cmp	r3, #0
	bge	.L779
	.loc 1 1675 9 is_stmt 1
	add	r2, sp, #12
	add	r3, sp, #24
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1675 7
	cmp	r3, #0
	beq	.L793
	.loc 1 1676 13
	ldr	r3, .L794
	str	r3, [sp, #36]
	b	.L763
.L781:
	.loc 1 1659 5
	nop
	b	.L763
.L782:
	.loc 1 1659 73
	nop
	b	.L763
.L783:
	.loc 1 1660 5
	nop
	b	.L763
.L784:
	.loc 1 1660 73
	nop
	b	.L763
.L785:
	.loc 1 1665 9
	nop
	b	.L763
.L786:
	.loc 1 1665 73
	nop
	b	.L763
.L787:
	.loc 1 1669 9
	nop
	b	.L763
.L788:
	.loc 1 1669 73
	nop
	b	.L763
.L789:
	.loc 1 1672 5
	nop
	b	.L763
.L790:
	.loc 1 1672 73
	nop
	b	.L763
.L791:
	.loc 1 1673 5
	nop
	b	.L763
.L792:
	.loc 1 1673 73
	nop
	b	.L763
.L793:
	.loc 1 1678 1
	nop
.L763:
	.loc 1 1680 5
	add	r3, sp, #24
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1680 30
	add	r3, sp, #12
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 1682 11
	ldr	r3, [sp, #36]
.L780:
	.loc 1 1683 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #44
.LCFI123:
	@ sp needed
	ldr	pc, [sp], #4
.L795:
	.align	2
.L794:
	.word	-19584
	.word	mul_count
.LFE42:
	.size	ecp_check_pubkey_sw, .-ecp_check_pubkey_sw
	.section	.text.mbedtls_ecp_mul_shortcuts,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_mul_shortcuts, %function
mbedtls_ecp_mul_shortcuts:
.LFB43:
	.loc 1 1694 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI124:
	sub	sp, sp, #36
.LCFI125:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 1697 9
	movs	r1, #1
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1697 7
	cmp	r3, #0
	bne	.L797
	.loc 1 1699 9
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #16]
	bl	mbedtls_ecp_copy
	str	r0, [sp, #28]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	b	.L798
.L797:
	.loc 1 1701 14
	mov	r1, #-1
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1701 12
	cmp	r3, #0
	bne	.L799
	.loc 1 1703 9
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #16]
	bl	mbedtls_ecp_copy
	str	r0, [sp, #28]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L802
	.loc 1 1704 34
	ldr	r3, [sp, #16]
	adds	r3, r3, #12
	.loc 1 1704 13
	movs	r1, #0
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1704 11
	cmp	r3, #0
	beq	.L798
	.loc 1 1705 13
	ldr	r3, [sp, #16]
	add	r0, r3, #12
	ldr	r3, [sp, #20]
	adds	r1, r3, #4
	ldr	r3, [sp, #16]
	adds	r3, r3, #12
	mov	r2, r3
	bl	mbedtls_mpi_sub_mpi
	str	r0, [sp, #28]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	b	.L798
.L799:
	.loc 1 1709 9
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	mbedtls_ecp_mul
	str	r0, [sp, #28]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	.loc 1 1712 1
	b	.L798
.L802:
	.loc 1 1703 9
	nop
.L798:
	.loc 1 1713 11
	ldr	r3, [sp, #28]
	.loc 1 1714 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI126:
	@ sp needed
	ldr	pc, [sp], #4
.LFE43:
	.size	mbedtls_ecp_mul_shortcuts, .-mbedtls_ecp_mul_shortcuts
	.section	.text.mbedtls_ecp_muladd,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_muladd
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_muladd, %function
mbedtls_ecp_muladd:
.LFB44:
	.loc 1 1723 1
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI127:
	sub	sp, sp, #60
.LCFI128:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 1727 9
	ldr	r0, [sp, #12]
	bl	ecp_get_type
	mov	r3, r0
	.loc 1 1727 7
	cmp	r3, #1
	beq	.L804
	.loc 1 1728 15
	ldr	r3, .L814
	b	.L810
.L804:
	.loc 1 1730 5
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_ecp_point_init
	.loc 1 1732 5
	add	r1, sp, #16
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	ldr	r0, [sp, #12]
	bl	mbedtls_ecp_mul_shortcuts
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L811
	.loc 1 1733 5
	ldr	r3, [sp, #68]
	ldr	r2, [sp, #64]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	mbedtls_ecp_mul_shortcuts
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L812
	.loc 1 1735 5
	add	r2, sp, #16
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	ecp_add_mixed
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L813
	.loc 1 1736 5
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	ecp_normalize_jac
	str	r0, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	.loc 1 1738 1
	b	.L807
.L811:
	.loc 1 1732 5
	nop
	b	.L807
.L812:
	.loc 1 1733 5
	nop
	b	.L807
.L813:
	.loc 1 1735 5
	nop
.L807:
	.loc 1 1739 5
	add	r3, sp, #16
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	.loc 1 1741 11
	ldr	r3, [sp, #52]
.L810:
	.loc 1 1742 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #60
.LCFI129:
	@ sp needed
	ldr	pc, [sp], #4
.L815:
	.align	2
.L814:
	.word	-20096
.LFE44:
	.size	mbedtls_ecp_muladd, .-mbedtls_ecp_muladd
	.section	.text.ecp_check_pubkey_mx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ecp_check_pubkey_mx, %function
ecp_check_pubkey_mx:
.LFB45:
	.loc 1 1750 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI130:
	sub	sp, sp, #12
.LCFI131:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1752 9
	ldr	r3, [sp]
	mov	r0, r3
	bl	mbedtls_mpi_size
	mov	r2, r0
	.loc 1 1752 43
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #92]
	.loc 1 1752 51
	adds	r3, r3, #7
	.loc 1 1752 57
	lsrs	r3, r3, #3
	.loc 1 1752 7
	cmp	r2, r3
	bls	.L817
	.loc 1 1753 15
	ldr	r3, .L819
	b	.L818
.L817:
	.loc 1 1755 11
	movs	r3, #0
.L818:
	.loc 1 1756 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI132:
	@ sp needed
	ldr	pc, [sp], #4
.L820:
	.align	2
.L819:
	.word	-19584
.LFE45:
	.size	ecp_check_pubkey_mx, .-ecp_check_pubkey_mx
	.section	.text.mbedtls_ecp_check_pubkey,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_check_pubkey
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_check_pubkey, %function
mbedtls_ecp_check_pubkey:
.LFB46:
	.loc 1 1763 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI133:
	sub	sp, sp, #12
.LCFI134:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1765 9
	ldr	r3, [sp]
	adds	r3, r3, #24
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1765 7
	cmp	r3, #0
	beq	.L822
	.loc 1 1766 15
	ldr	r3, .L826
	b	.L823
.L822:
	.loc 1 1769 9
	ldr	r0, [sp, #4]
	bl	ecp_get_type
	mov	r3, r0
	.loc 1 1769 7
	cmp	r3, #2
	bne	.L824
	.loc 1 1770 17
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	ecp_check_pubkey_mx
	mov	r3, r0
	b	.L823
.L824:
	.loc 1 1773 9
	ldr	r0, [sp, #4]
	bl	ecp_get_type
	mov	r3, r0
	.loc 1 1773 7
	cmp	r3, #1
	bne	.L825
	.loc 1 1774 17
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	ecp_check_pubkey_sw
	mov	r3, r0
	b	.L823
.L825:
	.loc 1 1776 11
	ldr	r3, .L826+4
.L823:
	.loc 1 1777 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI135:
	@ sp needed
	ldr	pc, [sp], #4
.L827:
	.align	2
.L826:
	.word	-19584
	.word	-20352
.LFE46:
	.size	mbedtls_ecp_check_pubkey, .-mbedtls_ecp_check_pubkey
	.section	.text.mbedtls_ecp_check_privkey,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_check_privkey
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_check_privkey, %function
mbedtls_ecp_check_privkey:
.LFB47:
	.loc 1 1783 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI136:
	sub	sp, sp, #12
.LCFI137:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1785 9
	ldr	r0, [sp, #4]
	bl	ecp_get_type
	mov	r3, r0
	.loc 1 1785 7
	cmp	r3, #2
	bne	.L829
	.loc 1 1788 13
	movs	r1, #0
	ldr	r0, [sp]
	bl	mbedtls_mpi_get_bit
	mov	r3, r0
	.loc 1 1788 11
	cmp	r3, #0
	bne	.L830
	.loc 1 1789 13 discriminator 1
	movs	r1, #1
	ldr	r0, [sp]
	bl	mbedtls_mpi_get_bit
	mov	r3, r0
	.loc 1 1788 46 discriminator 1
	cmp	r3, #0
	bne	.L830
	.loc 1 1790 13
	movs	r1, #2
	ldr	r0, [sp]
	bl	mbedtls_mpi_get_bit
	mov	r3, r0
	.loc 1 1789 46
	cmp	r3, #0
	bne	.L830
	.loc 1 1791 13
	ldr	r0, [sp]
	bl	mbedtls_mpi_bitlen
	mov	r3, r0
	.loc 1 1791 37
	subs	r2, r3, #1
	.loc 1 1791 47
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #92]
	.loc 1 1790 46
	cmp	r2, r3
	beq	.L831
.L830:
	.loc 1 1792 19
	ldr	r3, .L836
	b	.L832
.L831:
	.loc 1 1794 19
	movs	r3, #0
	b	.L832
.L829:
	.loc 1 1798 9
	ldr	r0, [sp, #4]
	bl	ecp_get_type
	mov	r3, r0
	.loc 1 1798 7
	cmp	r3, #1
	bne	.L833
	.loc 1 1801 13
	movs	r1, #1
	ldr	r0, [sp]
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1801 11
	cmp	r3, #0
	blt	.L834
	.loc 1 1802 13 discriminator 1
	ldr	r3, [sp, #4]
	adds	r3, r3, #76
	mov	r1, r3
	ldr	r0, [sp]
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1801 45 discriminator 1
	cmp	r3, #0
	blt	.L835
.L834:
	.loc 1 1803 19
	ldr	r3, .L836
	b	.L832
.L835:
	.loc 1 1805 19
	movs	r3, #0
	b	.L832
.L833:
	.loc 1 1809 11
	ldr	r3, .L836+4
.L832:
	.loc 1 1810 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI138:
	@ sp needed
	ldr	pc, [sp], #4
.L837:
	.align	2
.L836:
	.word	-19584
	.word	-20352
.LFE47:
	.size	mbedtls_ecp_check_privkey, .-mbedtls_ecp_check_privkey
	.section	.text.mbedtls_ecp_gen_keypair_base,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_gen_keypair_base
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_gen_keypair_base, %function
mbedtls_ecp_gen_keypair_base:
.LFB48:
	.loc 1 1820 1
	@ args = 8, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI139:
	sub	sp, sp, #116
.LCFI140:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 1822 26
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #92]
	.loc 1 1822 34
	adds	r3, r3, #7
	.loc 1 1822 12
	lsrs	r3, r3, #3
	str	r3, [sp, #100]
	.loc 1 1825 9
	ldr	r0, [sp, #20]
	bl	ecp_get_type
	mov	r3, r0
	.loc 1 1825 7
	cmp	r3, #2
	bne	.L839
.L842:
.LBB3:
	.loc 1 1831 13
	ldr	r3, [sp, #124]
	ldr	r2, [sp, #120]
	ldr	r1, [sp, #100]
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_fill_random
	str	r0, [sp, #108]
	ldr	r3, [sp, #108]
	cmp	r3, #0
	bne	.L857
	.loc 1 1832 18
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_bitlen
	mov	r3, r0
	.loc 1 1832 9
	cmp	r3, #0
	beq	.L842
	.loc 1 1835 13
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_bitlen
	mov	r3, r0
	.loc 1 1835 11
	subs	r3, r3, #1
	str	r3, [sp, #96]
	.loc 1 1836 20
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #92]
	.loc 1 1836 11
	ldr	r2, [sp, #96]
	cmp	r2, r3
	bls	.L843
	.loc 1 1837 13
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #92]
	ldr	r2, [sp, #96]
	subs	r3, r2, r3
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_shift_r
	str	r0, [sp, #108]
	ldr	r3, [sp, #108]
	cmp	r3, #0
	beq	.L844
	b	.L841
.L843:
	.loc 1 1839 13
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #92]
	movs	r2, #1
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_set_bit
	str	r0, [sp, #108]
	ldr	r3, [sp, #108]
	cmp	r3, #0
	bne	.L858
.L844:
	.loc 1 1842 9
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_set_bit
	str	r0, [sp, #108]
	ldr	r3, [sp, #108]
	cmp	r3, #0
	bne	.L859
	.loc 1 1843 9
	movs	r2, #0
	movs	r1, #1
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_set_bit
	str	r0, [sp, #108]
	ldr	r3, [sp, #108]
	cmp	r3, #0
	bne	.L860
	.loc 1 1844 9
	movs	r2, #0
	movs	r1, #2
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_set_bit
	str	r0, [sp, #108]
	ldr	r3, [sp, #108]
	cmp	r3, #0
	b	.L841
.L839:
.LBE3:
	.loc 1 1849 9
	ldr	r0, [sp, #20]
	bl	ecp_get_type
	mov	r3, r0
	.loc 1 1849 7
	cmp	r3, #1
	bne	.L848
.LBB4:
	.loc 1 1852 13
	movs	r3, #0
	str	r3, [sp, #104]
.L855:
	.loc 1 1864 13
	add	r1, sp, #28
	ldr	r3, [sp, #120]
	ldr	r2, [sp, #100]
	ldr	r0, [sp, #124]
	blx	r3
.LVL1:
	str	r0, [sp, #108]
	ldr	r3, [sp, #108]
	cmp	r3, #0
	bne	.L861
	.loc 1 1865 13
	add	r3, sp, #28
	ldr	r2, [sp, #100]
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_read_binary
	str	r0, [sp, #108]
	ldr	r3, [sp, #108]
	cmp	r3, #0
	bne	.L862
	.loc 1 1866 13
	ldr	r3, [sp, #100]
	lsls	r2, r3, #3
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #92]
	subs	r3, r2, r3
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_shift_r
	str	r0, [sp, #108]
	ldr	r3, [sp, #108]
	cmp	r3, #0
	bne	.L863
	.loc 1 1877 15
	ldr	r3, [sp, #104]
	adds	r3, r3, #1
	str	r3, [sp, #104]
	ldr	r3, [sp, #104]
	cmp	r3, #30
	ble	.L853
	.loc 1 1878 23
	ldr	r3, .L864
	b	.L854
.L853:
	.loc 1 1880 16
	movs	r1, #1
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_cmp_int
	mov	r3, r0
	.loc 1 1881 16
	cmp	r3, #0
	blt	.L855
	.loc 1 1881 40 discriminator 1
	ldr	r3, [sp, #20]
	adds	r3, r3, #76
	.loc 1 1881 16 discriminator 1
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1880 48 discriminator 1
	cmp	r3, #0
	bge	.L855
	b	.L841
.L848:
.LBE4:
	.loc 1 1885 15
	ldr	r3, .L864+4
	b	.L854
.L857:
.LBB5:
	.loc 1 1831 13
	nop
	b	.L841
.L858:
	.loc 1 1839 13
	nop
	b	.L841
.L859:
	.loc 1 1842 9
	nop
	b	.L841
.L860:
	.loc 1 1843 9
	nop
	b	.L841
.L861:
.LBE5:
.LBB6:
	.loc 1 1864 13
	nop
	b	.L841
.L862:
	.loc 1 1865 13
	nop
	b	.L841
.L863:
	.loc 1 1866 13
	nop
.L841:
.LBE6:
	.loc 1 1888 7
	ldr	r3, [sp, #108]
	cmp	r3, #0
	beq	.L856
	.loc 1 1889 15
	ldr	r3, [sp, #108]
	b	.L854
.L856:
	.loc 1 1891 13
	ldr	r3, [sp, #124]
	str	r3, [sp, #4]
	ldr	r3, [sp, #120]
	str	r3, [sp]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #20]
	bl	mbedtls_ecp_mul
	mov	r3, r0
.L854:
	.loc 1 1892 1
	mov	r0, r3
	add	sp, sp, #116
.LCFI141:
	@ sp needed
	ldr	pc, [sp], #4
.L865:
	.align	2
.L864:
	.word	-19712
	.word	-20352
.LFE48:
	.size	mbedtls_ecp_gen_keypair_base, .-mbedtls_ecp_gen_keypair_base
	.section	.text.mbedtls_ecp_gen_keypair,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_gen_keypair
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_gen_keypair, %function
mbedtls_ecp_gen_keypair:
.LFB49:
	.loc 1 1901 1
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI142:
	sub	sp, sp, #28
.LCFI143:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 1902 48
	ldr	r3, [sp, #20]
	add	r1, r3, #40
	.loc 1 1902 13
	ldr	r3, [sp, #32]
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	str	r3, [sp]
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r0, [sp, #20]
	bl	mbedtls_ecp_gen_keypair_base
	mov	r3, r0
	.loc 1 1903 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI144:
	@ sp needed
	ldr	pc, [sp], #4
.LFE49:
	.size	mbedtls_ecp_gen_keypair, .-mbedtls_ecp_gen_keypair
	.section	.text.mbedtls_ecp_gen_key,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_gen_key
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_gen_key, %function
mbedtls_ecp_gen_key:
.LFB50:
	.loc 1 1910 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI145:
	sub	sp, sp, #36
.LCFI146:
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 1913 17
	ldr	r3, [sp, #16]
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_ecp_group_load
	str	r0, [sp, #28]
	.loc 1 1913 7
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L869
	.loc 1 1914 15
	ldr	r3, [sp, #28]
	b	.L870
.L869:
	.loc 1 1916 13
	ldr	r0, [sp, #16]
	ldr	r3, [sp, #16]
	add	r1, r3, #124
	ldr	r3, [sp, #16]
	add	r2, r3, #136
	ldr	r3, [sp, #8]
	str	r3, [sp]
	ldr	r3, [sp, #12]
	bl	mbedtls_ecp_gen_keypair
	mov	r3, r0
.L870:
	.loc 1 1917 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI147:
	@ sp needed
	ldr	pc, [sp], #4
.LFE50:
	.size	mbedtls_ecp_gen_key, .-mbedtls_ecp_gen_key
	.section	.text.mbedtls_ecp_check_pub_priv,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_check_pub_priv
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_check_pub_priv, %function
mbedtls_ecp_check_pub_priv:
.LFB51:
	.loc 1 1923 1
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI148:
	sub	sp, sp, #184
.LCFI149:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	.loc 1 1928 17
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1928 7
	cmp	r3, #0
	beq	.L872
	.loc 1 1929 17 discriminator 1
	ldr	r3, [sp, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1929 32 discriminator 1
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1928 44 discriminator 1
	cmp	r2, r3
	bne	.L872
	.loc 1 1930 9
	ldr	r3, [sp, #12]
	add	r2, r3, #136
	ldr	r3, [sp, #8]
	adds	r3, r3, #136
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1929 36
	cmp	r3, #0
	bne	.L872
	.loc 1 1931 9
	ldr	r3, [sp, #12]
	add	r2, r3, #148
	ldr	r3, [sp, #8]
	adds	r3, r3, #148
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1930 53
	cmp	r3, #0
	bne	.L872
	.loc 1 1932 9
	ldr	r3, [sp, #12]
	add	r2, r3, #160
	ldr	r3, [sp, #8]
	adds	r3, r3, #160
	mov	r1, r3
	mov	r0, r2
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1931 53
	cmp	r3, #0
	beq	.L873
.L872:
	.loc 1 1934 15
	ldr	r3, .L881
	b	.L878
.L873:
	.loc 1 1937 5
	add	r3, sp, #144
	mov	r0, r3
	bl	mbedtls_ecp_point_init
	.loc 1 1938 5
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_ecp_group_init
	.loc 1 1941 5
	ldr	r2, [sp, #8]
	add	r3, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_ecp_group_copy
	.loc 1 1944 5
	ldr	r3, [sp, #8]
	add	r2, r3, #124
	ldr	r3, [sp, #8]
	add	r4, r3, #40
	add	r1, sp, #144
	add	r0, sp, #20
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	mov	r3, r4
	bl	mbedtls_ecp_mul
	str	r0, [sp, #180]
	ldr	r3, [sp, #180]
	cmp	r3, #0
	bne	.L879
	.loc 1 1946 9
	ldr	r3, [sp, #8]
	add	r2, r3, #136
	add	r3, sp, #144
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1946 7
	cmp	r3, #0
	bne	.L877
	.loc 1 1947 9 discriminator 1
	ldr	r3, [sp, #8]
	add	r2, r3, #148
	add	r3, sp, #144
	adds	r3, r3, #12
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1946 48 discriminator 1
	cmp	r3, #0
	bne	.L877
	.loc 1 1948 9
	ldr	r3, [sp, #8]
	add	r2, r3, #160
	add	r3, sp, #144
	adds	r3, r3, #24
	mov	r1, r2
	mov	r0, r3
	bl	mbedtls_mpi_cmp_mpi
	mov	r3, r0
	.loc 1 1947 48
	cmp	r3, #0
	beq	.L880
.L877:
	.loc 1 1950 13
	ldr	r3, .L881
	str	r3, [sp, #180]
	.loc 1 1951 9
	b	.L876
.L879:
	.loc 1 1944 5
	nop
	b	.L876
.L880:
	.loc 1 1954 1
	nop
.L876:
	.loc 1 1955 5
	add	r3, sp, #144
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	.loc 1 1956 5
	add	r3, sp, #20
	mov	r0, r3
	bl	mbedtls_ecp_group_free
	.loc 1 1958 11
	ldr	r3, [sp, #180]
.L878:
	.loc 1 1959 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #184
.LCFI150:
	@ sp needed
	pop	{r4, pc}
.L882:
	.align	2
.L881:
	.word	-20352
.LFE51:
	.size	mbedtls_ecp_check_pub_priv, .-mbedtls_ecp_check_pub_priv
	.section .rodata
	.align	2
.LC19:
	.ascii	"  ECP test #1 (constant op_count, base point G): \000"
	.align	2
.LC20:
	.ascii	"failed (%u)\012\000"
	.align	2
.LC21:
	.ascii	"passed\012\000"
	.align	2
.LC22:
	.ascii	"  ECP test #2 (constant op_count, other point): \000"
	.align	2
.LC23:
	.ascii	"Unexpected error, return code = %08X\012\000"
	.align	2
.LC24:
	.ascii	"\012\000"
	.align	2
.LC0:
	.ascii	"000000000000000000000000000000000000000000000001\000"
	.align	2
.LC1:
	.ascii	"FFFFFFFFFFFFFFFFFFFFFFFF99DEF836146BC9B1B4D22830\000"
	.align	2
.LC2:
	.ascii	"5EA6F389A38B8BC81E767753B15AA5569E1782E30ABE7D25\000"
	.align	2
.LC3:
	.ascii	"400000000000000000000000000000000000000000000000\000"
	.align	2
.LC4:
	.ascii	"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\000"
	.align	2
.LC5:
	.ascii	"555555555555555555555555555555555555555555555555\000"
	.align	2
.LC18:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.section	.text.mbedtls_ecp_self_test,"ax",%progbits
	.align	1
	.global	mbedtls_ecp_self_test
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mbedtls_ecp_self_test, %function
mbedtls_ecp_self_test:
.LFB52:
	.loc 1 1967 1
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI151:
	sub	sp, sp, #276
.LCFI152:
	add	r3, sp, #12
	str	r0, [r3]
	.loc 1 1975 17
	ldr	r3, .L924
	add	r4, sp, #20
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1}
	stm	r4, {r0, r1}
	.loc 1 1985 5
	add	r3, sp, #128
	mov	r0, r3
	bl	mbedtls_ecp_group_init
	.loc 1 1986 5
	add	r3, sp, #92
	mov	r0, r3
	bl	mbedtls_ecp_point_init
	.loc 1 1987 5
	add	r3, sp, #56
	mov	r0, r3
	bl	mbedtls_ecp_point_init
	.loc 1 1988 5
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_init
	.loc 1 1992 5
	add	r3, sp, #128
	movs	r1, #1
	mov	r0, r3
	bl	mbedtls_ecp_group_load
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L912
	.loc 1 1997 7
	add	r3, sp, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L886
	.loc 1 1998 9
	ldr	r0, .L924+4
	bl	printf
.L886:
	.loc 1 2001 5
	add	r3, sp, #44
	movs	r1, #2
	mov	r0, r3
	bl	mbedtls_mpi_lset
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L913
	.loc 1 2002 5
	add	r3, sp, #128
	add	r4, r3, #40
	add	r2, sp, #44
	add	r1, sp, #56
	add	r0, sp, #128
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	mov	r3, r4
	bl	mbedtls_ecp_mul
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L914
	.loc 1 2004 15
	ldr	r3, .L924+8
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2005 15
	ldr	r3, .L924+12
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2006 15
	ldr	r3, .L924+16
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2007 5
	ldr	r2, [sp, #20]
	add	r3, sp, #44
	movs	r1, #16
	mov	r0, r3
	bl	mbedtls_mpi_read_string
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L915
	.loc 1 2008 5
	add	r3, sp, #128
	add	r4, r3, #40
	add	r2, sp, #44
	add	r1, sp, #92
	add	r0, sp, #128
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	mov	r3, r4
	bl	mbedtls_ecp_mul
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L916
	.loc 1 2010 12
	movs	r3, #1
	str	r3, [sp, #264]
	.loc 1 2010 5
	b	.L891
.L897:
	.loc 1 2012 20
	ldr	r3, .L924+8
	ldr	r3, [r3]
	str	r3, [sp, #260]
	.loc 1 2013 20
	ldr	r3, .L924+12
	ldr	r3, [r3]
	str	r3, [sp, #256]
	.loc 1 2014 20
	ldr	r3, .L924+16
	ldr	r3, [r3]
	str	r3, [sp, #252]
	.loc 1 2015 19
	ldr	r3, .L924+8
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2016 19
	ldr	r3, .L924+12
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2017 19
	ldr	r3, .L924+16
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2019 9
	ldr	r3, [sp, #264]
	lsls	r3, r3, #2
	add	r2, sp, #272
	add	r3, r3, r2
	ldr	r2, [r3, #-252]
	add	r3, sp, #44
	movs	r1, #16
	mov	r0, r3
	bl	mbedtls_mpi_read_string
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L917
	.loc 1 2020 9
	add	r3, sp, #128
	add	r4, r3, #40
	add	r2, sp, #44
	add	r1, sp, #92
	add	r0, sp, #128
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	mov	r3, r4
	bl	mbedtls_ecp_mul
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L918
	.loc 1 2022 23
	ldr	r3, .L924+8
	ldr	r3, [r3]
	.loc 1 2022 11
	ldr	r2, [sp, #260]
	cmp	r2, r3
	bne	.L894
	.loc 1 2023 23 discriminator 1
	ldr	r3, .L924+12
	ldr	r3, [r3]
	.loc 1 2022 37 discriminator 1
	ldr	r2, [sp, #256]
	cmp	r2, r3
	bne	.L894
	.loc 1 2024 23
	ldr	r3, .L924+16
	ldr	r3, [r3]
	.loc 1 2023 37
	ldr	r2, [sp, #252]
	cmp	r2, r3
	beq	.L895
.L894:
	.loc 1 2026 15
	add	r3, sp, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L896
	.loc 1 2027 17
	ldr	r1, [sp, #264]
	ldr	r0, .L924+20
	bl	printf
.L896:
	.loc 1 2029 17
	movs	r3, #1
	str	r3, [sp, #268]
	.loc 1 2030 13
	b	.L885
.L895:
	.loc 1 2010 68 discriminator 2
	ldr	r3, [sp, #264]
	adds	r3, r3, #1
	str	r3, [sp, #264]
.L891:
	.loc 1 2010 5 discriminator 1
	ldr	r3, [sp, #264]
	cmp	r3, #5
	bls	.L897
	.loc 1 2034 7
	add	r3, sp, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L898
	.loc 1 2035 9
	ldr	r0, .L924+24
	bl	printf
.L898:
	.loc 1 2037 7
	add	r3, sp, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L899
	.loc 1 2038 9
	ldr	r0, .L924+28
	bl	printf
.L899:
	.loc 1 2041 15
	ldr	r3, .L924+8
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2042 15
	ldr	r3, .L924+12
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2043 15
	ldr	r3, .L924+16
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2044 5
	ldr	r2, [sp, #20]
	add	r3, sp, #44
	movs	r1, #16
	mov	r0, r3
	bl	mbedtls_mpi_read_string
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L919
	.loc 1 2045 5
	add	r4, sp, #56
	add	r2, sp, #44
	add	r1, sp, #92
	add	r0, sp, #128
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	mov	r3, r4
	bl	mbedtls_ecp_mul
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L920
	.loc 1 2047 12
	movs	r3, #1
	str	r3, [sp, #264]
	.loc 1 2047 5
	b	.L902
.L908:
	.loc 1 2049 20
	ldr	r3, .L924+8
	ldr	r3, [r3]
	str	r3, [sp, #260]
	.loc 1 2050 20
	ldr	r3, .L924+12
	ldr	r3, [r3]
	str	r3, [sp, #256]
	.loc 1 2051 20
	ldr	r3, .L924+16
	ldr	r3, [r3]
	str	r3, [sp, #252]
	.loc 1 2052 19
	ldr	r3, .L924+8
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2053 19
	ldr	r3, .L924+12
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2054 19
	ldr	r3, .L924+16
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2056 9
	ldr	r3, [sp, #264]
	lsls	r3, r3, #2
	add	r2, sp, #272
	add	r3, r3, r2
	ldr	r2, [r3, #-252]
	add	r3, sp, #44
	movs	r1, #16
	mov	r0, r3
	bl	mbedtls_mpi_read_string
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L921
	.loc 1 2057 9
	add	r4, sp, #56
	add	r2, sp, #44
	add	r1, sp, #92
	add	r0, sp, #128
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	mov	r3, r4
	bl	mbedtls_ecp_mul
	str	r0, [sp, #268]
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bne	.L922
	.loc 1 2059 23
	ldr	r3, .L924+8
	ldr	r3, [r3]
	.loc 1 2059 11
	ldr	r2, [sp, #260]
	cmp	r2, r3
	bne	.L905
	.loc 1 2060 23 discriminator 1
	ldr	r3, .L924+12
	ldr	r3, [r3]
	.loc 1 2059 37 discriminator 1
	ldr	r2, [sp, #256]
	cmp	r2, r3
	bne	.L905
	.loc 1 2061 23
	ldr	r3, .L924+16
	ldr	r3, [r3]
	.loc 1 2060 37
	ldr	r2, [sp, #252]
	cmp	r2, r3
	beq	.L906
.L905:
	.loc 1 2063 15
	add	r3, sp, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L907
	.loc 1 2064 17
	ldr	r1, [sp, #264]
	ldr	r0, .L924+20
	bl	printf
.L907:
	.loc 1 2066 17
	movs	r3, #1
	str	r3, [sp, #268]
	.loc 1 2067 13
	b	.L885
.L925:
	.align	2
.L924:
	.word	.LC18
	.word	.LC19
	.word	add_count
	.word	dbl_count
	.word	mul_count
	.word	.LC20
	.word	.LC21
	.word	.LC22
.L906:
	.loc 1 2047 68 discriminator 2
	ldr	r3, [sp, #264]
	adds	r3, r3, #1
	str	r3, [sp, #264]
.L902:
	.loc 1 2047 5 discriminator 1
	ldr	r3, [sp, #264]
	cmp	r3, #5
	bls	.L908
	.loc 1 2071 7
	add	r3, sp, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L923
	.loc 1 2072 9
	ldr	r0, .L926
	bl	printf
	b	.L885
.L912:
	.loc 1 1992 5
	nop
	b	.L885
.L913:
	.loc 1 2001 5
	nop
	b	.L885
.L914:
	.loc 1 2002 5
	nop
	b	.L885
.L915:
	.loc 1 2007 5
	nop
	b	.L885
.L916:
	.loc 1 2008 5
	nop
	b	.L885
.L917:
	.loc 1 2019 9
	nop
	b	.L885
.L918:
	.loc 1 2020 9
	nop
	b	.L885
.L919:
	.loc 1 2044 5
	nop
	b	.L885
.L920:
	.loc 1 2045 5
	nop
	b	.L885
.L921:
	.loc 1 2056 9
	nop
	b	.L885
.L922:
	.loc 1 2057 9
	nop
	b	.L885
.L923:
	.loc 1 2074 1
	nop
.L885:
	.loc 1 2076 7
	ldr	r3, [sp, #268]
	cmp	r3, #0
	bge	.L909
	.loc 1 2076 17 discriminator 1
	add	r3, sp, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L909
	.loc 1 2077 9
	ldr	r1, [sp, #268]
	ldr	r0, .L926+4
	bl	printf
.L909:
	.loc 1 2079 5
	add	r3, sp, #128
	mov	r0, r3
	bl	mbedtls_ecp_group_free
	.loc 1 2080 5
	add	r3, sp, #92
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	.loc 1 2081 5
	add	r3, sp, #56
	mov	r0, r3
	bl	mbedtls_ecp_point_free
	.loc 1 2082 5
	add	r3, sp, #44
	mov	r0, r3
	bl	mbedtls_mpi_free
	.loc 1 2084 7
	add	r3, sp, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L910
	.loc 1 2085 9
	ldr	r0, .L926+8
	bl	printf
.L910:
	.loc 1 2087 11
	ldr	r3, [sp, #268]
	.loc 1 2088 1
	mov	r0, r3
	add	sp, sp, #276
.LCFI153:
	@ sp needed
	pop	{r4, r5, pc}
.L927:
	.align	2
.L926:
	.word	.LC21
	.word	.LC23
	.word	.LC24
.LFE52:
	.size	mbedtls_ecp_self_test, .-mbedtls_ecp_self_test
	.section	.bss.init_done.6092,"aw",%nobits
	.align	2
	.type	init_done.6092, %object
	.size	init_done.6092, 4
init_done.6092:
	.space	4
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI5-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI11-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI14-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI16-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI19-.LFB8
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI22-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI25-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI28-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI31-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI34-.LFB13
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI37-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI40-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI43-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI46-.LFB17
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI49-.LFB18
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI52-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI55-.LFB20
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI58-.LFB21
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI61-.LFB22
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI64-.LFB23
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI67-.LFB24
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI70-.LFB25
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI73-.LFB26
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI76-.LFB27
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI79-.LFB28
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI80-.LCFI79
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI82-.LFB29
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI85-.LFB30
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
	.byte	0xe
	.uleb128 0x70
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI88-.LFB31
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI90-.LCFI89
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI91-.LFB32
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI92-.LCFI91
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI93-.LCFI92
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI94-.LFB33
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI95-.LCFI94
	.byte	0xe
	.uleb128 0xa8
	.byte	0x4
	.4byte	.LCFI96-.LCFI95
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI97-.LFB34
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI98-.LCFI97
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI100-.LFB35
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI101-.LCFI100
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI103-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0x160
	.byte	0x4
	.4byte	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI106-.LFB37
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI107-.LCFI106
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI108-.LCFI107
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI109-.LFB38
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI110-.LCFI109
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI112-.LFB39
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI113-.LCFI112
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI115-.LFB40
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI116-.LCFI115
	.byte	0xe
	.uleb128 0x60
	.byte	0x4
	.4byte	.LCFI117-.LCFI116
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI118-.LFB41
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI119-.LCFI118
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI120-.LCFI119
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI121-.LFB42
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI122-.LCFI121
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI123-.LCFI122
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI124-.LFB43
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI125-.LCFI124
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI126-.LCFI125
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI127-.LFB44
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI128-.LCFI127
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI129-.LCFI128
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI130-.LFB45
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI131-.LCFI130
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI132-.LCFI131
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI133-.LFB46
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI134-.LCFI133
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI135-.LCFI134
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI136-.LFB47
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI137-.LCFI136
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI139-.LFB48
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI140-.LCFI139
	.byte	0xe
	.uleb128 0x78
	.byte	0x4
	.4byte	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI142-.LFB49
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI143-.LCFI142
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI144-.LCFI143
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI145-.LFB50
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI146-.LCFI145
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI147-.LCFI146
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI148-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI149-.LCFI148
	.byte	0xe
	.uleb128 0xc0
	.byte	0x4
	.4byte	.LCFI150-.LCFI149
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI151-.LFB52
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI152-.LCFI151
	.byte	0xe
	.uleb128 0x120
	.byte	0x4
	.4byte	.LCFI153-.LCFI152
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE104:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/__crossworks.h"
	.file 3 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/sys/time.h"
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/stddef.h"
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/stdint.h"
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/stdio.h"
	.file 7 "../../../../../../external/mbedtls/include/mbedtls/bignum.h"
	.file 8 "../../../../../../external/mbedtls/include/mbedtls/ecp.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2274
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1008
	.byte	0xc
	.4byte	.LASF1009
	.4byte	.LASF1010
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF846
	.byte	0x8
	.byte	0x2
	.byte	0x7e
	.byte	0x8
	.4byte	0x5a
	.uleb128 0x5
	.4byte	.LASF794
	.byte	0x2
	.byte	0x7f
	.byte	0x7
	.4byte	0x29
	.byte	0
	.uleb128 0x5
	.4byte	.LASF795
	.byte	0x2
	.byte	0x80
	.byte	0x8
	.4byte	0x5a
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF796
	.uleb128 0x7
	.4byte	0x29
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x8c
	.uleb128 0x8
	.4byte	0x93
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x80
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF797
	.uleb128 0xa
	.4byte	0x80
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF798
	.uleb128 0x9
	.byte	0x4
	.4byte	0x32
	.uleb128 0x7
	.4byte	0x29
	.4byte	0xb7
	.uleb128 0x8
	.4byte	0xb7
	.uleb128 0x8
	.4byte	0xbd
	.uleb128 0x8
	.4byte	0x8c
	.uleb128 0x8
	.4byte	0x93
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x87
	.uleb128 0xb
	.byte	0x58
	.byte	0x2
	.byte	0x86
	.byte	0x9
	.4byte	0x26d
	.uleb128 0x5
	.4byte	.LASF799
	.byte	0x2
	.byte	0x88
	.byte	0xf
	.4byte	0xbd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF800
	.byte	0x2
	.byte	0x89
	.byte	0xf
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF801
	.byte	0x2
	.byte	0x8a
	.byte	0xf
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF802
	.byte	0x2
	.byte	0x8c
	.byte	0xf
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF803
	.byte	0x2
	.byte	0x8d
	.byte	0xf
	.4byte	0xbd
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF804
	.byte	0x2
	.byte	0x8e
	.byte	0xf
	.4byte	0xbd
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF805
	.byte	0x2
	.byte	0x8f
	.byte	0xf
	.4byte	0xbd
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF806
	.byte	0x2
	.byte	0x90
	.byte	0xf
	.4byte	0xbd
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF807
	.byte	0x2
	.byte	0x91
	.byte	0xf
	.4byte	0xbd
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF808
	.byte	0x2
	.byte	0x92
	.byte	0xf
	.4byte	0xbd
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF809
	.byte	0x2
	.byte	0x94
	.byte	0x8
	.4byte	0x80
	.byte	0x28
	.uleb128 0x5
	.4byte	.LASF810
	.byte	0x2
	.byte	0x95
	.byte	0x8
	.4byte	0x80
	.byte	0x29
	.uleb128 0x5
	.4byte	.LASF811
	.byte	0x2
	.byte	0x96
	.byte	0x8
	.4byte	0x80
	.byte	0x2a
	.uleb128 0x5
	.4byte	.LASF812
	.byte	0x2
	.byte	0x97
	.byte	0x8
	.4byte	0x80
	.byte	0x2b
	.uleb128 0x5
	.4byte	.LASF813
	.byte	0x2
	.byte	0x98
	.byte	0x8
	.4byte	0x80
	.byte	0x2c
	.uleb128 0x5
	.4byte	.LASF814
	.byte	0x2
	.byte	0x99
	.byte	0x8
	.4byte	0x80
	.byte	0x2d
	.uleb128 0x5
	.4byte	.LASF815
	.byte	0x2
	.byte	0x9a
	.byte	0x8
	.4byte	0x80
	.byte	0x2e
	.uleb128 0x5
	.4byte	.LASF816
	.byte	0x2
	.byte	0x9b
	.byte	0x8
	.4byte	0x80
	.byte	0x2f
	.uleb128 0x5
	.4byte	.LASF817
	.byte	0x2
	.byte	0x9c
	.byte	0x8
	.4byte	0x80
	.byte	0x30
	.uleb128 0x5
	.4byte	.LASF818
	.byte	0x2
	.byte	0x9d
	.byte	0x8
	.4byte	0x80
	.byte	0x31
	.uleb128 0x5
	.4byte	.LASF819
	.byte	0x2
	.byte	0x9e
	.byte	0x8
	.4byte	0x80
	.byte	0x32
	.uleb128 0x5
	.4byte	.LASF820
	.byte	0x2
	.byte	0x9f
	.byte	0x8
	.4byte	0x80
	.byte	0x33
	.uleb128 0x5
	.4byte	.LASF821
	.byte	0x2
	.byte	0xa0
	.byte	0x8
	.4byte	0x80
	.byte	0x34
	.uleb128 0x5
	.4byte	.LASF822
	.byte	0x2
	.byte	0xa1
	.byte	0x8
	.4byte	0x80
	.byte	0x35
	.uleb128 0x5
	.4byte	.LASF823
	.byte	0x2
	.byte	0xa6
	.byte	0xf
	.4byte	0xbd
	.byte	0x38
	.uleb128 0x5
	.4byte	.LASF824
	.byte	0x2
	.byte	0xa7
	.byte	0xf
	.4byte	0xbd
	.byte	0x3c
	.uleb128 0x5
	.4byte	.LASF825
	.byte	0x2
	.byte	0xa8
	.byte	0xf
	.4byte	0xbd
	.byte	0x40
	.uleb128 0x5
	.4byte	.LASF826
	.byte	0x2
	.byte	0xa9
	.byte	0xf
	.4byte	0xbd
	.byte	0x44
	.uleb128 0x5
	.4byte	.LASF827
	.byte	0x2
	.byte	0xaa
	.byte	0xf
	.4byte	0xbd
	.byte	0x48
	.uleb128 0x5
	.4byte	.LASF828
	.byte	0x2
	.byte	0xab
	.byte	0xf
	.4byte	0xbd
	.byte	0x4c
	.uleb128 0x5
	.4byte	.LASF829
	.byte	0x2
	.byte	0xac
	.byte	0xf
	.4byte	0xbd
	.byte	0x50
	.uleb128 0x5
	.4byte	.LASF830
	.byte	0x2
	.byte	0xad
	.byte	0xf
	.4byte	0xbd
	.byte	0x54
	.byte	0
	.uleb128 0xc
	.4byte	.LASF840
	.byte	0x2
	.byte	0xae
	.byte	0x3
	.4byte	0xc3
	.uleb128 0xa
	.4byte	0x26d
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF831
	.uleb128 0xa
	.4byte	0x27e
	.uleb128 0xd
	.4byte	0x27e
	.uleb128 0xb
	.byte	0x20
	.byte	0x2
	.byte	0xc4
	.byte	0x9
	.4byte	0x301
	.uleb128 0x5
	.4byte	.LASF832
	.byte	0x2
	.byte	0xc6
	.byte	0x9
	.4byte	0x315
	.byte	0
	.uleb128 0x5
	.4byte	.LASF833
	.byte	0x2
	.byte	0xc7
	.byte	0x9
	.4byte	0x32a
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF834
	.byte	0x2
	.byte	0xc8
	.byte	0x9
	.4byte	0x32a
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF835
	.byte	0x2
	.byte	0xcb
	.byte	0x9
	.4byte	0x344
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF836
	.byte	0x2
	.byte	0xcc
	.byte	0xa
	.4byte	0x359
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF837
	.byte	0x2
	.byte	0xcd
	.byte	0xa
	.4byte	0x359
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF838
	.byte	0x2
	.byte	0xd0
	.byte	0x9
	.4byte	0x35f
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF839
	.byte	0x2
	.byte	0xd1
	.byte	0x9
	.4byte	0x365
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x29
	.4byte	0x315
	.uleb128 0x8
	.4byte	0x29
	.uleb128 0x8
	.4byte	0x29
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x301
	.uleb128 0x7
	.4byte	0x29
	.4byte	0x32a
	.uleb128 0x8
	.4byte	0x29
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x31b
	.uleb128 0x7
	.4byte	0x29
	.4byte	0x344
	.uleb128 0x8
	.4byte	0x5a
	.uleb128 0x8
	.4byte	0x29
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x330
	.uleb128 0x7
	.4byte	0x5a
	.4byte	0x359
	.uleb128 0x8
	.4byte	0x5a
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x34a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x61
	.uleb128 0x9
	.byte	0x4
	.4byte	0x99
	.uleb128 0xc
	.4byte	.LASF841
	.byte	0x2
	.byte	0xd2
	.byte	0x3
	.4byte	0x28f
	.uleb128 0xa
	.4byte	0x36b
	.uleb128 0xb
	.byte	0xc
	.byte	0x2
	.byte	0xd4
	.byte	0x9
	.4byte	0x3ad
	.uleb128 0x5
	.4byte	.LASF842
	.byte	0x2
	.byte	0xd5
	.byte	0xf
	.4byte	0xbd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF843
	.byte	0x2
	.byte	0xd6
	.byte	0x25
	.4byte	0x3ad
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF844
	.byte	0x2
	.byte	0xd7
	.byte	0x28
	.4byte	0x3b3
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x279
	.uleb128 0x9
	.byte	0x4
	.4byte	0x377
	.uleb128 0xc
	.4byte	.LASF845
	.byte	0x2
	.byte	0xd8
	.byte	0x3
	.4byte	0x37c
	.uleb128 0xa
	.4byte	0x3b9
	.uleb128 0x4
	.4byte	.LASF847
	.byte	0x14
	.byte	0x2
	.byte	0xdc
	.byte	0x10
	.4byte	0x3e5
	.uleb128 0x5
	.4byte	.LASF848
	.byte	0x2
	.byte	0xdd
	.byte	0x20
	.4byte	0x3e5
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x3f5
	.4byte	0x3f5
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3c5
	.uleb128 0x10
	.4byte	.LASF849
	.byte	0x2
	.2byte	0x106
	.byte	0x1a
	.4byte	0x3ca
	.uleb128 0x10
	.4byte	.LASF850
	.byte	0x2
	.2byte	0x10d
	.byte	0x24
	.4byte	0x3c5
	.uleb128 0x10
	.4byte	.LASF851
	.byte	0x2
	.2byte	0x110
	.byte	0x2c
	.4byte	0x377
	.uleb128 0x10
	.4byte	.LASF852
	.byte	0x2
	.2byte	0x111
	.byte	0x2c
	.4byte	0x377
	.uleb128 0xe
	.4byte	0x285
	.4byte	0x43f
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x7f
	.byte	0
	.uleb128 0xa
	.4byte	0x42f
	.uleb128 0x10
	.4byte	.LASF853
	.byte	0x2
	.2byte	0x113
	.byte	0x23
	.4byte	0x43f
	.uleb128 0xe
	.4byte	0x87
	.4byte	0x45c
	.uleb128 0x11
	.byte	0
	.uleb128 0xa
	.4byte	0x451
	.uleb128 0x10
	.4byte	.LASF854
	.byte	0x2
	.2byte	0x115
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x10
	.4byte	.LASF855
	.byte	0x2
	.2byte	0x116
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x10
	.4byte	.LASF856
	.byte	0x2
	.2byte	0x117
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x10
	.4byte	.LASF857
	.byte	0x2
	.2byte	0x118
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x10
	.4byte	.LASF858
	.byte	0x2
	.2byte	0x11a
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x10
	.4byte	.LASF859
	.byte	0x2
	.2byte	0x11b
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x10
	.4byte	.LASF860
	.byte	0x2
	.2byte	0x11c
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x10
	.4byte	.LASF861
	.byte	0x2
	.2byte	0x11d
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x10
	.4byte	.LASF862
	.byte	0x2
	.2byte	0x11e
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x10
	.4byte	.LASF863
	.byte	0x2
	.2byte	0x11f
	.byte	0x13
	.4byte	0x45c
	.uleb128 0x7
	.4byte	0x29
	.4byte	0x4f2
	.uleb128 0x8
	.4byte	0x4f2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x520
	.uleb128 0x4
	.4byte	.LASF864
	.byte	0x8
	.byte	0x3
	.byte	0x34
	.byte	0x8
	.4byte	0x520
	.uleb128 0x5
	.4byte	.LASF865
	.byte	0x3
	.byte	0x36
	.byte	0x8
	.4byte	0x5a
	.byte	0
	.uleb128 0x5
	.4byte	.LASF866
	.byte	0x3
	.byte	0x37
	.byte	0x8
	.4byte	0x5a
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x4f8
	.uleb128 0x10
	.4byte	.LASF867
	.byte	0x2
	.2byte	0x135
	.byte	0xe
	.4byte	0x532
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4e3
	.uleb128 0x7
	.4byte	0x29
	.4byte	0x547
	.uleb128 0x8
	.4byte	0x547
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4f8
	.uleb128 0x10
	.4byte	.LASF868
	.byte	0x2
	.2byte	0x136
	.byte	0xe
	.4byte	0x55a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x538
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF869
	.uleb128 0x12
	.4byte	.LASF870
	.byte	0x2
	.2byte	0x14d
	.byte	0x18
	.4byte	0x574
	.uleb128 0x9
	.byte	0x4
	.4byte	0x57a
	.uleb128 0x7
	.4byte	0xbd
	.4byte	0x589
	.uleb128 0x8
	.4byte	0x29
	.byte	0
	.uleb128 0x13
	.4byte	.LASF871
	.byte	0x8
	.byte	0x2
	.2byte	0x14f
	.byte	0x10
	.4byte	0x5b4
	.uleb128 0x14
	.4byte	.LASF872
	.byte	0x2
	.2byte	0x151
	.byte	0x1c
	.4byte	0x567
	.byte	0
	.uleb128 0x14
	.4byte	.LASF873
	.byte	0x2
	.2byte	0x152
	.byte	0x21
	.4byte	0x5b4
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x589
	.uleb128 0x12
	.4byte	.LASF874
	.byte	0x2
	.2byte	0x153
	.byte	0x3
	.4byte	0x589
	.uleb128 0x10
	.4byte	.LASF875
	.byte	0x2
	.2byte	0x157
	.byte	0x1f
	.4byte	0x5d4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5ba
	.uleb128 0xc
	.4byte	.LASF876
	.byte	0x4
	.byte	0x37
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF877
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF878
	.uleb128 0xc
	.4byte	.LASF879
	.byte	0x5
	.byte	0x36
	.byte	0x1c
	.4byte	0x560
	.uleb128 0xc
	.4byte	.LASF880
	.byte	0x5
	.byte	0x38
	.byte	0x1c
	.4byte	0x8c
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF881
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF882
	.uleb128 0x12
	.4byte	.LASF883
	.byte	0x6
	.2byte	0x317
	.byte	0x1b
	.4byte	0x627
	.uleb128 0x15
	.4byte	.LASF1011
	.uleb128 0x10
	.4byte	.LASF884
	.byte	0x6
	.2byte	0x31b
	.byte	0xe
	.4byte	0x639
	.uleb128 0x9
	.byte	0x4
	.4byte	0x61a
	.uleb128 0x10
	.4byte	.LASF885
	.byte	0x6
	.2byte	0x31c
	.byte	0xe
	.4byte	0x639
	.uleb128 0x10
	.4byte	.LASF886
	.byte	0x6
	.2byte	0x31d
	.byte	0xe
	.4byte	0x639
	.uleb128 0xc
	.4byte	.LASF887
	.byte	0x7
	.byte	0x83
	.byte	0x17
	.4byte	0x600
	.uleb128 0xb
	.byte	0xc
	.byte	0x7
	.byte	0x90
	.byte	0x9
	.4byte	0x690
	.uleb128 0x16
	.ascii	"s\000"
	.byte	0x7
	.byte	0x92
	.byte	0x9
	.4byte	0x29
	.byte	0
	.uleb128 0x16
	.ascii	"n\000"
	.byte	0x7
	.byte	0x93
	.byte	0xc
	.4byte	0x5da
	.byte	0x4
	.uleb128 0x16
	.ascii	"p\000"
	.byte	0x7
	.byte	0x94
	.byte	0x17
	.4byte	0x690
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x659
	.uleb128 0xc
	.4byte	.LASF888
	.byte	0x7
	.byte	0x96
	.byte	0x1
	.4byte	0x665
	.uleb128 0xa
	.4byte	0x696
	.uleb128 0x17
	.byte	0x7
	.byte	0x1
	.4byte	0x27e
	.byte	0x8
	.byte	0x36
	.byte	0x1
	.4byte	0x704
	.uleb128 0x18
	.4byte	.LASF889
	.byte	0
	.uleb128 0x18
	.4byte	.LASF890
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF891
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF892
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF893
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF895
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF896
	.byte	0x7
	.uleb128 0x18
	.4byte	.LASF897
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF898
	.byte	0x9
	.uleb128 0x18
	.4byte	.LASF899
	.byte	0xa
	.uleb128 0x18
	.4byte	.LASF900
	.byte	0xb
	.uleb128 0x18
	.4byte	.LASF901
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF902
	.byte	0x8
	.byte	0x44
	.byte	0x3
	.4byte	0x6a7
	.uleb128 0xa
	.4byte	0x704
	.uleb128 0xb
	.byte	0xc
	.byte	0x8
	.byte	0x50
	.byte	0x9
	.4byte	0x753
	.uleb128 0x5
	.4byte	.LASF903
	.byte	0x8
	.byte	0x52
	.byte	0x1a
	.4byte	0x704
	.byte	0
	.uleb128 0x5
	.4byte	.LASF904
	.byte	0x8
	.byte	0x53
	.byte	0xe
	.4byte	0x5f4
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF905
	.byte	0x8
	.byte	0x54
	.byte	0xe
	.4byte	0x5f4
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF842
	.byte	0x8
	.byte	0x55
	.byte	0x11
	.4byte	0xbd
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF906
	.byte	0x8
	.byte	0x56
	.byte	0x3
	.4byte	0x715
	.uleb128 0xa
	.4byte	0x753
	.uleb128 0xb
	.byte	0x24
	.byte	0x8
	.byte	0x61
	.byte	0x9
	.4byte	0x78f
	.uleb128 0x16
	.ascii	"X\000"
	.byte	0x8
	.byte	0x63
	.byte	0x11
	.4byte	0x696
	.byte	0
	.uleb128 0x16
	.ascii	"Y\000"
	.byte	0x8
	.byte	0x64
	.byte	0x11
	.4byte	0x696
	.byte	0xc
	.uleb128 0x16
	.ascii	"Z\000"
	.byte	0x8
	.byte	0x65
	.byte	0x11
	.4byte	0x696
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF907
	.byte	0x8
	.byte	0x67
	.byte	0x1
	.4byte	0x764
	.uleb128 0xa
	.4byte	0x78f
	.uleb128 0xb
	.byte	0x7c
	.byte	0x8
	.byte	0x81
	.byte	0x9
	.4byte	0x85e
	.uleb128 0x16
	.ascii	"id\000"
	.byte	0x8
	.byte	0x83
	.byte	0x1a
	.4byte	0x704
	.byte	0
	.uleb128 0x16
	.ascii	"P\000"
	.byte	0x8
	.byte	0x84
	.byte	0x11
	.4byte	0x696
	.byte	0x4
	.uleb128 0x16
	.ascii	"A\000"
	.byte	0x8
	.byte	0x85
	.byte	0x11
	.4byte	0x696
	.byte	0x10
	.uleb128 0x16
	.ascii	"B\000"
	.byte	0x8
	.byte	0x86
	.byte	0x11
	.4byte	0x696
	.byte	0x1c
	.uleb128 0x16
	.ascii	"G\000"
	.byte	0x8
	.byte	0x87
	.byte	0x17
	.4byte	0x78f
	.byte	0x28
	.uleb128 0x16
	.ascii	"N\000"
	.byte	0x8
	.byte	0x88
	.byte	0x11
	.4byte	0x696
	.byte	0x4c
	.uleb128 0x5
	.4byte	.LASF908
	.byte	0x8
	.byte	0x89
	.byte	0xc
	.4byte	0x5da
	.byte	0x58
	.uleb128 0x5
	.4byte	.LASF909
	.byte	0x8
	.byte	0x8a
	.byte	0xc
	.4byte	0x5da
	.byte	0x5c
	.uleb128 0x16
	.ascii	"h\000"
	.byte	0x8
	.byte	0x8b
	.byte	0x12
	.4byte	0x8c
	.byte	0x60
	.uleb128 0x5
	.4byte	.LASF910
	.byte	0x8
	.byte	0x8c
	.byte	0xb
	.4byte	0x873
	.byte	0x64
	.uleb128 0x5
	.4byte	.LASF911
	.byte	0x8
	.byte	0x8d
	.byte	0xb
	.4byte	0x893
	.byte	0x68
	.uleb128 0x5
	.4byte	.LASF912
	.byte	0x8
	.byte	0x8e
	.byte	0xb
	.4byte	0x893
	.byte	0x6c
	.uleb128 0x5
	.4byte	.LASF913
	.byte	0x8
	.byte	0x8f
	.byte	0xb
	.4byte	0x30
	.byte	0x70
	.uleb128 0x16
	.ascii	"T\000"
	.byte	0x8
	.byte	0x90
	.byte	0x18
	.4byte	0x88d
	.byte	0x74
	.uleb128 0x5
	.4byte	.LASF914
	.byte	0x8
	.byte	0x91
	.byte	0xc
	.4byte	0x5da
	.byte	0x78
	.byte	0
	.uleb128 0x7
	.4byte	0x29
	.4byte	0x86d
	.uleb128 0x8
	.4byte	0x86d
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x696
	.uleb128 0x9
	.byte	0x4
	.4byte	0x85e
	.uleb128 0x7
	.4byte	0x29
	.4byte	0x88d
	.uleb128 0x8
	.4byte	0x88d
	.uleb128 0x8
	.4byte	0x30
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x78f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x879
	.uleb128 0xc
	.4byte	.LASF915
	.byte	0x8
	.byte	0x93
	.byte	0x1
	.4byte	0x7a0
	.uleb128 0xa
	.4byte	0x899
	.uleb128 0xb
	.byte	0xac
	.byte	0x8
	.byte	0x9c
	.byte	0x9
	.4byte	0x8d7
	.uleb128 0x16
	.ascii	"grp\000"
	.byte	0x8
	.byte	0x9e
	.byte	0x17
	.4byte	0x899
	.byte	0
	.uleb128 0x16
	.ascii	"d\000"
	.byte	0x8
	.byte	0x9f
	.byte	0x11
	.4byte	0x696
	.byte	0x7c
	.uleb128 0x16
	.ascii	"Q\000"
	.byte	0x8
	.byte	0xa0
	.byte	0x17
	.4byte	0x78f
	.byte	0x88
	.byte	0
	.uleb128 0xc
	.4byte	.LASF916
	.byte	0x8
	.byte	0xa2
	.byte	0x1
	.4byte	0x8aa
	.uleb128 0xa
	.4byte	0x8d7
	.uleb128 0x19
	.4byte	.LASF918
	.byte	0x1
	.byte	0x50
	.byte	0x16
	.4byte	0x8fa
	.uleb128 0x5
	.byte	0x3
	.4byte	add_count
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF917
	.uleb128 0x19
	.4byte	.LASF919
	.byte	0x1
	.byte	0x50
	.byte	0x21
	.4byte	0x8fa
	.uleb128 0x5
	.byte	0x3
	.4byte	dbl_count
	.uleb128 0x19
	.4byte	.LASF920
	.byte	0x1
	.byte	0x50
	.byte	0x2c
	.4byte	0x8fa
	.uleb128 0x5
	.byte	0x3
	.4byte	mul_count
	.uleb128 0x17
	.byte	0x7
	.byte	0x1
	.4byte	0x27e
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	0x946
	.uleb128 0x18
	.4byte	.LASF921
	.byte	0
	.uleb128 0x18
	.4byte	.LASF922
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF923
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF924
	.byte	0x1
	.byte	0x6d
	.byte	0x3
	.4byte	0x925
	.uleb128 0xe
	.4byte	0x75f
	.4byte	0x962
	.uleb128 0xf
	.4byte	0x8c
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	0x952
	.uleb128 0x19
	.4byte	.LASF925
	.byte	0x1
	.byte	0x7b
	.byte	0x25
	.4byte	0x962
	.uleb128 0x5
	.byte	0x3
	.4byte	ecp_supported_curves
	.uleb128 0xe
	.4byte	0x704
	.4byte	0x989
	.uleb128 0xf
	.4byte	0x8c
	.byte	0xb
	.byte	0
	.uleb128 0x19
	.4byte	.LASF926
	.byte	0x1
	.byte	0xa4
	.byte	0x1d
	.4byte	0x979
	.uleb128 0x5
	.byte	0x3
	.4byte	ecp_supported_grp_id
	.uleb128 0x1a
	.4byte	.LASF931
	.byte	0x1
	.2byte	0x7ae
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa72
	.uleb128 0x1b
	.4byte	.LASF933
	.byte	0x1
	.2byte	0x7ae
	.byte	0x20
	.4byte	0x29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x7b0
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x7b1
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x7b2
	.byte	0x17
	.4byte	0x899
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1c
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x7b3
	.byte	0x17
	.4byte	0x78f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x1c
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x7b3
	.byte	0x1a
	.4byte	0x78f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1c
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x7b4
	.byte	0x11
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x1d
	.4byte	.LASF927
	.byte	0x1
	.2byte	0x7b5
	.byte	0x13
	.4byte	0x8fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LASF928
	.byte	0x1
	.2byte	0x7b5
	.byte	0x1f
	.4byte	0x8fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF929
	.byte	0x1
	.2byte	0x7b5
	.byte	0x2b
	.4byte	0x8fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	.LASF930
	.byte	0x1
	.2byte	0x7b7
	.byte	0x11
	.4byte	0xa72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x81a
	.byte	0x1
	.4byte	.L885
	.byte	0
	.uleb128 0xe
	.4byte	0xbd
	.4byte	0xa82
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF932
	.byte	0x1
	.2byte	0x782
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafc
	.uleb128 0x1f
	.ascii	"pub\000"
	.byte	0x1
	.2byte	0x782
	.byte	0x3c
	.4byte	0xafc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x1f
	.ascii	"prv\000"
	.byte	0x1
	.2byte	0x782
	.byte	0x5c
	.4byte	0xafc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x784
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"Q\000"
	.byte	0x1
	.2byte	0x785
	.byte	0x17
	.4byte	0x78f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x786
	.byte	0x17
	.4byte	0x899
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x7a2
	.byte	0x1
	.4byte	.L876
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8e3
	.uleb128 0x1a
	.4byte	.LASF935
	.byte	0x1
	.2byte	0x774
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6e
	.uleb128 0x1b
	.4byte	.LASF903
	.byte	0x1
	.2byte	0x774
	.byte	0x2f
	.4byte	0x704
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x774
	.byte	0x4c
	.4byte	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF936
	.byte	0x1
	.2byte	0x775
	.byte	0x17
	.4byte	0xb93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF937
	.byte	0x1
	.2byte	0x775
	.byte	0x46
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x777
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8d7
	.uleb128 0x7
	.4byte	0x29
	.4byte	0xb8d
	.uleb128 0x8
	.4byte	0x30
	.uleb128 0x8
	.4byte	0xb8d
	.uleb128 0x8
	.4byte	0x5da
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb74
	.uleb128 0x1a
	.4byte	.LASF938
	.byte	0x1
	.2byte	0x769
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc01
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x769
	.byte	0x31
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x76a
	.byte	0x2b
	.4byte	0x86d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.ascii	"Q\000"
	.byte	0x1
	.2byte	0x76a
	.byte	0x41
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF936
	.byte	0x1
	.2byte	0x76b
	.byte	0x24
	.4byte	0xb93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF937
	.byte	0x1
	.2byte	0x76c
	.byte	0x24
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x899
	.uleb128 0x1a
	.4byte	.LASF939
	.byte	0x1
	.2byte	0x717
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xced
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x717
	.byte	0x36
	.4byte	0xc01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1f
	.ascii	"G\000"
	.byte	0x1
	.2byte	0x718
	.byte	0x2f
	.4byte	0xced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x719
	.byte	0x23
	.4byte	0x86d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1f
	.ascii	"Q\000"
	.byte	0x1
	.2byte	0x719
	.byte	0x39
	.4byte	0x88d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.4byte	.LASF936
	.byte	0x1
	.2byte	0x71a
	.byte	0x1c
	.4byte	0xb93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF937
	.byte	0x1
	.2byte	0x71b
	.byte	0x1c
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x71d
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF940
	.byte	0x1
	.2byte	0x71e
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x75f
	.byte	0x1
	.4byte	.L841
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0
	.4byte	0xcc5
	.uleb128 0x1c
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x724
	.byte	0x10
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1d
	.4byte	.LASF941
	.byte	0x1
	.2byte	0x73c
	.byte	0xd
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.ascii	"rnd\000"
	.byte	0x1
	.2byte	0x73d
	.byte	0x17
	.4byte	0xcf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x79b
	.uleb128 0xe
	.4byte	0x27e
	.4byte	0xd03
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x41
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF942
	.byte	0x1
	.2byte	0x6f6
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3d
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x6f6
	.byte	0x39
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x6f6
	.byte	0x51
	.4byte	0xd43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8a5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6a2
	.uleb128 0x1a
	.4byte	.LASF943
	.byte	0x1
	.2byte	0x6e2
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd84
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x6e2
	.byte	0x38
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x6e2
	.byte	0x56
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF945
	.byte	0x1
	.2byte	0x6d5
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdbf
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x6d5
	.byte	0x3a
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x6d5
	.byte	0x58
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF944
	.byte	0x1
	.2byte	0x6b8
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe5d
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x6b8
	.byte	0x2c
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x6b8
	.byte	0x44
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x6b9
	.byte	0x21
	.4byte	0xd43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x6b9
	.byte	0x3d
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x6ba
	.byte	0x21
	.4byte	0xd43
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.ascii	"Q\000"
	.byte	0x1
	.2byte	0x6ba
	.byte	0x3d
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x6bc
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"mP\000"
	.byte	0x1
	.2byte	0x6bd
	.byte	0x17
	.4byte	0x78f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x6ca
	.byte	0x1
	.4byte	.L807
	.byte	0
	.uleb128 0x22
	.4byte	.LASF946
	.byte	0x1
	.2byte	0x69a
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed0
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x69a
	.byte	0x3a
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x69b
	.byte	0x3a
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x69c
	.byte	0x3a
	.4byte	0xd43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x69d
	.byte	0x40
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x69f
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x6b0
	.byte	0x1
	.4byte	.L798
	.byte	0
	.uleb128 0x22
	.4byte	.LASF947
	.byte	0x1
	.2byte	0x669
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf47
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x669
	.byte	0x3a
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x669
	.byte	0x58
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x66b
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"YY\000"
	.byte	0x1
	.2byte	0x66c
	.byte	0x11
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"RHS\000"
	.byte	0x1
	.2byte	0x66c
	.byte	0x15
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x68e
	.byte	0x1
	.4byte	.L763
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF948
	.byte	0x1
	.2byte	0x64b
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfcd
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x64b
	.byte	0x29
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x64b
	.byte	0x41
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x64c
	.byte	0x21
	.4byte	0xd43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x64c
	.byte	0x3d
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.4byte	.LASF936
	.byte	0x1
	.2byte	0x64d
	.byte	0x14
	.4byte	0xb93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF937
	.byte	0x1
	.2byte	0x64d
	.byte	0x43
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x64f
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x22
	.4byte	.LASF949
	.byte	0x1
	.2byte	0x60e
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x109f
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x60e
	.byte	0x2c
	.4byte	0xc01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x60e
	.byte	0x44
	.4byte	0x88d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x60f
	.byte	0x2c
	.4byte	0xd43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x60f
	.byte	0x48
	.4byte	0xced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.4byte	.LASF936
	.byte	0x1
	.2byte	0x610
	.byte	0x1f
	.4byte	0xb93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF937
	.byte	0x1
	.2byte	0x611
	.byte	0x1f
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x613
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x614
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x615
	.byte	0x13
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1c
	.ascii	"RP\000"
	.byte	0x1
	.2byte	0x616
	.byte	0x17
	.4byte	0x78f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.ascii	"PX\000"
	.byte	0x1
	.2byte	0x617
	.byte	0x11
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x640
	.byte	0x1
	.4byte	.L724
	.byte	0
	.uleb128 0x22
	.4byte	.LASF950
	.byte	0x1
	.2byte	0x5e3
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b9
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x5e3
	.byte	0x39
	.4byte	0xd3d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x5e4
	.byte	0x33
	.4byte	0x88d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.ascii	"S\000"
	.byte	0x1
	.2byte	0x5e4
	.byte	0x49
	.4byte	0x88d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x5e5
	.byte	0x39
	.4byte	0xced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.ascii	"Q\000"
	.byte	0x1
	.2byte	0x5e5
	.byte	0x55
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x5e6
	.byte	0x33
	.4byte	0xd43
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x5e8
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"A\000"
	.byte	0x1
	.2byte	0x5e9
	.byte	0x11
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"AA\000"
	.byte	0x1
	.2byte	0x5e9
	.byte	0x14
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.ascii	"B\000"
	.byte	0x1
	.2byte	0x5e9
	.byte	0x18
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.ascii	"BB\000"
	.byte	0x1
	.2byte	0x5e9
	.byte	0x1b
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.ascii	"E\000"
	.byte	0x1
	.2byte	0x5e9
	.byte	0x1f
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.ascii	"C\000"
	.byte	0x1
	.2byte	0x5e9
	.byte	0x22
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.ascii	"D\000"
	.byte	0x1
	.2byte	0x5e9
	.byte	0x25
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.ascii	"DA\000"
	.byte	0x1
	.2byte	0x5e9
	.byte	0x28
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1c
	.ascii	"CB\000"
	.byte	0x1
	.2byte	0x5e9
	.byte	0x2c
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x602
	.byte	0x1
	.4byte	.L634
	.byte	0
	.uleb128 0x22
	.4byte	.LASF951
	.byte	0x1
	.2byte	0x5b4
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x125e
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x5b4
	.byte	0x38
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x5b4
	.byte	0x50
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.4byte	.LASF936
	.byte	0x1
	.2byte	0x5b5
	.byte	0x17
	.4byte	0xb93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LASF937
	.byte	0x1
	.2byte	0x5b5
	.byte	0x46
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x5b7
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"l\000"
	.byte	0x1
	.2byte	0x5b8
	.byte	0x11
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF952
	.byte	0x1
	.2byte	0x5b9
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LASF941
	.byte	0x1
	.2byte	0x5ba
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x5ce
	.byte	0x1
	.4byte	.L615
	.byte	0
	.uleb128 0x22
	.4byte	.LASF953
	.byte	0x1
	.2byte	0x5a0
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b5
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x5a0
	.byte	0x38
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x5a0
	.byte	0x50
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x5a2
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x5a8
	.byte	0x1
	.4byte	.L604
	.byte	0
	.uleb128 0x22
	.4byte	.LASF954
	.byte	0x1
	.2byte	0x51d
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e2
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x51d
	.byte	0x2d
	.4byte	0xc01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x51d
	.byte	0x45
	.4byte	0x88d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1f
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x51e
	.byte	0x2d
	.4byte	0xd43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x51e
	.byte	0x49
	.4byte	0xced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1b
	.4byte	.LASF936
	.byte	0x1
	.2byte	0x51f
	.byte	0x20
	.4byte	0xb93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF937
	.byte	0x1
	.2byte	0x520
	.byte	0x20
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x522
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x523
	.byte	0x13
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1d
	.4byte	.LASF955
	.byte	0x1
	.2byte	0x523
	.byte	0x16
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1d
	.4byte	.LASF956
	.byte	0x1
	.2byte	0x523
	.byte	0x20
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1d
	.4byte	.LASF957
	.byte	0x1
	.2byte	0x523
	.byte	0x28
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x523
	.byte	0x31
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1c
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x524
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.ascii	"k\000"
	.byte	0x1
	.2byte	0x525
	.byte	0x13
	.4byte	0x13e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1c
	.ascii	"T\000"
	.byte	0x1
	.2byte	0x526
	.byte	0x18
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"M\000"
	.byte	0x1
	.2byte	0x527
	.byte	0x11
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1c
	.ascii	"mm\000"
	.byte	0x1
	.2byte	0x527
	.byte	0x14
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x57f
	.byte	0x1
	.4byte	.L582
	.byte	0
	.uleb128 0xe
	.4byte	0x27e
	.4byte	0x13f3
	.uleb128 0x23
	.4byte	0x8c
	.2byte	0x105
	.byte	0
	.uleb128 0x22
	.4byte	.LASF958
	.byte	0x1
	.2byte	0x4f9
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14c4
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x4f9
	.byte	0x38
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x4f9
	.byte	0x50
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.ascii	"T\000"
	.byte	0x1
	.2byte	0x4fa
	.byte	0x37
	.4byte	0xced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.4byte	.LASF959
	.byte	0x1
	.2byte	0x4fa
	.byte	0x4a
	.4byte	0x27e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x1f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x4fb
	.byte	0x33
	.4byte	0x14c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x4fb
	.byte	0x3f
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.4byte	.LASF936
	.byte	0x1
	.2byte	0x4fc
	.byte	0x25
	.4byte	0xb93
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.4byte	.LASF937
	.byte	0x1
	.2byte	0x4fd
	.byte	0x25
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x4ff
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"Txi\000"
	.byte	0x1
	.2byte	0x500
	.byte	0x17
	.4byte	0x78f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x501
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x513
	.byte	0x1
	.4byte	.L554
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x285
	.uleb128 0x22
	.4byte	.LASF960
	.byte	0x1
	.2byte	0x4db
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x156a
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x4db
	.byte	0x36
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x4db
	.byte	0x4e
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii	"T\000"
	.byte	0x1
	.2byte	0x4dc
	.byte	0x35
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF959
	.byte	0x1
	.2byte	0x4dc
	.byte	0x48
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1f
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x4dd
	.byte	0x2b
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x4df
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"ii\000"
	.byte	0x1
	.2byte	0x4e0
	.byte	0x13
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1c
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x4e0
	.byte	0x17
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x4ef
	.byte	0x1
	.4byte	.L546
	.byte	0
	.uleb128 0x22
	.4byte	.LASF961
	.byte	0x1
	.2byte	0x4a7
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1639
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x4a7
	.byte	0x3a
	.4byte	0xd3d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1f
	.ascii	"T\000"
	.byte	0x1
	.2byte	0x4a8
	.byte	0x33
	.4byte	0x88d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x4a8
	.byte	0x51
	.4byte	0xced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1f
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x4a9
	.byte	0x2f
	.4byte	0x27e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -165
	.uleb128 0x1f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x4a9
	.byte	0x39
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x4ab
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x4ac
	.byte	0x13
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1c
	.ascii	"k\000"
	.byte	0x1
	.2byte	0x4ac
	.byte	0x16
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1c
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x4ad
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"cur\000"
	.byte	0x1
	.2byte	0x4ae
	.byte	0x18
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"TT\000"
	.byte	0x1
	.2byte	0x4ae
	.byte	0x1e
	.4byte	0x1639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x4d4
	.byte	0x1
	.4byte	.L524
	.byte	0
	.uleb128 0xe
	.4byte	0x88d
	.4byte	0x1649
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x1e
	.byte	0
	.uleb128 0x24
	.4byte	.LASF1006
	.byte	0x1
	.2byte	0x47f
	.byte	0xd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e2
	.uleb128 0x1f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x47f
	.byte	0x2b
	.4byte	0xb8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x47f
	.byte	0x37
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.ascii	"w\000"
	.byte	0x1
	.2byte	0x480
	.byte	0x2b
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1f
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x480
	.byte	0x41
	.4byte	0xd43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x482
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x482
	.byte	0xf
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x483
	.byte	0x13
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1c
	.ascii	"cc\000"
	.byte	0x1
	.2byte	0x483
	.byte	0x16
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1d
	.4byte	.LASF962
	.byte	0x1
	.2byte	0x483
	.byte	0x1a
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.byte	0
	.uleb128 0x22
	.4byte	.LASF963
	.byte	0x1
	.2byte	0x436
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1797
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x436
	.byte	0x38
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x436
	.byte	0x50
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.4byte	.LASF936
	.byte	0x1
	.2byte	0x437
	.byte	0x17
	.4byte	0xb93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.4byte	.LASF937
	.byte	0x1
	.2byte	0x437
	.byte	0x46
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x439
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"l\000"
	.byte	0x1
	.2byte	0x43a
	.byte	0x11
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"ll\000"
	.byte	0x1
	.2byte	0x43a
	.byte	0x14
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF952
	.byte	0x1
	.2byte	0x43b
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LASF941
	.byte	0x1
	.2byte	0x43c
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x458
	.byte	0x1
	.4byte	.L486
	.byte	0
	.uleb128 0x22
	.4byte	.LASF964
	.byte	0x1
	.2byte	0x3e4
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1877
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x3e4
	.byte	0x34
	.4byte	0xd3d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x3e4
	.byte	0x4c
	.4byte	0x88d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x3e5
	.byte	0x34
	.4byte	0xced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1f
	.ascii	"Q\000"
	.byte	0x1
	.2byte	0x3e5
	.byte	0x50
	.4byte	0xced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x3e7
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"T1\000"
	.byte	0x1
	.2byte	0x3e8
	.byte	0x11
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"T2\000"
	.byte	0x1
	.2byte	0x3e8
	.byte	0x15
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.ascii	"T3\000"
	.byte	0x1
	.2byte	0x3e8
	.byte	0x19
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.ascii	"T4\000"
	.byte	0x1
	.2byte	0x3e8
	.byte	0x1d
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.ascii	"X\000"
	.byte	0x1
	.2byte	0x3e8
	.byte	0x21
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.ascii	"Y\000"
	.byte	0x1
	.2byte	0x3e8
	.byte	0x24
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.ascii	"Z\000"
	.byte	0x1
	.2byte	0x3e8
	.byte	0x27
	.4byte	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x427
	.byte	0x1
	.4byte	.L388
	.byte	0
	.uleb128 0x22
	.4byte	.LASF965
	.byte	0x1
	.2byte	0x389
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1917
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x389
	.byte	0x35
	.4byte	0xd3d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1f
	.ascii	"R\000"
	.byte	0x1
	.2byte	0x389
	.byte	0x4d
	.4byte	0x88d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x38a
	.byte	0x35
	.4byte	0xced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x38c
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"M\000"
	.byte	0x1
	.2byte	0x38d
	.byte	0x11
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"S\000"
	.byte	0x1
	.2byte	0x38d
	.byte	0x14
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.ascii	"T\000"
	.byte	0x1
	.2byte	0x38d
	.byte	0x17
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.ascii	"U\000"
	.byte	0x1
	.2byte	0x38d
	.byte	0x1a
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x3cc
	.byte	0x1
	.4byte	.L252
	.byte	0
	.uleb128 0x22
	.4byte	.LASF966
	.byte	0x1
	.2byte	0x366
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x199e
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x366
	.byte	0x3a
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.ascii	"Q\000"
	.byte	0x1
	.2byte	0x367
	.byte	0x30
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.ascii	"inv\000"
	.byte	0x1
	.2byte	0x368
	.byte	0x2b
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x36a
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF967
	.byte	0x1
	.2byte	0x36b
	.byte	0x13
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1c
	.ascii	"mQY\000"
	.byte	0x1
	.2byte	0x36c
	.byte	0x11
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x375
	.byte	0x1
	.4byte	.L246
	.byte	0
	.uleb128 0x22
	.4byte	.LASF968
	.byte	0x1
	.2byte	0x315
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a4f
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x315
	.byte	0x3d
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.ascii	"T\000"
	.byte	0x1
	.2byte	0x316
	.byte	0x37
	.4byte	0x1a4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	.LASF959
	.byte	0x1
	.2byte	0x316
	.byte	0x43
	.4byte	0x5da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x318
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x319
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x31a
	.byte	0x12
	.4byte	0x86d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"u\000"
	.byte	0x1
	.2byte	0x31a
	.byte	0x15
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"Zi\000"
	.byte	0x1
	.2byte	0x31a
	.byte	0x18
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.ascii	"ZZi\000"
	.byte	0x1
	.2byte	0x31a
	.byte	0x1c
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x358
	.byte	0x1
	.4byte	.L194
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x88d
	.uleb128 0x22
	.4byte	.LASF969
	.byte	0x1
	.2byte	0x2e7
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1acc
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x2e7
	.byte	0x38
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x2e7
	.byte	0x50
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x2e9
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"Zi\000"
	.byte	0x1
	.2byte	0x2ea
	.byte	0x11
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"ZZi\000"
	.byte	0x1
	.2byte	0x2ea
	.byte	0x15
	.4byte	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x303
	.byte	0x1
	.4byte	.L168
	.byte	0
	.uleb128 0x22
	.4byte	.LASF970
	.byte	0x1
	.2byte	0x297
	.byte	0xc
	.4byte	0x29
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b23
	.uleb128 0x1f
	.ascii	"N\000"
	.byte	0x1
	.2byte	0x297
	.byte	0x23
	.4byte	0x86d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x297
	.byte	0x3f
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x299
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x2af
	.byte	0x1
	.4byte	.L153
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF971
	.byte	0x1
	.2byte	0x274
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b8f
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x274
	.byte	0x3b
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF972
	.byte	0x1
	.2byte	0x274
	.byte	0x48
	.4byte	0x1b8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x275
	.byte	0x29
	.4byte	0xb8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF973
	.byte	0x1
	.2byte	0x275
	.byte	0x35
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF974
	.byte	0x1
	.2byte	0x277
	.byte	0x23
	.4byte	0x1b95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5da
	.uleb128 0x9
	.byte	0x4
	.4byte	0x75f
	.uleb128 0x1a
	.4byte	.LASF975
	.byte	0x1
	.2byte	0x253
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c07
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x253
	.byte	0x34
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x253
	.byte	0x4f
	.4byte	0x1c07
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x253
	.byte	0x5b
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LASF904
	.byte	0x1
	.2byte	0x255
	.byte	0xe
	.4byte	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1d
	.4byte	.LASF974
	.byte	0x1
	.2byte	0x256
	.byte	0x23
	.4byte	0x1b95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x14c4
	.uleb128 0x1a
	.4byte	.LASF976
	.byte	0x1
	.2byte	0x237
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c98
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x237
	.byte	0x3b
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x237
	.byte	0x59
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF977
	.byte	0x1
	.2byte	0x238
	.byte	0x1e
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF972
	.byte	0x1
	.2byte	0x238
	.byte	0x2e
	.4byte	0x1b8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x239
	.byte	0x29
	.4byte	0xb8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF973
	.byte	0x1
	.2byte	0x239
	.byte	0x35
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x23b
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF978
	.byte	0x1
	.2byte	0x218
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d13
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x218
	.byte	0x3a
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x218
	.byte	0x52
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x219
	.byte	0x2f
	.4byte	0x1c07
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF979
	.byte	0x1
	.2byte	0x219
	.byte	0x3b
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF980
	.byte	0x1
	.2byte	0x21b
	.byte	0x13
	.4byte	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1d
	.4byte	.LASF981
	.byte	0x1
	.2byte	0x21c
	.byte	0x1a
	.4byte	0x14c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF982
	.byte	0x1
	.2byte	0x1f1
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d9b
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x1f1
	.byte	0x3d
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x1f1
	.byte	0x55
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x1f2
	.byte	0x31
	.4byte	0x14c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF983
	.byte	0x1
	.2byte	0x1f2
	.byte	0x3d
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x1f4
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF984
	.byte	0x1
	.2byte	0x1f5
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x20e
	.byte	0x1
	.4byte	.L114
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF985
	.byte	0x1
	.2byte	0x1b9
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e42
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x1b9
	.byte	0x3e
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x1b9
	.byte	0x5c
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF977
	.byte	0x1
	.2byte	0x1ba
	.byte	0x21
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF972
	.byte	0x1
	.2byte	0x1ba
	.byte	0x31
	.4byte	0x1b8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x1bb
	.byte	0x2c
	.4byte	0xb8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF986
	.byte	0x1
	.2byte	0x1bb
	.byte	0x38
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x1bd
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF984
	.byte	0x1
	.2byte	0x1be
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x1ea
	.byte	0x1
	.4byte	.L100
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF987
	.byte	0x1
	.2byte	0x1a9
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eb5
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x1a9
	.byte	0x37
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF988
	.byte	0x1
	.2byte	0x1a9
	.byte	0x3e
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x1aa
	.byte	0x28
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x1aa
	.byte	0x37
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x1ac
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x1b2
	.byte	0x1
	.4byte	.L87
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF989
	.byte	0x1
	.2byte	0x199
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eed
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x199
	.byte	0x35
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.ascii	"Q\000"
	.byte	0x1
	.2byte	0x19a
	.byte	0x35
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF990
	.byte	0x1
	.2byte	0x191
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f18
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x191
	.byte	0x2d
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF991
	.byte	0x1
	.2byte	0x182
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f60
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x182
	.byte	0x2e
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x184
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x18a
	.byte	0x1
	.4byte	.L73
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF992
	.byte	0x1
	.2byte	0x17a
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f9c
	.uleb128 0x1f
	.ascii	"dst\000"
	.byte	0x1
	.2byte	0x17a
	.byte	0x30
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x17a
	.byte	0x4e
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF993
	.byte	0x1
	.2byte	0x16b
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ff1
	.uleb128 0x1f
	.ascii	"P\000"
	.byte	0x1
	.2byte	0x16b
	.byte	0x2a
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.ascii	"Q\000"
	.byte	0x1
	.2byte	0x16b
	.byte	0x46
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x16d
	.byte	0x9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1e
	.4byte	.LASF934
	.byte	0x1
	.2byte	0x173
	.byte	0x1
	.4byte	.L64
	.byte	0
	.uleb128 0x25
	.4byte	.LASF994
	.byte	0x1
	.2byte	0x15e
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2019
	.uleb128 0x1f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x15e
	.byte	0x35
	.4byte	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.4byte	.LASF995
	.byte	0x1
	.2byte	0x141
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x204f
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x141
	.byte	0x31
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x143
	.byte	0xc
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.4byte	.LASF996
	.byte	0x1
	.2byte	0x134
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2076
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x134
	.byte	0x31
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.4byte	.LASF997
	.byte	0x1
	.2byte	0x127
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x209e
	.uleb128 0x1f
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x127
	.byte	0x35
	.4byte	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.4byte	.LASF998
	.byte	0x1
	.2byte	0x11c
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20c6
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x11c
	.byte	0x31
	.4byte	0xc01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.4byte	.LASF999
	.byte	0x1
	.2byte	0x10f
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20ed
	.uleb128 0x1f
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0x10f
	.byte	0x31
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1000
	.byte	0x1
	.2byte	0x101
	.byte	0x1e
	.4byte	0x946
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2119
	.uleb128 0x1f
	.ascii	"grp\000"
	.byte	0x1
	.2byte	0x101
	.byte	0x45
	.4byte	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1001
	.byte	0x1
	.byte	0xef
	.byte	0x1f
	.4byte	0x1b95
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2152
	.uleb128 0x28
	.4byte	.LASF842
	.byte	0x1
	.byte	0xef
	.byte	0x4d
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LASF974
	.byte	0x1
	.byte	0xf1
	.byte	0x23
	.4byte	0x1b95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1002
	.byte	0x1
	.byte	0xdd
	.byte	0x1f
	.4byte	0x1b95
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x218b
	.uleb128 0x28
	.4byte	.LASF904
	.byte	0x1
	.byte	0xdd
	.byte	0x4c
	.4byte	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x19
	.4byte	.LASF974
	.byte	0x1
	.byte	0xdf
	.byte	0x23
	.4byte	0x1b95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1003
	.byte	0x1
	.byte	0xcb
	.byte	0x1f
	.4byte	0x1b95
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21c4
	.uleb128 0x28
	.4byte	.LASF903
	.byte	0x1
	.byte	0xcb
	.byte	0x58
	.4byte	0x704
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x19
	.4byte	.LASF974
	.byte	0x1
	.byte	0xcd
	.byte	0x23
	.4byte	0x1b95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1004
	.byte	0x1
	.byte	0xb1
	.byte	0x1d
	.4byte	0x2217
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2217
	.uleb128 0x19
	.4byte	.LASF1005
	.byte	0x1
	.byte	0xb3
	.byte	0x10
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	init_done.6092
	.uleb128 0x29
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb7
	.byte	0x10
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.4byte	.LASF974
	.byte	0x1
	.byte	0xb8
	.byte	0x27
	.4byte	0x1b95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x710
	.uleb128 0x2b
	.4byte	.LASF1012
	.byte	0x1
	.byte	0xa9
	.byte	0x1f
	.4byte	0x1b95
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF1007
	.byte	0x1
	.byte	0x47
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2271
	.uleb128 0x2d
	.ascii	"v\000"
	.byte	0x1
	.byte	0x47
	.byte	0x24
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.ascii	"n\000"
	.byte	0x1
	.byte	0x47
	.byte	0x2e
	.4byte	0x5da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.ascii	"p\000"
	.byte	0x1
	.byte	0x48
	.byte	0x1d
	.4byte	0x2271
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x28a
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x7c6
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2278
	.4byte	0x6b5
	.ascii	"MBEDTLS_ECP_DP_NONE\000"
	.4byte	0x6bb
	.ascii	"MBEDTLS_ECP_DP_SECP192R1\000"
	.4byte	0x6c1
	.ascii	"MBEDTLS_ECP_DP_SECP224R1\000"
	.4byte	0x6c7
	.ascii	"MBEDTLS_ECP_DP_SECP256R1\000"
	.4byte	0x6cd
	.ascii	"MBEDTLS_ECP_DP_SECP384R1\000"
	.4byte	0x6d3
	.ascii	"MBEDTLS_ECP_DP_SECP521R1\000"
	.4byte	0x6d9
	.ascii	"MBEDTLS_ECP_DP_BP256R1\000"
	.4byte	0x6df
	.ascii	"MBEDTLS_ECP_DP_BP384R1\000"
	.4byte	0x6e5
	.ascii	"MBEDTLS_ECP_DP_BP512R1\000"
	.4byte	0x6eb
	.ascii	"MBEDTLS_ECP_DP_CURVE25519\000"
	.4byte	0x6f1
	.ascii	"MBEDTLS_ECP_DP_SECP192K1\000"
	.4byte	0x6f7
	.ascii	"MBEDTLS_ECP_DP_SECP224K1\000"
	.4byte	0x6fd
	.ascii	"MBEDTLS_ECP_DP_SECP256K1\000"
	.4byte	0x8e8
	.ascii	"add_count\000"
	.4byte	0x901
	.ascii	"dbl_count\000"
	.4byte	0x913
	.ascii	"mul_count\000"
	.4byte	0x933
	.ascii	"ECP_TYPE_NONE\000"
	.4byte	0x939
	.ascii	"ECP_TYPE_SHORT_WEIERSTRASS\000"
	.4byte	0x93f
	.ascii	"ECP_TYPE_MONTGOMERY\000"
	.4byte	0x967
	.ascii	"ecp_supported_curves\000"
	.4byte	0x989
	.ascii	"ecp_supported_grp_id\000"
	.4byte	0x8e8
	.ascii	"add_count\000"
	.4byte	0x901
	.ascii	"dbl_count\000"
	.4byte	0x913
	.ascii	"mul_count\000"
	.4byte	0x989
	.ascii	"ecp_supported_grp_id\000"
	.4byte	0x99b
	.ascii	"mbedtls_ecp_self_test\000"
	.4byte	0xa82
	.ascii	"mbedtls_ecp_check_pub_priv\000"
	.4byte	0xb02
	.ascii	"mbedtls_ecp_gen_key\000"
	.4byte	0xb99
	.ascii	"mbedtls_ecp_gen_keypair\000"
	.4byte	0xc07
	.ascii	"mbedtls_ecp_gen_keypair_base\000"
	.4byte	0xd03
	.ascii	"mbedtls_ecp_check_privkey\000"
	.4byte	0xd49
	.ascii	"mbedtls_ecp_check_pubkey\000"
	.4byte	0xd84
	.ascii	"ecp_check_pubkey_mx\000"
	.4byte	0xdbf
	.ascii	"mbedtls_ecp_muladd\000"
	.4byte	0xe5d
	.ascii	"mbedtls_ecp_mul_shortcuts\000"
	.4byte	0xed0
	.ascii	"ecp_check_pubkey_sw\000"
	.4byte	0xf47
	.ascii	"mbedtls_ecp_mul\000"
	.4byte	0xfcd
	.ascii	"ecp_mul_mxz\000"
	.4byte	0x109f
	.ascii	"ecp_double_add_mxz\000"
	.4byte	0x11b9
	.ascii	"ecp_randomize_mxz\000"
	.4byte	0x125e
	.ascii	"ecp_normalize_mxz\000"
	.4byte	0x12b5
	.ascii	"ecp_mul_comb\000"
	.4byte	0x13f3
	.ascii	"ecp_mul_comb_core\000"
	.4byte	0x14ca
	.ascii	"ecp_select_comb\000"
	.4byte	0x156a
	.ascii	"ecp_precompute_comb\000"
	.4byte	0x1649
	.ascii	"ecp_comb_fixed\000"
	.4byte	0x16e2
	.ascii	"ecp_randomize_jac\000"
	.4byte	0x1797
	.ascii	"ecp_add_mixed\000"
	.4byte	0x1877
	.ascii	"ecp_double_jac\000"
	.4byte	0x1917
	.ascii	"ecp_safe_invert_jac\000"
	.4byte	0x199e
	.ascii	"ecp_normalize_jac_many\000"
	.4byte	0x1a55
	.ascii	"ecp_normalize_jac\000"
	.4byte	0x1acc
	.ascii	"ecp_modp\000"
	.4byte	0x1b23
	.ascii	"mbedtls_ecp_tls_write_group\000"
	.4byte	0x1b9b
	.ascii	"mbedtls_ecp_tls_read_group\000"
	.4byte	0x1c0d
	.ascii	"mbedtls_ecp_tls_write_point\000"
	.4byte	0x1c98
	.ascii	"mbedtls_ecp_tls_read_point\000"
	.4byte	0x1d13
	.ascii	"mbedtls_ecp_point_read_binary\000"
	.4byte	0x1d9b
	.ascii	"mbedtls_ecp_point_write_binary\000"
	.4byte	0x1e42
	.ascii	"mbedtls_ecp_point_read_string\000"
	.4byte	0x1eb5
	.ascii	"mbedtls_ecp_point_cmp\000"
	.4byte	0x1eed
	.ascii	"mbedtls_ecp_is_zero\000"
	.4byte	0x1f18
	.ascii	"mbedtls_ecp_set_zero\000"
	.4byte	0x1f60
	.ascii	"mbedtls_ecp_group_copy\000"
	.4byte	0x1f9c
	.ascii	"mbedtls_ecp_copy\000"
	.4byte	0x1ff1
	.ascii	"mbedtls_ecp_keypair_free\000"
	.4byte	0x2019
	.ascii	"mbedtls_ecp_group_free\000"
	.4byte	0x204f
	.ascii	"mbedtls_ecp_point_free\000"
	.4byte	0x2076
	.ascii	"mbedtls_ecp_keypair_init\000"
	.4byte	0x209e
	.ascii	"mbedtls_ecp_group_init\000"
	.4byte	0x20c6
	.ascii	"mbedtls_ecp_point_init\000"
	.4byte	0x20ed
	.ascii	"ecp_get_type\000"
	.4byte	0x2119
	.ascii	"mbedtls_ecp_curve_info_from_name\000"
	.4byte	0x2152
	.ascii	"mbedtls_ecp_curve_info_from_tls_id\000"
	.4byte	0x218b
	.ascii	"mbedtls_ecp_curve_info_from_grp_id\000"
	.4byte	0x21c4
	.ascii	"mbedtls_ecp_grp_id_list\000"
	.4byte	0x221d
	.ascii	"mbedtls_ecp_curve_list\000"
	.4byte	0x2233
	.ascii	"mbedtls_zeroize\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x267
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2278
	.4byte	0x29
	.ascii	"int\000"
	.4byte	0x5a
	.ascii	"long int\000"
	.4byte	0x32
	.ascii	"__mbstate_s\000"
	.4byte	0x80
	.ascii	"char\000"
	.4byte	0x8c
	.ascii	"unsigned int\000"
	.4byte	0x26d
	.ascii	"__RAL_locale_data_t\000"
	.4byte	0x27e
	.ascii	"unsigned char\000"
	.4byte	0x36b
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x3b9
	.ascii	"__RAL_locale_t\000"
	.4byte	0x3ca
	.ascii	"__locale_s\000"
	.4byte	0x560
	.ascii	"short unsigned int\000"
	.4byte	0x567
	.ascii	"__RAL_error_decoder_fn_t\000"
	.4byte	0x589
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x5ba
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x5da
	.ascii	"size_t\000"
	.4byte	0x5e6
	.ascii	"signed char\000"
	.4byte	0x5ed
	.ascii	"short int\000"
	.4byte	0x5f4
	.ascii	"uint16_t\000"
	.4byte	0x600
	.ascii	"uint32_t\000"
	.4byte	0x60c
	.ascii	"long long int\000"
	.4byte	0x613
	.ascii	"long long unsigned int\000"
	.4byte	0x61a
	.ascii	"FILE\000"
	.4byte	0x659
	.ascii	"mbedtls_mpi_uint\000"
	.4byte	0x696
	.ascii	"mbedtls_mpi\000"
	.4byte	0x704
	.ascii	"mbedtls_ecp_group_id\000"
	.4byte	0x753
	.ascii	"mbedtls_ecp_curve_info\000"
	.4byte	0x78f
	.ascii	"mbedtls_ecp_point\000"
	.4byte	0x899
	.ascii	"mbedtls_ecp_group\000"
	.4byte	0x8d7
	.ascii	"mbedtls_ecp_keypair\000"
	.4byte	0x4f8
	.ascii	"timeval\000"
	.4byte	0x8fa
	.ascii	"long unsigned int\000"
	.4byte	0x946
	.ascii	"ecp_curve_type\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1bc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 9 "../../../../../../external/mbedtls/include/mbedtls/config.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro3
	.file 10 "../../../../../../external/mbedtls/include/mbedtls/check_config.h"
	.byte	0x3
	.uleb128 0xa26
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF592
	.file 11 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/limits.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x6
	.uleb128 0x247
	.4byte	.LASF613
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF614
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF615
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF616
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.file 12 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/string.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF753
	.byte	0x4
	.file 13 "../../../../../../external/mbedtls/include/mbedtls/platform.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF754
	.file 14 "../../../../../../external/mbedtls/include/mbedtls/platform_time.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF755
	.file 15 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/time.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF756
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF757
	.byte	0x4
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF758
	.byte	0x4
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF759
	.byte	0x4
	.file 16 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/stdlib.h"
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x2c1
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x2c6
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x2cd
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x466
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x469
	.4byte	.LASF793
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.728f51ebaf655ed8137eb5b4d98e877a,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0
	.4byte	.LASF396
	.byte	0x6
	.uleb128 0
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0
	.4byte	.LASF398
	.byte	0x6
	.uleb128 0
	.4byte	.LASF399
	.byte	0x6
	.uleb128 0
	.4byte	.LASF400
	.byte	0x6
	.uleb128 0
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0
	.4byte	.LASF402
	.byte	0x6
	.uleb128 0
	.4byte	.LASF403
	.byte	0x6
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0
	.4byte	.LASF406
	.byte	0x6
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x6
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x6
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0
	.4byte	.LASF423
	.byte	0x6
	.uleb128 0
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0
	.4byte	.LASF425
	.byte	0x6
	.uleb128 0
	.4byte	.LASF426
	.byte	0x6
	.uleb128 0
	.4byte	.LASF427
	.byte	0x6
	.uleb128 0
	.4byte	.LASF428
	.byte	0x6
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x6
	.uleb128 0
	.4byte	.LASF433
	.byte	0x6
	.uleb128 0
	.4byte	.LASF434
	.byte	0x6
	.uleb128 0
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0
	.4byte	.LASF466
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.config.h.29.6cd7b045e4207eb990d22aa1ce6181ec,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x191
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x1b0
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x1ba
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x1bb
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x1bc
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x1bd
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x1be
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x1bf
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x1c0
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x1c1
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x1c2
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x1c3
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x1c4
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x1c5
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x1d0
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x1de
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x1f4
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x20c
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x239
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x255
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x26f
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x288
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x2a0
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x2b8
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x2d0
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x2f1
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x300
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x309
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x310
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x376
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x381
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x38c
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x39d
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x3bb
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x3dd
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x3ef
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x400
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x416
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x425
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x442
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x45a
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x466
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x472
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x481
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x48a
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x499
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x4ab
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x4bb
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x4c6
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x4d4
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x4de
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x4e9
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x4f2
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x515
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x539
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x546
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x550
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x57c
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x5c7
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x5de
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x5ec
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x5fa
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x606
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x616
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x61f
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x656
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x664
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x670
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x67c
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x697
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x6a5
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x6bf
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x6cd
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x6dd
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x6ec
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x70d
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x71b
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x727
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x735
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x75a
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x766
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x78d
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x7b0
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x7c7
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x7d5
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x7e7
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x7f7
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x807
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x816
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x824
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x831
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x850
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x864
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x86f
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x881
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x891
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x8a2
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x8b1
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x8bd
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x8c7
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x8d3
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x8e1
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x8ef
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x8ff
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x92c
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x937
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x948
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x958
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x966
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x974
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x981
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x98e
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x99b
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x9a5
	.4byte	.LASF591
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.limits.h.45.6f289e49c60af4d0b1e263e770b7bb7b,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF612
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.45.c15bb6e0a60630589d552427ceaabe49,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF618
	.byte	0x6
	.uleb128 0x43
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF637
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.50.aad2f28d9688ad38fd1808e94cc788bf,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF641
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.45.370e29a4497ae7c3b4c92e383ca5b648,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF701
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.45.15a76ce3d80dea25435f233c0919057b,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x302
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x306
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x308
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x309
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x30a
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x30c
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x30d
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x30e
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x30f
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x310
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x311
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x312
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x313
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x316
	.4byte	.LASF717
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.bignum.h.39.b766bba80208f4ca3cc528b5f3915edf,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF735
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ecp.h.31.2d6df73eea2abd8897b917126be47d1c,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF752
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.45.69934cee57efc20f77d02e3a76e036c8,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF764
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.platform.h.56.544fbbead8e73c8e316833792b05cca2,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF784
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF714:
	.ascii	"_IOFBF 0\000"
.LASF253:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF860:
	.ascii	"__RAL_data_utf8_space\000"
.LASF793:
	.ascii	"COMB_MAX_PRE ( 1 << ( MBEDTLS_ECP_WINDOW_SIZE - 1 )"
	.ascii	" )\000"
.LASF1003:
	.ascii	"mbedtls_ecp_curve_info_from_grp_id\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF375:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF876:
	.ascii	"size_t\000"
.LASF597:
	.ascii	"SCHAR_MAX 127\000"
.LASF994:
	.ascii	"mbedtls_ecp_keypair_free\000"
.LASF255:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF847:
	.ascii	"__locale_s\000"
.LASF218:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF946:
	.ascii	"mbedtls_ecp_mul_shortcuts\000"
.LASF944:
	.ascii	"mbedtls_ecp_muladd\000"
.LASF618:
	.ascii	"__THREAD __thread\000"
.LASF327:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF319:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF970:
	.ascii	"ecp_modp\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF841:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF214:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF542:
	.ascii	"MBEDTLS_BLOWFISH_C \000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF240:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF344:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF621:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF212:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF712:
	.ascii	"L_tmpnam 256\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF277:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF996:
	.ascii	"mbedtls_ecp_point_free\000"
.LASF922:
	.ascii	"ECP_TYPE_SHORT_WEIERSTRASS\000"
.LASF307:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF874:
	.ascii	"__RAL_error_decoder_t\000"
.LASF993:
	.ascii	"mbedtls_ecp_copy\000"
.LASF167:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF502:
	.ascii	"MBEDTLS_KEY_EXCHANGE_ECDH_RSA_ENABLED \000"
.LASF959:
	.ascii	"t_len\000"
.LASF267:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF333:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF676:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF303:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF237:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF340:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF243:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF924:
	.ascii	"ecp_curve_type\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF467:
	.ascii	"MBEDTLS_CONFIG_H \000"
.LASF412:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF302:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF197:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF566:
	.ascii	"MBEDTLS_PK_PARSE_C \000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF935:
	.ascii	"mbedtls_ecp_gen_key\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF829:
	.ascii	"time_format\000"
.LASF915:
	.ascii	"mbedtls_ecp_group\000"
.LASF580:
	.ascii	"MBEDTLS_SSL_SRV_C \000"
.LASF858:
	.ascii	"__RAL_data_utf8_period\000"
.LASF655:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF596:
	.ascii	"CHAR_MAX 255\000"
.LASF689:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF744:
	.ascii	"MBEDTLS_ECP_DP_MAX 12\000"
.LASF639:
	.ascii	"NULL 0\000"
.LASF416:
	.ascii	"__APCS_32__ 1\000"
.LASF554:
	.ascii	"MBEDTLS_ENTROPY_C \000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF170:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF290:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF715:
	.ascii	"_IOLBF 1\000"
.LASF825:
	.ascii	"month_names\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF802:
	.ascii	"int_curr_symbol\000"
.LASF624:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF926:
	.ascii	"ecp_supported_grp_id\000"
.LASF263:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF205:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF193:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF1004:
	.ascii	"mbedtls_ecp_grp_id_list\000"
.LASF487:
	.ascii	"MBEDTLS_ECP_DP_BP256R1_ENABLED \000"
.LASF813:
	.ascii	"n_cs_precedes\000"
.LASF612:
	.ascii	"MB_LEN_MAX 4\000"
.LASF581:
	.ascii	"MBEDTLS_SSL_TLS_C \000"
.LASF633:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF643:
	.ascii	"UINT8_MAX 255\000"
.LASF1000:
	.ascii	"ecp_get_type\000"
.LASF280:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF209:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF626:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF602:
	.ascii	"USHRT_MAX 65535\000"
.LASF479:
	.ascii	"MBEDTLS_ECP_DP_SECP192R1_ENABLED \000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF169:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF259:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF766:
	.ascii	"MBEDTLS_PLATFORM_STD_PRINTF printf\000"
.LASF809:
	.ascii	"int_frac_digits\000"
.LASF764:
	.ascii	"MB_CUR_MAX __RAL_mb_max(&__RAL_global_locale)\000"
.LASF339:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF213:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF785:
	.ascii	"ECP_SHORTWEIERSTRASS \000"
.LASF985:
	.ascii	"mbedtls_ecp_point_write_binary\000"
.LASF347:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF980:
	.ascii	"data_len\000"
.LASF455:
	.ascii	"BOARD_PCA10056 1\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF229:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF196:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF963:
	.ascii	"ecp_randomize_jac\000"
.LASF239:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF316:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF727:
	.ascii	"MBEDTLS_MPI_MAX_LIMBS 10000\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF890:
	.ascii	"MBEDTLS_ECP_DP_SECP192R1\000"
.LASF423:
	.ascii	"__VFP_FP__ 1\000"
.LASF287:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF724:
	.ascii	"MBEDTLS_ERR_MPI_NOT_ACCEPTABLE -0x000E\000"
.LASF885:
	.ascii	"stdout\000"
.LASF902:
	.ascii	"mbedtls_ecp_group_id\000"
.LASF200:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF238:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF272:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF648:
	.ascii	"INT16_MAX 32767\000"
.LASF454:
	.ascii	"ARM_MATH_CM4 1\000"
.LASF695:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF232:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF828:
	.ascii	"date_format\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF804:
	.ascii	"mon_decimal_point\000"
.LASF305:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF582:
	.ascii	"MBEDTLS_TIMING_C \000"
.LASF883:
	.ascii	"FILE\000"
.LASF311:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF796:
	.ascii	"long int\000"
.LASF751:
	.ascii	"MBEDTLS_ECP_PF_COMPRESSED 1\000"
.LASF228:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF226:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF623:
	.ascii	"__CODE \000"
.LASF466:
	.ascii	"MBEDTLS_CONFIG_FILE \"mbedtls/config.h\"\000"
.LASF233:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF504:
	.ascii	"MBEDTLS_ERROR_STRERROR_DUMMY \000"
.LASF514:
	.ascii	"MBEDTLS_SSL_FALLBACK_SCSV \000"
.LASF871:
	.ascii	"__RAL_error_decoder_s\000"
.LASF249:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF929:
	.ascii	"mul_c_prev\000"
.LASF367:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF849:
	.ascii	"__RAL_global_locale\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF576:
	.ascii	"MBEDTLS_SSL_CACHE_C \000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF896:
	.ascii	"MBEDTLS_ECP_DP_BP384R1\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF433:
	.ascii	"__ARM_NEON__\000"
.LASF195:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF436:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF293:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF536:
	.ascii	"MBEDTLS_AES_C \000"
.LASF869:
	.ascii	"short unsigned int\000"
.LASF468:
	.ascii	"MBEDTLS_HAVE_ASM \000"
.LASF949:
	.ascii	"ecp_mul_mxz\000"
.LASF223:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF989:
	.ascii	"mbedtls_ecp_point_cmp\000"
.LASF446:
	.ascii	"__ELF__ 1\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF430:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF649:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF654:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF982:
	.ascii	"mbedtls_ecp_point_read_binary\000"
.LASF770:
	.ascii	"MBEDTLS_PLATFORM_STD_EXIT exit\000"
.LASF737:
	.ascii	"MBEDTLS_ERR_ECP_BUFFER_TOO_SMALL -0x4F00\000"
.LASF619:
	.ascii	"__RAL_SIZE_T\000"
.LASF248:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF707:
	.ascii	"SEEK_CUR 1\000"
.LASF792:
	.ascii	"COMB_MAX_D ( MBEDTLS_ECP_MAX_BITS + 1 ) / 2\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF222:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF668:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF998:
	.ascii	"mbedtls_ecp_group_init\000"
.LASF532:
	.ascii	"MBEDTLS_X509_CHECK_KEY_USAGE \000"
.LASF682:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF956:
	.ascii	"p_eq_g\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF245:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF839:
	.ascii	"__mbtowc\000"
.LASF278:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF679:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF488:
	.ascii	"MBEDTLS_ECP_DP_BP384R1_ENABLED \000"
.LASF519:
	.ascii	"MBEDTLS_SSL_PROTO_TLS1_1 \000"
.LASF369:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF675:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF877:
	.ascii	"signed char\000"
.LASF895:
	.ascii	"MBEDTLS_ECP_DP_BP256R1\000"
.LASF522:
	.ascii	"MBEDTLS_SSL_ALPN \000"
.LASF432:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF275:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF373:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF555:
	.ascii	"MBEDTLS_ERROR_C \000"
.LASF265:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF667:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF537:
	.ascii	"MBEDTLS_ARC4_C \000"
.LASF461:
	.ascii	"NRF_SD_BLE_API_VERSION 6\000"
.LASF672:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF600:
	.ascii	"SHRT_MIN (-32767 - 1)\000"
.LASF753:
	.ascii	"__string_H \000"
.LASF211:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF584:
	.ascii	"MBEDTLS_X509_USE_C \000"
.LASF216:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF831:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF296:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF252:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF268:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF208:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF814:
	.ascii	"n_sep_by_space\000"
.LASF961:
	.ascii	"ecp_precompute_comb\000"
.LASF983:
	.ascii	"ilen\000"
.LASF897:
	.ascii	"MBEDTLS_ECP_DP_BP512R1\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF541:
	.ascii	"MBEDTLS_BIGNUM_C \000"
.LASF699:
	.ascii	"WCHAR_MAX 2147483647L\000"
.LASF652:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF696:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF343:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF694:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF906:
	.ascii	"mbedtls_ecp_curve_info\000"
.LASF475:
	.ascii	"MBEDTLS_CIPHER_PADDING_ONE_AND_ZEROS \000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF916:
	.ascii	"mbedtls_ecp_keypair\000"
.LASF647:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF330:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF526:
	.ascii	"MBEDTLS_SSL_DTLS_BADMAC_LIMIT \000"
.LASF816:
	.ascii	"n_sign_posn\000"
.LASF920:
	.ascii	"mul_count\000"
.LASF518:
	.ascii	"MBEDTLS_SSL_PROTO_TLS1 \000"
.LASF748:
	.ascii	"MBEDTLS_ECP_WINDOW_SIZE 6\000"
.LASF742:
	.ascii	"MBEDTLS_ERR_ECP_INVALID_KEY -0x4C80\000"
.LASF505:
	.ascii	"MBEDTLS_GENPRIME \000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF390:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF485:
	.ascii	"MBEDTLS_ECP_DP_SECP224K1_ENABLED \000"
.LASF797:
	.ascii	"char\000"
.LASF911:
	.ascii	"t_pre\000"
.LASF490:
	.ascii	"MBEDTLS_ECP_DP_CURVE25519_ENABLED \000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF495:
	.ascii	"MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED \000"
.LASF723:
	.ascii	"MBEDTLS_ERR_MPI_DIVISION_BY_ZERO -0x000C\000"
.LASF641:
	.ascii	"offsetof(s,m) ((size_t)&(((s *)0)->m))\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF729:
	.ascii	"MBEDTLS_MPI_MAX_SIZE 1024\000"
.LASF534:
	.ascii	"MBEDTLS_X509_RSASSA_PSS_SUPPORT \000"
.LASF482:
	.ascii	"MBEDTLS_ECP_DP_SECP384R1_ENABLED \000"
.LASF355:
	.ascii	"__HA_FBIT__ 7\000"
.LASF493:
	.ascii	"MBEDTLS_KEY_EXCHANGE_PSK_ENABLED \000"
.LASF842:
	.ascii	"name\000"
.LASF587:
	.ascii	"MBEDTLS_X509_CSR_PARSE_C \000"
.LASF958:
	.ascii	"ecp_mul_comb_core\000"
.LASF230:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF733:
	.ascii	"MBEDTLS_MPI_RW_BUFFER_SIZE ( ((MBEDTLS_MPI_MAX_BITS"
	.ascii	"_SCALE100 + MBEDTLS_LN_2_DIV_LN_10_SCALE100 - 1) / "
	.ascii	"MBEDTLS_LN_2_DIV_LN_10_SCALE100) + 10 + 6 )\000"
.LASF235:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF261:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF262:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF704:
	.ascii	"__PRINTF_TAG_PTR_DEFINED \000"
.LASF447:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF434:
	.ascii	"__ARM_NEON\000"
.LASF864:
	.ascii	"timeval\000"
.LASF610:
	.ascii	"LLONG_MAX 9223372036854775807LL\000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF691:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF975:
	.ascii	"mbedtls_ecp_tls_read_group\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF781:
	.ascii	"mbedtls_snprintf snprintf\000"
.LASF657:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF628:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF857:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF359:
	.ascii	"__DA_FBIT__ 31\000"
.LASF460:
	.ascii	"NRF52840_XXAA 1\000"
.LASF819:
	.ascii	"int_p_sep_by_space\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF921:
	.ascii	"ECP_TYPE_NONE\000"
.LASF635:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF805:
	.ascii	"mon_thousands_sep\000"
.LASF531:
	.ascii	"MBEDTLS_VERSION_FEATURES \000"
.LASF706:
	.ascii	"SEEK_SET 0\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF658:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF747:
	.ascii	"MBEDTLS_ECP_MAX_PT_LEN ( 2 * MBEDTLS_ECP_MAX_BYTES "
	.ascii	"+ 1 )\000"
.LASF933:
	.ascii	"verbose\000"
.LASF312:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF837:
	.ascii	"__towlower\000"
.LASF943:
	.ascii	"mbedtls_ecp_check_pubkey\000"
.LASF588:
	.ascii	"MBEDTLS_X509_CREATE_C \000"
.LASF586:
	.ascii	"MBEDTLS_X509_CRL_PARSE_C \000"
.LASF808:
	.ascii	"negative_sign\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF420:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF450:
	.ascii	"__HEAP_SIZE__ 0\000"
.LASF817:
	.ascii	"int_p_cs_precedes\000"
.LASF314:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF872:
	.ascii	"decode\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF585:
	.ascii	"MBEDTLS_X509_CRT_PARSE_C \000"
.LASF300:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF674:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF964:
	.ascii	"ecp_add_mixed\000"
.LASF472:
	.ascii	"MBEDTLS_CIPHER_MODE_CFB \000"
.LASF315:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF543:
	.ascii	"MBEDTLS_CAMELLIA_C \000"
.LASF807:
	.ascii	"positive_sign\000"
.LASF204:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF995:
	.ascii	"mbedtls_ecp_group_free\000"
.LASF775:
	.ascii	"MBEDTLS_PLATFORM_STD_NV_SEED_WRITE mbedtls_platform"
	.ascii	"_std_nv_seed_write\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF361:
	.ascii	"__TA_FBIT__ 63\000"
.LASF225:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF508:
	.ascii	"MBEDTLS_PKCS1_V15 \000"
.LASF965:
	.ascii	"ecp_double_jac\000"
.LASF925:
	.ascii	"ecp_supported_curves\000"
.LASF478:
	.ascii	"MBEDTLS_REMOVE_ARC4_CIPHERSUITES \000"
.LASF738:
	.ascii	"MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE -0x4E80\000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF506:
	.ascii	"MBEDTLS_FS_IO \000"
.LASF165:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF594:
	.ascii	"CHAR_BIT 8\000"
.LASF567:
	.ascii	"MBEDTLS_PK_WRITE_C \000"
.LASF851:
	.ascii	"__RAL_codeset_ascii\000"
.LASF161:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF573:
	.ascii	"MBEDTLS_SHA1_C \000"
.LASF636:
	.ascii	"__RAL_WCHAR_T unsigned\000"
.LASF866:
	.ascii	"tv_usec\000"
.LASF759:
	.ascii	"mbedtls_time time\000"
.LASF845:
	.ascii	"__RAL_locale_t\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF734:
	.ascii	"MBEDTLS_HAVE_INT32 \000"
.LASF469:
	.ascii	"MBEDTLS_HAVE_TIME \000"
.LASF431:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF685:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF632:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF247:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF264:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF972:
	.ascii	"olen\000"
.LASF987:
	.ascii	"mbedtls_ecp_point_read_string\000"
.LASF260:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF826:
	.ascii	"abbrev_month_names\000"
.LASF328:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF372:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF914:
	.ascii	"T_size\000"
.LASF844:
	.ascii	"codeset\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF936:
	.ascii	"f_rng\000"
.LASF721:
	.ascii	"MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL -0x0008\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF389:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF395:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF406:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF484:
	.ascii	"MBEDTLS_ECP_DP_SECP192K1_ENABLED \000"
.LASF410:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF224:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF615:
	.ascii	"MBEDTLS_BIGNUM_H \000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF969:
	.ascii	"ecp_normalize_jac\000"
.LASF448:
	.ascii	"__SES_ARM 1\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF697:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF540:
	.ascii	"MBEDTLS_BASE64_C \000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF650:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF795:
	.ascii	"__wchar\000"
.LASF400:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF257:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF917:
	.ascii	"long unsigned int\000"
.LASF358:
	.ascii	"__SA_IBIT__ 16\000"
.LASF918:
	.ascii	"add_count\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF930:
	.ascii	"exponents\000"
.LASF875:
	.ascii	"__RAL_error_decoder_head\000"
.LASF426:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF840:
	.ascii	"__RAL_locale_data_t\000"
.LASF638:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF563:
	.ascii	"MBEDTLS_PEM_PARSE_C \000"
.LASF528:
	.ascii	"MBEDTLS_SSL_EXPORT_KEYS \000"
.LASF870:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF236:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF856:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF739:
	.ascii	"MBEDTLS_ERR_ECP_VERIFY_FAILED -0x4E00\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF806:
	.ascii	"mon_grouping\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF326:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF269:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF353:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF746:
	.ascii	"MBEDTLS_ECP_MAX_BYTES ( ( MBEDTLS_ECP_MAX_BITS + 7 "
	.ascii	") / 8 )\000"
.LASF201:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF191:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF778:
	.ascii	"mbedtls_calloc calloc\000"
.LASF701:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF565:
	.ascii	"MBEDTLS_PK_C \000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF686:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF745:
	.ascii	"MBEDTLS_ECP_MAX_BITS 521\000"
.LASF483:
	.ascii	"MBEDTLS_ECP_DP_SECP521R1_ENABLED \000"
.LASF476:
	.ascii	"MBEDTLS_CIPHER_PADDING_ZEROS_AND_LEN \000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF486:
	.ascii	"MBEDTLS_ECP_DP_SECP256K1_ENABLED \000"
.LASF765:
	.ascii	"MBEDTLS_PLATFORM_STD_SNPRINTF snprintf\000"
.LASF827:
	.ascii	"am_pm_indicator\000"
.LASF898:
	.ascii	"MBEDTLS_ECP_DP_CURVE25519\000"
.LASF166:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF945:
	.ascii	"ecp_check_pubkey_mx\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF884:
	.ascii	"stdin\000"
.LASF231:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF794:
	.ascii	"__state\000"
.LASF352:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF578:
	.ascii	"MBEDTLS_SSL_TICKET_C \000"
.LASF538:
	.ascii	"MBEDTLS_ASN1_PARSE_C \000"
.LASF939:
	.ascii	"mbedtls_ecp_gen_keypair_base\000"
.LASF481:
	.ascii	"MBEDTLS_ECP_DP_SECP256R1_ENABLED \000"
.LASF559:
	.ascii	"MBEDTLS_MD5_C \000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF539:
	.ascii	"MBEDTLS_ASN1_WRITE_C \000"
.LASF464:
	.ascii	"SWI_DISABLE0 1\000"
.LASF661:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF968:
	.ascii	"ecp_normalize_jac_many\000"
.LASF722:
	.ascii	"MBEDTLS_ERR_MPI_NEGATIVE_VALUE -0x000A\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF396:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF291:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF820:
	.ascii	"int_n_sep_by_space\000"
.LASF646:
	.ascii	"UINT16_MAX 65535\000"
.LASF867:
	.ascii	"__user_set_time_of_day\000"
.LASF607:
	.ascii	"LONG_MIN (-2147483647L - 1)\000"
.LASF452:
	.ascii	"__GNU_LINKER 1\000"
.LASF928:
	.ascii	"dbl_c_prev\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF767:
	.ascii	"MBEDTLS_PLATFORM_STD_FPRINTF fprintf\000"
.LASF571:
	.ascii	"MBEDTLS_RIPEMD160_C \000"
.LASF310:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF489:
	.ascii	"MBEDTLS_ECP_DP_BP512R1_ENABLED \000"
.LASF1005:
	.ascii	"init_done\000"
.LASF274:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF463:
	.ascii	"SOFTDEVICE_PRESENT 1\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF346:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF199:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF322:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF509:
	.ascii	"MBEDTLS_PKCS1_V21 \000"
.LASF415:
	.ascii	"__ARM_ARCH 7\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF881:
	.ascii	"long long int\000"
.LASF846:
	.ascii	"__mbstate_s\000"
.LASF403:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF591:
	.ascii	"MBEDTLS_XTEA_C \000"
.LASF562:
	.ascii	"MBEDTLS_PADLOCK_C \000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF637:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF971:
	.ascii	"mbedtls_ecp_tls_write_group\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF424:
	.ascii	"__ARM_FP\000"
.LASF356:
	.ascii	"__HA_IBIT__ 8\000"
.LASF773:
	.ascii	"MBEDTLS_PLATFORM_STD_EXIT_FAILURE EXIT_FAILURE\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF551:
	.ascii	"MBEDTLS_ECDH_C \000"
.LASF677:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF210:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF789:
	.ascii	"MOD_MUL(N) do { MBEDTLS_MPI_CHK( ecp_modp( &N, grp "
	.ascii	") ); INC_MUL_COUNT } while( 0 )\000"
.LASF516:
	.ascii	"MBEDTLS_SSL_RENEGOTIATION \000"
.LASF887:
	.ascii	"mbedtls_mpi_uint\000"
.LASF411:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF391:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF848:
	.ascii	"__category\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF901:
	.ascii	"MBEDTLS_ECP_DP_SECP256K1\000"
.LASF725:
	.ascii	"MBEDTLS_ERR_MPI_ALLOC_FAILED -0x0010\000"
.LASF499:
	.ascii	"MBEDTLS_KEY_EXCHANGE_ECDHE_RSA_ENABLED \000"
.LASF919:
	.ascii	"dbl_count\000"
.LASF608:
	.ascii	"ULONG_MAX 4294967295UL\000"
.LASF717:
	.ascii	"__RAL_FILE_DEFINED \000"
.LASF501:
	.ascii	"MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED \000"
.LASF273:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF984:
	.ascii	"plen\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF363:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF801:
	.ascii	"grouping\000"
.LASF545:
	.ascii	"MBEDTLS_CERTS_C \000"
.LASF757:
	.ascii	"_SYS_TIME_H \000"
.LASF952:
	.ascii	"p_size\000"
.LASF830:
	.ascii	"date_time_format\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF435:
	.ascii	"__ARM_NEON_FP\000"
.LASF289:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF703:
	.ascii	"EOF (-1)\000"
.LASF772:
	.ascii	"MBEDTLS_PLATFORM_STD_EXIT_SUCCESS EXIT_SUCCESS\000"
.LASF941:
	.ascii	"count\000"
.LASF270:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF351:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF465:
	.ascii	"OV2640_MINI_2MP 1\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF934:
	.ascii	"cleanup\000"
.LASF227:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF791:
	.ascii	"MOD_ADD(N) while( mbedtls_mpi_cmp_mpi( &N, &grp->P "
	.ascii	") >= 0 ) MBEDTLS_MPI_CHK( mbedtls_mpi_sub_abs( &N, "
	.ascii	"&N, &grp->P ) )\000"
.LASF798:
	.ascii	"unsigned int\000"
.LASF962:
	.ascii	"adjust\000"
.LASF670:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF471:
	.ascii	"MBEDTLS_CIPHER_MODE_CBC \000"
.LASF577:
	.ascii	"MBEDTLS_SSL_COOKIE_C \000"
.LASF301:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF986:
	.ascii	"buflen\000"
.LASF437:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF990:
	.ascii	"mbedtls_ecp_is_zero\000"
.LASF217:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF815:
	.ascii	"p_sign_posn\000"
.LASF525:
	.ascii	"MBEDTLS_SSL_DTLS_CLIENT_PORT_REUSE \000"
.LASF720:
	.ascii	"MBEDTLS_ERR_MPI_INVALID_CHARACTER -0x0006\000"
.LASF546:
	.ascii	"MBEDTLS_CIPHER_C \000"
.LASF609:
	.ascii	"LLONG_MIN (-9223372036854775807LL - 1)\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF645:
	.ascii	"INT8_MIN (-128)\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF453:
	.ascii	"NDEBUG 1\000"
.LASF579:
	.ascii	"MBEDTLS_SSL_CLI_C \000"
.LASF404:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF345:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF625:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF242:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF313:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF575:
	.ascii	"MBEDTLS_SHA512_C \000"
.LASF1009:
	.ascii	"C:\\Users\\zeste\\Desktop\\CEEDUP\\develop\\nRF5284"
	.ascii	"0-fw\\nRF5_SDK_15.3.0_59ac345\\external\\mbedtls\\l"
	.ascii	"ibrary\\ecp.c\000"
.LASF393:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF868:
	.ascii	"__user_get_time_of_day\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF449:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF441:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF590:
	.ascii	"MBEDTLS_X509_CSR_WRITE_C \000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF992:
	.ascii	"mbedtls_ecp_group_copy\000"
.LASF444:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF783:
	.ascii	"MBEDTLS_EXIT_SUCCESS MBEDTLS_PLATFORM_STD_EXIT_SUCC"
	.ascii	"ESS\000"
.LASF736:
	.ascii	"MBEDTLS_ERR_ECP_BAD_INPUT_DATA -0x4F80\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF250:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF462:
	.ascii	"S140 1\000"
.LASF852:
	.ascii	"__RAL_codeset_utf8\000"
.LASF365:
	.ascii	"__USA_FBIT__ 16\000"
.LASF850:
	.ascii	"__RAL_c_locale\000"
.LASF512:
	.ascii	"MBEDTLS_SSL_ENCRYPT_THEN_MAC \000"
.LASF5:
	.ascii	"__GNUC__ 8\000"
.LASF900:
	.ascii	"MBEDTLS_ECP_DP_SECP224K1\000"
.LASF477:
	.ascii	"MBEDTLS_CIPHER_PADDING_ZEROS \000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF790:
	.ascii	"MOD_SUB(N) while( N.s < 0 && mbedtls_mpi_cmp_int( &"
	.ascii	"N, 0 ) != 0 ) MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi("
	.ascii	" &N, &N, &grp->P ) )\000"
.LASF279:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF491:
	.ascii	"MBEDTLS_ECP_NIST_OPTIM \000"
.LASF544:
	.ascii	"MBEDTLS_CCM_C \000"
.LASF507:
	.ascii	"MBEDTLS_PK_RSA_ALT_SUPPORT \000"
.LASF799:
	.ascii	"decimal_point\000"
.LASF409:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF413:
	.ascii	"__arm__ 1\000"
.LASF760:
	.ascii	"__stdlib_H \000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF620:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF194:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF427:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF927:
	.ascii	"add_c_prev\000"
.LASF1012:
	.ascii	"mbedtls_ecp_curve_list\000"
.LASF234:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF1011:
	.ascii	"__RAL_FILE\000"
.LASF861:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF663:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF362:
	.ascii	"__TA_IBIT__ 64\000"
.LASF593:
	.ascii	"__limits_H \000"
.LASF777:
	.ascii	"mbedtls_free free\000"
.LASF761:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF651:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF979:
	.ascii	"buf_len\000"
.LASF399:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF421:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF548:
	.ascii	"MBEDTLS_DEBUG_C \000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF678:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF899:
	.ascii	"MBEDTLS_ECP_DP_SECP192K1\000"
.LASF622:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF947:
	.ascii	"ecp_check_pubkey_sw\000"
.LASF271:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF402:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF276:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF457:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF771:
	.ascii	"MBEDTLS_PLATFORM_STD_TIME time\000"
.LASF164:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF192:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF1006:
	.ascii	"ecp_comb_fixed\000"
.LASF981:
	.ascii	"buf_start\000"
.LASF923:
	.ascii	"ECP_TYPE_MONTGOMERY\000"
.LASF730:
	.ascii	"MBEDTLS_MPI_MAX_BITS ( 8 * MBEDTLS_MPI_MAX_SIZE )\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF397:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF726:
	.ascii	"MBEDTLS_MPI_CHK(f) do { if( ( ret = f ) != 0 ) goto"
	.ascii	" cleanup; } while( 0 )\000"
.LASF266:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF553:
	.ascii	"MBEDTLS_ECP_C \000"
.LASF473:
	.ascii	"MBEDTLS_CIPHER_MODE_CTR \000"
.LASF616:
	.ascii	"__stddef_H \000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF769:
	.ascii	"MBEDTLS_PLATFORM_STD_FREE free\000"
.LASF832:
	.ascii	"__isctype\000"
.LASF763:
	.ascii	"RAND_MAX 32767\000"
.LASF241:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF882:
	.ascii	"long long unsigned int\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF662:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF321:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF583:
	.ascii	"MBEDTLS_VERSION_C \000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF334:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF341:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF589:
	.ascii	"MBEDTLS_X509_CRT_WRITE_C \000"
.LASF973:
	.ascii	"blen\000"
.LASF879:
	.ascii	"uint16_t\000"
.LASF630:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF348:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF456:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF564:
	.ascii	"MBEDTLS_PEM_WRITE_C \000"
.LASF378:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF735:
	.ascii	"MBEDTLS_HAVE_UDBL \000"
.LASF784:
	.ascii	"MBEDTLS_EXIT_FAILURE MBEDTLS_PLATFORM_STD_EXIT_FAIL"
	.ascii	"URE\000"
.LASF297:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF283:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF156:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF318:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF520:
	.ascii	"MBEDTLS_SSL_PROTO_TLS1_2 \000"
.LASF907:
	.ascii	"mbedtls_ecp_point\000"
.LASF221:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF893:
	.ascii	"MBEDTLS_ECP_DP_SECP384R1\000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF888:
	.ascii	"mbedtls_mpi\000"
.LASF613:
	.ascii	"MBEDTLS_THREADING_IMPL\000"
.LASF329:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF812:
	.ascii	"p_sep_by_space\000"
.LASF710:
	.ascii	"FOPEN_MAX 8\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF974:
	.ascii	"curve_info\000"
.LASF708:
	.ascii	"SEEK_END 2\000"
.LASF558:
	.ascii	"MBEDTLS_MD_C \000"
.LASF556:
	.ascii	"MBEDTLS_GCM_C \000"
.LASF741:
	.ascii	"MBEDTLS_ERR_ECP_RANDOM_FAILED -0x4D00\000"
.LASF681:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF323:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF521:
	.ascii	"MBEDTLS_SSL_PROTO_DTLS \000"
.LASF732:
	.ascii	"MBEDTLS_LN_2_DIV_LN_10_SCALE100 332\000"
.LASF282:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF601:
	.ascii	"SHRT_MAX 32767\000"
.LASF459:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF342:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF644:
	.ascii	"INT8_MAX 127\000"
.LASF549:
	.ascii	"MBEDTLS_DES_C \000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF683:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF905:
	.ascii	"bit_size\000"
.LASF942:
	.ascii	"mbedtls_ecp_check_privkey\000"
.LASF904:
	.ascii	"tls_id\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF496:
	.ascii	"MBEDTLS_KEY_EXCHANGE_RSA_PSK_ENABLED \000"
.LASF533:
	.ascii	"MBEDTLS_X509_CHECK_EXTENDED_KEY_USAGE \000"
.LASF599:
	.ascii	"UCHAR_MAX 255\000"
.LASF908:
	.ascii	"pbits\000"
.LASF669:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF976:
	.ascii	"mbedtls_ecp_tls_write_point\000"
.LASF598:
	.ascii	"SCHAR_MIN (-128)\000"
.LASF617:
	.ascii	"__crossworks_H \000"
.LASF354:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF357:
	.ascii	"__SA_FBIT__ 15\000"
.LASF966:
	.ascii	"ecp_safe_invert_jac\000"
.LASF1002:
	.ascii	"mbedtls_ecp_curve_info_from_tls_id\000"
.LASF932:
	.ascii	"mbedtls_ecp_check_pub_priv\000"
.LASF439:
	.ascii	"__ARM_EABI__ 1\000"
.LASF892:
	.ascii	"MBEDTLS_ECP_DP_SECP256R1\000"
.LASF960:
	.ascii	"ecp_select_comb\000"
.LASF954:
	.ascii	"ecp_mul_comb\000"
.LASF419:
	.ascii	"__THUMBEL__ 1\000"
.LASF740:
	.ascii	"MBEDTLS_ERR_ECP_ALLOC_FAILED -0x4D80\000"
.LASF394:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF336:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF716:
	.ascii	"_IONBF 2\000"
.LASF948:
	.ascii	"mbedtls_ecp_mul\000"
.LASF527:
	.ascii	"MBEDTLS_SSL_SESSION_TICKETS \000"
.LASF524:
	.ascii	"MBEDTLS_SSL_DTLS_HELLO_VERIFY \000"
.LASF325:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF642:
	.ascii	"__stdint_H \000"
.LASF894:
	.ascii	"MBEDTLS_ECP_DP_SECP521R1\000"
.LASF957:
	.ascii	"pre_len\000"
.LASF513:
	.ascii	"MBEDTLS_SSL_EXTENDED_MASTER_SECRET \000"
.LASF350:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF824:
	.ascii	"abbrev_day_names\000"
.LASF629:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF713:
	.ascii	"BUFSIZ 256\000"
.LASF407:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF492:
	.ascii	"MBEDTLS_ECDSA_DETERMINISTIC \000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF552:
	.ascii	"MBEDTLS_ECDSA_C \000"
.LASF782:
	.ascii	"mbedtls_exit exit\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF955:
	.ascii	"m_is_odd\000"
.LASF953:
	.ascii	"ecp_normalize_mxz\000"
.LASF458:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF853:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF429:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF304:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF718:
	.ascii	"MBEDTLS_ERR_MPI_FILE_IO_ERROR -0x0002\000"
.LASF219:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF288:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF202:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF8:
	.ascii	"__VERSION__ \"8.3.1 20190703 (release) [gcc-8-branc"
	.ascii	"h revision 273027]\"\000"
.LASF774:
	.ascii	"MBEDTLS_PLATFORM_STD_NV_SEED_READ mbedtls_platform_"
	.ascii	"std_nv_seed_read\000"
.LASF659:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF298:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF833:
	.ascii	"__toupper\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF371:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF254:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF163:
	.ascii	"__DBL_DIG__ 15\000"
.LASF284:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF912:
	.ascii	"t_post\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF977:
	.ascii	"format\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF251:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF569:
	.ascii	"MBEDTLS_PKCS12_C \000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF951:
	.ascii	"ecp_randomize_mxz\000"
.LASF306:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF810:
	.ascii	"frac_digits\000"
.LASF803:
	.ascii	"currency_symbol\000"
.LASF709:
	.ascii	"FILENAME_MAX 256\000"
.LASF673:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF705:
	.ascii	"putchar(x) __putchar(x, 0)\000"
.LASF886:
	.ascii	"stderr\000"
.LASF1007:
	.ascii	"mbedtls_zeroize\000"
.LASF878:
	.ascii	"short int\000"
.LASF570:
	.ascii	"MBEDTLS_PLATFORM_C \000"
.LASF889:
	.ascii	"MBEDTLS_ECP_DP_NONE\000"
.LASF731:
	.ascii	"MBEDTLS_MPI_MAX_BITS_SCALE100 ( 100 * MBEDTLS_MPI_M"
	.ascii	"AX_BITS )\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF991:
	.ascii	"mbedtls_ecp_set_zero\000"
.LASF561:
	.ascii	"MBEDTLS_OID_C \000"
.LASF368:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF711:
	.ascii	"TMP_MAX 256\000"
.LASF374:
	.ascii	"__NO_INLINE__ 1\000"
.LASF728:
	.ascii	"MBEDTLS_MPI_WINDOW_SIZE 6\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF910:
	.ascii	"modp\000"
.LASF443:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF206:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1013\000"
.LASF749:
	.ascii	"MBEDTLS_ECP_FIXED_POINT_OPTIM 1\000"
.LASF656:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF603:
	.ascii	"INT_MIN (-2147483647 - 1)\000"
.LASF480:
	.ascii	"MBEDTLS_ECP_DP_SECP224R1_ENABLED \000"
.LASF891:
	.ascii	"MBEDTLS_ECP_DP_SECP224R1\000"
.LASF440:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF937:
	.ascii	"p_rng\000"
.LASF244:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF838:
	.ascii	"__wctomb\000"
.LASF168:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF768:
	.ascii	"MBEDTLS_PLATFORM_STD_CALLOC calloc\000"
.LASF671:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF320:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF511:
	.ascii	"MBEDTLS_SSL_ALL_ALERT_MESSAGES \000"
.LASF665:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF780:
	.ascii	"mbedtls_printf printf\000"
.LASF500:
	.ascii	"MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED \000"
.LASF700:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF614:
	.ascii	"MBEDTLS_ECP_H \000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF503:
	.ascii	"MBEDTLS_PK_PARSE_EC_EXTENDED \000"
.LASF517:
	.ascii	"MBEDTLS_SSL_MAX_FRAGMENT_LENGTH \000"
.LASF474:
	.ascii	"MBEDTLS_CIPHER_PADDING_PKCS7 \000"
.LASF836:
	.ascii	"__towupper\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF408:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF198:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF1008:
	.ascii	"GNU C99 8.3.1 20190703 (release) [gcc-8-branch revi"
	.ascii	"sion 273027] -fmessage-length=0 -mcpu=cortex-m4 -ml"
	.ascii	"ittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mt"
	.ascii	"humb -mtp=soft -munaligned-access -std=gnu99 -g3 -g"
	.ascii	"pubnames -fomit-frame-pointer -fno-dwarf2-cfi-asm -"
	.ascii	"fno-builtin -ffunction-sections -fdata-sections -fs"
	.ascii	"hort-enums -fno-common\000"
.LASF530:
	.ascii	"MBEDTLS_SSL_TRUNCATED_HMAC \000"
.LASF627:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF823:
	.ascii	"day_names\000"
.LASF743:
	.ascii	"MBEDTLS_ERR_ECP_SIG_LEN_MISMATCH -0x4C00\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF818:
	.ascii	"int_n_cs_precedes\000"
.LASF997:
	.ascii	"mbedtls_ecp_keypair_init\000"
.LASF862:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF779:
	.ascii	"mbedtls_fprintf fprintf\000"
.LASF370:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF331:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF470:
	.ascii	"MBEDTLS_HAVE_TIME_DATE \000"
.LASF821:
	.ascii	"int_p_sign_posn\000"
.LASF294:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF392:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF398:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF445:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF931:
	.ascii	"mbedtls_ecp_self_test\000"
.LASF366:
	.ascii	"__USA_IBIT__ 16\000"
.LASF523:
	.ascii	"MBEDTLS_SSL_DTLS_ANTI_REPLAY \000"
.LASF317:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF557:
	.ascii	"MBEDTLS_HMAC_DRBG_C \000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF835:
	.ascii	"__iswctype\000"
.LASF451:
	.ascii	"__SES_VERSION 42000\000"
.LASF332:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF999:
	.ascii	"mbedtls_ecp_point_init\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF631:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF988:
	.ascii	"radix\000"
.LASF442:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF854:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF401:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF418:
	.ascii	"__thumb2__ 1\000"
.LASF640:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF529:
	.ascii	"MBEDTLS_SSL_SERVER_NAME_INDICATION \000"
.LASF438:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF515:
	.ascii	"MBEDTLS_SSL_CBC_RECORD_SPLITTING \000"
.LASF292:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF758:
	.ascii	"CLOCKS_PER_SEC 1000\000"
.LASF428:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF286:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF494:
	.ascii	"MBEDTLS_KEY_EXCHANGE_DHE_PSK_ENABLED \000"
.LASF880:
	.ascii	"uint32_t\000"
.LASF653:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF692:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF822:
	.ascii	"int_n_sign_posn\000"
.LASF592:
	.ascii	"MBEDTLS_CHECK_CONFIG_H \000"
.LASF693:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF299:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF425:
	.ascii	"__ARM_FP 4\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF786:
	.ascii	"ECP_MONTGOMERY \000"
.LASF364:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF698:
	.ascii	"WCHAR_MIN (-2147483647L-1)\000"
.LASF863:
	.ascii	"__RAL_data_empty_string\000"
.LASF309:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF324:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF750:
	.ascii	"MBEDTLS_ECP_PF_UNCOMPRESSED 0\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF535:
	.ascii	"MBEDTLS_AESNI_C \000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF967:
	.ascii	"nonzero\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF207:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF246:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF572:
	.ascii	"MBEDTLS_RSA_C \000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF811:
	.ascii	"p_cs_precedes\000"
.LASF335:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF574:
	.ascii	"MBEDTLS_SHA256_C \000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF285:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF203:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF417:
	.ascii	"__thumb__ 1\000"
.LASF1001:
	.ascii	"mbedtls_ecp_curve_info_from_name\000"
.LASF634:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF422:
	.ascii	"__ARMEL__ 1\000"
.LASF611:
	.ascii	"ULLONG_MAX 18446744073709551615ULL\000"
.LASF752:
	.ascii	"MBEDTLS_ECP_TLS_NAMED_CURVE 3\000"
.LASF913:
	.ascii	"t_data\000"
.LASF337:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF308:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF604:
	.ascii	"INT_MAX 2147483647\000"
.LASF787:
	.ascii	"ECP_NB_CURVES sizeof( ecp_supported_curves ) / size"
	.ascii	"of( ecp_supported_curves[0] )\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF1010:
	.ascii	"C:\\Users\\zeste\\Desktop\\CEEDUP\\develop\\nRF5284"
	.ascii	"0-fw\\nRF5_SDK_15.3.0_59ac345\\examples\\ble_centra"
	.ascii	"l_timer test\\ble_app_multilink_central\\pca10056\\"
	.ascii	"s140\\ses\000"
.LASF605:
	.ascii	"UINT_MAX 4294967295U\000"
.LASF547:
	.ascii	"MBEDTLS_CTR_DRBG_C \000"
.LASF414:
	.ascii	"__ARM_ARCH\000"
.LASF776:
	.ascii	"MBEDTLS_PLATFORM_STD_NV_SEED_FILE \"seedfile\"\000"
.LASF497:
	.ascii	"MBEDTLS_KEY_EXCHANGE_RSA_ENABLED \000"
.LASF256:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF684:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF978:
	.ascii	"mbedtls_ecp_tls_read_point\000"
.LASF568:
	.ascii	"MBEDTLS_PKCS5_C \000"
.LASF664:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF950:
	.ascii	"ecp_double_add_mxz\000"
.LASF762:
	.ascii	"EXIT_FAILURE 1\000"
.LASF909:
	.ascii	"nbits\000"
.LASF405:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF498:
	.ascii	"MBEDTLS_KEY_EXCHANGE_DHE_RSA_ENABLED \000"
.LASF349:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF258:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF220:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF688:
	.ascii	"INT8_C(x) (x)\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF560:
	.ascii	"MBEDTLS_NET_C \000"
.LASF755:
	.ascii	"MBEDTLS_PLATFORM_TIME_H \000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF859:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF360:
	.ascii	"__DA_IBIT__ 32\000"
.LASF800:
	.ascii	"thousands_sep\000"
.LASF719:
	.ascii	"MBEDTLS_ERR_MPI_BAD_INPUT_DATA -0x0004\000"
.LASF834:
	.ascii	"__tolower\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF756:
	.ascii	"__time_H \000"
.LASF338:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF873:
	.ascii	"next\000"
.LASF788:
	.ascii	"INC_MUL_COUNT mul_count++;\000"
.LASF843:
	.ascii	"data\000"
.LASF702:
	.ascii	"__stdio_h \000"
.LASF938:
	.ascii	"mbedtls_ecp_gen_keypair\000"
.LASF680:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF754:
	.ascii	"MBEDTLS_PLATFORM_H \000"
.LASF595:
	.ascii	"CHAR_MIN 0\000"
.LASF550:
	.ascii	"MBEDTLS_DHM_C \000"
.LASF606:
	.ascii	"LONG_MAX 2147483647L\000"
.LASF865:
	.ascii	"tv_sec\000"
.LASF940:
	.ascii	"n_size\000"
.LASF215:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF162:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF281:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF903:
	.ascii	"grp_id\000"
.LASF660:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF510:
	.ascii	"MBEDTLS_SELF_TEST \000"
.LASF687:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF690:
	.ascii	"INT16_C(x) (x)\000"
.LASF295:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF855:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF666:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (GNU) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]"
