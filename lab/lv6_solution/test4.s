	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.file	"test4.cpp"
	.text
	.globl	fja
	.p2align	2
	.type	fja,@function
	.set	nomicromips
	.set	nomips16
	.ent	fja
fja:
	.cfi_startproc
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
	addiu	$sp, $sp, -32
$cfi0:
	.cfi_def_cfa_offset 32
	sw	$ra, 28($sp)
	sw	$fp, 24($sp)
$cfi1:
	.cfi_offset 31, -4
$cfi2:
	.cfi_offset 30, -8
	move	 $fp, $sp
$cfi3:
	.cfi_def_cfa_register 30
	lui	$1, %hi($.str)
	addiu	$4, $1, %lo($.str)
	addiu	$5, $zero, 5
	jal	printf
	nop
	sw	$2, 20($fp)
	move	 $sp, $fp
	lw	$fp, 24($sp)
	lw	$ra, 28($sp)
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	fja
$func_end0:
	.size	fja, ($func_end0)-fja
	.cfi_endproc

	.type	$.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"%d "
	.size	$.str, 4


	.ident	"ecc version 2017-08-23 (http://ellcc.org) based on clang version 6.0.0 (trunk 311547)"
	.section	".note.GNU-stack","",@progbits
	.text
