.section .text
.global faktorijel
faktorijel:
	addiu $sp, $sp, -24
	sw $ra, 16($sp)
    
	slti $t0, $a0, 2
    	beq $t0, $0, rekurzija
	nop
	addiu $v0, $0, 1
	j epilog
    	nop
    	
	rekurzija:
    	sw $a0, 24($sp)
    	addiu $a0, $a0, -1
    	jal faktorijel
    	nop
    	lw $a0, 24($sp)
    	mult $a0, $v0
    	mflo $v0

    	epilog:	
	lw $ra, 16($sp)
	addiu $sp, $sp, 24
    
    	jr $ra
	nop
