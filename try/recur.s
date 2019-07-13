	.file	"recur.c"
	.text
	.globl	rfun
	.type	rfun, @function
rfun:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	testl	%edi, %edi
	jne	.L8
	rep ret
.L8:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	shrl	%edi
	call	rfun
	andl	$1, %ebx
	addl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	rfun, .-rfun
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
