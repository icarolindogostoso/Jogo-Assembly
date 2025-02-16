soco_init:
	lui $8 0x1001
	addi $8 $8 20000
	li $10 0xfdff0e#amarelo
	li $20 0xffc39d#pele
	li $21 0xcd00ce#roxo
	li $11 0xa95337 #marrom
	li $12 0x008e40
	li $9 2
	
soco:
	beqz $9 detalhe_soco
	
	sw $10 0($8)
	sw $10 8($8)
	sw $10 512($8)
	sw $10 520($8)
	sw $10 524($8)
	
	sw $20 1024($8)
	sw $20 1032($8)
	sw $20 1536($8)
	sw $20 1544($8)
	sw $20 2048($8)
	sw $20 2056($8)
	
	sw $11 1020($8) 
	sw $11 1532($8)
	sw $11 2048($8)
	
	sw $21 2556($8)
	sw $21 2568($8)
	sw $21 3068($8)
	sw $21 3072($8)
	
	sw $10 2560($8)
	sw $10 3080($8)
	
	
	
	addi $8 $8 4
	addi $9 $9 -1
	j soco
detalhe_soco:
	addi $8 $8 -8
	
	sw $12 3580($8)
	sw $12 3596($8)
	
	sw $10 2560($8)
	li $20 0xffffff
	sw $20 2576($8)
	

	
	li $20 0x333333
	sw $20 1036($8)
	
	li $20 0xff90ad
	sw $11 1548($8)
	sw $20 1552($8)
