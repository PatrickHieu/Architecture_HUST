# Laboratory Exercise 7, Assignment 1
.data
	Message: .asciiz "Result: "
.text
main: 
	li $a0,-15 #load input parameter
	jal abs #jump and link to abs procedure
	nop
	add $s0, $zero, $v0 #$a1 = abs($a0)
	
	li $v0,10 #terminate
	syscall
endmain:

#function abs
#param[in] $a1 the integer need to be gain the absolute value
#return $v0 absolute value

abs:
	sub $v0,$zero,$a0 #put -(a0) in v0; in case (a0)<0
	bltz $a0,done #if (a0)<0 then done
	nop
	add $v0,$a0,$zero #else put (a0) in v0
done:
	jr $ra