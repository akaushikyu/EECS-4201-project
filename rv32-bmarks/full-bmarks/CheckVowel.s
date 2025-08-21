	.file	"CheckVowel.c"
	.option nopic
	.text
	.section	.rodata
	.align	2
.LC0:
	.string	"CheckVowel!\n"
	.zero	7
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	zero,28(sp)
	sw	zero,24(sp)
	lui	a5,%hi(.LC0)
	lw	a2,%lo(.LC0)(a5)
	addi	a4,a5,%lo(.LC0)
	lw	a3,4(a4)
	addi	a4,a5,%lo(.LC0)
	lw	a4,8(a4)
	sw	a2,4(sp)
	sw	a3,8(sp)
	sw	a4,12(sp)
	addi	a5,a5,%lo(.LC0)
	lbu	a5,12(a5)
	sb	a5,16(sp)
	sb	zero,17(sp)
	sb	zero,18(sp)
	sb	zero,19(sp)
	sb	zero,20(sp)
	sb	zero,21(sp)
	sb	zero,22(sp)
	sb	zero,23(sp)
	sw	zero,28(sp)
	j	.L2
.L5:
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,97
	beq	a4,a5,.L3
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,65
	beq	a4,a5,.L3
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,101
	beq	a4,a5,.L3
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,69
	beq	a4,a5,.L3
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,105
	beq	a4,a5,.L3
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,73
	beq	a4,a5,.L3
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,111
	beq	a4,a5,.L3
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,79
	beq	a4,a5,.L3
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,117
	beq	a4,a5,.L3
	lw	a5,28(sp)
	addi	a4,sp,32
	add	a5,a4,a5
	lbu	a4,-28(a5)
	li	a5,85
	bne	a4,a5,.L4
.L3:
	lw	a5,24(sp)
	addi	a5,a5,1
	sw	a5,24(sp)
.L4:
	lw	a5,28(sp)
	addi	a5,a5,1
	sw	a5,28(sp)
.L2:
	lw	a4,28(sp)
	li	a5,19
	ble	a4,a5,.L5
	lw	a0,24(sp)
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.align	2
	.globl	test
	.type	test, @function
test:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	a0,12(sp)
	lw	a4,12(sp)
	li	a5,3
	bne	a4,a5,.L8
	call	pass
	mv	a5,a0
	j	.L9
.L8:
	call	fail
	mv	a5,a0
.L9:
	mv	a0,a5
	lw	ra,28(sp)
	addi	sp,sp,32
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
