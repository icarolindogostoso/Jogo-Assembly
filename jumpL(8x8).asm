.text
roupa_init:

	lui $8, 0x1001
	addi $8, $8, 6192
	li $9, 2
	li $20, 0xfdff0e #amarelo
	li $10, 0x9A3894 #roxo claro
	li $11, 0x592559 #roxo escuro
roupa:
	beq $9, $0, sapatos
	sw $11, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 16($8)
	sw $10, 20($8)
	sw $20, -492($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j roupa
	
sapatos:
	addi $8, $8, 4
	li $20, 0x2b7741 #verde  claro
	li $10, 0x225028 #verde escuro
	
	sw $10, 0($8)
	sw $20, 4($8)
	sw $20, 8($8)
	
chapeu_init:
	subi $8, $8, 3584
	
	li $9, 3
	li $20, 0xfdff0e

	
	
chapeu:
	beq $9, $0, detalhe_roupaI
	
	sw $20 4($8)
	sw $20 508($8)
	sw $20 516($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j chapeu
	
detalhe_roupaI:
	subi $8, $8, 12
	li $9, 0xfcfcfc
	li $20, 0xffffff
	li $10, 0xfdff0e #amarelo
detalhe_roupa:
	sw $20, 0($8)
	sw $20, 2584($8)
	sw $9, 2572($8)
	sw $9, 2560($8)
	sw $10, 2068($8)
	
	

cabeça_init:

	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeça:
	beq $9, $0 plc_player
		
	sw $20, 0($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeça
plc_player:
	beq $10, $0 detalhe_cabeça
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeça
detalhe_cabeça:
	subi $8, $8, 1044
	li $9, 0x784936
	li $10, 0x000000
	li $20, 0xf474a6
	#cabelo
	sw $9 20($8)
	sw $9 532($8)
	sw $9 1040($8)
	sw $9 12($8)
	#bigas
	sw $9 516($8)
	sw $9 520($8)
	
	# olho e nariz
	sw $10 8($8)
	sw $20 512($8)
	j fim
	
fim:
	li $2, 10
	syscall
	

       
