#2. Napisati MIPS assembly program koji pronalazi
#najveći element globalno definiranog niza. 
#Veličina niza je proizvoljna.

.section .data
.global niz
.global najveci
niz: .word 5, 1, 6, 9, 3
najveci: .word 0

.section .text
.global main
main:
    # t0 = &niz
    # t1 = addressCounter
    # t2 = max
    # t4 = currentElement
    # t6 = maxAddressOffset (5 elements x 4bytes) 
    # t7 = &najveci
    la $t0, niz
    la $t7, najveci
    addiu $t1, $0, 0   # addressCounter = 0
    lw $t2, ($t0)      # max = niz[0]
    addiu $t6, $0, 20  # maxAddressOffset = 20
  loop:
    addu $t3, $t1, $t0 # nextAddress = niz + addressCounter
    addiu $t1, $t1, 4  # addressCounter += 4
    lw $t4, ($t3)      # currentElement = *nextAddress
    slt $t5, $t4, $t2  # isCurrentElementLessThanMax = currentElement < max
    bne $t5, $0, cond  # if (isCurrentElementLessThanMax) goto cond
    nop
    addiu $t2, $t4, 0  # max = currentElement
  cond:
    blt $t1, $t6, loop # if (addressCounter < maxAddressOffset) goto loop
    nop
    sw $t2, ($t7)

    addiu $v0, $0, 0
    jr $ra
    nop 
