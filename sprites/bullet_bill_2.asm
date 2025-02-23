.text
desenhar_bullet_bill_direita:
	lui $4 0x1001
	add $8 $4 $0
	
	add $8 $4 $0
	addi $22 $8 65536
	addi $9 $0 0x0ec7db
	
	addi $10 $0 14
laco_bullet_bill_1_direita:
	beq $10 $0 fim_laco_bullet_bill_1_direita
	addi $11 $0 14
laco_bullet_bill_2_direita:
	beq $11 $0 fim_laco_bullet_bill_2_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $11 $11 -1
	j laco_bullet_bill_2_direita
fim_laco_bullet_bill_2_direita:
	addi $8 $8 -56
	addi $22 $22 -56
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_bullet_bill_1_direita
fim_laco_bullet_bill_1_direita:

	add $8 $4 $0
	addi $8 $8 512
	addi $22 $8 65536
	
	addi $9 $0 0x000002
	
	addi $10 $0 12
laco_corpo_bullet_bill_1_direita:
	beq $10 $0 fim_laco_corpo_bullet_bill_1_direita
	addi $11 $0 12
laco_corpo_bullet_bill_2_direita:
	beq $11 $0 fim_laco_corpo_bullet_bill_2_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $11 $11 -1
	j laco_corpo_bullet_bill_2_direita
fim_laco_corpo_bullet_bill_2_direita:
	addi $8 $8 -48
	addi $22 $22 -48
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_corpo_bullet_bill_1_direita
fim_laco_corpo_bullet_bill_1_direita:

	add $8 $4 $0
	addi $8 $8 1072
	addi $22 $8 65536
	
	addi $10 $0 10
laco_corpo_2_bullet_bill_1_direita:
	beq $10 $0 fim_laco_corpo_2_bullet_bill_1_direita
	addi $11 $0 2
laco_corpo_2_bullet_bill_2_direita:
	beq $11 $0 fim_laco_corpo_2_bullet_bill_2_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $11 $11 -1
	j laco_corpo_2_bullet_bill_2_direita
fim_laco_corpo_2_bullet_bill_2_direita:
	addi $8 $8 -8
	addi $22 $22 -8
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_corpo_2_bullet_bill_1_direita
fim_laco_corpo_2_bullet_bill_1_direita:

	add $8 $4 $0
	addi $8 $8 1592
	addi $22 $8 65536
	
	addi $10 $0 8
laco_corpo_3_bullet_bill_1_direita:
	beq $10 $0 fim_laco_corpo_3_bullet_bill_1_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_corpo_3_bullet_bill_1_direita
fim_laco_corpo_3_bullet_bill_1_direita:

	add $8 $4 $0
	addi $8 $8 2620
	addi $22 $8 65536
	
	addi $10 $0 4
laco_corpo_4_bullet_bill_1_direita:
	beq $10 $0 fim_laco_corpo_4_bullet_bill_1_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_corpo_4_bullet_bill_1_direita
fim_laco_corpo_4_bullet_bill_1_direita:

	add $8 $4 $0
	addi $8 $8 16
	addi $22 $8 65536
	
	addi $10 $0 6
laco_corpo_5_bullet_bill_1_direita:
	beq $10 $0 fim_laco_corpo_5_bullet_bill_1_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $10 $10 -1
	j laco_corpo_5_bullet_bill_1_direita
fim_laco_corpo_5_bullet_bill_1_direita:

	add $8 $4 $0
	addi $22 $8 65536
	
	addi $10 $0 2
laco_corpo_6_bullet_bill_1_direita:
	beq $10 $0 fim_laco_corpo_6_bullet_bill_1_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $10 $10 -1
	j laco_corpo_6_bullet_bill_1_direita
fim_laco_corpo_6_bullet_bill_1_direita:

	add $8 $4 $0
	addi $8 $8 6676
	addi $22 $8 65536
	
	addi $10 $0 5
laco_corpo_7_bullet_bill_1_direita:
	beq $10 $0 fim_laco_corpo_7_bullet_bill_1_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $10 $10 -1
	j laco_corpo_7_bullet_bill_1_direita
fim_laco_corpo_7_bullet_bill_1_direita:

	add $8 $4 $0
	addi $8 $8 6656
	addi $22 $8 65536
	
	addi $10 $0 3
laco_corpo_8_bullet_bill_1_direita:
	beq $10 $0 fim_laco_corpo_8_bullet_bill_1_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $10 $10 -1
	j laco_corpo_8_bullet_bill_1_direita
fim_laco_corpo_8_bullet_bill_1_direita:

	add $8 $4 $0
	addi $22 $8 65536
	li $9 0xfffffe
	
	sw $9 528($8)
	sw $9 532($8)
	sw $9 536($8)
	sw $9 540($8)
	sw $9 544($8)
	sw $9 1040($8)
	sw $9 1044($8)
	sw $9 1048($8)
	sw $9 1052($8)
	sw $9 1056($8)
	sw $9 1060($8)
	sw $9 1572($8)
	
	sw $9 528($22)
	sw $9 532($22)
	sw $9 536($22)
	sw $9 540($22)
	sw $9 544($22)
	sw $9 1040($22)
	sw $9 1044($22)
	sw $9 1048($22)
	sw $9 1052($22)
	sw $9 1056($22)
	sw $9 1060($22)
	sw $9 1572($22)
	
	sw $9 516($8)
	sw $9 1028($8)
	sw $9 1032($8)
	sw $9 1544($8)
	
	sw $9 516($22)
	sw $9 1028($22)
	sw $9 1032($22)
	sw $9 1544($22)
	
	sw $9 1580($8)
	sw $9 2092($8)
	sw $9 2096($8)
	sw $9 2604($8)
	sw $9 2608($8)
	sw $9 2616($8)
	sw $9 3116($8)
	sw $9 3120($8)
	sw $9 3124($8)
	sw $9 3128($8)
	sw $9 3632($8)
	sw $9 3636($8)
	
	sw $9 1580($22)
	sw $9 2092($22)
	sw $9 2096($22)
	sw $9 2604($22)
	sw $9 2608($22)
	sw $9 2616($22)
	sw $9 3116($22)
	sw $9 3120($22)
	sw $9 3124($22)
	sw $9 3128($22)
	sw $9 3632($22)
	sw $9 3636($22)
	
	add $8 $4 $0
	addi $8 $8 4116
	addi $22 $8 65536
	
	addi $9 $0 0xffffd0
	
	addi $10 $0 3
laco_braco_bullet_bill_1_direita:
	beq $10 $0 fim_laco_braco_bullet_bill_1_direita
	addi $11 $0 5
laco_braco_bullet_bill_2_direita:
	beq $11 $0 fim_laco_braco_bullet_bill_2_direita
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $11 $11 -1
	j laco_braco_bullet_bill_2_direita
fim_laco_braco_bullet_bill_2_direita:
	addi $8 $8 -20
	addi $22 $22 -20
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_braco_bullet_bill_1_direita
fim_laco_braco_bullet_bill_1_direita:

	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
	sw $9 4($22)
	sw $9 8($22)
	sw $9 12($22)
	sw $9 16($22)
	
	addi $8 $8 -1004
	addi $22 $22 -1004
	
	sw $9 0($8)
	sw $9 512($8)
	sw $9 0($22)
	sw $9 512($22)
	
	addi $8 $8 -532
	addi $22 $22 -532
	
	sw $9 -4($8)
	sw $9 508($8)
	sw $9 -516($8)
	sw $9 -512($8)
	sw $9 -508($8)
	sw $9 -1024($8)
	sw $9 -1020($8)
	sw $9 -4($22)
	sw $9 508($22)
	sw $9 -516($22)
	sw $9 -512($22)
	sw $9 -508($22)
	sw $9 -1024($22)
	sw $9 -1020($22)