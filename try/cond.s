	.file	"cond.c"
	.text
	.globl	cond
	.type	cond, @function
cond:
.LFB0:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L1
	testl	%edi, %edi
	jle	.L1
	addl	%edi, (%rsi)
.L1:
	rep ret
	.cfi_endproc
.LFE0:
	.size	cond, .-cond
	.globl	cond_goto
	.type	cond_goto, @function
cond_goto:
.LFB1:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L3
	testq	%rsi, %rsi
	je	.L3
	addl	%edi, (%rsi)
.L4:
.L3:
	rep ret
	.cfi_endproc
.LFE1:
	.size	cond_goto, .-cond_goto
	.globl	test
	.type	test, @function
test:
.LFB2:
	.cfi_startproc
	cmpl	$-3, %edi
	jl	.L6
	movl	%edi, %eax
	subl	%esi, %eax
	xorl	%edi, %esi
	cmpl	$3, %edi
	cmovl	%esi, %eax
	ret
.L6:
	leal	(%rdi,%rsi), %eax
	cmpl	%esi, %edi
	jl	.L10
.L5:
	rep ret
.L10:
	movl	%edi, %eax
	imull	%esi, %eax
	jmp	.L5
	.cfi_endproc
.LFE2:
	.size	test, .-test
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
