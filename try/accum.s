	.file	"accum.c"
	.text
	.globl	sum
	.type	sum, @function
sum:
.LFB0:
	.cfi_startproc
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	4(%esp), %edx
	movl	(%edx), %eax
	addl	8(%esp), %eax
	addl	%eax, acc@GOTOFF(%ecx)
	movl	%eax, (%edx)
	ret
	.cfi_endproc
.LFE0:
	.size	sum, .-sum
	.globl	acc
	.bss
	.align 4
	.type	acc, @object
	.size	acc, 4
acc:
	.zero	4
	.section	.text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.globl	__x86.get_pc_thunk.cx
	.hidden	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
.LFB1:
	.cfi_startproc
	movl	(%esp), %ecx
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
