.file	"program2.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "correcto\0"
	.text
	.def	printf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	printf.constprop.0
printf.constprop.0:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	leaq	88(%rsp), %r8
	movq	%rdx, 88(%rsp)
	movq	%r9, 104(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r8, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	40(%rsp), %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$72, %rsp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	addq	$40, %rsp
	jmp	printf.constprop.0
	.seh_endproc
	.ident	"GCC: (Rev5, Built by MSYS2 project) 10.3.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
