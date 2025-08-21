	.file	"SwapShift.c"
	.option nopic
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	li	a5,5
	sw	a5,4(sp)
	li	a5,9
	sw	a5,0(sp)
	lw	a5,0(sp)
	slli	a5,a5,2
	sw	a5,0(sp)
	lw	a5,4(sp)
	srai	a5,a5,1
	sw	a5,4(sp)
	addi	a5,sp,4
	sw	a5,12(sp)
	mv	a5,sp
	sw	a5,8(sp)
	lw	a1,8(sp)
	lw	a0,12(sp)
	call	swap
	lw	a5,12(sp)
	lw	a5,0(a5)
	sw	a5,4(sp)
	lw	a5,8(sp)
	lw	a5,0(a5)
	sw	a5,0(sp)
	lw	a4,4(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	mv	a0,a5
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.align	2
	.globl	swap
	.type	swap, @function
swap:
	addi	sp,sp,-32
	sw	a0,12(sp)
	sw	a1,8(sp)
	lw	a5,12(sp)
	lw	a5,0(a5)
	sw	a5,28(sp)
	lw	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,12(sp)
	sw	a4,0(a5)
	lw	a5,8(sp)
	lw	a4,28(sp)
	sw	a4,0(a5)
	nop
	addi	sp,sp,32
	jr	ra
	.size	swap, .-swap
	.align	2
	.globl	test
	.type	test, @function
test:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	a0,12(sp)
	lw	a4,12(sp)
	li	a5,38
	bne	a4,a5,.L5
	call	pass
	mv	a5,a0
	j	.L6
.L5:
	call	fail
	mv	a5,a0
.L6:
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
