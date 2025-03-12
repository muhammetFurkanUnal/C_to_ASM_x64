	.file	"matrix_mult.c"
	.text
	.globl	_multiplyMatrices
	.def	_multiplyMatrices;	.scl	2;	.type	32;	.endef
_multiplyMatrices:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	$0, -12(%ebp)
	jmp	L2
L7:
	movl	$0, -16(%ebp)
	jmp	L3
L6:
	movl	-12(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	$0, (%edx,%eax,4)
	movl	$0, -20(%ebp)
	jmp	L4
L5:
	movl	-12(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-12(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%edx,%eax,4), %ebx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	(%edx,%eax,4), %edx
	movl	-20(%ebp), %eax
	leal	0(,%eax,8), %esi
	movl	12(%ebp), %eax
	addl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	(%esi,%eax,4), %eax
	imull	%edx, %eax
	leal	(%ebx,%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%ecx,%eax,4)
	addl	$1, -20(%ebp)
L4:
	cmpl	$2, -20(%ebp)
	jle	L5
	addl	$1, -16(%ebp)
L3:
	cmpl	$1, -16(%ebp)
	jle	L6
	addl	$1, -12(%ebp)
L2:
	cmpl	$1, -12(%ebp)
	jle	L7
	nop
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$80, %esp
	call	___main
	movl	$1, 56(%esp)
	movl	$2, 60(%esp)
	movl	$3, 64(%esp)
	movl	$4, 68(%esp)
	movl	$5, 72(%esp)
	movl	$6, 76(%esp)
	movl	$7, 32(%esp)
	movl	$8, 36(%esp)
	movl	$9, 40(%esp)
	movl	$10, 44(%esp)
	movl	$11, 48(%esp)
	movl	$12, 52(%esp)
	leal	16(%esp), %eax
	movl	%eax, 8(%esp)
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_multiplyMatrices
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
