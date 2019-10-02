
.section .text
.set noreorder
.global main
main:
	sw $ra, ($sp)
    	jal fja
    	nop
	lw $ra, ($sp)
	addiu $v0, $0, 0
    	jr $ra
    	nop
