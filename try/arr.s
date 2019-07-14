	.file	"arr.c"
	.text
	.globl	fix_set_diag
	.type	fix_set_diag, @function
fix_set_diag:
.LFB0:
	.cfi_startproc
	movq	%rdi, %rax
	addq	$1156, %rdi
.L2:
	movl	%esi, (%rax)
	addq	$68, %rax
	cmpq	%rdi, %rax
	jne	.L2
	rep ret
	.cfi_endproc
.LFE0:
	.size	fix_set_diag, .-fix_set_diag
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
