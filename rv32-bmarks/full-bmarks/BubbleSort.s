	.file	"BubbleSort.c"
	.option nopic
	.option norelax
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	2
.LC0:
	.word	12
	.word	9
	.word	4
	.word	99
	.word	120
	.word	2
	.word	3
	.word	10
	.section	.text.main,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a7,0(a5)
	lw	a6,4(a5)
	lw	a0,8(a5)
	lw	a1,12(a5)
	lw	a2,16(a5)
	lw	a3,20(a5)
	lw	a4,24(a5)
	sw	a7,-48(s0)
	sw	a6,-44(s0)
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-24(s0)
	lw	a5,28(a5)
	sw	a5,-20(s0)
	addi	a5,s0,-48
	li	a1,8
	mv	a0,a5
	call	bubble_srt
	addi	a5,s0,-48
	mv	a0,a5
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.text.bubble_srt,"ax",@progbits
	.align	2
	.globl	bubble_srt
	.type	bubble_srt, @function
bubble_srt:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-20(s0)
	j	.L4
.L8:
	li	a5,1
	sw	a5,-24(s0)
	j	.L5
.L7:
	lw	a4,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	ble	a4,a5,.L6
	lw	a4,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L6:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L5:
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	lw	a4,-24(s0)
	blt	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L8
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	bubble_srt, .-bubble_srt
	.section	.text.test,"ax",@progbits
	.align	2
	.globl	test
	.type	test, @function
test:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	li	a5,1
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	sw	zero,-20(s0)
	j	.L10
.L13:
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	ble	a4,a5,.L11
	call	fail
	mv	a5,a0
	j	.L12
.L11:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L10:
	lw	a4,-20(s0)
	li	a5,6
	ble	a4,a5,.L13
	call	pass
	mv	a5,a0
.L12:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	test, .-test
	.section	.text.pass,"ax",@progbits
	.align	2
	.globl	pass
	.type	pass, @function
pass:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	li	a5,1
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	pass, .-pass
	.section	.text.fail,"ax",@progbits
	.align	2
	.globl	fail
	.type	fail, @function
fail:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	li	a5,0
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	fail, .-fail
	.ident	"GCC: (GNU) 16.2.0"
	.section	.note.GNU-stack,"",@progbits
