#Description: This is a Mips32 program that can multiply a number by 7 using bitwise operator.

.data
.text
#n associado a $s0
#$v0 usado para salvar inteiro lido
#$a0 usado para salvar inteiro a ser impresso
#$ra guarda o endereço de retorno

main:
	li $v0, 5 #$v0 = 5 - código syscall para ler um inteiro
	syscall
	move $s0,$v0 #$s0 = $v0
	jal multiplyBySeven #call function
	li $v0, 1 #$v0 = 1 - código syscall para imprimir um inteiro
	la $a0,($s1) #o valor de $s1 é impresso 
	syscall
	li $v0, 10 #$v0 = 10 - código syscall para sair do programa
	syscall
		
multiplyBySeven:
	sll $t1,$s0,3 #$t1 = 8*$s0
	sub $s1,$t1,$s0 #$s1 = $t1 - $s0
	jr $ra #return to caller
