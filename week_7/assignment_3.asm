# Laboratory Exercise 7, Assignment 3
.text
	li $s0,112 
	li $s1,36
	jal swap #call max procedure
	nop
	li $v0,10 #terminate
	syscall
	
#stack: first in last out
swap:
	push:
		addi $sp, $sp, 8	#addjust the stack pointer
		sw $s0, 4($sp)		#s0 -> stack
		sw $s1, 0($sp)		#s1 -> stack
	work:
		nop
		nop
		nop
	pop:
		lw $s0, 0($sp)		#pop from stack to $s0
		lw $s1, 4($sp)		#pop from stack to $s1
		addi $sp, $sp, 8	#adjust the stack pointer
