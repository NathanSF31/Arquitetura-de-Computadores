.data
msg: 	.asciiz "Digite um numero\n"   #Cria uma variável string
num:	.word 1		               #Cria uma variável int
result:	.word 1                                     #Cria uma variável int
	
	.text
main:	li $v0, 4
	la $a0, msg            #Exibe a mensagem na tela
	syscall
	
	li $v0, 5	              #Lê um inteiro  	
	syscall

	sw $v0, num           #Joga na variavel o que o usuário digitou
	add $t0, $v0, $v0   #Joga no temporário o dobro do valor
	sw $t0, result         #Joga na variável result o valor do temporário

	li $v0, 1
	move $a0, $t0         #Exibe na tela o resultado
	syscall

	jr $ra
