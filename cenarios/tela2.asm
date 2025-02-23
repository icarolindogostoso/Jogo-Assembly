.text
tela_2:
	lui $8 0x1001
	li $9 8192
	li $20 0x20d8ff
ceu_tela_2:
	beq $9 $0 bloco_chao_1_init_tela_2
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j ceu_tela_2
	
bloco_chao_1_init_tela_2:
	lui $8 0x1001
	addi $8 $8 22528
	li $10 5
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_2:
	li $9 4
bloco_chao_1_tela_2:
	beq $9 $0 final_bloco_chao_1_tela_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_2
final_bloco_chao_1_tela_2:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_2
	
bloco_chao_1_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 26832
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_2_2:
	li $9 4
bloco_chao_1_tela_2_2:
	beq $9 $0 final_bloco_chao_1_tela_2_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_2_2
final_bloco_chao_1_tela_2_2:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_2_2
	
bloco_chao_1_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 27008
	li $10 8
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_2_3:
	li $9 4
bloco_chao_1_tela_2_3:
	beq $9 $0 final_bloco_chao_1_tela_2_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_2_3
final_bloco_chao_1_tela_2_3:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_2_3
	
bloco_chao_2_init_tela_2:
	lui $8 0x1001
	addi $8 $8 22608
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_2:
	beq $9 $0 final_bloco_chao_2_tela_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_2
final_bloco_chao_2_tela_2:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_2_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 26896
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_2_2:
	beq $9 $0 final_bloco_chao_2_tela_2_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_2_2
final_bloco_chao_2_tela_2_2:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_3_init_tela_2:
	lui $8 0x1001
	addi $8 $8 26816
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_2:
	beq $9 $0 final_bloco_chao_3_tela_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_2
final_bloco_chao_3_tela_2:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_3_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 26992
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_2_2:
	beq $9 $0 final_bloco_chao_3_tela_2_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_2_2
final_bloco_chao_3_tela_2_2:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_4_init_tela_2:
	lui $8 0x1001
	addi $8 $8 24656
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_2:
	li $9 4
bloco_chao_4_tela_2:
	beq $9 $0 final_bloco_chao_4_tela_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_2
final_bloco_chao_4_tela_2:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_2
	
bloco_chao_4_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 28944
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_2_2:
	li $9 4
bloco_chao_4_tela_2_2:
	beq $9 $0 final_bloco_chao_4_tela_2_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_2_2
final_bloco_chao_4_tela_2_2:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_2_2
	
bloco_chao_5_init_tela_2:
	lui $8 0x1001
	addi $8 $8 28864
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_2:
	li $9 4
bloco_chao_5_tela_2:
	beq $9 $0 final_bloco_chao_5_tela_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_2
final_bloco_chao_5_tela_2:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_2
	
bloco_chao_5_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 29040
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_2_2:
	li $9 4
bloco_chao_5_tela_2_2:
	beq $9 $0 final_bloco_chao_5_tela_2_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_2_2
final_bloco_chao_5_tela_2_2:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_2_2
	
bloco_chao_6_init_tela_2:
	lui $8 0x1001
	addi $8 $8 24576
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_2:
	li $9 4
bloco_chao_6_tela_2:
	beq $9 $0 final_bloco_chao_6_tela_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_2
final_bloco_chao_6_tela_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_2
	
bloco_chao_6_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 28896 #29.072
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_2_2:
	li $9 4
bloco_chao_6_tela_2_2:
	beq $9 $0 final_bloco_chao_6_tela_2_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_2_2
final_bloco_chao_6_tela_2_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_2_2
	
bloco_chao_6_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 29072
	li $10 7
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_2_3:
	li $9 4
bloco_chao_6_tela_2_3:
	beq $9 $0 final_bloco_chao_6_tela_2_3
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_2_3
final_bloco_chao_6_tela_2_3:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_2_3
	
bloco_chao_7_init_tela_2:
	lui $8 0x1001
	addi $8 $8 24640
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_2:
	beq $9 $0 final_bloco_chao_7_tela_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_2
final_bloco_chao_7_tela_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_7_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 28928
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_2_2:
	beq $9 $0 final_bloco_chao_7_tela_2_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_2_2
final_bloco_chao_7_tela_2_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_8_init_tela_2:
	lui $8 0x1001
	addi $8 $8 28880
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_2:
	beq $9 $0 final_bloco_chao_8_tela_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_2
final_bloco_chao_8_tela_2:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_8_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 29056
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_2_2:
	beq $9 $0 final_bloco_chao_8_tela_2_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_2_2
final_bloco_chao_8_tela_2_2:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_9_init_tela_2:
	lui $8 0x1001
	addi $8 $8 26688
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_2:
	beq $9 $0 final_bloco_chao_9_tela_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_2
final_bloco_chao_9_tela_2:
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
	
bloco_chao_9_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 30976
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_2_2:
	beq $9 $0 final_bloco_chao_9_tela_2_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_2_2
final_bloco_chao_9_tela_2_2:
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
	
bloco_chao_10_init_tela_2:
	lui $8 0x1001
	addi $8 $8 30928
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_2:
	beq $9 $0 final_bloco_chao_10_tela_2
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_2
final_bloco_chao_10_tela_2:
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
	
bloco_chao_10_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 31104
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_2_2:
	beq $9 $0 final_bloco_chao_10_tela_2_2
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_2_2
final_bloco_chao_10_tela_2_2:
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
	
bloco_chao_11_init_tela_2:
	lui $8 0x1001
	addi $8 $8 28736
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11_tela_2:
	li $9 4
bloco_chao_11_tela_2:
	beq $9 $0 final_bloco_chao_11_tela_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_2
final_bloco_chao_11_tela_2:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_2
	
bloco_chao_12_init_tela_2:
	lui $8 0x1001
	addi $8 $8 26624
	li $10 4
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_2:
	li $9 4
bloco_chao_12_tela_2:
	beq $9 $0 final_bloco_chao_12_tela_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_2
final_bloco_chao_12_tela_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_2
	
bloco_chao_12_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 30944
	li $10 2
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_2_2:
	li $9 4
bloco_chao_12_tela_2_2:
	beq $9 $0 final_bloco_chao_12_tela_2_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_2_2
final_bloco_chao_12_tela_2_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_2_2
	
bloco_chao_12_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 31120
	li $10 7
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_2_3:
	li $9 4
bloco_chao_12_tela_2_3:
	beq $9 $0 final_bloco_chao_12_tela_2_3
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_2_3
final_bloco_chao_12_tela_2_3:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_2_3
	
bloco_chao_13_init_tela_2:
	lui $8 0x1001
	addi $8 $8 28672
	li $11 0x6b5727
laco_bloco_chao_13_tela_2:
	li $9 16
bloco_chao_13_tela_2:
	beq $9 $0 bloco_obstaculo_1_init_tela_2
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
	j bloco_chao_13_tela_2
	
bloco_obstaculo_1_init_tela_2:
	lui $8 0x1001
	addi $8 $8 12288
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $14 0x00b215
	li $9 4
bloco_obstaculo_1_tela_2:
	beq $9 $0 fim_bloco_obstaculo_1_tela_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_2
fim_bloco_obstaculo_1_tela_2:
	addi $8 $8 -16
	
	sw $11 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $14 1540($8)
	
bloco_obstaculo_2_init_tela_2:
	lui $8 0x1001
	addi $8 $8 12304
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_2_tela_2:
	beq $9 $0 bloco_obstaculo_3_init_tela_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_2

bloco_obstaculo_3_init_tela_2:
	lui $8 0x1001
	addi $8 $8 12320
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_3_tela_2:
	beq $9 $0 fim_bloco_obstaculo_3_tela_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_2
fim_bloco_obstaculo_3_tela_2:
	addi $8 $8 -16
	
	sw $11 520($8)
	sw $13 1024($8)
	sw $13 1028($8)
	sw $20 1036($8)
	sw $13 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $20 1548($8)
	
bloco_obstaculo_4_init_tela_2:
	lui $8 0x1001
	addi $8 $8 14336
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_4_tela_2:
	beq $9 $0 fim_bloco_obstaculo_4_tela_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_2
fim_bloco_obstaculo_4_tela_2:
	addi $8 $8 -2048
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 516($8)
	sw $12 1028($8)
	sw $12 1540($8)
	
bloco_obstaculo_5_init_tela_2:
	lui $8 0x1001
	addi $8 $8 14352
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_5_tela_2:
	beq $9 $0 fim_bloco_obstaculo_5_tela_2
	
	sw $12 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_2
fim_bloco_obstaculo_5_tela_2:
	addi $8 $8 -16
	
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	
bloco_obstaculo_6_init_tela_2:
	lui $8 0x1001
	addi $8 $8 14368
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_6_tela_2:
	beq $9 $0 fim_bloco_obstaculo_6_tela_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_2
fim_bloco_obstaculo_6_tela_2:
	addi $8 $8 -2048
	
	sw $12 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	
bloco_obstaculo_7_init_tela_2:
	lui $8 0x1001
	addi $8 $8 16384
	li $10 3
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_7_tela_2:
	li $9 4
bloco_obstaculo_7_tela_2:
	beq $9 $0 fim_bloco_obstaculo_7_tela_2
	
	sw $20 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_2
fim_bloco_obstaculo_7_tela_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_7_tela_2
	
bloco_obstaculo_8_init_tela_2:
	lui $8 0x1001
	addi $8 $8 16400
	li $10 3
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_8_tela_2:
	li $9 4
bloco_obstaculo_8_tela_2:
	beq $9 $0 fim_bloco_obstaculo_8_tela_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $13 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_2
fim_bloco_obstaculo_8_tela_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_8_tela_2
	
bloco_obstaculo_9_init_tela_2:
	lui $8 0x1001
	addi $8 $8 16416
	li $10 3
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_9_tela_2:
	li $9 4
bloco_obstaculo_9_tela_2:
	beq $9 $0 fim_bloco_obstaculo_9_tela_2
	
	sw $13 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_9_tela_2
fim_bloco_obstaculo_9_tela_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_9_tela_2
	
bloco_obstaculo_1_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 18864
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $14 0x00b215
	li $9 4
	
bloco_obstaculo_1_tela_2_2:
	beq $9 $0 fim_bloco_obstaculo_1_tela_2_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_2_2
fim_bloco_obstaculo_1_tela_2_2:
	addi $8 $8 -16
	
	sw $11 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $14 1540($8)
	
bloco_obstaculo_2_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 18880
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_2_tela_2_2:
	beq $9 $0 bloco_obstaculo_3_init_tela_2_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_2_2

bloco_obstaculo_3_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 18896
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_3_tela_2_2:
	beq $9 $0 fim_bloco_obstaculo_3_tela_2_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_2_2
fim_bloco_obstaculo_3_tela_2_2:
	addi $8 $8 -16
	
	sw $11 520($8)
	sw $13 1024($8)
	sw $13 1028($8)
	sw $20 1036($8)
	sw $13 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $20 1548($8)
	
bloco_obstaculo_4_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 20912
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_4_tela_2_2:
	beq $9 $0 fim_bloco_obstaculo_4_tela_2_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_2_2
fim_bloco_obstaculo_4_tela_2_2:
	addi $8 $8 -2048
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 516($8)
	sw $12 1028($8)
	sw $12 1540($8)
	
bloco_obstaculo_5_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 20928
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_5_tela_2_2:
	beq $9 $0 fim_bloco_obstaculo_5_tela_2_2
	
	sw $12 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_2_2
fim_bloco_obstaculo_5_tela_2_2:
	addi $8 $8 -16
	
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	
bloco_obstaculo_6_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 20944
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_6_tela_2_2:
	beq $9 $0 fim_bloco_obstaculo_6_tela_2_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_2_2
fim_bloco_obstaculo_6_tela_2_2:
	addi $8 $8 -2048
	
	sw $12 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	
bloco_obstaculo_7_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 22960
	li $10 2
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_7_tela_2_2:
	li $9 4
bloco_obstaculo_7_tela_2_2:
	beq $9 $0 fim_bloco_obstaculo_7_tela_2_2
	
	sw $20 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_2_2
fim_bloco_obstaculo_7_tela_2_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_7_tela_2_2
	
bloco_obstaculo_8_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 22976
	li $10 2
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_8_tela_2_2:
	li $9 4
bloco_obstaculo_8_tela_2_2:
	beq $9 $0 fim_bloco_obstaculo_8_tela_2_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $13 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_2_2
fim_bloco_obstaculo_8_tela_2_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_8_tela_2_2
	
bloco_obstaculo_9_init_tela_2_2:
	lui $8 0x1001
	addi $8 $8 22992
	li $10 2
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_9_tela_2_2:
	li $9 4
bloco_obstaculo_9_tela_2_2:
	beq $9 $0 fim_bloco_obstaculo_9_tela_2_2
	
	sw $13 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_9_tela_2_2
fim_bloco_obstaculo_9_tela_2_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_9_tela_2_2

fundo_1_parte_1_tela_2_init:
	lui $8 0x1001
	addi $8 $8 28768
	li $20 0x116767
	li $11 0x288e78
	li $9 12
fundo_1_parte_1_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $20 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_1_tela_2
	
	addi $8 $8 -16
	
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $11 1036($8)
	
fundo_1_parte_2_tela_2_init:
	lui $8 0x1001
	addi $8 $8 26720
	li $20 0x116767
	li $11 0x288e78
	li $9 4
fundo_1_parte_2_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_2_tela_2
	
	sw $11 -4($8)
	
fundo_1_parte_3_tela_2_init:
	lui $8 0x1001
	addi $8 $8 26736
	li $20 0x116767
	li $11 0x288e78
	li $9 4
fundo_1_parte_3_tela_2:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_3_tela_2
	
	addi $8 $8 -16
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1548($8)
	
fundo_1_parte_4_tela_2_init:
	lui $8 0x1001
	addi $8 $8 30864
	li $20 0x116767
	li $11 0x288e78
	li $9 4
fundo_1_parte_4_tela_2:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_4_tela_2
	
	addi $8 $8 -2048
	sw $20 1032($8)
	sw $20 1544($8)
	sw $20 1548($8)
	
fundo_2_parte_1_tela_2_init:
	lui $8 0x1001
	addi $8 $8 18480
	li $20 0x288e78
	li $11 0x20d8ff
	li $9 12
fundo_2_parte_1_tela_2:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $20 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_1_tela_2
	
	sw $11 -4($8)
	sw $11 -8($8)
	sw $11 -12($8)
	
fundo_2_parte_2_tela_2_init:
	lui $8 0x1001
	addi $8 $8 20576
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $9 12
fundo_2_parte_2_tela_2:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 16($8)
	sw $20 20($8)
	sw $20 24($8)
	sw $20 28($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_2_tela_2
	
	addi $8 $8 -6144
	sw $11 24($8)
	sw $11 28($8)
	sw $12 5632($8)
	sw $12 5636($8)
	
fundo_2_parte_3_tela_2_init:
	lui $8 0x1001
	addi $8 $8 22656
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $9 12
fundo_2_parte_3_tela_2:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_3_tela_2
	
	addi $8 $8 -6144
	sw $11 8($8)
	sw $11 12($8)
	sw $11 520($8)
	sw $11 524($8)
	
fundo_2_parte_4_tela_2_init:
	lui $8 0x1001
	addi $8 $8 24720
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 12
fundo_2_parte_4_tela_2:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_4_tela_2
	
	addi $8 $8 -6144
	sw $20 -512($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $13 1036($8)
	
fundo_2_parte_5_tela_2_init:
	lui $8 0x1001
	addi $8 $8 26784
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 12
fundo_2_parte_5_tela_2:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_5_tela_2
	
	addi $8 $8 -6144
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 520($8)
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	sw $12 5632($8)
	
fundo_2_parte_6_tela_2_init:
	lui $8 0x1001
	addi $8 $8 28848
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 4
fundo_2_parte_6_tela_2:
	sw $13 0($8)
	sw $13 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $20 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_6_tela_2
	
	addi $8 $8 -16
	sw $20 512($8)
	sw $13 1032($8)
	sw $13 1036($8)
	
fundo_2_parte_7_tela_2_init:
	lui $8 0x1001
	addi $8 $8 18528
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 4
fundo_2_parte_7_tela_2:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_7_tela_2
	
	addi $8 $8 -16
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1548($8)
	
fundo_2_parte_8_tela_2_init:
	lui $8 0x1001
	addi $8 $8 16432
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 4
fundo_2_parte_8_tela_2:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_8_tela_2
	
	addi $8 $8 -16
	sw $11 1036($8)
	
fundo_3_parte_1_tela_2_init:
	lui $8 0x1001
	addi $8 $8 24736
	li $20 0x9494fc
	li $11 0x20d8ff
	li $9 68
fundo_3_parte_1_tela_2:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_1_tela_2
	
fundo_3_parte_2_tela_2_init:
	lui $8 0x1001
	addi $8 $8 25056
	li $20 0x9494fc
	li $11 0x20d8ff
	li $9 8
fundo_3_parte_2_tela_2:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_2_tela_2
	
fundo_3_parte_3_tela_2_init:
	lui $8 0x1001
	addi $8 $8 26800
	li $20 0x9494fc
	li $11 0x20d8ff
	li $9 4
fundo_3_parte_3_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_3_tela_2
	
fundo_3_parte_4_tela_2_init:
	lui $8 0x1001
	addi $8 $8 26912
	li $20 0x9494fc
	li $11 0x20d8ff
	li $9 12
fundo_3_parte_4_tela_2_1:
	li $10 20
fundo_3_parte_4_tela_2_2:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bne $10 $0 fundo_3_parte_4_tela_2_2
	addi $8 $8 -80
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_4_tela_2_1
	
fundo_4_parte_1_tela_2_init:
	lui $8 0x1001
	addi $8 $8 24848
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 20
fundo_4_parte_1_tela_2:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_1_tela_2
	
	sw $20 1024($8)
	addi $8 $8 -80
	sw $11 1536($8)
	
fundo_4_parte_2_tela_2_init:
	lui $8 0x1001
	addi $8 $8 26912
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 8
fundo_4_parte_2_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 2048($8)
	sw $11 2560($8)
	sw $11 3072($8)
	sw $11 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_2_tela_2

	addi $8 $8 -32
	addi $8 $8 2048
	sw $20 -504($8)
	sw $20 -500($8)
	sw $20 -496($8)
	sw $20 -492($8)
	sw $20 540($8)
	sw $20 1036($8)
	sw $20 1040($8)
	sw $20 1052($8)
	
fundo_4_parte_3_tela_2_init:
	lui $8 0x1001
	addi $8 $8 26944
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 12
fundo_4_parte_3_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $20 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_3_tela_2
	
	addi $8 $8 -48
	sw $11 28($8)
	sw $11 32($8)
	sw $11 36($8)
	sw $11 40($8)
	sw $11 44($8)
	sw $11 548($8)
	sw $11 552($8)
	sw $11 556($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
fundo_4_parte_4_tela_2_init:
	lui $8 0x1001
	addi $8 $8 31056
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 8
fundo_4_parte_4_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_4_tela_2
	
	addi $8 $8 -32
	sw $20 -8($8)
	sw $20 -4($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 1544($8)
	
fundo_4_parte_5_tela_2_init:
	lui $8 0x1001
	addi $8 $8 24940
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 8
fundo_4_parte_5_tela_2:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_5_tela_2
	
fundo_5_parte_1_tela_2_init:
	lui $8 0x1001
	addi $8 $8 2144
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 8
fundo_5_parte_1_tela_2:
	
	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $11 3072($8)
	sw $11 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_1_tela_2
	
	addi $8 $8 -32
	sw $11 512($8)
	sw $11 516($8)
	sw $20 1532($8)
	sw $11 2560($8)
	
fundo_5_parte_2_tela_2_init:
	lui $8 0x1001
	addi $8 $8 2176
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_2_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $20 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_2_tela_2
	
	addi $8 $8 -16
	sw $11 3072($8)
	sw $11 3076($8)
	sw $11 3080($8)
	sw $11 3584($8)
	sw $11 3588($8)
	sw $11 3592($8)
	sw $11 3596($8)
	
fundo_5_parte_3_tela_2_init:
	lui $8 0x1001
	addi $8 $8 2192
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 12
fundo_5_parte_3_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $20 3584($8)
	sw $20 4096($8)
	sw $20 4608($8)
	sw $20 5120($8)
	sw $20 5632($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_3_tela_2
	
	sw $11 -12($8)
	sw $11 -8($8)
	sw $11 -4($8)
	sw $11 508($8)
	sw $20 1536($8)
	addi $8 $8 -48
	sw $11 4096($8)
	sw $11 4608($8)
	sw $11 4612($8)
	sw $11 5120($8)
	sw $11 5124($8)
	sw $11 5128($8)
	sw $11 5632($8)
	sw $11 5636($8)
	sw $11 5640($8)
	sw $11 5644($8)
	
fundo_5_parte_4_tela_2_init:
	lui $8 0x1001
	addi $8 $8 4288
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_4_tela_2:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $20 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_4_tela_2
	
	sw $11 1020($8)
	sw $11 3064($8)
	sw $11 3068($8)
	sw $11 3568($8)
	sw $11 3572($8)
	sw $11 3576($8)
	sw $11 3580($8)
	sw $11 3584($8)
	addi $8 $8 -96
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 524($8)
	sw $20 528($8)
	sw $20 532($8)
	sw $20 536($8)
	
fundo_5_parte_5_tela_2_init:
	lui $8 0x1001
	addi $8 $8 8368
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 20
fundo_5_parte_5_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_5_tela_2
	
	sw $20 0($8)
	sw $11 508($8)
	addi $8 $8 -80
	sw $20 -8($8)
	sw $20 -4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $20 1044($8)
	sw $20 1048($8)
	sw $20 1052($8)
	sw $20 1056($8)
	sw $20 1060($8)
	sw $20 1064($8)
	
fundo_5_parte_6_tela_2_init:
	lui $8 0x1001
	addi $8 $8 3340
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_6_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_6_tela_2
	
	addi $8 $8 -16
	sw $20 -4($8)
	
fundo_5_parte_7_tela_2_init:
	lui $8 0x1001
	addi $8 $8 304
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_7_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_7_tela_2
	
	addi $8 $8 -96
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $11 1548($8)
	
fundo_5_parte_8_tela_2_init:
	lui $8 0x1001
	addi $8 $8 2400
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_8_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_8_tela_2
	
	sw $11 -4($8)
	sw $11 -8($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1536($8)
	sw $20 1540($8)
	addi $8 $8 -96
	sw $20 -24($8)
	sw $20 -20($8)
	sw $20 -16($8)
	sw $20 -12($8)
	sw $20 -8($8)
	sw $20 -4($8)
	sw $20 508($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
fundo_5_parte_9_tela_2_init:
	lui $8 0x1001
	addi $8 $8 4448
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_9_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_9_tela_2
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	sw $20 1028($8)
	addi $8 $8 -96
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $11 1548($8)
	
fundo_5_parte_10_tela_2_init:
	lui $8 0x1001
	addi $8 $8 6560
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 8
fundo_5_parte_10_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $11 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_10_tela_2
	
	sw $11 508($8)
	addi $8 $8 -32
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 3072($8)
	
fundo_5_parte_11_tela_2_init:
	lui $8 0x1001
	addi $8 $8 6544
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_11_tela_2:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $11 2560($8)
	sw $11 3072($8)
	sw $11 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_11_tela_2
	
	addi $8 $8 -16
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 2048($8)
	sw $20 2572($8)
	
fundo_5_parte_12_tela_2_init:
	lui $8 0x1001
	addi $8 $8 6592
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 8
fundo_5_parte_12_tela_2:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $20 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_12_tela_2
	
	addi $8 $8 -32
	sw $11 1548($8)
	sw $11 1552($8)
	sw $11 1556($8)
	sw $11 1560($8)
	sw $11 1564($8)
	sw $11 2072($8)
	sw $11 2076($8)
	sw $11 2588($8)
	sw $11 3100($8)
	sw $11 3584($8)
	sw $11 3588($8)
	
fundo_5_parte_13_tela_2_init:
	lui $8 0x1001
	addi $8 $8 10688
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_13_tela_2:
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $20 16($8)
	sw $20 20($8)
	sw $11 24($8)
	sw $11 28($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_13_tela_2
	
	addi $8 $8 -2048
	sw $20 24($8)
	sw $20 28($8)
	sw $20 536($8)
	sw $20 1544($8)
	
fundo_5_parte_14_tela_2_init:
	lui $8 0x1001
	addi $8 $8 12736
	li $20 0xa9f0ff
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 512($8)
	sw $20 516($8)
	
fundo_5_parte_15_tela_2_init:
	lui $8 0x1001
	addi $8 $8 12720
	li $20 0xa9f0ff
	sw $20 520($8)
	sw $20 524($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1036($8)
	
fundo_5_parte_16_tela_2_init:
	lui $8 0x1001
	addi $8 $8 10512
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 32
fundo_5_parte_16_tela_2:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $20 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_16_tela_2
	
	addi $8 $8 -128
	
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1040($8)
	sw $11 1044($8)
	sw $11 1048($8)
	sw $11 1052($8)
	
fundo_5_parte_17_tela_2_init:
	lui $8 0x1001
	addi $8 $8 10496
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_17_tela_2:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $20 3072($8)
	sw $11 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_17_tela_2
	
	addi $8 $8 -16
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 2560($8)
	sw $11 3072($8)
	sw $11 3076($8)
	
fundo_5_parte_18_tela_2_init:
	lui $8 0x1001
	addi $8 $8 10640
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_18_tela_2:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 2048($8)
	sw $20 2560($8)
	sw $11 3072($8)
	sw $11 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_18_tela_2
	
	addi $8 $8 -16
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 3072($8)
	sw $20 3076($8)
	sw $20 3584($8)
	
fundo_5_parte_19_tela_2_init:
	lui $8 0x1001
	addi $8 $8 14704
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_19_tela_2:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 16($8)
	sw $20 20($8)
	sw $20 24($8)
	sw $11 28($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_19_tela_2
	
	addi $8 $8 -2048
	sw $20 -4($8)
	sw $11 512($8)
	sw $11 536($8)
	sw $20 1564($8)
	
undo_5_parte_20_tela_2_init:
	lui $8 0x1001
	addi $8 $8 16752
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_20_tela_2:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)

	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_20_tela_2
	
	sw $11 -16($8)
	sw $11 -12($8)
	sw $11 -8($8)
	sw $11 -4($8)
	sw $11 504($8)
	sw $11 508($8)
	sw $11 1020($8)
	sw $11 1532($8)
	addi $8 $8 -96
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $11 1548($8)
	sw $20 2096($8)
	sw $20 2100($8)
	sw $20 2104($8)
	sw $20 2108($8)
	
fundo_6_parte_1_tela_2_init:
	lui $8 0x1001
	addi $8 $8 10884
	li $20 0x0cc4ec
	
	sw $20 0($8)
	sw $20 8($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 1028($8)
	
fundo_6_parte_2_tela_2_init:
	lui $8 0x1001
	addi $8 $8 13452
	li $20 0x0cc4ec
	
	sw $20 0($8)
	sw $20 16($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 524($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1036($8)
	sw $20 1544($8)
	sw $20 2056($8)
	
fundo_6_parte_3_tela_2_init:
	lui $8 0x1001
	addi $8 $8 13484
	li $20 0x0cc4ec
	
	sw $20 0($8)
	sw $20 8($8)
	sw $20 516($8)
	
fundo_6_parte_4_tela_2_init:
	lui $8 0x1001
	addi $8 $8 15548
	li $20 0x0cc4ec
	
	sw $20 0($8)
	sw $20 8($8)
	sw $20 516($8)
	
fundo_6_parte_5_tela_2_init:
	lui $8 0x1001
	addi $8 $8 16548
	li $20 0x0cc4ec
	
	sw $20 0($8)
	sw $20 8($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 1028($8)
