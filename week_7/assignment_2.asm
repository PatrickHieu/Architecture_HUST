# Laboratory Exercise 7, Assignment 2
.data 
	Message: .asciiz "Result: "
.text
main:
	li $a0, 123	#load input
	li $a1, 36
	li $a2, 29
	jal max	#call max procedure
	nop
	
	add $s0, $zero, $v0
	
	li $v0, 56
	la $a0, Message
	syscall
	
	li $v0, 10	#terminate
	syscall
endmain:
#return $v0 the largest value

max: 
	add $v0, $a0, $zero
	sub $t0, $a1, $v0
	bltz $t0, okay
	nop 
	add $v0, $a1, $zero
okay:
	sub $t0, $a2, $v0
	bltz $t0, done
	nop
	add $v0, $a2, $zero
done:
	jr $ra