	.file	"cmov.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L6
	movl	%edi, %edx
	subl	%esi, %edx
	movl	%edi, %eax
	xorl	%esi, %eax
	cmpl	%esi, %edi
	cmovl	%edx, %eax
	ret
.L6:
	leal	(%rdi,%rsi), %eax
	sall	$2, %edi
	cmpl	$-3, %esi
	cmovg	%edi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
