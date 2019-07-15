	.file	"accum.c"
	.text
	.globl	sum
	.type	sum, @function
sum:
.LFB0:
	.cfi_startproc
	addl	(%rdi), %esi
	movslq	%esi, %rax
	addq	%rax, acc(%rip)
	movl	%esi, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	sum, .-sum
	.globl	acc
	.bss
	.align 8
	.type	acc, @object
	.size	acc, 8
acc:
	.zero	8
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
