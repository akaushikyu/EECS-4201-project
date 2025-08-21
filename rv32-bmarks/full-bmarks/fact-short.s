	.file	"fact-short.c"
	.option nopic
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	zero,12(sp)
	sw	zero,8(sp)
	sw	zero,12(sp)
	j	.L2
.L3:
	lw	a0,12(sp)
	call	factorial
	mv	a4,a0
	lw	a5,8(sp)
	add	a5,a5,a4
	sw	a5,8(sp)
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
.L2:
	lw	a4,12(sp)
	li	a5,3
	ble	a4,a5,.L3
	lw	a0,8(sp)
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.align	2
	.globl	factorial
	.type	factorial, @function
factorial:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	a0,12(sp)
	sw	zero,28(sp)
	sw	zero,24(sp)
	lw	a5,12(sp)
	bnez	a5,.L6
	li	a5,1
	j	.L7
.L6:
	sw	zero,28(sp)
	j	.L8
.L9:
	lw	a5,12(sp)
	addi	a5,a5,-1
	mv	a0,a5
	call	factorial
	mv	a4,a0
	lw	a5,24(sp)
	add	a5,a5,a4
	sw	a5,24(sp)
	lw	a5,28(sp)
	addi	a5,a5,1
	sw	a5,28(sp)
.L8:
	lw	a4,28(sp)
	lw	a5,12(sp)
	blt	a4,a5,.L9
	lw	a5,24(sp)
.L7:
	mv	a0,a5
	lw	ra,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	factorial, .-factorial
	.align	2
	.globl	test
	.type	test, @function
test:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	a0,12(sp)
	lw	a4,12(sp)
	li	a5,10
	bne	a4,a5,.L11
	call	pass
	mv	a5,a0
	j	.L12
.L11:
	call	fail
	mv	a5,a0
.L12:
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
