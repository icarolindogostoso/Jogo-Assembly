toad_init:
	li $9 7
	li $10 3
	lui $8, 0x1001
	addi $8, $8, 3600
	li $20, 0xffffff
	
cabeça_toad:
	beqz $9 plc_toad
	
	sw $20, 0($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabeça_toad
	
plc_toad:
	beqz $10 detalhes_cabeça_toad_init
	subi $10, $10, 1
	addi $8, $8, 484
	li $9, 7
	j cabeça_toad

detalhes_cabeça_toad_init:
	addi $8, $8 -2072
	li $9 2
	li $20, 0xff0000
	li $21, 0xffffff
	
detalhes_cabeça_toad:
	beqz $9 rosto_toad_init
	
	sw $21 0($8)
	sw $21 4($8)
	
	sw $20 8($8)
	sw $20 12($8)
	sw $20 16($8)
	
	sw $20 1044($8)
	
	sw $20 1020($8)
	sw $20 1024($8)

	addi $8, $8, 512
	addi $9, $9 -1
	j detalhes_cabeça_toad
	
	
rosto_toad_init:
	addi $8, $8 516
	li $9 3
	li $10 2
	li $20, 0xffd4a2
	
rosto_toad:
	beqz $9 plr_toad
	
	sw $20, 0($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j rosto_toad
	
plr_toad:
	beqz $10 roupas_toad_init
	subi $10, $10, 1
	addi $8, $8, 500
	li $9, 3
	j rosto_toad
	
roupas_toad_init:
	addi $8, $8 -16
	li $9 2
	li $10, 0xffffff
	li $20, 0x2025ff
	li $21, 0x924328

roupas_toad:
	beqz $9 detalhes_toad
	
	sw $20, 0($8)
	sw $20, 12($8)
	
	sw $10 512($8)
	sw $10 520($8)
	sw $10 524($8)
	
	sw $21 1024($8)
	sw $21 1036($8)
		
	addi $8, $8, 4
	addi $9, $9 -1
	j roupas_toad
	
detalhes_toad:
	subi $8, $8, 1028
	li $10 0x000001
	li $20 0xffd4a2
	
	sw $10 0($8)
	sw $10 8($8)
	
	sw $20 1016($8)
	sw $20 1040($8)
			
