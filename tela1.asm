.text
tela_1:
	lui $8 0x1001
	li $9 8192
	li $20 0x20d8ff
ceu:
	beq $9 $0 bloco_chao_1_init
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j ceu
bloco_chao_1_init:
	lui $8 0x1001
	addi $8 $8 26624
	li $10 14
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1:
	li $9 4
bloco_chao_1:
	beq $9 $0 final_bloco_chao_1
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1
final_bloco_chao_1:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1
	
bloco_chao_1_init_part_2:
	addi $8 $8 -3984
	li $10 11
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_part_2:
	li $9 4
bloco_chao_1_part_2:
	beq $9 $0 final_bloco_chao_1_part_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_part_2
final_bloco_chao_1_part_2:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_part_2
	
bloco_chao_2_init:
	lui $8 0x1001
	addi $8 $8 26848
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2:
	beq $9 $0 final_bloco_chao_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2
final_bloco_chao_2:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_3_init:
	lui $8 0x1001
	addi $8 $8 22848
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3:
	beq $9 $0 final_bloco_chao_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3
final_bloco_chao_3:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_4_init:
	lui $8 0x1001
	addi $8 $8 28896
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4:
	li $9 4
bloco_chao_4:
	beq $9 $0 final_bloco_chao_4
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4
final_bloco_chao_4:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4
	
bloco_chao_5_init:
	lui $8 0x1001
	addi $8 $8 24896
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5:
	li $9 4
bloco_chao_5:
	beq $9 $0 final_bloco_chao_5
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5
final_bloco_chao_5:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5
	
bloco_chao_6_init:
	lui $8 0x1001
	addi $8 $8 28672
	li $10 13
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6:
	li $9 4
bloco_chao_6:
	beq $9 $0 final_bloco_chao_6
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6
final_bloco_chao_6:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6
	
bloco_chao_6_init_parte_2:
	addi $8 $8 -3952
	li $10 10
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_parte_2:
	li $9 4
bloco_chao_6_parte_2:
	beq $9 $0 final_bloco_chao_6_parte_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_parte_2
final_bloco_chao_6_parte_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_parte_2
	
bloco_chao_7_init:
	lui $8 0x1001
	addi $8 $8 28880
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7:
	beq $9 $0 final_bloco_chao_7
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7
final_bloco_chao_7:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_8_init:
	lui $8 0x1001
	addi $8 $8 24912
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8:
	beq $9 $0 final_bloco_chao_8
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8
final_bloco_chao_8:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_9_init:
	lui $8 0x1001
	addi $8 $8 30928
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9:
	beq $9 $0 final_bloco_chao_9
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9
final_bloco_chao_9:
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
	
bloco_chao_10_init:
	lui $8 0x1001
	addi $8 $8 26960
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10:
	beq $9 $0 final_bloco_chao_10
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10
final_bloco_chao_10:
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
	
bloco_chao_11_init:
	lui $8 0x1001
	addi $8 $8 29008
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11:
	li $9 4
bloco_chao_11:
	beq $9 $0 final_bloco_chao_11
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11
final_bloco_chao_11:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11
	
bloco_chao_12_init:
	lui $8 0x1001
	addi $8 $8 30720
	li $10 13
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12:
	li $9 4
bloco_chao_12:
	beq $9 $0 final_bloco_chao_12
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12
final_bloco_chao_12:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12
	
bloco_chao_12_init_parte_2:
	addi $8 $8 -3952
	li $10 10
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_parte_2:
	li $9 4
bloco_chao_12_parte_2:
	beq $9 $0 final_bloco_chao_12_parte_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_parte_2
final_bloco_chao_12_parte_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_parte_2
	
bloco_chao_13_init:
	lui $8 0x1001
	addi $8 $8 29016
	li $11 0x6b5727
laco_bloco_chao_13:
	li $9 42
bloco_chao_13:
	beq $9 $0 bloco_obstaculo_1_init
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 2048($8)
	sw $11 2560($8)
	sw $11 3072($8)
	sw $11 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13
	
bloco_obstaculo_1_init:
	lui $8 0x1001
	addi $8 $8 10368
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_1:
	beq $9 $0 final_bloco_obstaculo_1
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1
final_bloco_obstaculo_1:
	addi $8 $8 -16
	
	sw $20 512($8)
	sw $12 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
bloco_obstaculo_2_init:
	lui $8 0x1001
	addi $8 $8 12416
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_2:
	beq $9 $0 final_bloco_obstaculo_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2
final_bloco_obstaculo_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1028($8)
	
bloco_obstaculo_3_init:
	lui $8 0x1001
	addi $8 $8 10384
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_3:
	li $9 4
bloco_obstaculo_3:
	beq $9 $0 final_bloco_obstaculo_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3
final_bloco_obstaculo_3:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 1548($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_3
	
bloco_obstaculo_4_init:
	lui $8 0x1001
	addi $8 $8 12432
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_4:
	li $9 4
bloco_obstaculo_4:
	beq $9 $0 final_bloco_obstaculo_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_4
final_bloco_obstaculo_4:
	addi $8 $8 -16
	
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1032($8)
	sw $12 1036($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_4
	
bloco_obstaculo_5_init:
	lui $8 0x1001
	addi $8 $8 10400
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_5:
	li $9 4
bloco_obstaculo_5:
	beq $9 $0 final_bloco_obstaculo_5
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5
final_bloco_obstaculo_5:
	addi $8 $8 -16
	
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_5
	
bloco_obstaculo_6_init:
	lui $8 0x1001
	addi $8 $8 12448
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_6:
	li $9 4
bloco_obstaculo_6:
	beq $9 $0 final_bloco_obstaculo_6
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_6
final_bloco_obstaculo_6:
	addi $8 $8 -16
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1028($8)
	sw $12 1024($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_6
	
bloco_obstaculo_7_init:
	lui $8 0x1001
	addi $8 $8 12496
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_7:
	li $9 4
bloco_obstaculo_7:
	beq $9 $0 final_bloco_obstaculo_7
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_7
final_bloco_obstaculo_7:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 524($8)
	sw $12 1032($8)
	sw $20 1036($8)
	
bloco_obstaculo_8_init:
	lui $8 0x1001
	addi $8 $8 10448
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_8:
	li $9 4
bloco_obstaculo_8:
	beq $9 $0 final_bloco_obstaculo_8
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_8
final_bloco_obstaculo_8:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $20 524($8)
	sw $20 1036($8)
	sw $20 1548($8)
	
	addi $2 $0 10
	syscall
