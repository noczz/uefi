	.file	"main.c"
	.text
	.section .rdata,"dr"
	.align 2
.LC0:
	.ascii "H\0e\0l\0l\0o\0 \0U\0E\0F\0I\0!\0\15\0\12\0\0\0"
	.text
	.globl	efi_main
	.def	efi_main;	.scl	2;	.type	32;	.endef
	.seh_proc	efi_main
efi_main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	64(%rax), %rax
	movq	48(%rax), %rdx
	movq	24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rcx
	call	*%rdx
	movq	24(%rbp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %r8
	movq	24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	*%r8
.L2:
	jmp	.L2
	.seh_endproc
	.ident	"GCC: (GNU) 10-win32 20220113"
