	.file	"tswitch.c"
	.text
	.globl	switcher
	.type	switcher, @function
switcher:
.LFB0:
	.cfi_startproc
	cmpl	$7, %edi
	ja	.L2
	movl	%edi, %r8d
	leaq	.L4(%rip), %r9
	movslq	(%r9,%r8,4), %rcx
	addq	%r9, %rcx
	jmp	*%rcx
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L3-.L4
	.long	.L2-.L4
	.long	.L5-.L4
	.long	.L2-.L4
	.long	.L8-.L4
	.long	.L7-.L4
	.long	.L2-.L4
	.long	.L5-.L4
	.text
.L2:
	movl	%esi, %eax
	ret
.L3:
	leal	112(%rdx), %eax
	ret
.L5:
	leal	(%rsi,%rdx), %eax
	sall	$2, %eax
	ret
.L7:
	movl	%esi, %eax
	xorl	$15, %eax
	ret
.L8:
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	switcher, .-switcher
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
