	.file	"loops.c"
	.text
	.globl	fun_a
	.type	fun_a, @function
fun_a:
.LFB0:
	.cfi_startproc
	testl	%edi, %edi
	je	.L4
	movl	$0, %eax
.L3:
	xorl	%edi, %eax
	shrl	%edi
	jne	.L3
.L2:
	andl	$1, %eax
	ret
.L4:
	movl	$0, %eax
	jmp	.L2
	.cfi_endproc
.LFE0:
	.size	fun_a, .-fun_a
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
