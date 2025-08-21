	.file	"BubbleSort.c"
	.option nopic
	.text
	.section	.rodata
	.align	2
.LC0:
	.word	12
	.word	9
	.word	4
	.word	99
	.word	120
	.word	1
	.word	3
	.word	10
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	lui	a5,%hi(.LC0)
	lw	a7,%lo(.LC0)(a5)
	addi	a4,a5,%lo(.LC0)
	lw	a6,4(a4)
	addi	a4,a5,%lo(.LC0)
	lw	a0,8(a4)
	addi	a4,a5,%lo(.LC0)
	lw	a1,12(a4)
	addi	a4,a5,%lo(.LC0)
	lw	a2,16(a4)
	addi	a4,a5,%lo(.LC0)
	lw	a3,20(a4)
	addi	a4,a5,%lo(.LC0)
	lw	a4,24(a4)
	addi	a5,a5,%lo(.LC0)
	lw	a5,28(a5)
	sw	a7,0(sp)
	sw	a6,4(sp)
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,16(sp)
	sw	a3,20(sp)
	sw	a4,24(sp)
	sw	a5,28(sp)
	mv	a5,sp
	li	a1,8
	mv	a0,a5
	call	bubble_srt
	mv	a5,sp
	mv	a0,a5
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.align	2
	.globl	bubble_srt
	.type	bubble_srt, @function
bubble_srt:
	addi	sp,sp,-32
	sw	a0,12(sp)
	sw	a1,8(sp)
	sw	zero,28(sp)
	j	.L4
.L8:
	li	a5,1
	sw	a5,24(sp)
	j	.L5
.L7:
	lw	a4,24(sp)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,12(sp)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,24(sp)
	slli	a5,a5,2
	lw	a3,12(sp)
	add	a5,a3,a5
	lw	a5,0(a5)
	ble	a4,a5,.L6
	lw	a4,24(sp)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,12(sp)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,20(sp)
	lw	a5,24(sp)
	slli	a5,a5,2
	lw	a4,12(sp)
	add	a4,a4,a5
	lw	a3,24(sp)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	lw	a3,12(sp)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,24(sp)
	slli	a5,a5,2
	lw	a4,12(sp)
	add	a5,a4,a5
	lw	a4,20(sp)
	sw	a4,0(a5)
.L6:
	lw	a5,24(sp)
	addi	a5,a5,1
	sw	a5,24(sp)
.L5:
	lw	a4,8(sp)
	lw	a5,28(sp)
	sub	a5,a4,a5
	lw	a4,24(sp)
	blt	a4,a5,.L7
	lw	a5,28(sp)
	addi	a5,a5,1
	sw	a5,28(sp)
.L4:
	lw	a4,28(sp)
	lw	a5,8(sp)
	blt	a4,a5,.L8
	nop
	addi	sp,sp,32
	jr	ra
	.size	bubble_srt, .-bubble_srt
	.align	2
	.globl	test
	.type	test, @function
test:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	a0,12(sp)
	li	a5,1
	sw	a5,24(sp)
	sw	zero,28(sp)
	sw	zero,28(sp)
	j	.L10
.L13:
	lw	a5,28(sp)
	slli	a5,a5,2
	lw	a4,12(sp)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,28(sp)
	addi	a5,a5,1
	slli	a5,a5,2
	lw	a3,12(sp)
	add	a5,a3,a5
	lw	a5,0(a5)
	ble	a4,a5,.L11
	call	fail
	mv	a5,a0
	j	.L12
.L11:
	lw	a5,28(sp)
	addi	a5,a5,1
	sw	a5,28(sp)
.L10:
	lw	a4,28(sp)
	li	a5,6
	ble	a4,a5,.L13
	call	pass
	mv	a5,a0
.L12:
	mv	a0,a5
	lw	ra,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	test, .-test
	.align	2
	.globl	pass
	.type	pass, @function
pass:
	li	a5,1
	mv	a0,a5
	ret
	.size	pass, .-pass
	.align	2
	.globl	fail
	.type	fail, @function
fail:
	li	a5,0
	mv	a0,a5
	ret
	.size	fail, .-fail
	.ident	"GCC: (GNU) 8.3.0"
