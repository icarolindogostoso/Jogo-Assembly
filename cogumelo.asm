.text

cogumelo_init:
	lui $8, 0x1001
	addi $8, $8, 2300 # controla aonde ele aparece
	li $9, 5
	li $20, 0xffa237

cabeça_cogumelo:
	beq $9, $0, manchas_coguI
	sw $20, 0($8)
	sw $20, 508($8)
	sw $20, 516($8)
	sw $20, 1020($8)
	sw $20, 1028($8)
	sw $20, 1532($8)
	sw $20, 1540($8)
	sw $20, 2044($8)
	sw $20, 2052($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabeça_cogumelo
manchas_coguI:
	subi $8, $8, 4
	li $20, 0xff0000
	sw $20, 0($8)
	subi $8, $8, 8
	li $9, 2
manchas_cogumelo:
	beq $9, $0, base_coguI
	sw $20, 0($8)	
	sw $20, 4($8)
	sw $20, 1016($8)
	sw $20, 1012($8)	
	sw $20, 1036($8)
	
	addi $8, $8, 512
	addi $9, $9 -1
	j manchas_cogumelo	

base_coguI:
	addi $8, $8, 1532
	li $20, 0xffffff
	li $9, 3
base_cogumelo:
	beq $9, $0, fim
	
	sw $20, 0($8)
	sw $20, 512($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j base_cogumelo
fim:
	li $2, 10
	syscall
	

       
