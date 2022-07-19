	.file	"menuFonction.c"
	.text
	.section	.rodata
.LC0:
	.string	"===Menu==="
	.align 8
.LC1:
	.string	"1: Poulet de dinde aux escargots rotis a la sauce bernaise"
	.align 8
.LC2:
	.string	"2: Concombres sucres a la sauce myrtille enrobee de chocolat"
	.align 8
.LC3:
	.string	"3: Escalope de kangourou saignante et sa gelee aux fraises poivree"
	.align 8
.LC4:
	.string	"4: La surprise du chef (j'en salive d'avance...)"
.LC5:
	.string	"Votre choix?"
.LC6:
	.string	"%d"
	.text
	.globl	menu
	.type	menu, @function
menu:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L2:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jle	.L3
	movl	-12(%rbp), %eax
	cmpl	$4, %eax
	jg	.L3
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	menu, .-menu
	.section	.rodata
.LC7:
	.string	"Vous avez pris le poulet"
.LC8:
	.string	"Vous avez pris les concombres"
.LC9:
	.string	"Vous avez pris l'escalope"
	.align 8
.LC10:
	.string	"Vous avez pris la surprise du chef. Vous etes un sacre aventurier dites donc!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	call	menu
	cmpl	$4, %eax
	je	.L7
	cmpl	$4, %eax
	jg	.L8
	cmpl	$3, %eax
	je	.L9
	cmpl	$3, %eax
	jg	.L8
	cmpl	$1, %eax
	je	.L10
	cmpl	$2, %eax
	je	.L11
	jmp	.L8
.L10:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L8
.L11:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L9:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L7:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
.L8:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.1.0"
	.section	.note.GNU-stack,"",@progbits
