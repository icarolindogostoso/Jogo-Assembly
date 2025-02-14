.text
desenhar_bullet_bill:
	lui $4 0x1001
	add $8 $4 $0
	addi $22 $8 65536
	addi $9 $0 0x0ec7db
	
	addi $10 $0 16
laco_bullet_bill_1:
	beq $10 $0 fim_laco_bullet_bill_1
	addi $11 $0 16
laco_bullet_bill_2:
	beq $11 $0 fim_laco_bullet_bill_2
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $11 $11 -1
	j laco_bullet_bill_2
fim_laco_bullet_bill_2:
	addi $8 $8 -64
	addi $22 $22 -64
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_bullet_bill_1
fim_laco_bullet_bill_1:
	
	add $8 $4 $0
	addi $8 $8 528
	addi $22 $8 65536
	
	addi $9 $0 0x000002
	
	addi $10 $0 12
laco_corpo_bullet_bill_1:
	beq $10 $0 fim_laco_corpo_bullet_bill_1
	addi $11 $0 12
laco_corpo_bullet_bill_2:
	beq $11 $0 fim_laco_corpo_bullet_bill_2
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $11 $11 -1
	j laco_corpo_bullet_bill_2
fim_laco_corpo_bullet_bill_2:
	addi $8 $8 -48
	addi $22 $22 -48
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_corpo_bullet_bill_1
fim_laco_corpo_bullet_bill_1:
	
	add $8 $4 $0
	addi $8 $8 1032
	addi $22 $8 65536
	
	addi $10 $0 10
laco_corpo_2_bullet_bill_1:
	beq $10 $0 fim_laco_corpo_2_bullet_bill_1
	addi $11 $0 2
laco_corpo_2_bullet_bill_2:
	beq $11 $0 fim_laco_corpo_2_bullet_bill_2
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $11 $11 -1
	j laco_corpo_2_bullet_bill_2
fim_laco_corpo_2_bullet_bill_2:
	addi $8 $8 -8
	addi $22 $22 -8
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_corpo_2_bullet_bill_1
fim_laco_corpo_2_bullet_bill_1:

	add $8 $4 $0
	addi $8 $8 1540
	addi $22 $8 65536
	
	addi $10 $0 8
laco_corpo_3_bullet_bill_1:
	beq $10 $0 fim_laco_corpo_3_bullet_bill_1
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_corpo_3_bullet_bill_1
fim_laco_corpo_3_bullet_bill_1:

	add $8 $4 $0
	addi $8 $8 2560
	addi $22 $8 65536
	
	addi $10 $0 4
laco_corpo_4_bullet_bill_1:
	beq $10 $0 fim_laco_corpo_4_bullet_bill_1
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_corpo_4_bullet_bill_1
fim_laco_corpo_4_bullet_bill_1:
	
	add $8 $4 $0
	addi $8 $8 24
	addi $22 $8 65536
	
	addi $10 $0 6
laco_corpo_5_bullet_bill_1:
	beq $10 $0 fim_laco_corpo_5_bullet_bill_1
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $10 $10 -1
	j laco_corpo_5_bullet_bill_1
fim_laco_corpo_5_bullet_bill_1:
	
	add $8 $4 $0
	addi $8 $8 56
	addi $22 $8 65536
	
	addi $10 $0 2
laco_corpo_6_bullet_bill_1:
	beq $10 $0 fim_laco_corpo_6_bullet_bill_1
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $10 $10 -1
	j laco_corpo_6_bullet_bill_1
fim_laco_corpo_6_bullet_bill_1:

	add $8 $4 $0
	addi $8 $8 6680
	addi $22 $8 65536
	
	addi $10 $0 5
laco_corpo_7_bullet_bill_1:
	beq $10 $0 fim_laco_corpo_7_bullet_bill_1
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $10 $10 -1
	j laco_corpo_7_bullet_bill_1
fim_laco_corpo_7_bullet_bill_1:

	add $8 $4 $0
	addi $8 $8 6708
	addi $22 $8 65536
	
	addi $10 $0 3
laco_corpo_8_bullet_bill_1:
	beq $10 $0 fim_laco_corpo_8_bullet_bill_1
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $10 $10 -1
	j laco_corpo_8_bullet_bill_1
fim_laco_corpo_8_bullet_bill_1:
	add $8 $4 $0
	addi $22 $8 65536
	li $9 0xfffffe
	
	sw $9 540($8)
	sw $9 544($8)
	sw $9 548($8)
	sw $9 552($8)
	sw $9 556($8)
	sw $9 1048($8)
	sw $9 1052($8)
	sw $9 1056($8)
	sw $9 1060($8)
	sw $9 1064($8)
	sw $9 1068($8)
	sw $9 1560($8)
	
	sw $9 540($22)
	sw $9 544($22)
	sw $9 548($22)
	sw $9 552($22)
	sw $9 556($22)
	sw $9 1048($22)
	sw $9 1052($22)
	sw $9 1056($22)
	sw $9 1060($22)
	sw $9 1064($22)
	sw $9 1068($22)
	sw $9 1560($22)
	
	sw $9 568($8)
	sw $9 1080($8)
	sw $9 1076($8)
	sw $9 1588($8)
	
	sw $9 568($22)
	sw $9 1080($22)
	sw $9 1076($22)
	sw $9 1588($22)
	
	sw $9 1552($8)
	sw $9 2064($8)
	sw $9 2060($8)
	sw $9 2576($8)
	sw $9 2572($8)
	sw $9 2564($8)
	sw $9 3088($8)
	sw $9 3084($8)
	sw $9 3080($8)
	sw $9 3076($8)
	sw $9 3596($8)
	sw $9 3592($8)
	
	sw $9 1552($22)
	sw $9 2064($22)
	sw $9 2060($22)
	sw $9 2576($22)
	sw $9 2572($22)
	sw $9 2564($22)
	sw $9 3088($22)
	sw $9 3084($22)
	sw $9 3080($22)
	sw $9 3076($22)
	sw $9 3596($22)
	sw $9 3592($22)
	
	add $8 $4 $0
	addi $8 $8 4120
	addi $22 $8 65536
	
	addi $9 $0 0xffffd0
	
	addi $10 $0 3
laco_braco_bullet_bill_1:
	beq $10 $0 fim_laco_braco_bullet_bill_1
	addi $11 $0 6
laco_braco_bullet_bill_2:
	beq $11 $0 fim_laco_braco_bullet_bill_2
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $11 $11 -1
	j laco_braco_bullet_bill_2
fim_laco_braco_bullet_bill_2:
	addi $8 $8 -24
	addi $22 $22 -24
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_braco_bullet_bill_1
fim_laco_braco_bullet_bill_1:

	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
	sw $9 0($22)
	sw $9 4($22)
	sw $9 8($22)
	sw $9 12($22)
	sw $9 16($22)
	
	addi $8 $8 -1024
	addi $22 $22 -1024
	
	sw $9 -4($8)
	sw $9 508($8)
	sw $9 -4($22)
	sw $9 508($22)
	
	addi $8 $8 -488
	addi $22 $22 -488
	
	sw $9 0($8)
	sw $9 512($8)
	sw $9 0($22)
	sw $9 512($22)
	
	addi $8 $8 -520
	addi $22 $22 -520
	
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 -512($8)
	sw $9 -508($8)
	sw $9 0($22)
	sw $9 4($22)
	sw $9 8($22)
	sw $9 -512($22)
	sw $9 -508($22)