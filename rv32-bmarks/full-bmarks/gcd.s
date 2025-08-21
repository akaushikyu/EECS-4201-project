	.file	"gcd.c"
	.option nopic
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	li	a5,4096
	addi	a5,a5,-2048
	sw	a5,12(sp)
	li	a5,124
	sw	a5,8(sp)
	lw	a5,12(sp)
	srai	a5,a5,31
	lw	a4,12(sp)
	xor	a4,a4,a5
	sub	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,8(sp)
	srai	a5,a5,31
	lw	a4,8(sp)
	xor	a4,a4,a5
	sub	a5,a4,a5
	sw	a5,8(sp)
	j	.L2
.L4:
	lw	a4,12(sp)
	lw	a5,8(sp)
	ble	a4,a5,.L3
	lw	a4,12(sp)
	lw	a5,8(sp)
	sub	a5,a4,a5
	sw	a5,12(sp)
	j	.L2
.L3:
	lw	a4,8(sp)
	lw	a5,12(sp)
	sub	a5,a4,a5
	sw	a5,8(sp)
.L2:
	lw	a4,12(sp)
	lw	a5,8(sp)
	bne	a4,a5,.L4
	lw	a0,12(sp)
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
	addi	sp,sp,-16
	sw	a0,12(sp)
	lw	a5,12(sp)
	addi	a5,a5,-4
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,16
	jr	ra
	.size	test, .-test
	.ident	"GCC: (GNU) 8.3.0"
