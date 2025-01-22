
.text
tela_7:
	lui $8 0x1001
	addi $22 $8 98304
#	addi $8 $8 32768
	li $9 8192
	li $20 0x20d8ff
ceu_tela_7:
	beq $9 $0 bloco_chao_1_init_tela_7
	
	sw $20 0($8)
	sw $20 0($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	j ceu_tela_7
	
bloco_chao_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 26624
	addi $22 $8 98304
#	addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_7:
	li $9 4
bloco_chao_1_tela_7:
	beq $9 $0 final_bloco_chao_1_tela_7
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_7
final_bloco_chao_1_tela_7:
	addi $8 $8 1520
	addi $22 $22 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $12 12($22)
	
	addi $22 $22 -1520
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_7
	
bloco_chao_1_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 14656
	addi $22 $8 98304
#	addi $8 $8 32768
	li $10 3
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_7_2:
	li $9 4
bloco_chao_1_tela_7_2:
	beq $9 $0 final_bloco_chao_1_tela_7_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_7_2
final_bloco_chao_1_tela_7_2:
	addi $8 $8 1520
	addi $22 $22 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $12 12($22)
	
	addi $22 $22 -1520
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_7_2
	
bloco_chao_1_init_tela_7_3:
	lui $8 0x1001
	addi $8 $8 18848
	addi $22 $8 98304
#	addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_7_3:
	li $9 4
bloco_chao_1_tela_7_3:
	beq $9 $0 final_bloco_chao_1_tela_7_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_7_3
final_bloco_chao_1_tela_7_3:
	addi $8 $8 1520
	addi $22 $22 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $12 12($22)
	
	addi $22 $22 -1520
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_7_3
	

bloco_chao_2_init_tela_7:
	lui $8 0x1001
	addi $8 $8 26656
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_7:
	beq $9 $0 final_bloco_chao_2_tela_7
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_7
final_bloco_chao_2_tela_7:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	sw $20 508($22)
	sw $20 1020($22)
	sw $20 1532($22)
	sw $12 1520($22)
	
bloco_chao_2_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 14704
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_7_2:
	beq $9 $0 final_bloco_chao_2_tela_7_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_7_2
final_bloco_chao_2_tela_7_2:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	sw $20 508($22)
	sw $20 1020($22)
	sw $20 1532($22)
	sw $12 1520($22)
	
bloco_chao_2_init_tela_7_3:
	lui $8 0x1001
	addi $8 $8 18880
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_7_3:
	beq $9 $0 final_bloco_chao_2_tela_7_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_7_3
final_bloco_chao_2_tela_7_3:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	sw $20 508($22)
	sw $20 1020($22)
	sw $20 1532($22)
	sw $12 1520($22)
	
bloco_chao_3_init_tela_7:
	lui $8 0x1001
	addi $8 $8 14640
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_7:
	beq $9 $0 final_bloco_chao_3_tela_7
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_7
final_bloco_chao_3_tela_7:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	sw $20 496($22)
	sw $20 1008($22)
	sw $20 1520($22)
	sw $12 1532($22)
	
bloco_chao_3_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 18832
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_7_2:
	beq $9 $0 final_bloco_chao_3_tela_7_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_7_2
final_bloco_chao_3_tela_7_2:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	sw $20 496($22)
	sw $20 1008($22)
	sw $20 1520($22)
	sw $12 1532($22)
	
bloco_chao_4_init_tela_7:
	lui $8 0x1001
	addi $8 $8 28704
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_7:
	li $9 4
bloco_chao_4_tela_7:
	beq $9 $0 final_bloco_chao_4_tela_7
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_7
final_bloco_chao_4_tela_7:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_7
	
bloco_chao_4_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 16752
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 8
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_7_2:
	li $9 4
bloco_chao_4_tela_7_2:
	beq $9 $0 final_bloco_chao_4_tela_7_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_7_2
final_bloco_chao_4_tela_7_2:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_7_2
	
bloco_chao_4_init_tela_7_3:
	lui $8 0x1001
	addi $8 $8 20928
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 6
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_7_3:
	li $9 4
bloco_chao_4_tela_7_3:
	beq $9 $0 final_bloco_chao_4_tela_7_3
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_7_3
final_bloco_chao_4_tela_7_3:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_7_3
	
bloco_chao_5_init_tela_7:
	lui $8 0x1001
	addi $8 $8 16688
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 8
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_7:
	li $9 4
bloco_chao_5_tela_7:
	beq $9 $0 final_bloco_chao_5_tela_7
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_7
final_bloco_chao_5_tela_7:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_7
	
bloco_chao_5_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 20880
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 6
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_7_2:
	li $9 4
bloco_chao_5_tela_7_2:
	beq $9 $0 final_bloco_chao_5_tela_7_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_7_2
final_bloco_chao_5_tela_7_2:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_7_2
	
bloco_chao_6_init_tela_7:
	lui $8 0x1001
	addi $8 $8 28672
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_6_tela_7:
	beq $9 $0 final_bloco_chao_6_tela_7
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_7
final_bloco_chao_6_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 0($22)
	sw $20 12($22)
	sw $20 516($22)
	sw $20 520($22)
	
bloco_chao_6_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 16720
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_6_tela_7_2:
	beq $9 $0 final_bloco_chao_6_tela_7_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_7_2
final_bloco_chao_6_tela_7_2:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 0($22)
	sw $20 12($22)
	sw $20 516($22)
	sw $20 520($22)
	
bloco_chao_7_init_tela_7:
	lui $8 0x1001
	addi $8 $8 28688
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_7:
	beq $9 $0 final_bloco_chao_7_tela_7
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_7
final_bloco_chao_7_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	sw $20 0($22)
	sw $20 516($22)
	sw $20 520($22)
	sw $11 524($22)
	sw $20 1032($22)
	sw $11 1036($22)
	sw $20 1548($22)
	
bloco_chao_7_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 16736
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_7_2:
	beq $9 $0 final_bloco_chao_7_tela_7_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_7_2
final_bloco_chao_7_tela_7_2:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	sw $20 0($22)
	sw $20 516($22)
	sw $20 520($22)
	sw $11 524($22)
	sw $20 1032($22)
	sw $11 1036($22)
	sw $20 1548($22)
	
bloco_chao_7_init_tela_7_3:
	lui $8 0x1001
	addi $8 $8 20912
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_7_3:
	beq $9 $0 final_bloco_chao_7_tela_7_3
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_7_3
final_bloco_chao_7_tela_7_3:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	sw $20 0($22)
	sw $20 516($22)
	sw $20 520($22)
	sw $11 524($22)
	sw $20 1032($22)
	sw $11 1036($22)
	sw $20 1548($22)
	
bloco_chao_8_init_tela_7:
	lui $8 0x1001
	addi $8 $8 16704
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_7:
	beq $9 $0 final_bloco_chao_8_tela_7
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_7
final_bloco_chao_8_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $20 12($22)
	sw $20 520($22)
	sw $20 516($22)
	sw $11 512($22)
	sw $20 1028($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
bloco_chao_8_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 20896
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_7_2:
	beq $9 $0 final_bloco_chao_8_tela_7_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_7_2
final_bloco_chao_8_tela_7_2:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $20 12($22)
	sw $20 520($22)
	sw $20 516($22)
	sw $11 512($22)
	sw $20 1028($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
bloco_chao_9_init_tela_7:
	lui $8 0x1001
	addi $8 $8 30736
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_7:
	beq $9 $0 final_bloco_chao_9_tela_7
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_7
final_bloco_chao_9_tela_7:
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $13 516($8)
	sw $20 1032($8)
	sw $13 1024($8)
	sw $20 1548($8)
	sw $13 1536($8)
	sw $13 1540($8)
	sw $13 1544($8)
	sw $20 12($22)
	sw $20 520($22)
	sw $13 516($22)
	sw $20 1032($22)
	sw $13 1024($22)
	sw $20 1548($22)
	sw $13 1536($22)
	sw $13 1540($22)
	sw $13 1544($22)
	
bloco_chao_9_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 18784
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_7_2:
	beq $9 $0 final_bloco_chao_9_tela_7_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_7_2
final_bloco_chao_9_tela_7_2:
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $13 516($8)
	sw $20 1032($8)
	sw $13 1024($8)
	sw $20 1548($8)
	sw $13 1536($8)
	sw $13 1540($8)
	sw $13 1544($8)
	sw $20 12($22)
	sw $20 520($22)
	sw $13 516($22)
	sw $20 1032($22)
	sw $13 1024($22)
	sw $20 1548($22)
	sw $13 1536($22)
	sw $13 1540($22)
	sw $13 1544($22)
	
bloco_chao_9_init_tela_7_3:
	lui $8 0x1001
	addi $8 $8 22960
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_7_3:
	beq $9 $0 final_bloco_chao_9_tela_7_3
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_7_3
final_bloco_chao_9_tela_7_3:
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $13 516($8)
	sw $20 1032($8)
	sw $13 1024($8)
	sw $20 1548($8)
	sw $13 1536($8)
	sw $13 1540($8)
	sw $13 1544($8)
	sw $20 12($22)
	sw $20 520($22)
	sw $13 516($22)
	sw $20 1032($22)
	sw $13 1024($22)
	sw $20 1548($22)
	sw $13 1536($22)
	sw $13 1540($22)
	sw $13 1544($22)
	
bloco_chao_10_init_tela_7:
	lui $8 0x1001
	addi $8 $8 18752
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_7:
	beq $9 $0 final_bloco_chao_10_tela_7
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $11 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_7
final_bloco_chao_10_tela_7:
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $13 520($8)
	sw $20 1028($8)
	sw $13 1036($8)
	sw $20 1536($8)
	sw $13 1540($8)
	sw $13 1544($8)
	sw $13 1548($8)
	sw $20 0($22)
	sw $20 516($22)
	sw $13 520($22)
	sw $20 1028($22)
	sw $13 1036($22)
	sw $20 1536($22)
	sw $13 1540($22)
	sw $13 1544($22)
	sw $13 1548($22)
	
bloco_chao_10_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 22944
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_7_2:
	beq $9 $0 final_bloco_chao_10_tela_7_2
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $11 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_7_2
final_bloco_chao_10_tela_7_2:
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $13 520($8)
	sw $20 1028($8)
	sw $13 1036($8)
	sw $20 1536($8)
	sw $13 1540($8)
	sw $13 1544($8)
	sw $13 1548($8)
	sw $20 0($22)
	sw $20 516($22)
	sw $13 520($22)
	sw $20 1028($22)
	sw $13 1036($22)
	sw $20 1536($22)
	sw $13 1540($22)
	sw $13 1544($22)
	sw $13 1548($22)
	
bloco_chao_11_init_tela_7:
	lui $8 0x1001
	addi $8 $8 20832
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 6
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11_tela_7:
	li $9 4
bloco_chao_11_tela_7:
	beq $9 $0 final_bloco_chao_11_tela_7
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_7
final_bloco_chao_11_tela_7:
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)
	sw $20 12($22)
	sw $20 520($22)
	sw $20 1032($22)
	sw $20 1548($22)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_7
	
bloco_chao_11_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 25008
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11_tela_7_2:
	li $9 4
bloco_chao_11_tela_7_2:
	beq $9 $0 final_bloco_chao_11_tela_7_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_7_2
final_bloco_chao_11_tela_7_2:
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)
	sw $20 12($22)
	sw $20 520($22)
	sw $20 1032($22)
	sw $20 1548($22)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_7_2
	
bloco_chao_12_init_tela_7:
	lui $8 0x1001
	addi $8 $8 20800
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 6
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_12_tela_7:
	li $9 4
bloco_chao_12_tela_7:
	beq $9 $0 final_bloco_chao_12_tela_7
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $11 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_12_tela_7
final_bloco_chao_12_tela_7:
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 516($22)
	sw $20 1028($22)
	sw $20 1536($22)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_7
	
bloco_chao_12_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 24992
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_12_tela_7_2:
	li $9 4
bloco_chao_12_tela_7_2:
	beq $9 $0 final_bloco_chao_12_tela_7_2
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $11 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_12_tela_7_2
final_bloco_chao_12_tela_7_2:
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 516($22)
	sw $20 1028($22)
	sw $20 1536($22)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_7_2
	
bloco_chao_13_init_tela_7:
	lui $8 0x1001
	addi $8 $8 30720
    addi $22 $8 98304
#    addi $8 $8 32768
	li $11 0x817235
	li $12 0x6b5727
	li $9 4
bloco_chao_13_tela_7:
	beq $9 $0 final_bloco_chao_13_tela_7
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13_tela_7
final_bloco_chao_13_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	sw $12 1024($22)
	sw $12 1036($22)
	sw $12 516($22)
	sw $12 520($22)
	
bloco_chao_13_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 18768
    addi $22 $8 98304
#    addi $8 $8 32768
	li $11 0x817235
	li $12 0x6b5727
	li $9 4
bloco_chao_13_tela_7_2:
	beq $9 $0 final_bloco_chao_13_tela_7_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13_tela_7_2
final_bloco_chao_13_tela_7_2:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	sw $12 1024($22)
	sw $12 1036($22)
	sw $12 516($22)
	sw $12 520($22)
	
bloco_chao_14_init_tela_7:
	lui $8 0x1001
	addi $8 $8 20816
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x6b5727
	li $9 24
laco_bloco_chao_14_init_tela_7_1:
	beq $9 $0 bloco_obstaculo_1_init_tela_7
	li $10 4
laco_bloco_chao_14_init_tela_7_2:
	beq $10 $0 fim_laco_bloco_chao_14_init_tela_7_2
	
	sw $20 0($8)
	sw $20 0($22)
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_bloco_chao_14_init_tela_7_2
fim_laco_bloco_chao_14_init_tela_7_2:
	addi $8 $8 -16
	addi $22 $22 -16
	addi $8 $8 512
	addi $9 $9 -1
	j laco_bloco_chao_14_init_tela_7_1

bloco_obstaculo_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 10304
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_1_tela_7:
	beq $9 $0 final_bloco_obstaculo_1_tela_7
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_7
final_bloco_obstaculo_1_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 512($8)
	sw $12 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 512($22)
	sw $12 516($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
bloco_obstaculo_2_init_tela_7:
	lui $8 0x1001
	addi $8 $8 12352
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_2_tela_7:
	beq $9 $0 final_bloco_obstaculo_2_tela_7
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_7
final_bloco_obstaculo_2_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1028($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $12 1028($22)
	
bloco_obstaculo_3_init_tela_7:
	lui $8 0x1001
	addi $8 $8 10320
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 6
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_3_tela_7:
	li $9 4
bloco_obstaculo_3_tela_7:
	beq $9 $0 final_bloco_obstaculo_3_tela_7
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_7
final_bloco_obstaculo_3_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 1548($8)
	sw $12 520($22)
	sw $12 524($22)
	sw $12 1036($22)
	sw $12 1548($22)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_3_tela_7
	
bloco_obstaculo_4_init_tela_7:
	lui $8 0x1001
	addi $8 $8 12368
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 6
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_4_tela_7:
	li $9 4
bloco_obstaculo_4_tela_7:
	beq $9 $0 final_bloco_obstaculo_4_tela_7
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_7
final_bloco_obstaculo_4_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $12 12($22)
	sw $12 524($22)
	sw $12 1032($22)
	sw $12 1036($22)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_4_tela_7
	
bloco_obstaculo_5_init_tela_7:
	lui $8 0x1001
	addi $8 $8 10336
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 6
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_5_tela_7:
	li $9 4
bloco_obstaculo_5_tela_7:
	beq $9 $0 final_bloco_obstaculo_5_tela_7
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_7
final_bloco_obstaculo_5_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $12 512($22)
	sw $12 516($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_5_tela_7
	
bloco_obstaculo_6_init_tela_7:
	lui $8 0x1001
	addi $8 $8 12384
    addi $22 $8 98304
#    addi $8 $8 32768
	li $10 6
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_6_tela_7:
	li $9 4
bloco_obstaculo_6_tela_7:
	beq $9 $0 final_bloco_obstaculo_6_tela_7
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_7
final_bloco_obstaculo_6_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1028($8)
	sw $12 1024($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $12 1028($22)
	sw $12 1024($22)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_6_tela_7
	
bloco_obstaculo_7_init_tela_7:
	lui $8 0x1001
	addi $8 $8 12560
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_7_tela_7:
	beq $9 $0 final_bloco_obstaculo_7_tela_7
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_7
final_bloco_obstaculo_7_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 12($8)
	sw $20 524($8)
	sw $12 1032($8)
	sw $20 1036($8)
	sw $20 12($22)
	sw $20 524($22)
	sw $12 1032($22)
	sw $20 1036($22)
	
bloco_obstaculo_8_init_tela_7:
	lui $8 0x1001
	addi $8 $8 10512
    addi $22 $8 98304
#    addi $8 $8 32768
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_8_tela_7:
	beq $9 $0 final_bloco_obstaculo_8_tela_7
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_7
final_bloco_obstaculo_8_tela_7:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 520($8)
	sw $20 524($8)
	sw $20 1036($8)
	sw $20 1548($8)
	sw $12 520($22)
	sw $20 524($22)
	sw $20 1036($22)
	sw $20 1548($22)

fundo_1_parte_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 30784
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 30
fundo_1_parte_1_tela_7:
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1536($8)
	sw $20 1540($8)
	
	addi $8 $8 8
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_1_tela_7
	
	addi $8 $8 -240
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 512($8)
	
fundo_1_parte_2_init_tela_7:
	lui $8 0x1001
	addi $8 $8 31104
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 2
fundo_1_parte_2_tela_7:
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1536($8)
	sw $20 1540($8)
	
	addi $8 $8 8
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_2_tela_7
	
fundo_1_parte_3_init_tela_7:
	lui $8 0x1001
	addi $8 $8 31184
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 6
fundo_1_parte_3_tela_7:
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1536($8)
	sw $20 1540($8)
	
	addi $8 $8 8
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_3_tela_7
	
fundo_1_parte_4_init_tela_7:
	lui $8 0x1001
	addi $8 $8 30768
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 4
fundo_1_parte_4_tela_7:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_4_tela_7
	
	sw $20 1020($8)
	
fundo_1_parte_5_init_tela_7:
	lui $8 0x1001
	addi $8 $8 28800
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 22
fundo_1_parte_5_tela_7:
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $20 1536($8)
	sw $11 1540($8)
	
	addi $8 $8 8
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_5_tela_7
	
	addi $8 $8 -176
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 512($8)
	
fundo_1_parte_6_init_tela_7:
	lui $8 0x1001
	addi $8 $8 29056
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 2
fundo_1_parte_6_tela_7:
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $20 1536($8)
	sw $11 1540($8)
	
	addi $8 $8 8
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_6_tela_7
	
fundo_1_parte_7_init_tela_7:
	lui $8 0x1001
	addi $8 $8 29136
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 6
fundo_1_parte_7_tela_7:
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $20 1536($8)
	sw $11 1540($8)
	
	addi $8 $8 8
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_7_tela_7
	
fundo_1_parte_8_init_tela_7:
	lui $8 0x1001
	addi $8 $8 28768
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 8
fundo_1_parte_8_tela_7:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_8_tela_7
	
	addi $8 $8 -32
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1540($8)
	sw $11 1548($8)
	sw $11 1556($8)
	sw $11 1564($8)
	
fundo_1_parte_9_init_tela_7:
	lui $8 0x1001
	addi $8 $8 28752
	li $20 0x045454
	li $11 0x0c646c
	li $12 0x9494fc
	li $9 4
fundo_1_parte_9_tela_7:
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_9_tela_7
	
	addi $8 $8 -2048
	
	sw $11 1032($8)
	sw $11 1540($8)
	sw $20 1544($8)
	
fundo_2_parte_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 26768
	li $20 0x0c646c
	li $11 0x9494fc
	li $9 8
fundo_2_parte_1_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_1_tela_7
	
	sw $11 -8($8)
	sw $11 -4($8)
	sw $11 508($8)
	sw $11 1020($8)
	
	addi $8 $8 -32
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	
fundo_2_parte_2_init_tela_7:
	lui $8 0x1001
	addi $8 $8 26848
	li $20 0x0c646c
	li $11 0x9494fc
	li $9 20
fundo_2_parte_2_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_2_tela_7
	
	addi $8 $8 -80
	
	sw $11 0($8)
	
fundo_2_parte_3_init_tela_7:
	lui $8 0x1001
	addi $8 $8 24808
	li $20 0x0c646c
	li $11 0x9494fc
	li $12 0x248c7c
	li $9 18
fundo_2_parte_3_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_3_tela_7
	
	addi $8 $8 -72
	
	sw $12 -8($8)
	sw $12 -4($8)
	sw $12 0($8)
	sw $12 504($8)
	sw $12 508($8)
	sw $11 1016($8)
	sw $11 1020($8)
	sw $11 1528($8)
	sw $20 1532($8)
	
fundo_2_parte_4_init_tela_7:
	lui $8 0x1001
	addi $8 $8 22768
	li $20 0x0c646c
	li $11 0x248c7c
	li $9 16
fundo_2_parte_4_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_4_tela_7
	
	addi $8 $8 -64
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 16($8)
	sw $11 20($8)
	sw $11 24($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $11 528($8)
	sw $11 532($8)
	
fundo_2_parte_5_init_tela_7:
	lui $8 0x1001
	addi $8 $8 20752
	li $20 0x0c646c
	li $11 0x248c7c
	li $9 8
fundo_2_parte_5_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_5_tela_7
	
	addi $8 $8 -32
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 1024($8)
	
fundo_2_parte_6_init_tela_7:
	lui $8 0x1001
	addi $8 $8 18704
	li $20 0x0c646c
	li $11 0x248c7c
	li $9 8
fundo_2_parte_6_tela_7:

	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_6_tela_7
	
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1020($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1528($8)
	sw $20 1532($8)
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	
fundo_2_parte_7_init_tela_7:
	lui $8 0x1001
	addi $8 $8 22912
	li $20 0x0c646c
	li $11 0x248c7c
	li $9 12
fundo_2_parte_7_tela_7:

	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_7_tela_7
	
	addi $8 $8 -6144
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 512($8)
	sw $11 516($8)
	
fundo_2_parte_8_init_tela_7:
	lui $8 0x1001
	addi $8 $8 20944
	li $20 0x0c646c
	li $11 0x248c7c
	li $9 16
fundo_2_parte_8_tela_7_1:
	li $10 12
fundo_2_parte_8_tela_7_2:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bne $10 $0 fundo_2_parte_8_tela_7_2
	addi $8 $8 -48
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_8_tela_7_1
	
	addi $8 $8 -8192
	
	sw $11 0($8)

fundo_2_parte_9_init_tela_7:
	lui $8 0x1001
	addi $8 $8 18904
	li $20 0x0c646c
	li $11 0x248c7c
	li $9 10
fundo_2_parte_9_tela_7_1:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_9_tela_7_1
	
	addi $8 $8 -40
	
	sw $11 -8($8)
	sw $11 -4($8)
	sw $11 0($8)
	sw $11 20($8)
	sw $11 504($8)
	sw $11 508($8)
	sw $11 512($8)
	sw $11 1016($8)
	sw $11 1020($8)
	sw $11 1528($8)
	sw $11 1532($8)
	
fundo_2_parte_10_init_tela_7:
	lui $8 0x1001
	addi $8 $8 16864
	li $20 0x0c646c
	li $11 0x248c7c
	li $9 8
fundo_2_parte_10_tela_7_1:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_10_tela_7_1
	
	addi $8 $8 -32
	
	sw $20 4($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $11 1036($8)
	sw $11 1040($8)
	sw $11 1044($8)
	sw $11 1548($8)
	sw $11 1552($8)
	
fundo_3_parte_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 24576
	li $20 0x9494fc
	li $11 0x20d8ff
	li $12 0x248c7c
	li $9 16
fundo_3_parte_1_tela_7:

	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_1_tela_7
	
	sw $12 504($8)
	sw $12 508($8)
	
fundo_3_parte_2_init_tela_7:
	lui $8 0x1001
	addi $8 $8 24640
	li $20 0x9494fc
	li $11 0x20d8ff
	li $12 0x248c7c
	li $13 0x0c646c
	li $9 40
fundo_3_parte_2_tela_7:

	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_2_tela_7
	
	addi $8 $8 -64
	
	sw $13 -8($8)
	sw $13 -4($8)
	sw $13 0($8)
	sw $13 504($8)
	sw $13 508($8)
	sw $13 512($8)
	sw $13 1016($8)
	sw $13 1020($8)
	sw $13 1024($8)
	sw $13 1528($8)
	sw $13 1532($8)
	sw $13 1536($8)
	sw $13 1540($8)
	
	addi $8 $8 -96
	
	sw $11 0($8)
	sw $11 4($8)
	
fundo_3_parte_3_init_tela_7:
	lui $8 0x1001
	addi $8 $8 26672
	li $20 0x9494fc
	li $11 0x20d8ff
	li $12 0x248c7c
	li $13 0x0c646c
	li $9 24
fundo_3_parte_3_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_3_tela_7
	
fundo_3_parte_4_init_tela_7:
	lui $8 0x1001
	addi $8 $8 28720
	li $20 0x9494fc
	li $11 0x20d8ff
	li $12 0x248c7c
	li $13 0x0c646c
	li $9 8
fundo_3_parte_4_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_4_tela_7
	
fundo_3_parte_5_init_tela_7:
	lui $8 0x1001
	addi $8 $8 26800
	li $20 0x9494fc
	li $11 0x20d8ff
	li $12 0x248c7c
	li $13 0x0c646c
	li $9 12
fundo_3_parte_5_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_5_tela_7
	
	sw $13 1020($8)
	sw $13 1524($8)
	sw $13 1528($8)
	sw $13 1532($8)
	
fundo_4_parte_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 22608
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 40
fundo_4_parte_1_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_1_tela_7
	
	sw $12 -4($8)
	sw $12 508($8)
	sw $12 1020($8)
	sw $12 1532($8)
	
	addi $8 $8 -88
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1028($8)
	sw $12 1536($8)
	sw $12 1540($8)
	
	addi $8 $8 -72
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	
fundo_4_parte_2_init_tela_7:
	lui $8 0x1001
	addi $8 $8 20560
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 48
fundo_4_parte_2_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_2_tela_7
	
	addi $8 $8 -192
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1032($8)
	sw $11 1536($8)
	sw $11 1540($8)
	
fundo_4_parte_3_init_tela_7:
	lui $8 0x1001
	addi $8 $8 18576
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 32
fundo_4_parte_3_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_3_tela_7
	
fundo_4_parte_4_init_tela_7:
	lui $8 0x1001
	addi $8 $8 18528
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 12
fundo_4_parte_4_tela_7:

	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_4_tela_7
	
	sw $20 1020($8)
	sw $20 1524($8)
	sw $20 1528($8)
	sw $20 1532($8)
	
	addi $8 $8 -48
	
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $20 1548($8)
	
fundo_4_parte_5_init_tela_7:
	lui $8 0x1001
	addi $8 $8 14560
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 20
fundo_4_parte_5_tela_7:

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
	bne $9 $0 fundo_4_parte_5_tela_7
	
	sw $12 3056($8)
	sw $12 3568($8)
	
	addi $8 $8 -80
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	
fundo_4_parte_6_init_tela_7:
	lui $8 0x1001
	addi $8 $8 14512
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 12
fundo_4_parte_6_tela_7:

	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 2048($8)
	sw $11 2560($8)
	sw $11 3072($8)
	sw $20 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_6_tela_7
	
	sw $20 2044($8)
	sw $20 2552($8)
	sw $20 2556($8)
	sw $20 3060($8)
	sw $20 3064($8)
	sw $20 3068($8)
	
	addi $8 $8 -48
	
	sw $20 3072($8)
	sw $20 3076($8)
	sw $20 3080($8)
	
fundo_4_parte_7_init_tela_7:
	lui $8 0x1001
	addi $8 $8 14480
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 8
fundo_4_parte_7_tela_7:

	sw $11 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 16($8)
	sw $20 20($8)
	sw $20 24($8)
	sw $11 28($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_7_tela_7
	
	addi $8 $8 -4096
	
	sw $11 4($8)
	sw $11 20($8)
	sw $11 24($8)
	sw $11 516($8)
	sw $11 532($8)
	sw $11 536($8)
	sw $11 1028($8)
	sw $11 1048($8)
	sw $11 1560($8)
	sw $20 2588($8)
	sw $20 3100($8)
	sw $20 3612($8)
