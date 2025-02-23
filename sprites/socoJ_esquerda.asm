soco_pulando_esquerda:
    lui $8, 0x1001
    addi $8, $8, 6192
    li $9, 3
    li $20, 0xfdff0e   # amarelo
    li $10, 0x9A3894   # roxo claro
    li $11, 0x592559   # roxo escuro
roupa_soco_pulando_esquerda:
	beq $9, $0, sapatos_soco_pulando_esquerda
	sw $11, 2564($8)
	sw $10, 2568($8)
	sw $10, 2572($8)
	sw $10, 2576($8)
	sw $10, 2580($8)
	sw $20, 2068($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j roupa_soco_pulando_esquerda
	
sapatos_soco_pulando_esquerda:
	addi $8, $8, 4
	li $20, 0x2b7741 #verde claro
	li $10, 0x225028 #verde escuro
	
	sw $10, 2560($8)
	sw $20, 2064($8)
	
soco_chapeu_init_pulando_esquerda:
	subi $8, $8, 3584
	
	li $9, 3
	li $20, 0xfdff0e #amarelo

soco_chapeu_pulando_esquerda:
	beq $9, $0, detalhe_soco_roupaI_pulando_esquerda
	
	sw $20, 2564($8)
	sw $20, 3068($8)
	sw $20, 3076($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j soco_chapeu_pulando_esquerda
	
detalhe_soco_roupaI_pulando_esquerda:
	subi $8, $8, 12
	li $9, 0xe0e0f0
	li $20, 0xffffff
	li $10, 0xfdff0e #amarelo

	sw $20, 2560($8)
	sw $20, 5140($8)
	sw $9, 5132($8)
	sw $9, 5120($8)
	sw $10, 4628($8)
	sw $20, 5112($8)
	sw $10, 5116($8)
	
soco_cabeça_init_pulando_esquerda:
	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4 #cor da pele

soco_cabeça_pulando_esquerda:
	beq $9, $0, plc_player_soco_pulando_esquerda
		
	sw $20, 2560($8)
	addi $8, $8, 4
	subi $9, $9, 1
	j soco_cabeça_pulando_esquerda

plc_player_soco_pulando_esquerda:
	beq $10, $0, detalhe_soco_cabeça_pulando_esquerda
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j soco_cabeça_pulando_esquerda

detalhe_soco_cabeça_pulando_esquerda:
	subi $8, $8, 1044
	li $9, 0x784936 #cor do cabelo
	li $10, 0x000001 #cor dos olhos
	li $20, 0xf474a6 #cor do nariz
	# cabelo
	sw $9, 2580($8)
	sw $9, 3092($8)
	sw $9, 3600($8)
	sw $9, 2572($8)
	# bigode
	sw $9, 3076($8)
	sw $9, 3080($8)
	
	# olho e nariz
	sw $10, 2568($8)
	sw $20, 3072($8)

fim_soco_pulando_esquerda:
	
