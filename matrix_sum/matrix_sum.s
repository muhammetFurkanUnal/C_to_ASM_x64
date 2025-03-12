	.file	"matrix_sum.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	call	___main
	movl	$1, (%esp)
	movl	$2, 4(%esp)
	movl	$3, 8(%esp)
	movl	$4, 12(%esp)
	movl	$5, 16(%esp)
	movl	$6, 20(%esp)
	movl	$7, 24(%esp)
	movl	$8, 28(%esp)
	movl	$9, 32(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	jmp	L2
L5:
	movl	$0, 36(%esp)
	jmp	L3
L4:
	movl	40(%esp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	36(%esp), %edx
	addl	%edx, %eax
	movl	(%esp,%eax,4), %eax
	addl	%eax, 44(%esp)
	addl	$1, 36(%esp)
L3:
	cmpl	$2, 36(%esp)
	jle	L4
	addl	$1, 40(%esp)
L2:
	cmpl	$2, 40(%esp)
	jle	L5
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
