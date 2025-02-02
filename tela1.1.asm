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
	
mario_braco_1_bloco_78_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2288
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_78_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_78_tela_9
	
mario_braco_1_bloco_79_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4336
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0xffffff
	li $9 4
mario_braco_1_bloco_79_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_79_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 516($8)
	sw $13 1032($8)
	sw $13 1036($8)
	sw $13 1544($8)
	sw $13 1548($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $11 8($22)
	sw $11 12($22)
	sw $11 516($22)
	sw $13 1032($22)
	sw $13 1036($22)
	sw $13 1544($22)
	sw $13 1548($22)

mario_braco_1_bloco_80_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6384
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0xffffff
	li $9 4
mario_braco_1_bloco_80_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $12 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $12 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_80_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 1036($8)
	sw $11 1544($8)
	sw $11 1548($8)
	sw $11 1036($22)
	sw $11 1544($22)
	sw $11 1548($22)
	
mario_braco_1_bloco_81_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8432
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
mario_braco_1_bloco_81_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_81_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 0($22)
	sw $11 4($22)
	
mario_braco_1_bloco_82_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10480
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x949d69
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
mario_braco_1_bloco_82_tela_9:
	sw $11 0($8)
	sw $13 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $13 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_82_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 524($8)
	sw $12 1548($8)
	sw $11 524($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_83_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12528
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0xfe0000
	li $13 0x615e2f
	li $9 4
mario_braco_1_bloco_83_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $13 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $13 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_83_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 0($8)
	sw $13 524($8)
	sw $11 1036($8)
	sw $12 0($22)
	sw $13 524($22)
	sw $11 1036($22)
	
mario_braco_1_bloco_84_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14576
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0xfe0000
	li $13 0x82834c
	li $9 4
mario_braco_1_bloco_84_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_84_tela_9
	
mario_braco_1_bloco_85_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16624
	addi $22 $8 65536
	li $20 0xcece55
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x922020
	li $9 4
mario_braco_1_bloco_85_tela_9:
	sw $20 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_85_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $13 1536($8)
	sw $12 1548($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 1024($22)
	sw $11 1028($22)
	sw $13 1536($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_86_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18672
	addi $22 $8 65536
	li $20 0xcece55
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x922020
	li $9 4
mario_braco_1_bloco_86_tela_9:
	sw $13 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	sw $13 0($22)
	sw $13 512($22)
	sw $13 1024($22)
	sw $13 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_86_tela_9
	
	sw $11 -8($8)
	sw $11 -4($8)
	sw $11 -8($22)
	sw $11 -4($22)
	
mario_braco_1_bloco_87_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20720
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_87_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_87_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 0($8)
	sw $11 512($8)
	sw $12 0($22)
	sw $11 512($22)
	
mario_braco_1_bloco_88_init_tela_9:
	lui $8 0x1001
	addi $8 $8 22768
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x7a1313
	li $9 8
mario_braco_1_bloco_88_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_88_tela_9
	
mario_braco_1_bloco_89_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2304
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_89_tela_9:
	sw $20 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_89_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 512($8)
	sw $11 1024($8)
	sw $20 512($22)
	sw $11 1024($22)
	
mario_braco_1_bloco_90_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4352
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0xffffff
	li $9 4
mario_braco_1_bloco_90_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_90_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 524($8)
	sw $12 1036($8)
	sw $12 1544($8)
	sw $12 1548($8)
	sw $20 524($22)
	sw $12 1036($22)
	sw $12 1544($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_91_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6400
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0xffffff
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_91_tela_9:
	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $13 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $13 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_91_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16

	sw $20 4($8)
	sw $20 520($8)
	sw $20 4($22)
	sw $20 520($22)
	
mario_braco_1_bloco_92_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8448
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_92_tela_9:
	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_92_tela_9
	
	sw $11 508($8)
	sw $20 1020($8)
	sw $11 508($22)
	sw $20 1020($22)
	
mario_braco_1_bloco_93_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10496
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 4
mario_braco_1_bloco_93_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_93_tela_9
	
mario_braco_1_bloco_94_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12544
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $9 4
mario_braco_1_bloco_94_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_94_tela_9
	
mario_braco_1_bloco_95_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14592
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0xcece55
	li $9 4
mario_braco_1_bloco_95_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_95_tela_9
	
	sw $11 1528($8)
	sw $11 1528($22)
	
mario_braco_1_bloco_96_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16640
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0xcece55
	li $12 0x949d69
	li $9 4
mario_braco_1_bloco_96_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_96_tela_9
	
	sw $11 -12($8)
	sw $11 -8($8)
	sw $11 -12($22)
	sw $11 -8($22)
	
mario_braco_1_bloco_97_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18688
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x922020
	li $9 4
mario_braco_1_bloco_97_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_97_tela_9
	
	sw $20 -12($8)
	sw $12 508($8)
	sw $20 -12($22)
	sw $12 508($22)
	
mario_braco_1_bloco_98_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20736
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $9 4
mario_braco_1_bloco_98_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_98_tela_9
	
mario_braco_1_bloco_99_init_tela_9:
	lui $8 0x1001
	addi $8 $8 22784
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $9 8
mario_braco_1_bloco_99_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_99_tela_9
	
mario_braco_1_bloco_100_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2320
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_100_tela_9:
	sw $20 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_100_tela_9
	
mario_braco_1_bloco_101_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4368
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $9 4
mario_braco_1_bloco_101_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_101_tela_9
	
mario_braco_1_bloco_102_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6416
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_102_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_102_tela_9
	
mario_braco_1_bloco_103_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8464
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_103_tela_9:
	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_103_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 512($8)
	sw $20 1024($8)
	sw $11 512($22)
	sw $20 1024($22)
	
mario_braco_1_bloco_104_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10512
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 4
mario_braco_1_bloco_104_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_104_tela_9
	
mario_braco_1_bloco_105_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12560
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $9 4
mario_braco_1_bloco_105_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_105_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 1024($8)
	sw $11 1024($22)
	
mario_braco_1_bloco_106_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14608
	addi $22 $8 65536
	li $20 0xcece55
	li $11 0x22200a
	li $9 4
mario_braco_1_bloco_106_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_106_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 1536($8)
	sw $20 1544($8)
	sw $20 1536($22)
	sw $20 1544($22)
	
mario_braco_1_bloco_107_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16656
	addi $22 $8 65536
	li $20 0xcece55
	li $11 0x22200a
	li $12 0x949d69
	li $13 0x82834c
	li $9 4
mario_braco_1_bloco_107_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_107_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $20 8($8)
	sw $13 1032($8)
	sw $13 1036($8)
	sw $13 1544($8)
	sw $11 1548($8)
	sw $20 0($22)
	sw $20 8($22)
	sw $13 1032($22)
	sw $13 1036($22)
	sw $13 1544($22)
	sw $11 1548($22)
	
mario_braco_1_bloco_108_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18704
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_108_tela_9:
	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_108_tela_9
	
	sw $12 1520($8)
	sw $12 1520($22)
	
mario_braco_1_bloco_109_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20752
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $9 12
mario_braco_1_bloco_109_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_109_tela_9
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	sw $11 0($8)
	sw $11 0($22)
	
mario_braco_1_bloco_110_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2336
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_110_tela_9:
	sw $20 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_110_tela_9
	
	sw $20 504($8)
	sw $20 508($8)
	sw $11 1016($8)
	sw $11 1020($8)
	sw $20 504($22)
	sw $20 508($22)
	sw $11 1016($22)
	sw $11 1020($22)
	
mario_braco_1_bloco_111_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4384
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $9 4
mario_braco_1_bloco_111_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_111_tela_9
	
mario_braco_1_bloco_112_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6432
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_112_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_112_tela_9
	
mario_braco_1_bloco_113_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8480
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_113_tela_9:
	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_113_tela_9
	
	li $20 0x82834c
	sw $20 1532($8)
	sw $20 1532($22)
	
mario_braco_1_bloco_114_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10528
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x949d69
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
mario_braco_1_bloco_114_tela_9:
	sw $11 0($8)
	sw $13 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $13 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_114_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 12($8)
	sw $11 512($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $12 12($22)
	sw $11 512($22)
	sw $12 1536($22)
	sw $12 1540($22)
	
mario_braco_1_bloco_115_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12576
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
mario_braco_1_bloco_115_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $13 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $13 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_115_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 0($8)
	sw $12 512($8)
	sw $13 516($8)
	sw $11 1024($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $13 516($22)
	sw $11 1024($22)
	
mario_braco_1_bloco_116_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14624
	addi $22 $8 65536
	li $20 0xcece55
	li $11 0x22200a
	li $9 4
mario_braco_1_bloco_116_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_116_tela_9
	
	sw $20 1520($8)
	sw $20 1520($22)
	
mario_braco_1_bloco_117_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16672
	addi $22 $8 65536
	li $20 0xcece55
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x922020
	li $9 4
mario_braco_1_bloco_117_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_117_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $20 4($8)
	sw $12 1024($8)
	sw $13 1036($8)
	sw $13 1544($8)
	sw $13 1548($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $12 1024($22)
	sw $13 1036($22)
	sw $13 1544($22)
	sw $13 1548($22)
	
mario_braco_1_bloco_118_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18720
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $13 0x255772
	li $9 4
mario_braco_1_bloco_118_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_118_tela_9
	
	sw $12 1016($8)
	sw $11 1020($8)
	sw $13 1532($8)
	sw $12 1016($22)
	sw $11 1020($22)
	sw $13 1532($22)
	
mario_braco_1_bloco_119_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20768
	addi $22 $8 65536
	li $20 0x255772
	li $9 12
mario_braco_1_bloco_119_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_119_tela_9
	
mario_braco_1_bloco_120_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2352
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_120_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_120_tela_9
	
mario_braco_1_bloco_121_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4400
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $13 0x255772
	li $9 4
mario_braco_1_bloco_121_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_121_tela_9
	
	sw $13 -4($8)
	sw $12 504($8)
	sw $11 508($8)
	sw $12 1020($8)
	sw $13 -4($22)
	sw $12 504($22)
	sw $11 508($22)
	sw $12 1020($22)
	
mario_braco_1_bloco_122_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6448
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_122_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_122_tela_9
	
mario_braco_1_bloco_123_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8496
	addi $22 $8 65536
	li $20 0x615e2f
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_123_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_123_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 1024($8)
	sw $20 1536($8)
	
mario_braco_1_bloco_124_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10544
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x949d69
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x22200a
	li $9 4
mario_braco_1_bloco_124_tela_9:
	sw $12 0($8)
	sw $13 512($8)
	sw $12 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $13 512($22)
	sw $12 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_124_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $13 8($8)
	sw $14 12($8)
	sw $12 524($8)
	sw $11 1024($8)
	sw $12 1548($8)
	sw $13 8($22)
	sw $14 12($22)
	sw $12 524($22)
	sw $11 1024($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_125_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12592
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x949d69
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x22200a
	li $9 4
mario_braco_1_bloco_125_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $13 1024($8)
	sw $14 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $13 1024($22)
	sw $14 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_125_tela_9
	
	li $20 0xfe0000
	
	sw $20 -16($8)
	sw $13 508($8)
	sw $12 1020($8)
	sw $12 1532($8)
	sw $20 -16($8)
	sw $13 508($22)
	sw $12 1020($22)
	sw $12 1532($22)
	
mario_braco_1_bloco_126_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14640
	addi $22 $8 65536
	li $20 0x22200a
	li $9 4
mario_braco_1_bloco_126_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_126_tela_9
	
mario_braco_1_bloco_127_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16688
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $9 4
mario_braco_1_bloco_127_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_127_tela_9
	
	sw $11 1008($8)
	sw $11 1008($22)
	
mario_braco_1_bloco_128_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18736
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_128_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $20 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_128_tela_9
	
mario_braco_1_bloco_129_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20784
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
mario_braco_1_bloco_129_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_129_tela_9
	
	sw $11 508($8)
	sw $11 1020($8)
	sw $11 1528($8)
	sw $12 1532($8)
	sw $11 508($22)
	sw $11 1020($22)
	sw $11 1528($22)
	sw $12 1532($22)
	
mario_braco_1_bloco_130_init_tela_9:
	lui $8 0x1001
	addi $8 $8 22832
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
mario_braco_1_bloco_130_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_130_tela_9
	
	sw $11 -508($8)
	sw $12 -504($8)
	sw $11 -508($22)
	sw $12 -504($22)
	
mario_braco_1_bloco_131_init_tela_9:
	lui $8 0x1001
	addi $8 $8 24880
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
mario_braco_1_bloco_131_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_131_tela_9
	
	sw $11 -512($8)
	sw $11 -504($8)
	sw $11 -500($8)
	sw $11 -512($22)
	sw $11 -504($22)
	sw $11 -500($22)
	
mario_braco_1_bloco_132_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2368
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_132_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_132_tela_9
	
	sw $11 508($8)
	sw $12 1020($8)
	sw $11 508($22)
	sw $12 1020($22)
	
mario_braco_1_bloco_133_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4416
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_133_tela_9:
	sw $12 0($8)
	sw $11 512($8)
	sw $13 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $11 512($22)
	sw $13 1024($22)
	sw $20 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_133_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 1024($22)
	sw $11 1536($22)
	
mario_braco_1_bloco_134_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6464
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $9 4
mario_braco_1_bloco_134_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_134_tela_9
	
	sw $11 -508($8)
	sw $11 -508($22)
	
mario_braco_1_bloco_135_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8512
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
mario_braco_1_bloco_135_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $11 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_135_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 4($8)
	sw $11 4($22)
	
mario_braco_1_bloco_136_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10560
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
mario_braco_1_bloco_136_tela_9:
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_136_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 12($8)
	sw $13 516($8)
	sw $11 520($8)
	sw $20 524($8)
	sw $11 1032($8)
	sw $20 1036($8)
	sw $11 1548($8)
	sw $20 12($22)
	sw $13 516($22)
	sw $11 520($22)
	sw $20 524($22)
	sw $11 1032($22)
	sw $20 1036($22)
	sw $11 1548($22)
	
mario_braco_1_bloco_137_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12608
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
mario_braco_1_bloco_137_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_137_tela_9
	
mario_braco_1_bloco_138_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14656
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
mario_braco_1_bloco_138_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_138_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 8($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $12 8($22)
	sw $11 1024($22)
	sw $11 1536($22)
	sw $11 1540($22)
	sw $20 1544($22)
	sw $20 1548($22)
	
mario_braco_1_bloco_139_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16704
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
mario_braco_1_bloco_139_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_139_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 0($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $20 1536($22)
	
mario_braco_1_bloco_140_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18752
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x949d69
	li $9 4
mario_braco_1_bloco_140_tela_9:
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_140_tela_9
	
	sw $20 1012($8)
	sw $20 1016($8)
	sw $12 1520($8)
	sw $13 1532($8)
	sw $20 1012($22)
	sw $20 1016($22)
	sw $12 1520($22)
	sw $13 1532($22)
	
mario_braco_1_bloco_141_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20800
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x949d69
	li $9 4
mario_braco_1_bloco_141_tela_9:
	sw $13 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	sw $13 0($22)
	sw $13 512($22)
	sw $13 1024($22)
	sw $13 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_141_tela_9
	
	sw $11 -16($8)
	sw $11 -12($8)
	sw $11 -16($22)
	sw $11 -12($22)
	
mario_braco_1_bloco_142_init_tela_9:
	lui $8 0x1001
	addi $8 $8 22848
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x949d69
	li $9 4
mario_braco_1_bloco_142_tela_9:
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $11 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $13 8($22)
	sw $11 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_142_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $13 12($8)
	sw $13 12($22)
	
mario_braco_1_bloco_143_init_tela_9:
	lui $8 0x1001
	addi $8 $8 24896
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0xb7bf2a
	li $13 0x949d69
	li $9 4
mario_braco_1_bloco_143_tela_9:
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $11 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $13 8($22)
	sw $11 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_143_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 520($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $12 1032($8)
	sw $11 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $11 520($22)
	sw $11 1024($22)
	sw $11 1028($22)
	sw $12 1032($22)
	sw $11 1536($22)
	sw $12 1540($22)
	sw $12 1544($22)
	
mario_braco_1_bloco_144_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2384
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_144_tela_9:
	sw $20 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_144_tela_9
	
	sw $11 1532($8)
	sw $11 1532($22)
	
mario_braco_1_bloco_145_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4432
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_145_tela_9:
	sw $20 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_145_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 8($8)
	sw $12 12($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $13 520($8)
	sw $11 8($22)
	sw $12 12($22)
	sw $11 512($22)
	sw $11 516($22)
	sw $13 520($22)
	
mario_braco_1_bloco_146_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6480
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 20
mario_braco_1_bloco_146_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_146_tela_9
	
mario_braco_1_bloco_147_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16720
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
mario_braco_1_bloco_147_tela_9:
	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_147_tela_9
	
mario_braco_1_bloco_148_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18768
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
mario_braco_1_bloco_148_tela_9:
	sw $20 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_148_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 12($8)
	sw $20 512($8)
	sw $12 524($8)
	sw $11 1024($8)
	sw $11 12($22)
	sw $20 512($22)
	sw $12 524($22)
	sw $11 1024($22)
	
mario_braco_1_bloco_149_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20816
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x949d69
	li $9 12
mario_braco_1_bloco_149_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_149_tela_9
	
	sw $11 -504($8)
	sw $11 -500($8)
	sw $11 -504($22)
	sw $11 -500($22)
	
mario_braco_1_bloco_150_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2400
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
mario_braco_1_bloco_150_tela_9:
	sw $11 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $11 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_150_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1548($8)
	sw $20 0($22)
	sw $12 520($22)
	sw $12 524($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_151_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4448
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $13 0x7a1313
	li $9 24
mario_braco_1_bloco_151_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $12 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_151_tela_9
	
	sw $13 -1020($8)
	sw $11 -508($8)
	sw $12 -504($8)
	sw $13 -1020($22)
	sw $11 -508($22)
	sw $12 -504($22)
	
	addi $8 $8 -12288
	addi $22 $22 -12288
	
	sw $13 4($8)
	sw $13 4($22)
	
mario_braco_1_bloco_152_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16736
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x922020
	li $9 4
mario_braco_1_bloco_152_tela_9:
	sw $20 0($8)
	sw $11 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $13 1024($22)
	sw $13 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_152_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $14 0($8)
	sw $11 4($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $14 0($22)
	sw $11 4($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $11 1028($22)
	
mario_braco_1_bloco_153_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18784
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x922020
	li $9 12
mario_braco_1_bloco_153_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_153_tela_9
	
mario_braco_1_bloco_154_init_tela_9:
	lui $8 0x1001
	addi $8 $8 24928
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x255772
	li $13 0x1f436b
	li $9 4
mario_braco_1_bloco_154_tela_9:
	sw $20 0($8)
	sw $11 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $13 1024($22)
	sw $13 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_154_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $12 1540($8)
	sw $20 512($22)
	sw $20 516($22)
	sw $20 1024($22)
	sw $11 1028($22)
	sw $11 1536($22)
	sw $12 1540($22)
	
mario_braco_1_bloco_155_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2416
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x1f436b
	li $9 4
mario_braco_1_bloco_155_tela_9:
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_155_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 -500($8)
	sw $20 12($8)
	sw $11 520($8)
	sw $20 524($8)
	sw $11 1036($8)
	sw $11 1548($8)
	sw $11 -500($22)
	sw $20 12($22)
	sw $11 520($22)
	sw $20 524($22)
	sw $11 1036($22)
	sw $11 1548($22)
	
mario_braco_1_bloco_156_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4464
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x1f436b
	li $9 12
mario_braco_1_bloco_156_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_156_tela_9
	
	sw $11 -500($8)
	sw $11 -1012($8)
	sw $11 -500($22)
	sw $11 -1012($22)
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	sw $12 0($8)
	sw $12 0($22)
	
mario_braco_1_bloco_157_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10608
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x1f436b
	li $9 12
mario_braco_1_bloco_157_tela_9:
	sw $20 0($8)
	sw $20 4($8)
	sw $12 8($8)
	sw $11 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $12 8($22)
	sw $11 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_157_tela_9
	
mario_braco_1_bloco_158_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16752
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
mario_braco_1_bloco_158_tela_9:
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $22 $22 4
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_158_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 516($22)
	
mario_braco_1_bloco_159_init_tela_9:
	lui $8 0x1001
	addi $8 $8 18800
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x949d69
	li $9 12
mario_braco_1_bloco_159_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_159_tela_9
	
	sw $11 -508($8)
	sw $11 -504($8)
	sw $11 -1020($8)
	
mario_braco_1_bloco_160_init_tela_9:
	lui $8 0x1001
	addi $8 $8 24944
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x1f436b
	li $9 4
mario_braco_1_bloco_160_tela_9:
	sw $12 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $11 8($22)
	sw $20 12($22)
	
	addi $22 $22 512
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 mario_braco_1_bloco_160_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 0($8)
	sw $12 1544($8)
	sw $11 1548($8)
	sw $11 0($22)
	sw $12 1544($22)
	sw $11 1548($22)
	
mario_braco_1_bloco_161_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2432
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $9 28
mario_braco_1_bloco_161_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_161_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 524($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $11 1548($8)
	sw $12 524($22)
	sw $12 1032($22)
	sw $12 1036($22)
	sw $11 1540($22)
	sw $11 1544($22)
	sw $11 1548($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 1036($8)
	sw $12 1036($22)
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 0($22)
	sw $11 512($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 0($8)
	sw $11 512($8)
	sw $12 524($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 -512($8)
	sw $11 -508($8)
	sw $11 -504($8)
	sw $11 -500($8)
	sw $12 1036($8)
	sw $11 -512($22)
	sw $11 -508($22)
	sw $11 -504($22)
	sw $11 -500($22)
	sw $12 1036($22)
	
mario_braco_1_bloco_162_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16768
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $9 20
mario_braco_1_bloco_162_tela_9:
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
	bne $9 $0 mario_braco_1_bloco_162_tela_9
	
	sw $11 -500($8)
	
	addi $8 $8 -10240
	addi $22 $22 -10240
	
	sw $11 0($8)
	sw $11 0($22)

mario_braco_1_bloco_163_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2448
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $12 0x922020
	li $9 4

mario_braco_1_bloco_163_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $11 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_163_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 -512($8)
	sw $11 -508($8)
	sw $11 -504($8)
	sw $11 -500($8)
	sw $12 0($8)
	sw $12 4($8)
	sw $20 12($8)
	sw $12 1536($8)
	sw $11 -512($22)
	sw $11 -508($22)
	sw $11 -504($22)
	sw $11 -500($22)
	sw $12 0($22)
	sw $12 4($22)
	sw $20 12($22)
	sw $12 1536($22)
	
mario_braco_1_bloco_164_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4496
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $12 0x922020
	li $13 0x949d69
	li $9 4

mario_braco_1_bloco_164_tela_9:
	
	sw $12 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	sw $12 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_164_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 12($8)
	sw $11 524($8)
	sw $12 1024($8)
	sw $11 1032($8)
	sw $13 1036($8)
	sw $12 1536($8)
	sw $20 1540($8)
	sw $20 12($22)
	sw $11 524($22)
	sw $12 1024($22)
	sw $11 1032($22)
	sw $13 1036($22)
	sw $12 1536($22)
	sw $20 1540($22)
	
mario_braco_1_bloco_165_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6544
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $12 0x922020
	li $9 4

mario_braco_1_bloco_165_tela_9:
	
	sw $12 0($8)
	sw $12 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_165_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 4($8)
	sw $11 12($8)
	sw $12 520($8)
	sw $20 4($22)
	sw $11 12($22)
	sw $12 520($22)
	
mario_braco_1_bloco_166_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8592
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $12 0x922020
	li $13 0x949d69
	li $9 4

mario_braco_1_bloco_166_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_166_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 8($8)
	sw $12 512($8)
	sw $13 524($8)
	sw $12 1024($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $20 8($22)
	sw $12 512($22)
	sw $13 524($22)
	sw $12 1024($22)
	sw $20 1544($22)
	sw $20 1548($22)
	
mario_braco_1_bloco_167_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10640
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $12 0x922020
	li $9 4

mario_braco_1_bloco_167_tela_9:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $12 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $20 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_167_tela_9
	
	sw $20 -4($8)
	sw $20 1528($8)
	sw $11 1532($8)
	sw $20 -4($22)
	sw $20 1528($22)
	sw $11 1532($22)
	
mario_braco_1_bloco_168_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12688
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $12 0x922020
	li $13 0x82834c
	li $9 4

mario_braco_1_bloco_168_tela_9:
	
	sw $12 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $13 12($8)
	sw $12 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $13 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_168_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $11 1548($8)

mario_braco_1_bloco_169_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14736
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $12 0x922020
	li $13 0x949d69
	li $9 4

mario_braco_1_bloco_169_tela_9:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $13 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $13 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_169_tela_9
	
	sw $11 -4($8)
	sw $11 508($8)
	sw $11 1020($8)
	sw $11 -4($22)
	sw $11 508($22)
	sw $11 1020($22)
	
mario_braco_1_bloco_170_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16784
	addi $22 $8 65536
	li $20 0x949d69
	li $9 12

mario_braco_1_bloco_170_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_170_tela_9
	
mario_braco_1_bloco_171_init_tela_9:
	lui $8 0x1001
	addi $8 $8 22928
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x000001
	li $9 4

mario_braco_1_bloco_171_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_171_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 8($8)
	sw $20 12($8)
	sw $12 520($8)
	sw $12 524($8)
	sw $13 1548($8)
	sw $20 8($22)
	sw $20 12($22)
	sw $12 520($22)
	sw $12 524($22)
	sw $13 1548($22)
	
mario_braco_1_bloco_172_init_tela_9:
	lui $8 0x1001
	addi $8 $8 24976
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x000001
	li $9 2

mario_braco_1_bloco_172_tela_9:
	
	sw $20 0($8)
	sw $11 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $13 8($22)
	sw $13 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_172_tela_9
	
	sw $11 0($8)
	sw $11 0($22)
	
mario_braco_1_bloco_173_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2464
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $9 4

mario_braco_1_bloco_173_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_173_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 -512($8)
	sw $11 -508($8)
	sw $11 -504($8)
	sw $11 -500($8)
	sw $11 0($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 -512($22)
	sw $11 -508($22)
	sw $11 -504($22)
	sw $11 -500($22)
	sw $11 0($22)
	sw $11 1536($22)
	sw $11 1540($22)
	
mario_braco_1_bloco_174_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4512
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4

mario_braco_1_bloco_174_tela_9:
	
	sw $12 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $11 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_174_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 8($8)
	sw $20 12($8)
	sw $20 520($8)
	sw $20 524($8)
	sw $11 8($22)
	sw $20 12($22)
	sw $20 520($22)
	sw $20 524($22)
	
mario_braco_1_bloco_175_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6560
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4

mario_braco_1_bloco_175_tela_9:
	
	sw $20 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_175_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 1536($8)
	sw $12 1536($22)
	
mario_braco_1_bloco_176_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8608
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4

mario_braco_1_bloco_176_tela_9:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_176_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 0($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
mario_braco_1_bloco_177_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10656
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $13 0x922020
	li $9 4

mario_braco_1_bloco_177_tela_9:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_177_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $13 512($8)
	sw $11 524($8)
	sw $12 1024($8)
	sw $20 1036($8)
	sw $11 1536($8)
	sw $13 512($22)
	sw $11 524($22)
	sw $12 1024($22)
	sw $20 1036($22)
	sw $11 1536($22)

mario_braco_1_bloco_178_init_tela_9:
	lui $8 0x1001
	addi $8 $8 12704
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $9 4

mario_braco_1_bloco_178_tela_9:
	
	sw $12 0($8)
	sw $12 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_178_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 516($8)
	sw $12 1544($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 516($22)
	sw $12 1544($22)
	
mario_braco_1_bloco_179_init_tela_9:
	lui $8 0x1001
	addi $8 $8 14752
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $9 4

mario_braco_1_bloco_179_tela_9:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_179_tela_9
	
mario_braco_1_bloco_180_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16800
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $9 12

mario_braco_1_bloco_180_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_180_tela_9
	
	sw $12 -500($8)
	sw $12 -500($22)
	
mario_braco_1_bloco_181_init_tela_9:
	lui $8 0x1001
	addi $8 $8 22944
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x82834c
	li $9 12

mario_braco_1_bloco_181_tela_9:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_181_tela_9
	
mario_braco_1_bloco_182_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2480
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x615e2f
	li $9 4

mario_braco_1_bloco_182_tela_9:
	
	sw $12 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_182_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 -512($8)
	sw $11 -508($8)
	sw $11 -500($8)
	sw $20 0($8)
	sw $11 8($8)
	sw $11 -512($22)
	sw $11 -508($22)
	sw $11 -500($22)
	sw $20 0($22)
	sw $11 8($22)
	
mario_braco_1_bloco_183_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4528
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x7a1313
	li $9 36

mario_braco_1_bloco_183_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_183_tela_9
	
	sw $12 -512($8)
	sw $12 -508($8)
	sw $12 -504($8)
	sw $12 -500($8)
	sw $12 -512($22)
	sw $12 -508($22)
	sw $12 -504($22)
	sw $12 -500($22)
	
	addi $8 $8 -8192
	addi $22 $22 -8192
	
	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 -512($8)
	sw $11 -508($8)
	sw $13 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 -512($22)
	sw $11 -508($22)
	sw $13 0($22)
	sw $11 4($22)
	sw $11 512($22)
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $11 1024($8)
	sw $11 1024($22)
	
mario_braco_1_bloco_184_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2496
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 4

mario_braco_1_bloco_184_tela_9:
	
	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_184_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $14 12($8)
	sw $12 516($8)
	sw $13 520($8)
	sw $11 524($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $12 1544($8)
	sw $12 1548($8)
	sw $14 12($22)
	sw $12 516($22)
	sw $13 520($22)
	sw $11 524($22)
	sw $12 1032($22)
	sw $12 1036($22)
	sw $12 1544($22)
	sw $12 1548($22)
	
mario_braco_1_bloco_185_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4544
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x7a1313
	li $9 32

mario_braco_1_bloco_185_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_185_tela_9
	
	addi $8 $8 -16384
	addi $22 $22 -16384
	
	sw $12 8($8)
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 8($22)
	sw $12 12($22)
	sw $12 524($22)
	sw $12 1036($22)
	
mario_braco_1_bloco_186_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20928
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x7a1313
	li $9 4

mario_braco_1_bloco_186_tela_9:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_186_tela_9
	
	sw $12 508($8)
	sw $12 508($22)
	
mario_braco_1_bloco_187_init_tela_9:
	lui $8 0x1001
	addi $8 $8 2512
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4

mario_braco_1_bloco_187_tela_9:
	
	sw $11 512($8)
	sw $13 1024($8)
	sw $11 1028($8)
	sw $12 1536($8)
	sw $13 1540($8)
	sw $11 1544($8)
	sw $11 1548($8)
	sw $11 512($22)
	sw $13 1024($22)
	sw $11 1028($22)
	sw $12 1536($22)
	sw $13 1540($22)
	sw $11 1544($22)
	sw $11 1548($22)
	
mario_braco_1_bloco_188_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4560
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4

mario_braco_1_bloco_188_tela_9:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_188_tela_9
	
	sw $13 -4($8)
	sw $13 -4($22)
	
mario_braco_1_bloco_189_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6608
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4

mario_braco_1_bloco_189_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_189_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 4($8)
	sw $12 516($8)
	sw $12 4($22)
	sw $12 516($22)
	
mario_braco_1_bloco_190_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8656
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4

mario_braco_1_bloco_190_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_190_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 8($8)
	sw $12 12($8)
	sw $12 524($8)
	sw $12 8($22)
	sw $12 12($22)
	sw $12 524($22)
	
mario_braco_1_bloco_191_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10704
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 12

mario_braco_1_bloco_191_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_191_tela_9
	
mario_braco_1_bloco_192_init_tela_9:
	lui $8 0x1001
	addi $8 $8 16848
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 6

mario_braco_1_bloco_192_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_192_tela_9
	
mario_braco_1_bloco_193_init_tela_9:
	lui $8 0x1001
	addi $8 $8 19920
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 2

mario_braco_1_bloco_193_tela_9:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_193_tela_9
	
mario_braco_1_bloco_194_init_tela_9:
	lui $8 0x1001
	addi $8 $8 20944
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 5

mario_braco_1_bloco_194_tela_9:
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_194_tela_9
	
mario_braco_1_bloco_195_init_tela_9:
	lui $8 0x1001
	addi $8 $8 23504
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $9 5

mario_braco_1_bloco_195_tela_9:

	sw $12 0($8)
	sw $13 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $12 0($22)
	sw $13 4($22)
	sw $11 8($22)
	sw $11 12($22)
	sw $11 512($22)
	sw $11 516($22)
	
mario_braco_1_bloco_196_init_tela_9:
	lui $8 0x1001
	addi $8 $8 4576
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 4

mario_braco_1_bloco_196_tela_9:
	
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
	bnez $9 mario_braco_1_bloco_196_tela_9
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $14 8($8)
	sw $14 12($8)
	sw $13 516($8)
	sw $11 520($8)
	sw $14 524($8)
	sw $13 1032($8)
	sw $11 1036($8)
	sw $13 1548($8)
	sw $11 1552($8)
	sw $14 8($22)
	sw $14 12($22)
	sw $13 516($22)
	sw $11 520($22)
	sw $14 524($22)
	sw $13 1032($22)
	sw $11 1036($22)
	sw $13 1548($22)
	sw $11 1552($22)
	
mario_braco_1_bloco_197_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6624
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 32

mario_braco_1_bloco_197_tela_9:
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_197_tela_9
	
	sw $13 -504($8)
	sw $11 -500($8)
	sw $13 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 512($22)
	sw $13 -504($22)
	sw $11 -500($22)
	sw $13 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 512($22)
	
	addi $8 $8 -10240
	addi $22 $22 -10240
	
	sw $20 -1024($8)
	sw $20 -512($8)
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 -1024($22)
	sw $20 -512($22)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	
mario_braco_1_bloco_198_init_tela_9:
	lui $8 0x1001
	addi $8 $8 6640
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 4

mario_braco_1_bloco_198_tela_9:
	
	sw $12 0($8)
	sw $11 4($8)
	sw $12 0($22)
	sw $11 4($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_198_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $13 0($8)
	
mario_braco_1_bloco_199_init_tela_9:
	lui $8 0x1001
	addi $8 $8 8688
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 4

mario_braco_1_bloco_199_tela_9:
	
	sw $12 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $11 8($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_199_tela_9
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $13 4($8)
	sw $13 4($22)
	
mario_braco_1_bloco_200_init_tela_9:
	lui $8 0x1001
	addi $8 $8 10736
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x82834c
	li $13 0x615e2f
	li $14 0x000001
	li $9 20

mario_braco_1_bloco_200_tela_9:
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 mario_braco_1_bloco_200_tela_9
	
	sw $13 -504($8)
	sw $12 0($8)
	sw $13 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $12 512($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $13 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $13 -504($22)
	sw $12 0($22)
	sw $13 4($22)
	sw $11 8($22)
	sw $11 12($22)
	sw $12 512($22)
	sw $11 516($22)
	sw $11 520($22)
	sw $13 1024($22)
	sw $11 1028($22)
	sw $11 1536($22)
	
	addi $8 $8 -10240
	addi $22 $22 -10240
	
	sw $13 8($8)
	sw $13 8($22)
