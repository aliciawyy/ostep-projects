	.file	"fun_c.c"
	.text
	.globl	fun_c
	.type	fun_c, @function
fun_c:
.LFB0:
	.cfi_startproc
	movl	$8, %eax
	movl	$0, %edx
	movabsq	$72340172838076673, %rsi
.L2:
	movq	%rdi, %rcx
	andq	%rsi, %rcx
	addq	%rcx, %rdx
	shrq	%rdi
	subl	$1, %eax
	jne	.L2
	movq	%rdx, %rax
	sarq	$32, %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$16, %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$8, %rax
	addq	%rdx, %rax
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	fun_c, .-fun_c
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
