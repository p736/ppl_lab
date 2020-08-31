	.file	"a-1.c"
	.text
	.comm	_Z, 4, 2
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$48, %esp
	call	___main
	movl	$6, 44(%esp)
	movl	$10, 40(%esp)
	movl	$20, 36(%esp)
	movl	40(%esp), %eax
	imull	36(%esp), %eax
	addl	$25, %eax
	movl	%eax, 32(%esp)
	movl	$6, 44(%esp)
	movl	_Z, %eax
	movl	%eax, 28(%esp)
	fldl	LC0
	fstpl	16(%esp)
	fldl	16(%esp)
	fnstcw	14(%esp)
	movzwl	14(%esp), %eax
	orb	$12, %ah
	movw	%ax, 12(%esp)
	fldcw	12(%esp)
	fistpl	8(%esp)
	fldcw	14(%esp)
	movl	8(%esp), %eax
	movl	%eax, _Z
	movl	_Z, %eax
	addl	$1, %eax
	movl	%eax, _Z
	nop
	leave
	ret
	.section .rdata,"dr"
	.align 8
LC0:
	.long	0
	.long	1078018048
	.ident	"GCC: (tdm-1) 9.2.0"
