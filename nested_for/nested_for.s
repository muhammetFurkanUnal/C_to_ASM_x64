	.file	"nested_for.c"
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
	subl	$16, %esp
	call	___main
	movl	$2, 12(%esp)
	movl	$0, 8(%esp)
	jmp	L2
L5:
	movl	$0, 4(%esp)
	jmp	L3
L4:
	sall	12(%esp)
	addl	$1, 4(%esp)
L3:
	cmpl	$3, 4(%esp)
	jle	L4
	addl	$1, 8(%esp)
L2:
	cmpl	$3, 8(%esp)
	jle	L5
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
