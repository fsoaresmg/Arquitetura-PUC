#Programa para encontrar a área do quadrado de lado x

	.data

msg1:	.asciiz "Digite o valor do lado x do quadrado: "

.text

.globl main

main:	

	add 	$s0, $ra, $0	#inicializar o registro "s0"
	li 	$v0, 4		#Chama a funcao imprimir do sistema
	la	$a0, msg1	#carrega o endereco da string a ser impressa
	syscall			#Faz chamada ao sistema para exibir a mensagem

	li	$v0, 5		#Chama a funcao 5 para ler um numero inteiro
	syscall			#Faz chamada ao sistema para ler o numero digitado

	mul 	$t0, $v0, $v0	#multiplica o inteiro por ele mesmo e grava em t0

	li	$v0, 1		#Chama a funcao para imprimir o inteiro
	add	$a0, $t0,$0	#Aponta para o endereco do numero 
	syscall			#Chama o sistema para executar os comandos acima

	add	$ra, $0, $s0	#Finaliza o programa
	jr	$ra						
	