.text
tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	li $9 8192
	li $20 0x20d8ff
ceu_tela_4:
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 ceu_tela_4
	
bloco_chao_1_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 14336
	li $10 7
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_4:
	li $9 4
bloco_chao_1_tela_4:
	beq $9 $0 final_bloco_chao_1_tela_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_4
final_bloco_chao_1_tela_4:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_4
	
bloco_chao_1_init_tela_4_2:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 26896 # AQUI
	li $10 15
	li $20 0x000000 
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_4_2:
	li $9 4
bloco_chao_1_tela_4_2:
	beq $9 $0 final_bloco_chao_1_tela_4_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_4_2
final_bloco_chao_1_tela_4_2:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_4_2

bloco_chao_2_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 14448
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_4:
	beq $9 $0 final_bloco_chao_2_tela_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_4
final_bloco_chao_2_tela_4:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_3_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 26880 # AQUI
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_4:
	beq $9 $0 final_bloco_chao_3_tela_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_4
final_bloco_chao_3_tela_4:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)

bloco_chao_4_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 16496
	li $10 8
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_4:
	li $9 4
bloco_chao_4_tela_4:
	beq $9 $0 final_bloco_chao_4_tela_4
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_4
final_bloco_chao_4_tela_4:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_4
	
bloco_chao_5_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 28928 # AQUI
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_4:
	li $9 4
bloco_chao_5_tela_4:
	beq $9 $0 final_bloco_chao_5_tela_4
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_4
final_bloco_chao_5_tela_4:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_4
	
bloco_chao_6_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 16384
	li $10 6
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_4:
	li $9 4
bloco_chao_6_tela_4:
	beq $9 $0 final_bloco_chao_6_tela_4
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_4
final_bloco_chao_6_tela_4:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_4
	
bloco_chao_6_init_tela_4_2:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 28960 # AQUI
	li $10 14
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_4_2:
	li $9 4
bloco_chao_6_tela_4_2:
	beq $9 $0 final_bloco_chao_6_tela_4_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_4_2
final_bloco_chao_6_tela_4_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_4_2
	
bloco_chao_7_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 16480
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_4:
	beq $9 $0 final_bloco_chao_7_tela_4
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_4
final_bloco_chao_7_tela_4:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_8_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 28944 #AQUI
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_4:
	beq $9 $0 final_bloco_chao_8_tela_4
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_4
final_bloco_chao_8_tela_4:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_9_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 18528
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_4:
	beq $9 $0 final_bloco_chao_9_tela_4
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_4
final_bloco_chao_9_tela_4:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $13 516($8)
	sw $20 1032($8)
	sw $13 1024($8)
	sw $20 1548($8)
	sw $13 1536($8)
	sw $13 1540($8)
	sw $13 1544($8)
	
bloco_chao_10_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 30992 # AQUI
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_4:
	beq $9 $0 final_bloco_chao_10_tela_4
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_4
final_bloco_chao_10_tela_4:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $13 520($8)
	sw $20 1028($8)
	sw $13 1036($8)
	sw $20 1536($8)
	sw $13 1540($8)
	sw $13 1544($8)
	sw $13 1548($8)
	
bloco_chao_11_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 20576
	li $10 6
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11_tela_4:
	li $9 4
bloco_chao_11_tela_4:
	beq $9 $0 final_bloco_chao_11_tela_4
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_4
final_bloco_chao_11_tela_4:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_4
	
bloco_chao_12_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 18432
	li $10 6
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_4:
	li $9 4
bloco_chao_12_tela_4:
	beq $9 $0 final_bloco_chao_12_tela_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_4
final_bloco_chao_12_tela_4:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_4
	
bloco_chao_12_init_tela_4_2:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 31008 #AQUI
	li $10 14
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_4_2:
	li $9 4
bloco_chao_12_tela_4_2:
	beq $9 $0 final_bloco_chao_12_tela_4_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_4_2
final_bloco_chao_12_tela_4_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_4_2
	
bloco_chao_13_init_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	addi $8 $8 20480
	li $20 0x6b5727
	li $9 24
bloco_chao_13_tela_4_1:
	li $10 24
bloco_chao_13_tela_4_2:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bnez $10 bloco_chao_13_tela_4_2
	addi $8 $8 -96
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 bloco_chao_13_tela_4_1
	
nuvem_1_1_tela_4:
	lui $8 0x1001
	#addi $8 $8 32768
	li $20 0xacf4fc
	li $9 4
laco_1_nuvem_1_1_tela_4_init:
	li $10 44
laco_2_nuvem_1_1_tela_4_init:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bnez $10 laco_2_nuvem_1_1_tela_4_init
	addi $8 $8 -176
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_1_nuvem_1_1_tela_4_init
	
	addi $8 $8 -2048
	addi $8 $8 176
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1036($8)
	sw $20 1040($8)
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $20 1552($8)
	sw $20 1556($8)
	sw $20 1560($8)
	sw $20 1564($8)
	sw $20 1568($8)
	sw $20 1572($8)
	sw $20 1576($8)
	
nuvem_1_2_tela_4:
	lui $8 0x1001
	addi $8 $8 2048
	#addi $8 $8 32768
	li $20 0xacf4fc
	li $9 4
laco_1_nuvem_1_2_tela_4_init:
	li $10 54
laco_2_nuvem_1_2_tela_4_init:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bnez $10 laco_2_nuvem_1_2_tela_4_init
	addi $8 $8 -216
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_1_nuvem_1_2_tela_4_init
	
	addi $8 $8 -2048
	addi $8 $8 216
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	
nuvem_1_3_tela_4:
	lui $8 0x1001
	addi $8 $8 4096
	#addi $8 $8 32768
	li $20 0xacf4fc
	li $9 2
laco_1_nuvem_1_3_tela_4_init:
	li $10 49
laco_2_nuvem_1_3_tela_4_init:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bnez $10 laco_2_nuvem_1_3_tela_4_init
	addi $8 $8 -196
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_1_nuvem_1_3_tela_4_init
	
	addi $8 $8 -1024
	addi $8 $8 196
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	
nuvem_2_1_tela_4:
	lui $8 0x1001
	addi $8 $8 10480
	#addi $8 $8 32768
	li $20 0xacf4fc
	li $9 16
laco_1_nuvem_2_1_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_nuvem_2_1_tela_4_init
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 1024($8)
	sw $20 1028($8)
	
	addi $8 $8 -16
	
	li $20 0x20d8ff
	
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $20 1548($8)
	
	addi $8 $8 -48
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 1536($8)
	sw $20 1540($8)
	
montanha_1_1_tela_4:
	lui $8 0x1001
	addi $8 $8 20608
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 24
laco_1_montanha_1_1_tela_4_init:
	li $10 12
laco_2_montanha_1_1_tela_4_init:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bnez $10 laco_2_montanha_1_1_tela_4_init
	addi $8 $8 -48
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_1_montanha_1_1_tela_4_init
	
montanha_1_2_tela_4:
	lui $8 0x1001
	addi $8 $8 24752
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 16
laco_1_montanha_1_2_tela_4_init:
	li $10 12
laco_2_montanha_1_2_tela_4_init:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bnez $10 laco_2_montanha_1_2_tela_4_init
	addi $8 $8 -48
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_1_montanha_1_2_tela_4_init
	
montanha_1_3_tela_4:
	lui $8 0x1001
	addi $8 $8 18560
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 7
laco_1_montanha_1_3_tela_4_init:
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_1_3_tela_4_init
	
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $20 1548($8)
	
montanha_1_4_tela_4:
	lui $8 0x1001
	addi $8 $8 22192
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 5
laco_1_montanha_1_4_tela_4_init:
	sw $20 0($8)
	sw $20 4($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_1_montanha_1_4_tela_4_init
	
	addi $8 $8 -2560
	
	sw $20 -512($8)
	
montanha_1_5_tela_4:
	lui $8 0x1001
	addi $8 $8 24256
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 6
laco_1_montanha_1_5_tela_4_init:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_1_5_tela_4_init
	
montanha_1_6_tela_4:
	lui $8 0x1001
	addi $8 $8 25824
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 14
laco_1_montanha_1_6_tela_4_init:
	sw $20 0($8)
	sw $20 4($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_1_montanha_1_6_tela_4_init
	
	addi $8 $8 -7680
	
	sw $20 0($8)
	
montanha_1_7_tela_4:
	lui $8 0x1001
	addi $8 $8 27872
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 10
laco_1_montanha_1_7_tela_4_init:
	sw $20 8($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_1_montanha_1_7_tela_4_init
	
montanha_2_1_tela_4:
	lui $8 0x1001
	addi $8 $8 24832
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 45
laco_1_montanha_2_1_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_2_1_tela_4_init
	
	sw $20 -516($8)
	
montanha_2_2_tela_4:
	lui $8 0x1001
	addi $8 $8 22800
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 40
laco_1_montanha_2_2_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_2_2_tela_4_init
	
	addi $8 $8 -112
	
	li $11 0x20d8ff
	
	sw $11 -4($8)
	
	addi $8 $8 -64
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 524($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1036($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $20 1548($8)
	
	addi $8 $8 20
	addi $8 $8 -512
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 16($8)
	sw $20 20($8)
	sw $20 24($8)
	sw $20 28($8)
	sw $20 32($8)
	
montanha_2_3_tela_4:
	lui $8 0x1001
	addi $8 $8 20800
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 28
laco_1_montanha_2_3_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_2_3_tela_4_init
	
montanha_2_4_tela_4:
	lui $8 0x1001
	addi $8 $8 18752
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 28
laco_1_montanha_2_4_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_2_4_tela_4_init
	
	sw $11 -4($8)
	
	addi $8 $8 -112
	
	sw $11 0($8)
	sw $11 512($8)
	
montanha_2_5_tela_4:
	lui $8 0x1001
	addi $8 $8 16712
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 25
laco_1_montanha_2_5_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_2_5_tela_4_init
	
	addi $8 $8 -100
	
	sw $20 1532($8)
	
montanha_2_6_tela_4:
	lui $8 0x1001
	addi $8 $8 14672
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 22
laco_1_montanha_2_6_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_2_6_tela_4_init
	
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 -88
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $20 1528($8)
	
montanha_2_7_tela_4:
	lui $8 0x1001
	addi $8 $8 12632
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 19
laco_1_montanha_2_7_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_2_7_tela_4_init
	
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 -84
	
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	sw $20 1540($8)
	
montanha_2_8_tela_4:
	lui $8 0x1001
	addi $8 $8 10604
	#addi $8 $8 32768
	li $20 0x1fa4fb
	li $9 10
laco_1_montanha_2_8_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_montanha_2_8_tela_4_init
	
	sw $20 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $20 1548($8)
	
	addi $8 $8 -60
	
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $20 1552($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1036($8)
	sw $20 1040($8)
	sw $20 524($8)
	sw $20 528($8)
	
nuvem_2_2_tela_4:
	lui $8 0x1001
	addi $8 $8 8448
	#addi $8 $8 32768
	li $20 0xacf4fc
	li $9 12
laco_1_nuvem_2_2_tela_4_init:
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_nuvem_2_2_tela_4_init
	
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	
	addi $8 $8 -48
	
	sw $20 1532($8)
	
	li $20 0x20d8ff
	
	sw $20 1024($8)
	sw $20 1028($8)
	
mato_1_1_tela_4:
	lui $8 0x1001
	addi $8 $8 12332
	#addi $8 $8 32768
	li $20 0x54d444
	li $9 11
laco_1_mato_1_1_tela_4_init:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_mato_1_1_tela_4_init
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 1024($8)
	
	addi $8 $8 -20
	
	sw $11 0($8)
	
	addi $8 $8 -24
	
	sw $20 -512($8)
	sw $20 -508($8)
	sw $20 -504($8)
	sw $20 -500($8)
	sw $20 -496($8)
	
mato_1_2_tela_4:
	lui $8 0x1001
	addi $8 $8 10320
	#addi $8 $8 32768
	li $20 0x54d444
	li $9 6
laco_1_mato_1_2_tela_4_init:
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_1_mato_1_2_tela_4_init
	
	addi $8 $8 1008
	
	sw $20 -512($8)
	sw $20 -508($8)
	sw $20 -504($8)
	sw $20 -500($8)
	
	addi $8 $8 -12
	
	sw $20 512($8)

mastro_init_tela_4:
	li $20, 0xb4f42c
	lui $8, 0x1001
	#addi $8 $8 32768
	addi $8, $8, 10112
	li $9, 33
	
mastro_tela_4:
	beq $9, $0, bola_init_tela_4
	sw $20, 0($8)
	addi $8, $8, 512
	addi $9, $9, -1
	j mastro_tela_4
	
bola_init_tela_4:
	li $20, 0x00b000
	lui $8, 0x1001
	addi $8, $8, 7548
	li $9, 3
bola_tela_4:
	beq $9, $0, fim_tela_4
	sw $20, 0($8)
	sw $20,	508($8)
	sw $20,516($8)
	sw $20,1020($8)
	sw $20,1028($8)
	sw $20,1532($8)
	sw $20,1540($8)
	sw $20,2048($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j bola_tela_4
	
fim_tela_4:
