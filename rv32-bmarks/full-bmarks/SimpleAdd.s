	.file	"SimpleAdd.c"
	.option nopic
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	li	a5,3
	sw	a5,12(sp)
	li	a5,2
	sw	a5,8(sp)
	sw	zero,4(sp)
	lw	a4,12(sp)
	lw	a5,8(sp)
	add	a5,a4,a5
	sw	a5,4(sp)
	lw	a0,4(sp)
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	addi	sp,sp,32
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
	li	a5,5
	bne	a4,a5,.L4
	call	pass
	mv	a5,a0
	j	.L5
.L4:
	call	fail
	mv	a5,a0
.L5:
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
