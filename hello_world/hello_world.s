	.file	"hello_world.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%s\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movb	$104, 20(%esp)
	movb	$101, 21(%esp)
	movb	$108, 22(%esp)
	movb	$108, 23(%esp)
	movb	$111, 24(%esp)
	movb	$32, 25(%esp)
	movb	$119, 26(%esp)
	movb	$111, 27(%esp)
	movb	$114, 28(%esp)
	movb	$108, 29(%esp)
	movb	$100, 30(%esp)
	movb	$0, 31(%esp)
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
