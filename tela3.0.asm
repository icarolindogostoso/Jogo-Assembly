.text
tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	li $9 8192
	li $20 0x20d8ff
ceu_tela_3:
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 ceu_tela_3

bloco_chao_1_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 26624
	li $10 10
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_3:
	li $9 4
bloco_chao_1_tela_3:
	beq $9 $0 final_bloco_chao_1_tela_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_3
final_bloco_chao_1_tela_3:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_3
	
bloco_chao_1_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 14736
	li $10 7
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_3_2:
	li $9 4
bloco_chao_1_tela_3_2:
	beq $9 $0 final_bloco_chao_1_tela_3_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_3_2
final_bloco_chao_1_tela_3_2:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_3_2
	
bloco_chao_2_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 26784
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_3:
	beq $9 $0 final_bloco_chao_2_tela_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_3
final_bloco_chao_2_tela_3:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_3_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 14720
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_3:
	beq $9 $0 final_bloco_chao_3_tela_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_3
final_bloco_chao_3_tela_3:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_4_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 28832
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_3:
	li $9 4
bloco_chao_4_tela_3:
	beq $9 $0 final_bloco_chao_4_tela_3
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_3
final_bloco_chao_4_tela_3:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_3
	
bloco_chao_5_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16768
	li $10 8
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_3:
	li $9 4
bloco_chao_5_tela_3:
	beq $9 $0 final_bloco_chao_5_tela_3
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_3
final_bloco_chao_5_tela_3:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_3
	
bloco_chao_6_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 28672
	li $10 9
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_3:
	li $9 4
bloco_chao_6_tela_3:
	beq $9 $0 final_bloco_chao_6_tela_3
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_3
final_bloco_chao_6_tela_3:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_3
	
bloco_chao_6_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16800
	li $10 6
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_3_2:
	li $9 4
bloco_chao_6_tela_3_2:
	beq $9 $0 final_bloco_chao_6_tela_3_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_3_2
final_bloco_chao_6_tela_3_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_3_2
	
bloco_chao_7_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 28816
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_3:
	beq $9 $0 final_bloco_chao_7_tela_3
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_3
final_bloco_chao_7_tela_3:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_8_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16784
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_3:
	beq $9 $0 final_bloco_chao_8_tela_3
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_3
final_bloco_chao_8_tela_3:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_9_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 30864
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_3:
	beq $9 $0 final_bloco_chao_9_tela_3
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_3
final_bloco_chao_9_tela_3:
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
	
bloco_chao_10_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 18832
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_3:
	beq $9 $0 final_bloco_chao_10_tela_3
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_3
final_bloco_chao_10_tela_3:
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
	
bloco_chao_11_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20880
	li $10 6
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11_tela_3:
	li $9 4
bloco_chao_11_tela_3:
	beq $9 $0 final_bloco_chao_11_tela_3
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_3
final_bloco_chao_11_tela_3:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_3
	
bloco_chao_12_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 30720
	li $10 9
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_3:
	li $9 4
bloco_chao_12_tela_3:
	beq $9 $0 final_bloco_chao_12_tela_3
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_3
final_bloco_chao_12_tela_3:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_3
	
bloco_chao_12_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 18848
	li $10 6
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_3_2:
	li $9 4
bloco_chao_12_tela_3_2:
	beq $9 $0 final_bloco_chao_12_tela_3_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_3_2
final_bloco_chao_12_tela_3_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_3_2
	
bloco_chao_13_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20896
	li $20 0x6b5727
	li $9 24
bloco_chao_13_tela_3_1:
	li $10 24
bloco_chao_13_tela_3_2:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bnez $10 bloco_chao_13_tela_3_2
	addi $8 $8 -96
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 bloco_chao_13_tela_3_1
	
bloco_obstaculo_1_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20544
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $14 0x00b215
	li $9 4
	
bloco_obstaculo_1_tela_3:
	beq $9 $0 fim_bloco_obstaculo_1_tela_3
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_3
fim_bloco_obstaculo_1_tela_3:
	addi $8 $8 -16
	
	sw $11 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $14 1540($8)
	
bloco_obstaculo_2_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20560
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_2_tela_3:
	beq $9 $0 bloco_obstaculo_3_init_tela_3
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_3

bloco_obstaculo_3_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20576
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_3_tela_3:
	beq $9 $0 fim_bloco_obstaculo_3_tela_3
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_3
fim_bloco_obstaculo_3_tela_3:
	addi $8 $8 -16
	
	sw $11 520($8)
	sw $13 1024($8)
	sw $13 1028($8)
	sw $20 1036($8)
	sw $13 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $20 1548($8)
	
bloco_obstaculo_4_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 22592
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_4_tela_3:
	beq $9 $0 fim_bloco_obstaculo_4_tela_3
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_3
fim_bloco_obstaculo_4_tela_3:
	addi $8 $8 -2048
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 516($8)
	sw $12 1028($8)
	sw $12 1540($8)
	
bloco_obstaculo_5_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 22608
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_5_tela_3:
	beq $9 $0 fim_bloco_obstaculo_5_tela_3
	
	sw $12 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_3
fim_bloco_obstaculo_5_tela_3:
	addi $8 $8 -16
	
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	
bloco_obstaculo_6_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 22624
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_6_tela_3:
	beq $9 $0 fim_bloco_obstaculo_6_tela_3
	
	sw $11 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_3
fim_bloco_obstaculo_6_tela_3:
	addi $8 $8 -2048
	
	sw $12 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	
bloco_obstaculo_7_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 24640
	li $10 1
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_7_tela_3:
	li $9 4
bloco_obstaculo_7_tela_3:
	beq $9 $0 fim_bloco_obstaculo_7_tela_3
	
	sw $20 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_3
fim_bloco_obstaculo_7_tela_3:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_7_tela_3
	
bloco_obstaculo_8_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 24656
	li $10 1
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_8_tela_3:
	li $9 4
bloco_obstaculo_8_tela_3:
	beq $9 $0 fim_bloco_obstaculo_8_tela_3
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $13 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_3
fim_bloco_obstaculo_8_tela_3:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_8_tela_3
	
bloco_obstaculo_9_init_tela_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 24672
	li $10 1
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_9_tela_3:
	li $9 4
bloco_obstaculo_9_tela_3:
	beq $9 $0 fim_bloco_obstaculo_9_tela_3
	
	sw $13 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_9_tela_3
fim_bloco_obstaculo_9_tela_3:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_9_tela_3
	
bloco_obstaculo_1_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16640
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $14 0x00b215
	li $9 4
	
bloco_obstaculo_1_tela_3_2:
	beq $9 $0 fim_bloco_obstaculo_1_tela_3_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_3_2
fim_bloco_obstaculo_1_tela_3_2:
	addi $8 $8 -16
	
	sw $11 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $14 1540($8)
	
bloco_obstaculo_2_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16656
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_2_tela_3_2:
	beq $9 $0 bloco_obstaculo_3_init_tela_3_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_3_2

bloco_obstaculo_3_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16672
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_3_tela_3_2:
	beq $9 $0 fim_bloco_obstaculo_3_tela_3_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_3_2
fim_bloco_obstaculo_3_tela_3_2:
	addi $8 $8 -16
	
	sw $11 520($8)
	sw $13 1024($8)
	sw $13 1028($8)
	sw $20 1036($8)
	sw $13 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $20 1548($8)
	
bloco_obstaculo_4_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 18688
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_4_tela_3_2:
	beq $9 $0 fim_bloco_obstaculo_4_tela_3_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_3_2
fim_bloco_obstaculo_4_tela_3_2:
	addi $8 $8 -2048
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 516($8)
	sw $12 1028($8)
	sw $12 1540($8)
	
bloco_obstaculo_5_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 18704
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_5_tela_3_2:
	beq $9 $0 fim_bloco_obstaculo_5_tela_3_2
	
	sw $12 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_3_2
fim_bloco_obstaculo_5_tela_3_2:
	addi $8 $8 -16
	
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	
bloco_obstaculo_6_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 18720
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_6_tela_3_2:
	beq $9 $0 fim_bloco_obstaculo_6_tela_3_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_3_2
fim_bloco_obstaculo_6_tela_3_2:
	addi $8 $8 -2048
	
	sw $12 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	
bloco_obstaculo_7_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20736
	li $10 6
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_7_tela_3_2:
	li $9 4
bloco_obstaculo_7_tela_3_2:
	beq $9 $0 fim_bloco_obstaculo_7_tela_3_2
	
	sw $20 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_3_2
fim_bloco_obstaculo_7_tela_3_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_7_tela_3_2
	
bloco_obstaculo_8_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20752
	li $10 6
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_8_tela_3_2:
	li $9 4
bloco_obstaculo_8_tela_3_2:
	beq $9 $0 fim_bloco_obstaculo_8_tela_3_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $13 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_3_2
fim_bloco_obstaculo_8_tela_3_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_8_tela_3_2
	
bloco_obstaculo_9_init_tela_3_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20768
	li $10 6
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_9_tela_3_2:
	li $9 4
bloco_obstaculo_9_tela_3_2:
	beq $9 $0 fim_bloco_obstaculo_9_tela_3_2
	
	sw $13 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_9_tela_3_2
fim_bloco_obstaculo_9_tela_3_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_9_tela_3_2