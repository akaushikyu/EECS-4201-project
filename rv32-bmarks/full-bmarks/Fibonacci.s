	.file	"Fibonacci.c"
	.option nopic
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	li	a0,10
	call	fib
	sw	a0,12(sp)
	lw	a0,12(sp)
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.align	2
	.globl	fib
	.type	fib, @function
fib:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	a0,12(sp)
	lw	a4,12(sp)
	li	a5,1
	bgt	a4,a5,.L4
	lw	a5,12(sp)
	j	.L5
.L4:
	lw	a5,12(sp)
	addi	a5,a5,-1
	mv	a0,a5
	call	fib
	mv	s0,a0
	lw	a5,12(sp)
	addi	a5,a5,-2
	mv	a0,a5
	call	fib
	mv	a5,a0
	add	a5,s0,a5
.L5:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	fib, .-fib
	.align	2
	.globl	test
	.type	test, @function
test:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	a0,12(sp)
	lw	a4,12(sp)
	li	a5,55
	bne	a4,a5,.L7
	call	pass
	mv	a5,a0
	j	.L8
.L7:
	call	fail
	mv	a5,a0
.L8:
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
