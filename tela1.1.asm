.text
tela_9:
	lui $8 0x1001
	addi $22 $8 65536
	li $9 8192
	li $20 0x000001
ceu_tela_9:
	
	sw $20 0($8)
	sw $20 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 ceu_tela_9
	
bloco_chao_1_init_tela_9:
	lui $8 0x1001
	addi $8 $8 26624
	addi $22 $8 65536
	li $10 32
	li $20 0x000000 #detalhe
	li $11 0xb2c92e
	li $12 0xb0841b
laco_bloco_chao_1_tela_9:
	li $9 4
bloco_chao_1_tela_9:
	beq $9 $0 final_bloco_chao_1_tela_9
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_1_tela_9
final_bloco_chao_1_tela_9:
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
	
	addi $8 $8 -1520
	addi $22 $22 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_9
	
bloco_chao_2_init_tela_9:
	lui $8 0x1001
	addi $8 $8 28672
	addi $22 $8 65536
	li $10 32
	li $20 0x000000 #detalhe
	li $11 0xb0841b
	li $12 0x817235
laco_bloco_chao_2_tela_9:
	li $9 4
bloco_chao_2_tela_9:
	beq $9 $0 final_bloco_chao_2_tela_9
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_2_tela_9
final_bloco_chao_2_tela_9:
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
	
	addi $8 $8 16
	addi $22 $22 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_2_tela_9
	
bloco_chao_3_init_tela_9:
	lui $8 0x1001
	addi $8 $8 30720
	addi $22 $8 65536
	li $10 32
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_3_tela_9:
	li $9 4
bloco_chao_3_tela_9:
	beq $9 $0 final_bloco_chao_3_tela_9
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_3_tela_9
final_bloco_chao_3_tela_9:
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
	
	addi $8 $8 16
	addi $22 $22 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_3_tela_9
	
mario_braco_1_bloco_1_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20528
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $9 12
mario_braco_1_bloco_1_tela_9:
	sw $11 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $11 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_1_tela_9
	
	sw $11 -504($8)
	sw $11 -500($8)
	sw $11 -504($22)
	sw $11 -500($22)
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	sw $12 0($8)
	sw $12 -4($8)
	sw $11 -8($8)
	sw $11 -12($8)
	sw $11 508($8)
	sw $11 504($8)
	sw $12 0($22)
	sw $12 -4($22)
	sw $11 -8($22)
	sw $11 -12($22)
	sw $11 508($22)
	sw $11 504($22)
	
mario_braco_1_bloco_2_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20544
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x000001
	li $9 12
mario_braco_1_bloco_2_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_2_tela_9	
	
	addi $8 $8 -1536
	addi $22 $22 -1536
	
	sw $11 12($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $13 1032($8)
	sw $13 1036($8)
	sw $11 12($22)
	sw $11 520($22)
	sw $11 524($22)
	sw $11 1024($22)
	sw $11 1028($22)
	sw $13 1032($22)
	sw $13 1036($22)
	
mario_braco_1_bloco_3_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20560
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x000001
	li $9 8
mario_braco_1_bloco_3_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_3_tela_9
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $11 512($8)
	sw $11 520($8)
	sw $20 524($8)
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1548($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $12 12($22)
	sw $11 512($22)
	sw $11 520($22)
	sw $11 524($22)
	sw $11 1032($22)
	sw $11 1036($22)
	sw $11 1548($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 520($8)
	sw $11 1028($8)
	sw $11 1032($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $11 520($22)
	sw $11 1028($22)
	sw $11 1032($22)
	sw $11 1540($22)
	sw $11 1544($22)
	
mario_braco_1_bloco_4_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20576
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x000001
	li $9 12
mario_braco_1_bloco_4_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_4_tela_9
	
	sw $11 -504($8)
	sw $11 -500($8)
	sw $11 -1012($8)
	sw $11 -504($22)
	sw $11 -500($22)
	sw $11 -1012($22)
	
mario_braco_1_bloco_5_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20592
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x000001
	li $9 8
mario_braco_1_bloco_5_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_5_tela_9
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $11 512($22)
	sw $11 516($22)
	sw $11 1024($22)
	
	addi $8 $8 -1024
	addi $22 $2 -1024
	
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $13 524($8)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	sw $11 516($22)
	sw $11 520($22)
	sw $13 524($22)
	
mario_braco_1_bloco_6_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20608
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x000001
	li $9 8
mario_braco_1_bloco_6_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_6_tela_9
	
	sw $11 -512($8)
	sw $11 -508($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $11 524($8)
	sw $11 1036($8)
	sw $11 1548($8)
	sw $11 -512($22)
	sw $11 -508($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $20 12($22)
	sw $11 524($22)
	sw $11 1036($22)
	sw $11 1548($22)
	
mario_braco_1_bloco_7_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20624
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x1f436b
	li $9 8
mario_braco_1_bloco_7_tela_9:
	sw $20 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_7_tela_9
	
mario_braco_1_bloco_8_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14352
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 8
mario_braco_1_bloco_8_tela_9:
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $11 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_8_tela_9
	
	sw $11 8($8)
	sw $11 12($8)
	sw $11 524($8)
	sw $11 8($22)
	sw $11 12($22)
	sw $11 524($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $13 -508($8)
	sw $11 4($8)
	sw $14 512($8)
	sw $11 516($8)
	sw $14 1024($8)
	sw $11 1028($8)
	sw $13 1032($8)
	sw $14 1536($8)
	sw $14 1540($8)
	sw $11 1544($8)
	sw $13 1548($8)
	sw $13 -508($22)
	sw $11 4($22)
	sw $14 512($22)
	sw $11 516($22)
	sw $14 1024($22)
	sw $11 1028($22)
	sw $13 1032($22)
	sw $14 1536($22)
	sw $14 1540($22)
	sw $11 1544($22)
	sw $13 1548($22)
	
mario_braco_1_bloco_9_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14368
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_9_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_9_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $13 512($8)
	sw $12 520($8)
	sw $11 1024($8)
	sw $12 1032($8)
	sw $11 1536($8)
	sw $13 1540($8)
	sw $12 1544($8)
	sw $12 1548($8)
	sw $13 512($22)
	sw $12 520($22)
	sw $11 1024($22)
	sw $12 1032($22)
	sw $11 1536($22)
	sw $13 1540($22)
	sw $12 1544($22)
	sw $12 1548($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 -508($8)
	sw $20 4($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 -508($22)
	sw $20 4($22)
	sw $20 516($22)
	sw $20 1028($22)
	
mario_braco_1_bloco_10_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14384
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_10_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_10_tela_9
	
mario_braco_1_bloco_11_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14400
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_11_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_11_tela_9
	
mario_braco_1_bloco_12_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14416
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_12_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_12_tela_9
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	sw $11 524($8)
	sw $11 4($22)
	sw $11 8($22)
	sw $12 12($22)
	sw $11 524($22)
	
mario_braco_1_bloco_13_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14432
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_13_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_13_tela_9
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 512($8)
	sw $12 516($8)
	sw $12 520($8)
	sw $12 524($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1032($8)
	sw $11 1036($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	sw $12 512($22)
	sw $12 516($22)
	sw $12 520($22)
	sw $12 524($22)
	sw $11 1024($22)
	sw $11 1028($22)
	sw $11 1032($22)
	sw $11 1036($22)
	
mario_braco_1_bloco_14_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16496
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 8
mario_braco_1_bloco_14_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_14_tela_9
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 8($8)
	sw $11 12($8)
	sw $11 8($22)
	sw $11 12($22)
	
mario_braco_1_bloco_15_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16512
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $13 0x922020
	li $9 8
mario_braco_1_bloco_15_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_15_tela_9
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $13 12($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $12 520($8)
	sw $13 524($8)
	sw $11 1032($8)
	sw $12 1036($8)
	sw $11 1548($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $13 12($22)
	sw $11 512($22)
	sw $11 516($22)
	sw $12 520($22)
	sw $13 524($22)
	sw $11 1032($22)
	sw $12 1036($22)
	sw $11 1548($22)
	
mario_braco_1_bloco_16_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8208
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_16_tela_9:
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $11 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_16_tela_9
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	sw $14 0($8)
	sw $14 4($8)
	sw $14 8($8)
	sw $14 12($8)
	sw $14 512($8)
	sw $14 516($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $14 1024($8)
	sw $14 1028($8)
	sw $11 1032($8)
	sw $13 1036($8)
	sw $14 1536($8)
	sw $11 1540($8)
	sw $13 1544($8)
	sw $11 2048($8)
	sw $11 2052($8)
	sw $13 2564($8)
	sw $14 0($22)
	sw $14 4($22)
	sw $14 8($22)
	sw $14 12($22)
	sw $14 512($22)
	sw $14 516($22)
	sw $11 520($22)
	sw $11 524($22)
	sw $14 1024($22)
	sw $14 1028($22)
	sw $11 1032($22)
	sw $13 1036($22)
	sw $14 1536($22)
	sw $11 1540($22)
	sw $13 1544($22)
	sw $11 2048($22)
	sw $11 2052($22)
	sw $13 2564($22)
	
mario_braco_1_bloco_17_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8224
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_17_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_17_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 -500($8)
	sw $20 12($8)
	sw $20 524($8)
	sw $20 1032($8)
	sw $20 1036($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $20 -500($22)
	sw $20 12($22)
	sw $20 524($22)
	sw $20 1032($22)
	sw $20 1036($22)
	sw $20 1544($22)
	sw $20 1548($22)
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 -1012($8)
	sw $11 -508($8)
	sw $11 -504($8)
	sw $13 -500($8)
	sw $11 0($8)
	sw $13 4($8)
	sw $11 512($8)
	sw $11 -1012($22)
	sw $11 -508($22)
	sw $11 -504($22)
	sw $13 -500($22)
	sw $11 0($22)
	sw $13 4($22)
	sw $11 512($22)
	
mario_braco_1_bloco_18_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8240
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_18_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_18_tela_9
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
mario_braco_1_bloco_19_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8256
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_19_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_19_tela_9
	
	sw $11 -1012($8)
	sw $11 -1016($8)
	sw $11 -1012($22)
	sw $11 -1016($22)
	
mario_braco_1_bloco_20_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8272
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_20_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_20_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 12($8)
	sw $12 512($8)
	sw $12 516($8)
	sw $12 520($8)
	sw $12 524($8)
	sw $11 1024($8)
	sw $12 1028($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $11 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $12 1548($8)
	sw $12 12($22)
	sw $12 512($22)
	sw $12 516($22)
	sw $12 520($22)
	sw $12 524($22)
	sw $11 1024($22)
	sw $12 1028($22)
	sw $12 1032($22)
	sw $12 1036($22)
	sw $11 1536($22)
	sw $12 1540($22)
	sw $12 1544($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_21_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6192
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_21_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_21_tela_9
	
	addi $8 $8 -48
	addi $22 $22 -48
	
	sw $11 -500($8)
	sw $11 -1012($8)
	sw $14 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $13 12($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $13 520($8)
	sw $13 1024($8)
	sw $12 1028($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $11 -500($22)
	sw $11 -1012($22)
	sw $14 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $13 12($22)
	sw $11 512($22)
	sw $11 516($22)
	sw $13 520($22)
	sw $13 1024($22)
	sw $12 1028($22)
	sw $12 1536($22)
	sw $12 1540($22)
	
mario_braco_1_bloco_22_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4160
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 8
mario_braco_1_bloco_22_tela_9:
	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_22_tela_9
	
	addi $8 $8 -32
	addi $22 $22 -32
	
	sw $14 0($8)
	sw $14 4($8)
	sw $14 8($8)
	sw $14 512($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $13 524($8)
	sw $11 1024($8)
	sw $13 1028($8)
	sw $13 1536($8)
	
mario_braco_1_bloco_23_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4192
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 12
mario_braco_1_bloco_23_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_23_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 12($8)
	sw $11 1036($8)
	sw $11 12($22)
	sw $11 1036($22)
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
mario_braco_1_bloco_24_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10336
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_24_tela_9:
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_24_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $13 1028($8)
	sw $13 1032($8)
	sw $12 1036($8)
	sw $13 1544($8)
	sw $13 1548($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $13 1028($22)
	sw $13 1032($22)
	sw $12 1036($22)
	sw $13 1544($22)
	sw $13 1548($22)
	
mario_braco_1_bloco_25_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12384
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $9 4
mario_braco_1_bloco_25_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_25_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
mario_braco_1_bloco_26_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4208
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
mario_braco_1_bloco_26_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_26_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $13 0($8)
	sw $11 524($8)
	sw $11 1036($8)
	sw $11 -512($8)
	sw $11 -508($8)
	sw $11 -504($8)
	sw $11 -500($8)
	sw $13 0($22)
	sw $11 524($22)
	sw $11 1036($22)
	sw $11 -512($22)
	sw $11 -508($22)
	sw $11 -504($22)
	sw $11 -500($22)
	
mario_braco_1_bloco_27_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6256
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_27_tela_9:
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $13 8($22)
	sw $13 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_27_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $20 512($8)
	sw $11 516($8)
	sw $20 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $12 1544($8)
	sw $12 1548($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $11 12($22)
	sw $20 512($22)
	sw $11 516($22)
	sw $20 1024($22)
	sw $11 1028($22)
	sw $11 1536($22)
	sw $12 1544($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_28_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8304
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_28_tela_9:
	sw $12 0($8)
	sw $13 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $13 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_28_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 0($8)
	sw $13 4($8)
	sw $11 512($8)
	sw $11 0($22)
	sw $13 4($22)
	sw $11 512($22)
	
mario_braco_1_bloco_29_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10352
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_29_tela_9:
	sw $11 0($8)
	sw $13 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $13 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_29_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 524($8)
	sw $13 1536($8)
	sw $13 1540($8)
	sw $12 524($22)
	sw $13 1536($22)
	sw $13 1540($22)
	
mario_braco_1_bloco_30_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12400
	addi $22 $8 65536
	li $20 0x82834c
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_30_tela_9:
	sw $13 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $13 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_30_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 0($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $13 1548($8)
	sw $11 0($22)
	sw $20 1024($22)
	sw $20 1536($22)
	sw $13 1548($22)
	
mario_braco_1_bloco_31_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14448
	addi $22 $8 65536
	li $20 0x82834c
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_31_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_31_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 4($8)
	sw $11 8($8)
	sw $13 12($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 1548($8)
	sw $11 4($22)
	sw $11 8($22)
	sw $13 12($22)
	sw $11 520($22)
	sw $11 524($22)
	sw $11 1536($22)
	sw $11 1540($22)
	sw $11 1548($22)
	
mario_braco_1_bloco_32_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2176
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_32_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $13 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $13 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_32_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 1024($8)
	sw $11 1536($8)
	sw $20 1024($22)
	sw $11 1536($22)
	
mario_braco_1_bloco_33_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4224
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_33_tela_9:
	sw $11 0($8)
	sw $13 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $13 512($8)
	sw $13 516($8)
	sw $13 520($8)
	sw $12 524($8)
	sw $11 1024($8)
	sw $13 1028($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $12 1548($8)
	sw $11 0($22)
	sw $13 4($22)
	sw $12 8($22)
	sw $12 12($22)
	sw $13 512($22)
	sw $13 516($22)
	sw $13 520($22)
	sw $12 524($22)
	sw $11 1024($22)
	sw $13 1028($22)
	sw $12 1032($22)
	sw $12 1036($22)
	sw $11 1536($22)
	sw $11 1540($22)
	sw $11 1544($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_34_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6272
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_34_tela_9:
	sw $13 0($8)
	sw $12 512($8)
	sw $13 1024($8)
	sw $12 1536($8)
	sw $13 0($22)
	sw $12 512($22)
	sw $13 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_34_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 1032($8)
	sw $12 1036($8)
	sw $12 1032($22)
	sw $12 1036($22)
	
mario_braco_1_bloco_35_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8320
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_35_tela_9:
	sw $12 0($8)
	sw $12 512($8)
	sw $13 1024($8)
	sw $11 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $13 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_35_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $13 512($8)
	sw $13 516($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $20 1536($8)
	sw $13 512($22)
	sw $13 516($22)
	sw $11 1024($22)
	sw $11 1028($22)
	sw $20 1536($22)
	
mario_braco_1_bloco_36_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10368
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_36_tela_9:
	sw $13 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $13 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_36_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 0($8)
	sw $11 0($22)
	
mario_braco_1_bloco_37_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12416
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_37_tela_9:
	sw $13 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $13 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_37_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $13 516($8)
	sw $11 1024($8)
	sw $13 516($22)
	sw $11 1024($22)
	
mario_braco_1_bloco_38_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14464
	addi $22 $8 65536
	li $20 0x82834c
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_38_tela_9:
	sw $13 0($8)
	sw $13 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $13 0($22)
	sw $13 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_38_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 12($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $13 1036($8)
	sw $12 1548($8)
	sw $12 12($22)
	sw $11 512($22)
	sw $20 1024($22)
	sw $13 1036($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_39_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2192
	addi $22 $8 65536
	li $20 0x1f436b
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 32
mario_braco_1_bloco_39_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_39_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 524($8)
	sw $13 1024($8)
	sw $13 1028($8)
	sw $11 1036($8)
	sw $11 1536($8)
	sw $13 1540($8)
	sw $11 1544($8)
	sw $20 1548($8)
	sw $11 524($22)
	sw $13 1024($22)
	sw $13 1028($22)
	sw $11 1036($22)
	sw $11 1536($22)
	sw $13 1540($22)
	sw $11 1544($22)
	sw $20 1548($22)
	
	addi $8 $8 -8192
	addi $22 $22 -8192
	
	sw $13 1024($8)
	sw $11 1536($8)
	sw $13 1540($8)
	sw $13 1024($22)
	sw $11 1536($22)
	sw $13 1540($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $13 0($8)
	sw $13 4($8)
	sw $13 0($22)
	sw $13 4($22)
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	li $20 0x000001
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 524($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1032($8)
	sw $11 1036($8)
	sw $13 1536($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	sw $20 512($22)
	sw $20 516($22)
	sw $20 520($22)
	sw $20 524($22)
	sw $11 1024($22)
	sw $11 1028($22)
	sw $11 1032($22)
	sw $11 1036($22)
	sw $13 1536($22)
	
mario_braco_1_bloco_40_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18576
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x255772
	li $13 0x7a1313
	li $14 0x1f436b
	li $9 4
mario_braco_1_bloco_40_tela_9:
	sw $20 0($8)
	sw $11 4($8)
	sw $14 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $14 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_40_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 0($8)
	sw $13 4($8)
	sw $11 8($8)
	sw $11 512($8)
	sw $11 0($22)
	sw $13 4($22)
	sw $11 8($22)
	sw $11 512($22)
	
mario_braco_1_bloco_41_init_tela_9:
	lui $8 0x1001
	addi $8 $8 24720
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x255772
	li $13 0x7a1313
	li $14 0x1f436b
	li $9 4
mario_braco_1_bloco_41_tela_9:
	sw $11 0($8)
	sw $14 4($8)
	sw $14 8($8)
	sw $14 12($8)
	sw $11 0($22)
	sw $14 4($22)
	sw $14 8($22)
	sw $14 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_41_tela_9
	
	sw $14 -512($8)
	sw $14 -512($22)

mario_braco_1_bloco_42_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2208
	addi $22 $8 65536
	li $20 0x1f436b
	li $11 0x22200a
	li $12 0x922020
	li $13 0x255772
	li $9 28
mario_braco_1_bloco_42_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_42_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 -500($8)
	sw $11 12($8)
	sw $11 524($8)
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $13 1548($8)
	sw $11 -500($22)
	sw $11 12($22)
	sw $11 524($22)
	sw $11 1032($22)
	sw $11 1036($22)
	sw $11 1540($22)
	sw $11 1544($22)
	sw $13 1548($22)
	
	addi $8 $8 -12288
	addi $22 $22 -12288
	li $20 0x000001
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 524($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1032($8)
	sw $11 1036($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	sw $20 512($22)
	sw $20 516($22)
	sw $20 520($22)
	sw $20 524($22)
	sw $11 1024($22)
	sw $11 1028($22)
	sw $11 1032($22)
	sw $11 1036($22)
	
mario_braco_1_bloco_43_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16544
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x1f436b
	li $9 20
mario_braco_1_bloco_43_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_43_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1028($8)
	sw $12 1032($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 512($22)
	sw $12 516($22)
	sw $12 1024($22)
	sw $12 1028($22)
	sw $12 1032($22)
	sw $12 1536($22)
	sw $12 1540($22)
	sw $12 1544($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 -512($8)
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $12 -512($22)
	sw $12 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	sw $12 1540($22)
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 0($22)
	sw $11 4($22)
	
mario_braco_1_bloco_44_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2224
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x922020
	li $9 4
mario_braco_1_bloco_44_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_44_tela_9
	
	sw $11 1532($8)
	sw $11 1532($22)
	
mario_braco_1_bloco_45_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4272
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 4
mario_braco_1_bloco_45_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $13 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $13 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_45_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 8($8)
	sw $11 12($8)
	sw $11 1540($8)
	sw $13 1544($8)
	sw $12 1548($8)
	sw $20 8($22)
	sw $11 12($22)
	sw $11 1540($22)
	sw $13 1544($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_46_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6320
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 12
mario_braco_1_bloco_46_tela_9:
	sw $20 0($8)
	sw $11 4($8)
	sw $13 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $13 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_46_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 512($8)
	sw $13 516($8)
	sw $11 1024($8)
	sw $13 1028($8)
	sw $12 1032($8)
	sw $11 1536($8)
	sw $13 1540($8)
	sw $12 1544($8)
	sw $11 512($22)
	sw $13 516($22)
	sw $11 1024($22)
	sw $13 1028($22)
	sw $12 1032($22)
	sw $11 1536($22)
	sw $13 1540($22)
	sw $12 1544($22)
	
mario_braco_1_bloco_47_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12464
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 4
mario_braco_1_bloco_47_tela_9:
	sw $11 0($8)
	sw $13 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $11 0($22)
	sw $13 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_47_tela_9
	
	sw $13 -512($8)
	sw $12 -508($8)
	sw $13 -512($22)
	sw $12 -508($22)
	
mario_braco_1_bloco_48_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14512
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 4
mario_braco_1_bloco_48_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_48_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $13 0($8)
	sw $11 1036($8)
	sw $11 1548($8)
	
mario_braco_1_bloco_49_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16560
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 8
mario_braco_1_bloco_49_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $11 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_49_tela_9
	
mario_braco_1_bloco_50_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20656
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 8
mario_braco_1_bloco_50_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_50_tela_9
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 12($8)
	sw $11 12($22)
	
mario_braco_1_bloco_51_init_tela_9:
	lui $8 0x1001
	addi $8 $8 24752
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0xb7bf2a
	li $9 4
mario_braco_1_bloco_51_tela_9:
	sw $20 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_51_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 4($8)
	sw $20 8($8)
	sw $20 4($22)
	sw $20 8($22)
	
mario_braco_1_bloco_52_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2240
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 4
mario_braco_1_bloco_52_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_52_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $13 1536($8)
	sw $13 1536($22)
	
mario_braco_1_bloco_53_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4288
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 4
mario_braco_1_bloco_53_tela_9:
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_53_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $13 0($8)
	sw $13 0($22)
	
mario_braco_1_bloco_54_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6336
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 8
mario_braco_1_bloco_54_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_54_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 12($8)
	sw $20 524($8)
	sw $11 1540($8)
	sw $20 1544($8)
	sw $20 12($22)
	sw $20 524($22)
	sw $11 1540($22)
	sw $20 1544($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	li $20 0x7a1313
	
	sw $12 8($8)
	sw $12 12($8)
	sw $20 1548($8)
	sw $12 8($22)
	sw $12 12($22)
	sw $20 1548($22)
	
mario_braco_1_bloco_55_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10432
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 8
mario_braco_1_bloco_55_tela_9:
	sw $12 0($8)
	sw $11 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $12 0($22)
	sw $11 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_55_tela_9
	
	sw $11 -512($8)
	sw $20 -508($8)
	sw $11 -512($22)
	sw $20 -508($22)
	
	addi $8 $8 -4096
	addi $22 $22 4096
	
	sw $11 12($8)
	sw $11 524($8)
	sw $11 12($22)
	sw $11 524($22)
	
mario_braco_1_bloco_56_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14528
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $13 0x1f436b
	li $9 12
mario_braco_1_bloco_56_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_56_tela_9
	
	sw $12 -512($8)
	sw $12 -512($22)
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 1036($8)
	sw $11 1544($8)
	sw $11 1548($8)
	sw $11 1036($22)
	sw $11 1544($22)
	sw $11 1548($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 0($22)
	sw $11 512($22)
	
mario_braco_1_bloco_57_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20672
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $13 0x255772
	li $9 8
mario_braco_1_bloco_57_tela_9:
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $13 8($22)
	sw $13 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_57_tela_9
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 0($8)
	sw $12 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $11 0($22)
	sw $12 4($22)
	sw $20 8($22)
	sw $20 12($22)
	sw $11 512($22)
	sw $11 516($22)
	sw $11 520($22)
	sw $11 524($22)
	
mario_braco_1_bloco_58_init_tela_9:
	lui $8 0x1001
	addi $8 $8 24768
	addi $22 $8 65536
	li $20 0xb7bf2a
	li $9 4
mario_braco_1_bloco_58_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_58_tela_9
	
mario_braco_1_bloco_59_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2256
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_59_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_59_tela_9
	
mario_braco_1_bloco_60_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4304
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_60_tela_9:
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_60_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 1536($8)
	sw $12 1536($22)
	
mario_braco_1_bloco_61_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6352
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x7a1313
	li $9 8
mario_braco_1_bloco_61_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_61_tela_9
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 0($8)
	sw $11 4($8)
	sw $13 8($8)
	sw $13 512($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $13 8($22)
	sw $13 512($22)
	
mario_braco_1_bloco_62_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10448
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x82834c
	li $9 4
mario_braco_1_bloco_62_tela_9:
	sw $11 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $11 12($8)
	sw $11 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $11 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_62_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $20 12($8)
	sw $11 1544($8)
	sw $12 1548($8)
	sw $20 0($22)
	sw $20 12($22)
	sw $11 1544($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_63_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12496
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x82834c
	li $9 4
mario_braco_1_bloco_63_tela_9:
	sw $20 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_63_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $11 512($8)
	sw $11 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $11 512($22)
	
mario_braco_1_bloco_64_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14544
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x82834c
	li $9 4
mario_braco_1_bloco_64_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_64_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 12($8)
	sw $20 1032($8)
	sw $12 12($22)
	sw $20 1032($22)
	
mario_braco_1_bloco_65_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16592
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
mario_braco_1_bloco_65_tela_9:
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_65_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 512($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 512($22)
	sw $20 1544($22)
	sw $20 1548($22)
	
mario_braco_1_bloco_66_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18640
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
mario_braco_1_bloco_66_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_66_tela_9
	
mario_braco_1_bloco_67_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20688
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0xb7bf2a
	li $9 12
mario_braco_1_bloco_67_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_67_tela_9
	
	sw $13 -512($8)
	sw $13 -1024($8)
	sw $13 -1536($8)
	sw $13 -512($22)
	sw $13 -1024($22)
	sw $13 -1536($22)
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	li $13 0x7a1313
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $13 512($8)
	sw $13 516($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	sw $13 512($22)
	sw $13 516($22)
	sw $11 520($22)
	sw $11 524($22)
	sw $11 1024($22)
	sw $11 1028($22)
	
mario_braco_1_bloco_68_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2272
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_68_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_68_tela_9
	
mario_braco_1_bloco_69_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4320
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_69_tela_9:
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_69_tela_9
	
mario_braco_1_bloco_70_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6368
	addi $22 $8 65536
	li $20 0x922020
	li $9 4
mario_braco_1_bloco_70_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_70_tela_9
	
mario_braco_1_bloco_71_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8416
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x615e2f
	li $9 4
mario_braco_1_bloco_71_tela_9:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_71_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 12($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1548($8)
	sw $11 12($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_72_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10464
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x949d69
	li $13 0x82834c
	li $14 0x615e2f
	li $9 4
mario_braco_1_bloco_72_tela_9:
	sw $13 0($8)
	sw $13 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_72_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 0($8)
	sw $14 4($8)
	sw $13 8($8)
	sw $14 512($8)
	sw $14 520($8)
	sw $14 524($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $11 0($22)
	sw $14 4($22)
	sw $13 8($22)
	sw $14 512($22)
	sw $14 520($22)
	sw $14 524($22)
	sw $20 1544($22)
	sw $20 1548($22)
	
mario_braco_1_bloco_73_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12512
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x949d69
	li $13 0x82834c
	li $14 0x615e2f
	li $9 4
mario_braco_1_bloco_73_tela_9:
	sw $13 0($8)
	sw $13 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_73_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 4($8)
	sw $14 516($8)
	sw $14 1032($8)
	sw $14 1036($8)
	sw $13 1544($8)
	sw $13 1548($8)
	sw $20 4($22)
	sw $14 516($22)
	sw $14 1032($22)
	sw $14 1036($22)
	sw $13 1544($22)
	sw $13 1548($22)
	
mario_braco_1_bloco_74_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14560
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x949d69
	li $13 0x82834c
	li $14 0x615e2f
	li $9 4
mario_braco_1_bloco_74_tela_9:
	sw $13 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $13 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)

	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_74_tela_9
	
	sw $11 -4($8)
	sw $11 -4($22)
	
mario_braco_1_bloco_75_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16608
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $9 4
mario_braco_1_bloco_75_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $20 1536($22)

	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_75_tela_9
	
	sw $20 1020($8)
	sw $20 1020($22)
	
mario_braco_1_bloco_76_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18656
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $9 4
mario_braco_1_bloco_76_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)

	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_76_tela_9
	
mario_braco_1_bloco_77_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20704
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $9 12
mario_braco_1_bloco_77_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)

	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_77_tela_9
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	sw $11 512($22)
	sw $11 516($22)
	sw $11 520($22)
	sw $11 524($22)