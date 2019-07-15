	.file	"proc.c"
	.text
	.p2align 4,,15
	.globl	call_proc
	.type	call_proc, @function
call_proc:
.LFB0:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$2, %edx
	movl	$1, %edi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movl	$3, %eax
	leaq	12(%rsp), %rcx
	movq	$1, 16(%rsp)
	movw	%ax, 10(%rsp)
	leaq	9(%rsp), %rax
	movl	$2, 12(%rsp)
	movb	$4, 9(%rsp)
	leaq	16(%rsp), %rsi
	movl	$3, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 56
	pushq	$4
	.cfi_def_cfa_offset 64
	leaq	26(%rsp), %r9
	call	proc@PLT
	movswl	26(%rsp), %edx
	movsbl	25(%rsp), %ecx
	movslq	28(%rsp), %rax
	addq	32(%rsp), %rax
	subl	%ecx, %edx
	movslq	%edx, %rdx
	imulq	%rdx, %rax
	popq	%rdx
	.cfi_def_cfa_offset 56
	popq	%rcx
	.cfi_def_cfa_offset 48
	movq	24(%rsp), %rdi
	xorq	%fs:40, %rdi
	jne	.L5
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	call_proc, .-call_proc
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
