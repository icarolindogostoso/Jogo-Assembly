.text
tela_4:
	lui $8 0x1001
	li $9 8192
	li $20 0x20d8ff
ceu_tela_4:
	beq $9 $0 bloco_chao_1_init_tela_4
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j ceu_tela_4
	
bloco_chao_1_init_tela_4:
	lui $8 0x1001
	addi $8 $8 12304
	li $10 2
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
	addi $8 $8 24704
	li $10 3
	li $20 0x000000 #detalhe
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
	
bloco_chao_1_init_tela_4_3:
	lui $8 0x1001
	addi $8 $8 26896
	li $10 15
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_4_3:
	li $9 4
bloco_chao_1_tela_4_3:
	beq $9 $0 final_bloco_chao_1_tela_4_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_4_3
final_bloco_chao_1_tela_4_3:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_4_3
	
bloco_chao_2_init_tela_4:
	lui $8 0x1001
	addi $8 $8 12336
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
	
bloco_chao_2_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 24752
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_4_2:
	beq $9 $0 final_bloco_chao_2_tela_4_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_4_2
final_bloco_chao_2_tela_4_2:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_3_init_tela_4:
	lui $8 0x1001
	addi $8 $8 12288
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
	
bloco_chao_3_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 24688
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_4_2:
	beq $9 $0 final_bloco_chao_3_tela_4_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_4_2
final_bloco_chao_3_tela_4_2:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_3_init_tela_4_3:
	lui $8 0x1001
	addi $8 $8 26880
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_4_3:
	beq $9 $0 final_bloco_chao_3_tela_4_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_4_3
final_bloco_chao_3_tela_4_3:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_4_init_tela_4:
	lui $8 0x1001
	addi $8 $8 14384
	li $10 9
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
	
bloco_chao_4_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 26800
	li $10 3
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_4_2:
	li $9 4
bloco_chao_4_tela_4_2:
	beq $9 $0 final_bloco_chao_4_tela_4_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_4_2
final_bloco_chao_4_tela_4_2:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_4_2
	
bloco_chao_5_init_tela_4:
	lui $8 0x1001
	addi $8 $8 14336
	li $10 9
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
	
bloco_chao_5_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 26736
	li $10 3
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_4_2:
	li $9 4
bloco_chao_5_tela_4_2:
	beq $9 $0 final_bloco_chao_5_tela_4_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_4_2
final_bloco_chao_5_tela_4_2:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_4_2
		
bloco_chao_5_init_tela_4_3:
	lui $8 0x1001
	addi $8 $8 28928
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_4_3:
	li $9 4
bloco_chao_5_tela_4_3:
	beq $9 $0 final_bloco_chao_5_tela_4_3
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_4_3
final_bloco_chao_5_tela_4_3:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_4_3
	
bloco_chao_6_init_tela_4:
	lui $8 0x1001
	addi $8 $8 26768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
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
	
bloco_chao_6_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 28960
	li $10 14
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_init_tela_4_2:
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
	bne $10 $0 laco_bloco_chao_6_init_tela_4_2
	
bloco_chao_7_init_tela_4:
	lui $8 0x1001
	addi $8 $8 26784
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
	
bloco_chao_7_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 14368
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_4_2:
	beq $9 $0 final_bloco_chao_7_tela_4_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_4_2
final_bloco_chao_7_tela_4_2:
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
	addi $8 $8 14352
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
	
bloco_chao_8_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 26752
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_4_2:
	beq $9 $0 final_bloco_chao_8_tela_4_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_4_2
final_bloco_chao_8_tela_4_2:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_8_init_tela_4_3:
	lui $8 0x1001
	addi $8 $8 28944
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_4_3:
	beq $9 $0 final_bloco_chao_8_tela_4_3
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_4_3
final_bloco_chao_8_tela_4_3:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_9_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 28832
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_4_2:
	beq $9 $0 final_bloco_chao_9_tela_4_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_4_2
final_bloco_chao_9_tela_4_2:
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
	
bloco_chao_9_init_tela_4_3:
	lui $8 0x1001
	addi $8 $8 16416
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_4_3:
	beq $9 $0 final_bloco_chao_9_tela_4_3
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_4_3
final_bloco_chao_9_tela_4_3:
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
	addi $8 $8 28800
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
	
bloco_chao_10_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 30992
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_4_2:
	beq $9 $0 final_bloco_chao_10_tela_4_2
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_4_2
final_bloco_chao_10_tela_4_2:
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
	
bloco_chao_10_init_tela_4_3:
	lui $8 0x1001
	addi $8 $8 16400
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_4_3:
	beq $9 $0 final_bloco_chao_10_tela_4_3
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_4_3
final_bloco_chao_10_tela_4_3:
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
	addi $8 $8 18464
	li $10 7
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
	
bloco_chao_11_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 30880
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
	li $9 4
bloco_chao_11_tela_4_2:
	beq $9 $0 final_bloco_chao_11_tela_4_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_4_2
final_bloco_chao_11_tela_4_2:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)

bloco_chao_12_init_tela_4:
	lui $8 0x1001
	addi $8 $8 18448
	li $10 7
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_12_tela_4:
	li $9 4
bloco_chao_12_tela_4:
	beq $9 $0 final_bloco_chao_12_tela_4
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_12_tela_4
final_bloco_chao_12_tela_4:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_4
	
bloco_chao_12_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 30848
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
	li $9 4
bloco_chao_12_tela_4_2:
	beq $9 $0 final_bloco_chao_12_tela_4_2
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_12_tela_4_2
final_bloco_chao_12_tela_4_2:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	
bloco_chao_13_init_tela_4:
	lui $8 0x1001
	addi $8 $8 28816
	li $11 0x817235
	li $12 0x6b5727
	li $9 4
bloco_chao_13_tela_4:
	beq $9 $0 final_bloco_chao_13_tela_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13_tela_4
final_bloco_chao_13_tela_4:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
bloco_chao_13_init_tela_4_2:
	lui $8 0x1001
	addi $8 $8 31008
	li $10 14
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_13_init_tela_4_2:
	li $9 4
bloco_chao_13_tela_4_2:
	beq $9 $0 final_bloco_chao_13_tela_4_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13_tela_4_2
final_bloco_chao_13_tela_4_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_13_init_tela_4_2
	
bloco_chao_14_init_tela_4:
	lui $8 0x1001
	addi $8 $8 30864
	li $20 0x6b5727
	li $9 4
laco_bloco_chao_14_init_tela_4:
	beq $9 $0 bloco_obstaculo_1_init_tela_4
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j laco_bloco_chao_14_init_tela_4

bloco_obstaculo_1_init_tela_4:
	lui $8 0x1001
	addi $8 $8 8384
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_1_tela_4:
	beq $9 $0 final_bloco_obstaculo_1_tela_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_4
final_bloco_obstaculo_1_tela_4:
	addi $8 $8 -16
	
	sw $20 512($8)
	sw $12 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
bloco_obstaculo_2_init_tela_3:
	lui $8 0x1001
	addi $8 $8 10432
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_2_tela_4:
	beq $9 $0 final_bloco_obstaculo_2_tela_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_4
final_bloco_obstaculo_2_tela_4:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1028($8)
	
bloco_obstaculo_3_init_tela_4:
	lui $8 0x1001
	addi $8 $8 8400
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_3_tela_4:
	beq $9 $0 final_bloco_obstaculo_3_tela_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_4
final_bloco_obstaculo_3_tela_4:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 1548($8)
	
bloco_obstaculo_4_init_tela_4:
	lui $8 0x1001
	addi $8 $8 10448
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_4_tela_4:
	beq $9 $0 final_bloco_obstaculo_4_tela_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_4
final_bloco_obstaculo_4_tela_4:
	addi $8 $8 -16
	
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1032($8)
	sw $12 1036($8)
	
bloco_obstaculo_5_init_tela_4:
	lui $8 0x1001
	addi $8 $8 8416
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_5_tela_4:
	beq $9 $0 final_bloco_obstaculo_5_tela_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_4
final_bloco_obstaculo_5_tela_4:
	addi $8 $8 -16
	
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
bloco_obstaculo_6_init_tela_4:
	lui $8 0x1001
	addi $8 $8 10464
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_6_tela_4:
	beq $9 $0 final_bloco_obstaculo_6_tela_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_4
final_bloco_obstaculo_6_tela_4:
	addi $8 $8 -16
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1028($8)
	sw $12 1024($8)
	
bloco_obstaculo_7_init_tela_4:
	lui $8 0x1001
	addi $8 $8 10480
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_7_tela_4:
	beq $9 $0 final_bloco_obstaculo_7_tela_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_4
final_bloco_obstaculo_7_tela_4:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 524($8)
	sw $12 1032($8)
	sw $20 1036($8)
	
bloco_obstaculo_8_init_tela_4:
	lui $8 0x1001
	addi $8 $8 8432
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_8_tela_4:
	beq $9 $0 final_bloco_obstaculo_8_tela_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_4
final_bloco_obstaculo_8_tela_4:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $20 524($8)
	sw $20 1036($8)
	sw $20 1548($8)

fundo_1_parte_1_init_tela_8:
	lui $8 0x1001
	addi $8 $8 26688
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 12
fundo_1_parte_1_tela_8_1:
	
	li $10 12
fundo_1_parte_1_tela_8_2:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bne $10 $0 fundo_1_parte_1_tela_8_2
	addi $8 $8 -48
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_1_tela_8_1
	
	addi $8 $8 -6144
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	
fundo_1_parte_2_init_tela_8:
	lui $8 0x1001
	addi $8 $8 24656
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 8
fundo_1_parte_2_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_2_tela_8
	
	addi $8 $8 -32
	
	sw $11 0($8)
	
fundo_1_parte_3_init_tela_8:
	lui $8 0x1001
	addi $8 $8 24768
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 16
fundo_1_parte_3_tela_8_1:
	
	li $10 16
fundo_1_parte_3_tela_8_2:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bne $10 $0 fundo_1_parte_3_tela_8_2
	addi $8 $8 -64
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_3_tela_8_1
	
fundo_1_parte_4_init_tela_8:
	lui $8 0x1001
	addi $8 $8 24832
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 64
fundo_1_parte_4_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_4_tela_8
	
fundo_1_parte_5_init_tela_8:
	lui $8 0x1001
	addi $8 $8 22616
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 106
fundo_1_parte_5_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_5_tela_8
	
	addi $8 $8 -424
	
	sw $11 -8($8)
	sw $11 -4($8)
	sw $11 0($8)
	sw $11 504($8)
	sw $11 508($8)
	sw $11 512($8)
	sw $11 1016($8)
	sw $11 1020($8)
	sw $11 1528($8)
	sw $11 1532($8)
	
fundo_1_parte_6_init_tela_8:
	lui $8 0x1001
	addi $8 $8 20576
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 104
fundo_1_parte_6_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_6_tela_8
	
	addi $8 $8 -400
	
	sw $11 -4($8)
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 16($8)
	sw $11 20($8)
	sw $11 24($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $11 528($8)
	
fundo_1_parte_7_init_tela_8:
	lui $8 0x1001
	addi $8 $8 14768
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 12
fundo_1_parte_7_tela_8_1:
	li $10 20
fundo_1_parte_7_tela_8_2:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bne $10 $0 fundo_1_parte_7_tela_8_2
	addi $8 $8 -80
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_7_tela_8_1
	
	addi $8 $8 -6144
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	
	addi $8 $8 32
	
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 16($8)
	sw $11 520($8)
	sw $11 524($8)
	
fundo_1_parte_8_init_tela_8:
	lui $8 0x1001
	addi $8 $8 16688
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 12
fundo_1_parte_8_tela_8_1:
	li $10 32
fundo_1_parte_8_tela_8_2:
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bne $10 $0 fundo_1_parte_8_tela_8_2
	addi $8 $8 -128
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_8_tela_8_1
	
fundo_1_parte_9_init_tela_8:
	lui $8 0x1001
	addi $8 $8 18688
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 12
fundo_1_parte_9_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_9_tela_8
	
	addi $8 $8 -32
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 16($8)
	sw $11 20($8)
	sw $11 520($8)
	sw $11 524($8)
	
fundo_1_parte_10_init_tela_8:
	lui $8 0x1001
	addi $8 $8 18656
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 8
fundo_1_parte_10_tela_8:

	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_10_tela_8
	
	addi $8 $8 -32
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 540($8)
	sw $11 1040($8)
	sw $11 1044($8)
	
fundo_1_parte_11_init_tela_8:
	lui $8 0x1001
	addi $8 $8 18624
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 8
fundo_1_parte_11_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_11_tela_8
	
	addi $8 $8 -32
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	
fundo_1_parte_12_init_tela_8:
	lui $8 0x1001
	addi $8 $8 14640
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 28
fundo_1_parte_12_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_12_tela_8	
	
	sw $11 -20($8)
	sw $11 -16($8)
	sw $11 -12($8)
	sw $11 -8($8)
	sw $11 -4($8)
	sw $11 500($8)
	sw $11 504($8)
	sw $11 508($8)
	sw $11 1016($8)
	sw $11 1020($8)
	
	addi $8 $8 -112
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 12($8)
	sw $11 16($8)
	sw $11 20($8)
	sw $11 24($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 528($8)
	sw $11 532($8)
	sw $11 1024($8)

fundo_1_parte_13_init_tela_8:
	lui $8 0x1001
	addi $8 $8 12624
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $13 0xa4f4fc
	li $9 4
fundo_1_parte_13_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_13_tela_8
	
	addi $8 $8 -16
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	
fundo_1_parte_14_init_tela_8:
	lui $8 0x1001
	addi $8 $8 12640
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $13 0xa4f4fc
	li $9 12
fundo_1_parte_14_tela_8:

	sw $13 0($8)
	sw $13 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_14_tela_8
	
	sw $11 1012($8)
	sw $11 1016($8)
	sw $11 1020($8)
	sw $11 1528($8)
	sw $11 1532($8)
	
	addi $8 $8 -48
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	
fundo_1_parte_15_init_tela_8:
	lui $8 0x1001
	addi $8 $8 10592
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $13 0xa4f4fc
	li $9 8
fundo_1_parte_15_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_15_tela_8
	
	sw $11 -4($8)
	sw $11 508($8)
	sw $20 1016($8)
	sw $20 1020($8)
	
	addi $8 $8 -32
	
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $13 512($8)
	sw $13 516($8)
	sw $13 520($8)
	
fundo_1_parte_16_init_tela_8:
	lui $8 0x1001
	addi $8 $8 8544
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x20d8ff
	li $13 0xa4f4fc
	li $9 8
fundo_1_parte_16_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_16_tela_8
	
	sw $12 -8($8)
	sw $12 -4($8)
	sw $12 508($8)
	sw $11 1020($8)
	sw $11 1532($8)
	
	addi $8 $8 -32
	
	sw $11 0($8)
	sw $11 512($8)
	
fundo_1_parte_17_init_tela_8:
	lui $8 0x1001
	addi $8 $8 6496
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x20d8ff
	li $13 0xa4f4fc
	li $9 6
fundo_1_parte_17_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_17_tela_8
	
	addi $8 $8 -24
	
	sw $11 0($8)
	sw $12 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $11 1540($8)
	
fundo_1_parte_18_init_tela_8:
	lui $8 0x1001
	addi $8 $8 4460
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x20d8ff
	li $13 0xa4f4fc
	li $9 2
fundo_1_parte_18_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_18_tela_8
	
	sw $20 -516($8)
	
fundo_1_parte_19_init_tela_8:
	lui $8 0x1001
	addi $8 $8 12784
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x20d8ff
	li $13 0xa4f4fc
	li $9 4
fundo_1_parte_19_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_19_tela_8
	
	sw $11 -4($8)
	
fundo_2_parte_1_init_tela_8:
	lui $8 0x1001
	addi $8 $8 14400
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0xa4f4fc
	li $9 24
fundo_2_parte_1_tela_8:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_1_tela_8
	
	sw $11 -500($8)
	
	addi $8 $8 -12288
	
	sw $12 0($8)
	sw $12 4($8)
	
fundo_2_parte_2_init_tela_8:
	lui $8 0x1001
	addi $8 $8 14416
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0xa4f4fc
	li $9 16
fundo_2_parte_2_tela_8:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_2_tela_8
	
	sw $11 -500($8)
	sw $11 -1012($8)
	
	addi $8 $8 -8192
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 524($8)
	
fundo_2_parte_3_init_tela_8:
	lui $8 0x1001
	addi $8 $8 12384
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0xa4f4fc
	li $9 16
fundo_2_parte_3_tela_8:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_3_tela_8
	
	sw $11 -1020($8)
	sw $11 -508($8)
	sw $11 -504($8)
	
	addi $8 $8 -8192
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 4($8)
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $12 2048($8)
	
fundo_2_parte_4_init_tela_8:
	lui $8 0x1001
	addi $8 $8 12400
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0xa4f4fc
	li $9 16
fundo_2_parte_4_tela_8:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_4_tela_8
	
	addi $8 $8 -8192
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 520($8)
	sw $12 524($8)
	
fundo_2_parte_5_init_tela_8:
	lui $8 0x1001
	addi $8 $8 14464
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0xa4f4fc
	li $9 12
fundo_2_parte_5_tela_8:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_5_tela_8
	
	addi $8 $8 -6144
	
	sw $12 -1536($8)
	sw $12 -1020($8)
	sw $20 -1024($8)
	sw $20 -504($8) 
	sw $20 -508($8) 
	sw $20 -512($8) 
	
fundo_2_parte_6_init_tela_8:
	lui $8 0x1001
	addi $8 $8 14480
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0xa4f4fc
	li $9 12
fundo_2_parte_6_tela_8:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_6_tela_8
	
	sw $11 -508($8)
	sw $11 -504($8)
	
	addi $8 $8 -6144
	
	sw $20 -1012($8)
	sw $20 -500($8)
	sw $20 -504($8)
	
fundo_2_parte_7_init_tela_8:
	lui $8 0x1001
	addi $8 $8 12448
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0x20d8ff
	li $9 16
fundo_2_parte_7_tela_8:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_7_tela_8
	
	addi $8 $8 -8192
	
	sw $20 -508($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	
fundo_2_parte_8_init_tela_8:
	lui $8 0x1001
	addi $8 $8 16560
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0x20d8ff
	li $9 8
fundo_2_parte_8_tela_8:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_8_tela_8
	
	addi $8 $8 -4096
	
	sw $20 -1024($8)
	sw $20 -512($8)
	sw $20 -508($8)
	
fundo_2_parte_9_init_tela_8:
	lui $8 0x1001
	addi $8 $8 16576
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0x20d8ff
	li $9 8
fundo_2_parte_9_tela_8:
	
	sw $13 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_9_tela_8
	
	addi $8 $8 -16
	
	sw $20 8($8)
	sw $20 12($8)
	sw $11 1024($8)
	sw $11 1532($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 1544($8)
	
fundo_2_parte_10_init_tela_8:
	lui $8 0x1001
	addi $8 $8 16608
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0x20d8ff
	li $9 20
fundo_2_parte_10_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_10_tela_8
	
	sw $11 508($8)
	sw $11 1020($8)
	sw $11 1528($8)
	sw $11 1532($8)
	
	addi $8 $8 -48
	
	sw $11 1548($8)
	
fundo_2_parte_11_init_tela_8:
	lui $8 0x1001
	addi $8 $8 14560
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0x20d8ff
	li $9 20
fundo_2_parte_11_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_11_tela_8
	
	addi $8 $8 -48
	
	sw $20 -512($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 16($8)
	sw $13 520($8)
	sw $13 524($8)
	sw $13 528($8)
	
	addi $8 $8 -16
	
	sw $20 -508($8)
	sw $20 -504($8)
	sw $20 -500($8)
	sw $20 -1016($8)
	sw $20 -1528($8)
	
	addi $8 $8 -16
	
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 512($8)
	sw $13 516($8)
	sw $13 520($8)
	sw $13 1024($8)
	sw $13 1028($8)
	
fundo_2_parte_12_init_tela_8:
	lui $8 0x1001
	addi $8 $8 12576
	li $20 0x0c646c
	li $11 0x045454
	li $12 0x2c8c7a
	li $13 0x20d8ff
	li $9 12
fundo_2_parte_12_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_12_tela_8
	
	addi $8 $8 -48
	
	sw $20 508($8)
	sw $20 1016($8)
	sw $20 1020($8)
	sw $20 1528($8)
	sw $20 1532($8)
	
fundo_2_parte_13_init_tela_8:
	lui $8 0x1001
	addi $8 $8 10528
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $9 8
fundo_2_parte_13_tela_8:
	
	sw $13 0($8)
	sw $13 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_13_tela_8
	
	sw $12 -4($8)
	sw $12 -8($8)
	sw $20 500($8)
	sw $20 504($8)
	sw $20 508($8)
	
	addi $8 $8 -32
	
	sw $20 512($8)
	
fundo_2_parte_14_init_tela_8:
	lui $8 0x1001
	addi $8 $8 10560
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $9 8
fundo_2_parte_14_tela_8:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_14_tela_8
	
	sw $12 1528($8)
	sw $12 1532($8)
	
	addi $8 $8 -32
	
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1036($8)
	
fundo_2_parte_15_init_tela_8:
	lui $8 0x1001
	addi $8 $8 8512
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $9 8
fundo_2_parte_15_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_15_tela_8
	
	addi $8 $8 -32
	
	sw $12 1536($8)
	
fundo_2_parte_16_init_tela_8:
	lui $8 0x1001
	addi $8 $8 6464
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $9 8
fundo_2_parte_16_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_16_tela_8
	
	addi $8 $8 -32
	
	sw $13 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	
fundo_2_parte_17_init_tela_8:
	lui $8 0x1001
	addi $8 $8 4424
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $9 5
fundo_2_parte_17_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_17_tela_8
	
	sw $13 -4($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 -20
	
	sw $20 -512($8)
	sw $20 -508($8)
	sw $20 -504($8)
	sw $20 -1024($8)
	sw $20 -1020($8)
