soco_init:
	lui $8, 0x1001
	addi $8, $8, 6192
	li $9, 3
	li $20, 0xfdff0e # amarelo
	li $10, 0x9A3894 # roxo claro
	li $11, 0x592559 # roxo escuro
	
roupa_soco:
	beqz $9, detalhe_roupa_soco
	
	sw $20, 12($8)
	sw $20, 524($8)
	sw $20, 532($8)
	sw $20, 2568($8)
	sw $10, 2572($8)
	sw $10, 3080($8)
	sw $10, 3088($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j roupa_soco
	
detalhe_roupa_soco:
	subi $8, $8, 12
	li $9, 0xfcfcfc
	li $20, 0xffffff
	li $10, 0x247C39
	li $21, 0xfdff0e
	
	sw $20, 24($8)
	sw $20, 3076($8)
	sw $20, 2592($8)
	sw $21, 2588($8)
	
	li $21, 0x9a3894
	sw $21, 2576($8)
	sw $9, 2572($8)
	sw $9, 2584($8)
	sw $10, 3592($8)
	sw $10, 3608($8)
	
cabeça_init_soco:
	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
	
cabeça_soco:
	beqz $9, plc_player_soco
	
	sw $20, 12($8)
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeça_soco

plc_player_soco:
	beqz $10, detalhe_cabeça_soco
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeça_soco

detalhe_cabeça_soco:
	subi $8, $8, 1044
	li $9, 0x784936
	li $10, 0x000001
	li $20, 0xf474a6
	
	sw $9, 12($8)
	sw $9, 524($8)
	sw $9, 1040($8)
	sw $9, 536($8)
	sw $9, 540($8)
	sw $9, 20($8)
	sw $10, 24($8)
	sw $20, 544($8)

fim:
	j fim
