.text

roupa_init:
	lui $8, 0x1001
	addi $8, $8, 22620
	li $9, 3
	li $20, 0xfdff0e
	li $10, 0xb64aae
	
	
roupa:
	beq $9, $0, detalhe_roupaI
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 520($8)
	
	sw $20 2552($8)
	
	sw $10 2560($8)
	sw $10 3068($8)
	sw $10 3076($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j roupa
	
detalhe_roupaI:
	subi $8, $8, 12
	li $9, 0xfcfcfc
	li $20, 0xffffff
	li $10, 0x247C39
detalhe_roupa:
	sw $20, 12($8)
	sw $20, 3060($8)
	sw $20, 3088($8)
	
	sw $9, 2560($8)
	sw $9, 2572($8)
	
	sw $10, 3580($8)
	sw $10, 3596($8)
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
	
	sw $9 0($8)
	sw $9 512($8)
	sw $9 1028($8)
	sw $9 524($8)
	sw $9 528($8)
	sw $9 8($8)
	
	sw $10 12($8)
	sw $20 532($8)
	j fim
	
fim:
	li $2, 10
	syscall
	

       
