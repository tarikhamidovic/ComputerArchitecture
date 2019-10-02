.section .text
.set noreorder
.global main
main:
	addiu $sp, $sp, -4
	sw $ra, ($sp)
    jal fja
    nop
	addiu $sp, $sp, 4
	lw $ra, ($sp)
    jr $ra
    nop
