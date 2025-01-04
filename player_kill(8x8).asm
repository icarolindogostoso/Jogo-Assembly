
player_kill_init:
	lui $8, 0x1001
	addi $8, $8 2300
	li $20, 0xffd7a4
	li $9, 6
	li $10, 2
cabeça_kill:
	beqz $9 plck
	
	sw $20, -512($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j cabeça_kill
	
plck:
	beqz $10 linhas_kill_init
	subi $10, $10 1
	addi $8, $8, 488
	li $9, 6
	j cabeça_kill
	
linhas_kill_init:
	subi $8, $8, 2580
	li $9, 2
	li $10, 0x000001
	li $11, 0x9a3894 
	li $12, 0xfdff0e
	li $21, 0xaa7722
	li $20, 0xf474a6
linhas_kill:
	beqz $9 detalhes_kill
	
	sw $12 0($8)
	sw $12 8($8)
	sw $12 508($8)
	sw $12 516($8)
	sw $12 524($8)
	
	sw $21 1532($8)
	sw $20 1540($8)
	sw $21 1548($8)
	
	sw $12 2572($8)
	sw $12 2556($8)
	sw $11 2564($8)
	sw $11 3076($8)
	sw $11 3068($8)
	sw $11 3084($8)

	addi $8, $8 4
	addi $9, $9 -1
	j linhas_kill
detalhes_kill:
	subi $8, $8, 4
	li $9, 0x2b7741 
	li $10, 0x000001
	li $11, 0xffffff
	
	sw $10, 1020($8)
	sw $10, 1032($8)
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 2036($8)
	sw $11 2064($8)
	sw $11 2556($8)
	sw $11 2568($8)
	
	sw $9 3088($8)
	sw $9 3060($8)
