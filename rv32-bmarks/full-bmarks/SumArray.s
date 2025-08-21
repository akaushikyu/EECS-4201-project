	.file	"SumArray.c"
	.option nopic
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	zero,44(sp)
	sw	zero,40(sp)
	sw	zero,44(sp)
	j	.L2
.L3:
	lw	a5,44(sp)
	slli	a5,a5,2
	addi	a4,sp,48
	add	a5,a4,a5
	lw	a4,44(sp)
	sw	a4,-48(a5)
	lw	a5,44(sp)
	addi	a5,a5,1
	sw	a5,44(sp)
.L2:
	lw	a4,44(sp)
	li	a5,9
	ble	a4,a5,.L3
	sw	zero,44(sp)
	j	.L4
.L5:
	lw	a5,44(sp)
	slli	a5,a5,2
	addi	a4,sp,48
	add	a5,a4,a5
	lw	a5,-48(a5)
	lw	a4,40(sp)
	add	a5,a4,a5
	sw	a5,40(sp)
	lw	a5,44(sp)
	addi	a5,a5,1
	sw	a5,44(sp)
.L4:
	lw	a4,44(sp)
	li	a5,9
	ble	a4,a5,.L5
	lw	a0,40(sp)
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,60(sp)
	addi	sp,sp,64
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
	li	a5,45
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
