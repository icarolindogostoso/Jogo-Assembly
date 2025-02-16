soco_pulando_direita:
    lui $8, 0x1001
    addi $8, $8, 6192
    li $9, 3
    li $20, 0xfdff0e   # amarelo
    li $10, 0x9A3894   # roxo claro
    li $11, 0x592559   # roxo escuro

# Desenha a roupa do personagem (esquerda)
roupa_soco_pulando_direita:
	beq $9, $0, sapatos_soco_pulando_direita
	sw $20, 2056($8)
	sw $10, 2568($8)
	sw $10, 2572($8)
	sw $10, 2576($8)
	sw $10, 2580($8)
	sw $11, 2584($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j roupa_soco_pulando_direita
	
sapatos_soco_pulando_direita:
	addi $8, $8, 4
	li $20, 0x2b7741 #verde  claro
	li $10, 0x225028 #verde escuro
	
	sw $20, 2048($8)
	
	sw $10, 2580($8)
	
chapeu_init_soco_pulando_direita:
	subi $8, $8, 3584
	
	li $9, 3
	li $20, 0xfdff0e

chapeu_soco_pulando_direita:
	beq $9, $0, detalhe_roupaI_soco_pulando_direita
	
	sw $20, 2568($8)
	sw $20, 3080($8)
	sw $20, 3088($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j chapeu_soco_pulando_direita
	

detalhe_roupaI_soco_pulando_direita:
	subi $8, $8, 12
	li $9, 0xe0e0f0
	li $20, 0xffffff
	li $11, 0xfdff0e #amarelo

	sw $11, 4608($8)
	sw $11, 4612($8)
	sw $20, 2580($8)
	sw $9, 5128($8)
	sw $9, 5140($8)
	sw $20, 5120($8)
	sw $20, 5148($8)
	sw $11, 5144($8)
	
cabeça_init_soco_pulando_direita:
	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeça_soco_pulando_direita:
	beq $9, $0, plc_player_soco_pulando_direita
		
	sw $20, 2568($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeça_soco_pulando_direita

plc_player_soco_pulando_direita:
	beq $10, $0, detalhe_cabeça_soco_pulando_direita
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeça_soco_pulando_direita

detalhe_cabeça_soco_pulando_direita:
	subi $8, $8, 1044
	li $9, 0x784936
	li $10, 0x000001
	li $20, 0xf474a6
	
	sw $9, 2568($8)
	sw $9, 3080($8)
	sw $9, 3596($8)
	sw $9, 3092($8)
	sw $9, 3096($8)
	sw $9, 2576($8)
	
	sw $10, 2580($8)
	sw $20, 3100($8)
	j fim

fim:
