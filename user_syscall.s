	.file	"user_syscall.c"
	.section	.rodata
.LC1:
	.string	"%10.5f msec\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$68, %esp
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$0, -48(%ebp)
	subl	$8, %esp
	pushl	$0
	leal	-28(%ebp), %eax
	pushl	%eax
	call	gettimeofday
	addl	$16, %esp
	movl	%eax, -44(%ebp)
	subl	$12, %esp
	pushl	$377
	call	syscall
	addl	$16, %esp
	movl	%eax, -48(%ebp)
	subl	$8, %esp
	pushl	$0
	leal	-20(%ebp), %eax
	pushl	%eax
	call	gettimeofday
	addl	$16, %esp
	movl	%eax, -44(%ebp)
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$1000, %eax, %eax
	movl	%eax, -60(%ebp)
	fildl	-60(%ebp)
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -60(%ebp)
	fildl	-60(%ebp)
	fldl	.LC0
	fdivrp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	-40(%ebp)
	subl	$4, %esp
	pushl	-36(%ebp)
	pushl	-40(%ebp)
	pushl	$.LC1
	call	printf
	addl	$16, %esp
	movl	$0, %eax
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L3
	call	__stack_chk_fail
.L3:
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1083129856
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
