.text
tela_10:
    lui $8 0x1001
    addi $22 $8 65536
    li $9 8192
    li $20 0x000001
ceu_tela_10:
    
    sw $20 0($8)
    sw $20 0($22)
    
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 ceu_tela_10
    
bloco_chao_1_init_tela_10:
    lui $8 0x1001
    addi $8 $8 26624
    addi $22 $8 65536
    li $10 32
    li $20 0x000000 #detalhe
    li $11 0xb2c92e
    li $12 0xb0841b
laco_bloco_chao_1_tela_10:
    li $9 4
bloco_chao_1_tela_10:
    beq $9 $0 final_bloco_chao_1_tela_10
    
    sw $20 0($8)
    sw $11 512($8)
    sw $11 1024($8)
    sw $20 0($22)
    sw $11 512($22)
    sw $11 1024($22)
    
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    j bloco_chao_1_tela_10
final_bloco_chao_1_tela_10:
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
    bne $10 $0 laco_bloco_chao_1_tela_10
bloco_chao_2_init_tela_10:
    lui $8 0x1001
    addi $8 $8 28672
    addi $22 $8 65536
    li $10 32
    li $20 0x000000 #detalhe
    li $11 0xb0841b
    li $12 0x817235
laco_bloco_chao_2_tela_10:
    li $9 4
bloco_chao_2_tela_10:
    beq $9 $0 final_bloco_chao_2_tela_10
    
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
    j bloco_chao_2_tela_10
final_bloco_chao_2_tela_10:
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
    bne $10 $0 laco_bloco_chao_2_tela_10
    
bloco_chao_3_init_tela_10:
    lui $8 0x1001
    addi $8 $8 30720
    addi $22 $8 65536
    li $10 32
    li $11 0x817235
    li $12 0x6b5727
laco_bloco_chao_3_tela_10:
    li $9 4
bloco_chao_3_tela_10:
    beq $9 $0 final_bloco_chao_3_tela_10
    
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
    j bloco_chao_3_tela_10
final_bloco_chao_3_tela_10:
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
    bne $10 $0 laco_bloco_chao_3_tela_10
    
mario_braçol_bloco_1_tela10:
	lui $8 0x1001
	addi $8 $8 10256
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $12 0x82834c
	li $9 12
laco_mario_braçol_bloco_1_tela10:
	sw $20 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_braçol_bloco_1_tela10
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $11 1028($8)
	sw $20 1540($8)
	sw $11 1028($22)
	sw $20 1540($22)
	addi $8 $8 -4096
	addi $22 $22 -4096
	sw $20 4($8)
	sw $11 516($8)
	sw $20 4($22)
	sw $11 516($22)
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $20 520($8)
	sw $20 524($8)
	sw $11 1036($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1540($8)
	sw $11 1544($8)
	sw $12 1548($8)
	sw $20 520($22)
	sw $20 524($22)
	sw $11 1036($22)
	sw $20 1032($22)
	sw $11 1036($22)
	sw $20 1540($22)
	sw $11 1544($22)
	sw $12 1548($22)
	addi $8 $8 8192
	addi $22 $22 8192
	sw $11 520($8)
	sw $11 1036($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 524($8)
	sw $20 4($8)
	sw $20 516($8)
	sw $20 1032($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $11 520($22)
	sw $11 1036($22)
	sw $12 8($22)
	sw $12 12($22)
	sw $12 524($22)
	sw $20 4($22)
	sw $20 516($8)
	sw $20 1032($8)
	sw $20 1544($8)
	sw $20 1548($8)
mario_braçol_bloco_2_tela_10:
	lui $8 0x1001
	addi $8 $8 8224
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $12 0x82834c
	li $13 0x949d69
	li $14 0x000001
	li $9 24
laco_mario_braçol_bloco_2_tela_10:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $13 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $13 12($22)
	add $8 $8 512
	add $22 $22 512
	add $9 $9 -1
	bnez $9 laco_mario_braçol_bloco_2_tela_10
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $20 2056($8)
	sw $20 2060($8)
	sw $11 0($8)
	sw $11 1028($8)
	sw $12 1036($8)
	sw $12 1548($8)
	sw $14 1536($8)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1540($22)
	sw $20 1544($22)
	sw $20 2056($22)
	sw $20 2060($22)
	sw $11 0($22)
	sw $11 1028($22)
	sw $12 1036($22)
	sw $12 1548($22)
	sw $14 1536($22)
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $13 4($8)
	sw $13 516($8)
	sw $13 8($8)
	sw $13 520($8)
	sw $13 1032($8)
	sw $13 1544($8)
	sw $13 4($22)
	sw $13 516($22)
	sw $13 8($22)
	sw $13 520($22)
	sw $13 1032($22)
	sw $13 1544($22)
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $13 1028($8)
	sw $13 1540($8)
	sw $13 8($8)
	sw $13 520($8)
	sw $13 1032($8)
	sw $13 1544($8)
	sw $13 1028($22)
	sw $13 1540($22)
	sw $13 8($22)
	sw $13 520($22)
	sw $13 1032($22)
	sw $13 1544($22)
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $13 1032($8)
	sw $13 1544($8)
	sw $13 1032($22)
	sw $13 1544($22)
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 12($22)
	sw $12 524($22)
	sw $12 1036($22)
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $20 0($8)
	sw $20 512($8)
	sw $20 -508($8)
	sw $20 -504($8)
	sw $20 -1012($8)
	sw $11 4($8)
	sw $11 -500($8)
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 1548($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 -508($22)
	sw $20 -504($22)
	sw $20 -1012($22)
	sw $11 4($22)
	sw $11 -500($22)
	sw $12 12($22)
	sw $12 524($22)
	sw $12 1036($22)
	sw $12 1548($22)
mario_bracol_bloco3_tela_10:
	lui $8 0x1001
	addi $8 $8 6192
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $12 0x82834c
	li $13 0x949d69
	li $14 0x000001
	li $9 40
laco_mario_bracol_bloco3_tela_10:
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $13 8($22)
	sw $13 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco3_tela_10
	addi $8 $8 -6144
	addi $22 $22 -6144
	sw $12 -512($8)
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
	sw $20 5636($8)
	sw $20 5128($8)
	sw $20 5132($8)
	sw $14 5640($8)
	sw $14 5644($8)
	sw $12 -512($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	sw $20 2048($22)
	sw $20 2560($22)
	sw $20 3072($22)
	sw $20 3584($22)
	sw $20 4096($22)
	sw $20 4608($22)
	sw $20 5120($22)
	sw $20 5632($22)
	sw $20 5636($22)
	sw $20 5128($22)
	sw $20 5132($22)
	sw $14 5640($22)
	sw $14 5644($22)
	addi $8 $8 -12288
	addi $22 $22 -12288
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
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $14 0($8)
	sw $20 4($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 8($8)
	sw $20 -500($8)
	sw $20 -1012($8)
	sw $11 12($8)
	sw $11 520($8)
	sw $11 1024($8)
	sw $12 1028($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $14 0($22)
	sw $20 4($22)
	sw $20 512($22)
	sw $20 516($22)
	sw $20 8($22)
	sw $20 -500($22)
	sw $20 -1012($22)
	sw $11 12($22)
	sw $11 520($22)
	sw $11 1024($22)
	sw $12 1028($22)
	sw $12 1536($22)
	sw $12 1540($22)
mario_bracol_bloco4_tela_10:
	lui $8 0x1001
	addi $8 $8 4160
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $12 0x82834c
	li $13 0x949d69
	li $14 0x000001
	li $9 44
laco_mario_bracol_bloco4_tela_10:
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $13 8($22)
	sw $13 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco4_tela_10
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $14 1032($8)
	sw $14 1036($8)
	sw $14 1536($8)
	sw $14 1540($8)
	sw $14 1544($8)
	sw $14 1548($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 520($8)
	sw $20 524($8)
	sw $20 12($8)
	sw $14 1032($22)
	sw $14 1036($22)
	sw $14 1536($22)
	sw $14 1540($22)
	sw $14 1544($22)
	sw $14 1548($22)
	sw $20 1024($22)
	sw $20 1028($22)
	sw $20 520($22)
	sw $20 524($22)
	sw $20 12($22)
	addi $8 $8 -12288
	addi $22 $22 -12288
	sw $20 1032($8)
	sw $20 1036($8)
	sw $20 1032($22)
	sw $20 1036($22)
	addi $8 $8 -8192
	addi $22 $22 -8192
	sw $14 0($8)
	sw $14 4($8)
	sw $14 8($8)
	sw $14 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 12($8)
	sw $20 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $11 524($8)
	sw $14 0($22)
	sw $14 4($22)
	sw $14 8($22)
	sw $14 512($22)
	sw $20 516($22)
	sw $20 520($22)
	sw $20 12($22)
	sw $20 1024($22)
	sw $11 1028($22)
	sw $11 1536($22)
	sw $11 524($22)
mario_bracol_bloco5_tela_10:
	lui $8 0x1001
	addi $8 $8 4176
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $12 0x82834c
	li $13 0x949d69
	li $14 0x000001
	li $9 40
laco_mario_bracol_bloco5_tela_10:
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $13 8($22)
	sw $13 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco5_tela_10
	sw $20 0($8)
	sw $20 8($8)
	sw $20 520($8)
	sw $20 524($8)
	sw $20 1036($8)
	sw $20 1548($8)
	sw $13 12($8)
	sw $20 0($22)
	sw $20 8($22)
	sw $20 520($22)
	sw $20 524($22)
	sw $20 1036($22)
	sw $20 1548($22)
	sw $13 12($22)
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $20 8($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $20 8($22)
	sw $20 516($22)
	sw $20 520($22)
	sw $20 1028($22)
	sw $20 1032($22)
	sw $20 1536($22)
	sw $20 1540($22)
	sw $20 1544($22)
	addi $8 $8 -8192
	addi $22 $22 -8192
	sw $20 12($8)
	sw $20 12($22)
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $20 1024($8)
	sw $20 1540($8)
	sw $20 1544($8)
	sw $12 12($8)
	sw $12 512($8)
	sw $12 516($8)
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1028($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $12 1548($8)
	sw $20 1024($22)
	sw $20 1540($22)
	sw $20 1544($22)
	sw $12 12($22)
	sw $12 512($22)
	sw $12 516($22)
	sw $12 520($22)
	sw $12 524($22)
	sw $12 1028($22)
	sw $12 1032($22)
	sw $12 1036($22)
	sw $12 1548($22)
	addi $8 $8 -8192
	addi $22 $22 -8192
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
mario_bracol_bloco6_tela_10:
	lui $8 0x1001
	addi $8 $8 4192
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $12 0x82834c
	li $13 0x949d69
	li $14 0x000001
	li $9 12
laco_mario_bracol_bloco6_tela_10:
	sw $13 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 0($22)
	sw $13 4($22)
	sw $13 8($22)
	sw $13 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco6_tela_10
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $20 12($8)
	sw $20 1036($8)
	sw $20 12($22)
	sw $20 1036($22)
	addi $8 $8 -4096
	addi $22 $22 -4096
	sw $11 0($8)
	sw $20 -512($8)
	sw $20 -508($8)
	sw $20 -504($8)
	sw $20 -500($8)
	sw $11 0($22)
	sw $20 -512($22)
	sw $20 -508($22)
	sw $20 -504($22)
	sw $20 -500($22)
mario_bracol_bloco7_tela_10:
	lui $8 0x1001
	addi $8 $8 10336
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x000001
	li $9 4
laco_mario_bracol_bloco7_tela_10:
        sw $13 0($8)
        sw $20 512($8)
        sw $13 0($22)
        sw $20 512($22)
        addi $8 $8 4
        addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco7_tela_10
	addi $8 $8 -16
        addi $22 $22 -16
        sw $20 12($8)
        sw $20 1024($8)
        sw $20 1536($8)
        sw $20 1540($8)
        sw $12 1028($8)
        sw $12 1032($8)
        sw $12 1544($8)
        sw $12 1548($8)
        sw $11 1036($8)
        sw $20 12($22)
        sw $20 1024($22)
        sw $20 1536($22)
        sw $20 1540($22)
        sw $12 1028($22)
        sw $12 1032($22)
        sw $12 1544($22)
        sw $12 1548($22)
        sw $11 1036($22)
mario_bracol_bloco8_tela_10:
	lui $8 0x1001
	addi $8 $8 12384
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x000001
	li $9 4
laco_mario_bracol_bloco8_tela_10:
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco8_tela_10
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
mario_bracol_bloco9_tela_10:
	lui $8 0x1001
	addi $8 $8 12384
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x000001
	li $9 4
laco_mario_bracol_bloco9_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	addi $8 $8 4
        addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco9_tela_10
	addi $8 $8 -16
        addi $22 $22 -16
        sw $11 0($8)
        sw $11 0($22)
mario_bracol_bloco10_tela_10:
	lui $8 0x1001
	addi $8 $8 14432
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x000001
	li $9 4        
laco_mario_bracol_bloco10_tela_10:
	sw $11 0($8)
	sw $20 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	sw $11 0($22)
	sw $20 512($22)
	sw $13 1024($22)
	sw $13 1536($22)
	addi $8 $8 4
        addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco10_tela_10
mario_bracol_bloco11_tela_10:
	lui $8 0x1001
	addi $8 $8 16480
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x000001
	li $9 20  
laco_mario_bracol_bloco11_tela_10:
	sw $13 0($8) 
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 0($22) 
	sw $13 4($22)
	sw $13 8($22)
	sw $13 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco11_tela_10
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $20 524($8) 
	sw $20 1032($8)
	sw $20 1036($8)
	sw $20 1544($8)
	sw $14 1548($8)
	sw $20 524($22) 
	sw $20 1032($22)
	sw $20 1036($22)
	sw $20 1544($22)
	sw $14 1548($22)
mario_bracol_bloco12_tela_10:
	lui $8 0x1001
	addi $8 $8 2160
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x000001
	li $9 4
laco_mario_bracol_bloco12_tela_10:
	sw $20 1024($8)
	sw $13 1536($8)
	sw $20 1024($22)
	sw $13 1536($22)
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco12_tela_10
	addi $8 $8 -16
	addi $22 $22 -16
	sw $11 1536($8)
	sw $11 1536($22)
mario_bracol_bloco13_tela_10:
	lui $8 0x1001
	addi $8 $8 4208
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x000001
	li $9 4	
laco_mario_bracol_bloco13_tela_10:
	sw $13 0($8) 
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 0($22) 
	sw $13 4($22)
	sw $13 8($22)
	sw $13 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco13_tela_10
	addi $8 $8 -2048
	addi $22 $22 -2048
	sw $20 524($8) 
	sw $20 1036($8)
mario_bracol_bloco14_tela_10:
	lui $8 0x1001
	addi $8 $8 6256
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x000001
	li $15 0x922020
	li $9 4	
laco_mario_bracol_bloco14_tela_10:
	sw $13 0($8) 
	sw $20 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $13 0($22) 
	sw $20 4($22)
	sw $12 8($22)
	sw $12 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco14_tela_10
	addi $8 $8 -2048
	sw $20 1536($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $13 4($8) 
	sw $12 1540($8)
	sw $15 1544($8)
	sw $15 1548($8)
	sw $20 1536($22)
	sw $20 8($22)
	sw $20 12($22)
	sw $13 4($22) 
	sw $12 1540($22)
	sw $15 1544($22)
	sw $15 1548($22)
mario_bracol_bloco15_tela_10:
	lui $8 0x1001
	addi $8 $8 8304
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69	
	li $12 0x82834c
	li $13 0x922020
	li $14 0x7a1313
	li $15 0x000001
	li $9  4       
laco_mario_bracol_bloco15_tela_10:
	sw $13 0($8)
	sw $14 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	sw $13 0($22)
	sw $14 512($22)
	sw $20 1024($22)
	sw $11 1536($22)
	addi $8 $8 4
        addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco15_tela_10	
	addi $8 $8 -16
	addi $22 $22 -16
	sw $20 0($8)
	sw $20 512($8)
	sw $14 516($8)
	sw $14 4($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $14 516($22)
	sw $14 4($22)
mario_bracol_bloco16_tela_10:
	lui $8 0x1001
	addi $8 $8 10352
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69	
	li $12 0x82834c
	li $13 0x922020
	li $14 0x7a1313
	li $15 0x000001
	li $9 4       
laco_mario_bracol_bloco16_tela_10:
	sw $20 0($8)
	sw $14 512($8)
	sw $13 1024($8)
	sw $14 1536($8)
	sw $20 0($22)
	sw $14 512($22)
	sw $13 1024($22)
	sw $14 1536($22)
	addi $8 $8 4
        addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco16_tela_10
	addi $8 $8 -16
	addi $22 $22 -16
	sw $13 524($8)
	sw $13 1544($8)
	sw $13 1548($8)
	sw $13 524($22)
	sw $13 1544($22)
	sw $13 1548($22)
mario_bracol_bloco17_tela_10:
	lui $8 0x1001
	addi $8 $8 12400
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69	
	li $12 0x82834c
	li $13 0x922020
	li $14 0x7a1313
	li $15 0x000001
	li $9 4        
laco_mario_bracol_bloco17_tela_10:
	sw $14 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $14 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	addi $8 $8 4
        addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco17_tela_10
	addi $8 $8 -16
	addi $22 $22 -16
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($8)
	sw $14 1548($8)
	sw $12 1024($22)
	sw $12 1536($22)
	sw $20 0($22)
	sw $14 1548($22)
mario_bracol_bloco18_tela_10:
	lui $8 0x1001
	addi $8 $8 14448
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69	
	li $12 0x82834c
	li $13 0x922020
	li $14 0x7a1313
	li $15 0x000001
	li $9 4        
laco_mario_bracol_bloco18_tela_10:
	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	addi $8 $8 4
        addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco18_tela_10
	addi $8 $8 -16
	addi $22 $22 -16
	sw $20 8($8)
	sw $20 12($8)
	sw $12 1032($8)
	sw $11 1536($8)
	sw $11 1540($8)
mario_bracol_bloco19_tela_10:
	lui $8 0x1001
	addi $8 $8 16496
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69	
	li $12 0x82834c
	li $13 0x922020
	li $14 0x7a1313
	li $15 0x000001
	li $9 12
laco_mario_bracol_bloco19_tela_10:
	sw $11 0($8) 
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 0($22) 
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco19_tela_10
	addi $8 $8 -2048
	addi $22 $22 -2048
mario_bracol_bloco20_tela_10:
	lui $8 0x1001
	addi $8 $8 22640
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69	
	li $12 0x82834c
	li $13 0x922020
	li $14 0x7a1313
	li $15 0x000001
	li $9 4       
laco_mario_bracol_bloco20_tela_10:
	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $11 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	addi $8 $8 4
        addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco20_tela_10
	addi $8 $8 -16
	addi $22 $22 -16
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 1032($8)
	sw $20 1540($8)
	sw $15 1036($8)
	sw $15 1544($8)
	sw $15 1548($8)
	sw $20 2048($8)
	sw $20 2052($8)
	sw $20 2560($8)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	sw $20 1032($22)
	sw $20 1540($22)
	sw $15 1036($22)
	sw $15 1544($22)
	sw $15 1548($22)
	sw $20 2048($22)
	sw $20 2052($22)
	sw $20 2560($22)
mario_bracol_bloco21_tela_10:
    lui $8 0x1001
    addi $8 $8 2176
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco22_tela_10:
    sw $15 0($8)
    sw $20 512($8)
    sw $14 1024($8)
    sw $13 1536($8)
    sw $15 0($22)
    sw $20 512($22)
    sw $14 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco22_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
        sw $15 512($8)
        sw $20 1024($8)
        sw $20 1536($8)
        sw $14 1540($8)
        sw $15 512($22)
        sw $20 1024($22)
        sw $20 1536($22)
        sw $14 1540($22)
mario_bracol_bloco23_tela_10:
    lui $8 0x1001
    addi $8 $8 4224
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco23_tela_10:
    sw $13 0($8)
    sw $14 512($8)
    sw $13 1024($8)
    sw $20 1536($8)
    sw $13 0($22)
    sw $14 512($22)
    sw $13 1024($22)
    sw $20 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco23_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $13 1548($8)
    sw $13 524($8)
    sw $14 4($8)
    sw $14 1028($8)
    sw $20 0($8)
    sw $20 1024($8)
    sw $13 1548($22)
    sw $13 524($22)
    sw $14 4($22)
    sw $14 1028($22)
    sw $20 0($22)
    sw $20 1024($22)
mario_bracol_bloco24_tela_10:
    lui $8 0x1001
    addi $8 $8 6272
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco24_tela_10:
    sw $14 0($8)
    sw $13 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $14 0($22)
    sw $13 512($22)
    sw $13 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco24_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $14 1024($8)
    sw $14 1028($8)
    sw $14 1024($22)
    sw $14 1028($22)
mario_bracol_bloco25_tela_10:
    lui $8 0x1001
    addi $8 $8 8320
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco25_tela_10:
    sw $13 0($8)
    sw $13 512($8)
    sw $20 1024($8)
    sw $20 1536($8)
    sw $13 0($22)
    sw $13 512($22)
    sw $20 1024($22)
    sw $20 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco25_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $14 512($8)
    sw $14 516($8)
    sw $14 1032($8)
    sw $14 1036($8)
    sw $11 1536($8)
     sw $14 512($22)
    sw $14 516($22)
    sw $14 1032($22)
    sw $14 1036($22)
    sw $11 1536($22)
 mario_bracol_bloco26_tela_10:
    lui $8 0x1001
    addi $8 $8 10368
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco26_tela_10:
    sw $14 0($8)
    sw $13 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $14 0($22)
    sw $13 512($22)
    sw $13 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco26_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 0($8)
    sw $20 0($22)
mario_bracol_bloco27_tela_10:
    lui $8 0x1001
    addi $8 $8 12416
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco27_tela_10:
    sw $13 0($8)
    sw $13 512($8)
    sw $13 1024($8)
    sw $14 1536($8)
    sw $13 0($22)
    sw $13 512($22)
    sw $13 1024($22)
    sw $14 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco27_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $13 1548($8)
    sw $20 1024($8)
    sw $14 0($8)
    sw $14 512($8)
    sw $14 516($8)
    sw $13 1548($22)
    sw $20 1024($22)
    sw $14 0($22)
    sw $14 512($22)
    sw $14 516($22)
mario_bracol_bloco28_tela_10:
    lui $8 0x1001
    addi $8 $8 14464
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco28_tela_10:
    sw $14 0($8)
    sw $20 512($8)
    sw $20 1024($8)
    sw $14 1536($8)
    sw $14 0($22)
    sw $20 512($22)
    sw $20 1024($22)
    sw $14 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco28_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 0($8)
    sw $12 512($8)
    sw $14 524($8)
    sw $13 1036($8)
    sw $13 1548($8)
    sw $20 0($22)
    sw $12 512($22)
    sw $14 524($22)
    sw $13 1036($22)
    sw $13 1548($22)
mario_bracol_bloco29_tela_10:
    lui $8 0x1001
    addi $8 $8 16512
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco29_tela_10:
    sw $20 0($8)
    sw $11 512($8)
    sw $11 1024($8)
    sw $11 1536($8)
    sw $20 0($22)
    sw $11 512($22)
    sw $11 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco29_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 520($8)
    sw $20 1036($8)
    sw $13 12($8)
    sw $14 524($8)
    sw $14 8($8)
     sw $20 520($22)
    sw $20 1036($22)
    sw $13 12($22)
    sw $14 524($22)
    sw $14 8($22)
mario_bracol_bloco30_tela_10:
    lui $8 0x1001
    addi $8 $8 18560
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 8
laco_mario_bracol_bloco30_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco30_tela_10
 
mario_bracol_bloco31_tela_10:
    lui $8 0x1001
    addi $8 $8 22656
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco31_tela_10:
    sw $11 0($8)
    sw $11 512($8)
    sw $11 1024($8)
    sw $20 1536($8)
    sw $11 0($22)
    sw $11 512($22)
    sw $11 1024($22)
    sw $20 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco31_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $11 1032($8)
    sw $11 1036($8)
    sw $11 1548($8)
    sw $15 1536($8)
mario_bracol_bloco32_tela_10:
    lui $8 0x1001
    addi $8 $8 24704
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco32_tela_10:
    sw $15 0($8)
    sw $15 4($8)
    sw $15 8($8)
    sw $20 12($8)
    sw $15 0($22)
    sw $15 4($22)
    sw $15 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco32_tela_10
    mario_bracol_bloco33_tela_10:
    lui $8 0x1001
    addi $8 $8 2192
    addi $22 $8 65536
    li $20 0x22200a
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco33_tela_10:
    sw $15 0($8)
    sw $20 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $15 0($22)
    sw $20 512($22)
    sw $13 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco33_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $14 1024($8)
    sw $14 1024($22)
mario_bracol_bloco34_tela_10:
    lui $8 0x1001
    addi $8 $8 4240
    addi $22 $8 65536
    li $20 0x22200
    li $12 0x82834c
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 24
laco_mario_bracol_bloco34_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco34_tela_10
    addi $8 $8 -8192
    addi $22 $22 -8192
    sw $14 1024($8)
    sw $14 1540($8)
    sw $20 1536($8)
    sw $14 1024($22)
    sw $14 1540($22)
    sw $20 1536($22)
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $14 0($8)
    sw $14 4($8)
    sw $14 0($22)
    sw $14 4($22)
 mario_bracol_bloco35_tela_10:
    lui $8 0x1001
    addi $8 $8 16528
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco35_tela_10:
    sw $13 0($8)
    sw $14 512($8)
    sw $20 1024($8)
    sw $20 1536($8)
    sw $13 0($22)
    sw $14 512($22)
    sw $20 1024($22)
    sw $20 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco35_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $13 520($8)
    sw $14 1028($8)
    sw $14 1540($8)
    sw $20 524($8)
    sw $11 1548($22)
    sw $13 520($22)
    sw $14 1028($22)
    sw $14 1540($22)
    sw $20 524($22)
    sw $11 1548($22)
 mario_bracol_bloco36_tela_10:
    lui $8 0x1001
    addi $8 $8 18576
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco36_tela_10:
    sw $14 0($8)
    sw $20 4($8)
    sw $12 8($8)
    sw $11 12($8)
    sw $14 0($22)
    sw $20 4($22)
    sw $12 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco36_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 0($8)
    sw $20 0($22)
mario_bracol_bloco37_tela_10:
    lui $8 0x1001
    addi $8 $8 20624
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco37_tela_10:
    sw $14 0($8)
    sw $20 4($8)
    sw $12 8($8)
    sw $12 12($8)
    sw $14 0($22)
    sw $20 4($22)
    sw $12 8($22)
    sw $12 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco37_tela_10
    mario_bracol_bloco38_tela_10:
    lui $8 0x1001
    addi $8 $8 22672
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco38_tela_10:
    sw $14 0($8)
    sw $20 4($8)
    sw $12 8($8)
    sw $12 12($8)
    sw $14 0($22)
    sw $20 4($22)
    sw $12 8($22)
    sw $12 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco38_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 1536($8)
    sw $12 1540($8)
    sw $20 1536($22)
    sw $12 1540($22)
mario_bracol_bloco39_tela_10:
    lui $8 0x1001
    addi $8 $8 24720
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco39_tela_10:
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
    bnez $9 laco_mario_bracol_bloco39_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 0($8)
    sw $20 512($8)
    sw $20 0($22)
    sw $20 512($22)
mario_bracol_bloco40_tela_10:
    lui $8 0x1001
    addi $8 $8 2208
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco40_tela_10:
    sw $15 0($8)
    sw $20 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $15 0($22)
    sw $20 512($22)
    sw $14 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco40_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
mario_bracol_bloco41_tela_10:
    lui $8 0x1001
    addi $8 $8 4256
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 20
laco_mario_bracol_bloco41_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco41_tela_10  
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 1548($8)
     sw $20 1548($22)
mario_bracol_bloco42_tela_10:
    lui $8 0x1001
    addi $8 $8 14496
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco42_tela_10:
    sw $13 0($8)
    sw $13 512($8)
    sw $20 1024($8)
    sw $20 1536($8)
    sw $13 0($22)
    sw $13 512($22)
    sw $20 1024($22)
    sw $20 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco42_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $13 1024($8)
    sw $13 1028($8)
    sw $13 1536($8)
    sw $20 12($8)
    sw $20 524($8)
    sw $11 1548($8)
    sw $13 1024($22)
    sw $13 1028($22)
    sw $13 1536($22)
    sw $20 12($22)
    sw $20 524($22)
    sw $11 1548($22)
mario_bracol_bloco43_tela_10:
    lui $8 0x1001
    addi $8 $8 16544
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 12
laco_mario_bracol_bloco43_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco43_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 1536($8)
    sw $12 1536($22)
    addi $8 $8 -4096
    addi $22 $22 -4096
    sw $20 0($8)
    sw $20 4($8)
    sw $11 1532($8)
    sw $20 0($22)
    sw $20 4($22)
    sw $11 1532($22)
mario_bracol_bloco44_tela_10:
    lui $8 0x1001
    addi $8 $8 22688
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco44_tela_10:
    sw $12 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $12 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco44_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 1540($8)
    sw $12 1540($22)
mario_bracol_bloco45_tela_10:
    lui $8 0x1001
    addi $8 $8 24736
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco45_tela_10:
    sw $12 0($8)
    sw $12 4($8)
    sw $12 8($8)
    sw $11 12($8)
    sw $12 0($22)
    sw $12 4($22)
    sw $12 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco45_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $11 8($8)
    sw $11 520($8)
     sw $11 8($22)
    sw $11 520($22)
mario_bracol_bloco46_tela_10:
    lui $8 0x1001
    addi $8 $8 2224
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco46_tela_10:
    sw $15 0($8)
    sw $20 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $15 0($22)
    sw $20 512($22)
    sw $13 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco46_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 1036($8)
    sw $20 1548($8)
    sw $20 1036($22)
    sw $20 1548($22)
mario_bracol_bloco47_tela_10:
    lui $8 0x1001
    addi $8 $8 4272
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco47_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $20 8($8)
    sw $12 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $20 8($22)
    sw $12 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco47_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 1540($8)
    sw $12 1544($8)
    sw $11 1548($8)
    sw $20 1540($22)
    sw $12 1544($22)
    sw $11 1548($22)
mario_bracol_bloco48_tela_10:
    lui $8 0x1001
    addi $8 $8 6320
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 8
laco_mario_bracol_bloco48_tela_10:
    sw $13 0($8)
    sw $20 4($8)
    sw $12 8($8)
    sw $11 12($8)
    sw $13 0($22)
    sw $20 4($22)
    sw $12 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco48_tela_10
mario_bracol_bloco49_tela_10:
    lui $8 0x1001
    addi $8 $8 10416
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco49_tela_10:
    sw $20 0($8)
    sw $12 4($8)
    sw $12 8($8)
    sw $11 12($8)
    sw $20 0($22)
    sw $12 4($22)
    sw $12 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco49_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 4($8)
    sw $13 0($8)
    sw $11 1032($8)
    sw $11 1544($8)
    sw $20 4($22)
    sw $13 0($22)
    sw $11 1032($22)
    sw $11 1544($22)
mario_bracol_bloco50_tela_10:
    lui $8 0x1001
    addi $8 $8 12464
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco50_tela_10:
    sw $20 0($8)
    sw $12 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $20 0($22)
    sw $12 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco50_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 1536($8)
    sw $11 1540($8)
    sw $12 1536($22)
    sw $11 1540($22)
mario_bracol_bloco51_tela_10:
    lui $8 0x1001
    addi $8 $8 14512
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco51_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco51_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 0($8)
    sw $20 1036($8)
    sw $20 1548($8)
    sw $12 0($22)
    sw $20 1036($22)
    sw $20 1548($22)
mario_bracol_bloco52_tela_10:
    lui $8 0x1001
    addi $8 $8 16560
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 8
laco_mario_bracol_bloco52_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $20 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco52_tela_10
mario_bracol_bloco53_tela_10:
    lui $8 0x1001
    addi $8 $8 20656
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 8
laco_mario_bracol_bloco53_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco53_tela_10
    addi $8 $8 -4096
    addi $22 $22 -4096
    sw $20 12($8)
    sw $20 12($22)
 mario_bracol_bloco54_tela_10:
    lui $8 0x1001
    addi $8 $8 24752
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0xb7bf2a
    li $12 0x255772
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco54_tela_10:
    sw $12 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $12 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco54_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 4($8)
    sw $12 8($8)
    sw $12 4($22)
    sw $12 8($22)
mario_bracol_bloco55_tela_10:
    lui $8 0x1001
    addi $8 $8 2240
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco55_tela_10:
    sw $15 0($8)
    sw $20 512($8)
    sw $11 1024($8)
    sw $11 1536($8)
    sw $15 0($22)
    sw $20 512($22)
    sw $11 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco55_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $12 1024($8)
    sw $12 1536($8)
    sw $12 1024($22)
    sw $12 1536($22)
mario_bracol_bloco56_tela_10:
    lui $8 0x1001
    addi $8 $8 4288
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco56_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco56_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 0($8)
    sw $20 1548($8)
    sw $12 0($22)
    sw $20 1548($22)
mario_bracol_bloco57_tela_10:
    lui $8 0x1001
    addi $8 $8 6336
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco57_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $20 8($8)
    sw $13 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $20 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco57_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $11 8($8)
    sw $20 12($8)
    sw $14 524($8)
    sw $11 8($22)
    sw $20 12($22)
    sw $14 524($22)
mario_bracol_bloco58_tela_10:
    lui $8 0x1001
    addi $8 $8 8384
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco58_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $20 8($8)
    sw $20 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $20 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco58_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $13 1544($8)
    sw $20 1540($8)
    sw $13 1544($22)
    sw $20 1540($22)
mario_bracol_bloco59_tela_10:
    lui $8 0x1001
    addi $8 $8 10432
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco59_tela_10:
    sw $11 0($8)
    sw $20 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $11 0($22)
    sw $20 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco59_tela_10
mario_bracol_bloco60_tela_10:
    lui $8 0x1001
    addi $8 $8 12480
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco60_tela_10:
    sw $11 0($8)
    sw $20 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $11 0($22)
    sw $20 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco60_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 1024($8)
    sw $20 1536($8)
    sw $13 1540($8)
    sw $20 1024($22)
    sw $20 1536($22)
    sw $13 1540($22)
mario_bracol_bloco61_tela_10:
    lui $8 0x1001
    addi $8 $8 14528
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco61_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco61_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 0($8)
    sw $20 512($8)
    sw $20 0($22)
    sw $20 512($22)
mario_bracol_bloco62_tela_10:
    lui $8 0x1001
    addi $8 $8 14528
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco62_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco62_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 0($8)
    sw $20 512($8)
    sw $20 0($22)
    sw $20 512($22)
mario_bracol_bloco63_tela_10:
    lui $8 0x1001
    addi $8 $8 16576
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco63_tela_10:
    sw $13 0($8)
    sw $13 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $13 0($22)
    sw $13 512($22)
    sw $13 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco63_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 12($8)
    sw $20 520($8)
    sw $20 524($8)
     sw $20 12($22)
    sw $20 520($22)
    sw $20 524($22)
mario_bracol_bloco64_tela_10:
    lui $8 0x1001
    addi $8 $8 18624
    addi $22 $8 65536
    li $20 0x7a1313
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco64_tela_10:
    sw $13 0($8)
    sw $13 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $13 0($22)
    sw $13 512($22)
    sw $13 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco64_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 1536($8)
    sw $20 1536($22)
mario_bracol_bloco65_tela_10:
    lui $8 0x1001
    addi $8 $8 20672
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x7a1313
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco65_tela_10:
    sw $13 0($8)
    sw $20 512($8)
    sw $11 1024($8)
    sw $11 1536($8)
    sw $13 0($22)
    sw $20 512($22)
    sw $11 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco65_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 0($8)
    sw $12 4($8)
    sw $20 0($22)
    sw $12 4($22)
mario_bracol_bloco66_tela_10:
    lui $8 0x1001
    addi $8 $8 22720
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco66_tela_10:
    sw $11 0($8)
    sw $11 512($8)
    sw $11 1024($8)
    sw $11 1536($8)
    sw $11 0($22)
    sw $11 512($22)
    sw $11 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco66_tela_10
mario_bracol_bloco67_tela_10:
    lui $8 0x1001
    addi $8 $8 24768
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0xb7bf2a
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco67_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco67_tela_10
mario_bracol_bloco68_tela_10:
    lui $8 0x1001
    addi $8 $8 2256
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco68_tela_10:
    sw $15 0($8)
    sw $20 512($8)
    sw $11 1024($8)
    sw $11 1536($8)
    sw $15 0($22)
    sw $20 512($22)
    sw $11 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco68_tela_10
mario_bracol_bloco69_tela_10:
    lui $8 0x1001
    addi $8 $8 4304
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco69_tela_10:
    sw $11 0($8)
    sw $20 512($8)
    sw $20 1024($8)
    sw $13 1536($8)
    sw $11 0($22)
    sw $20 512($22)
    sw $20 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco69_tela_10
    addi $8 $8 -16
    addi $22 $22 -16  
    sw $11 512($8)
    sw $14 1032($8)
    sw $14 1536($8)
    sw $13 1036($8)
    sw $11 512($22)
    sw $14 1032($22)
    sw $14 1536($22)
    sw $13 1036($22)
    mario_bracol_bloco70_tela_10:
    lui $8 0x1001
    addi $8 $8 6352
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco70_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco70_tela_10
mario_bracol_bloco71_tela_10:
    lui $8 0x1001
    addi $8 $8 8400
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco71_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco71_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 1536($8)
    sw $20 1548($8)
    sw $20 1536($22)
    sw $20 1548($22)
mario_bracol_bloco72_tela_10:
    lui $8 0x1001
    addi $8 $8 10448
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco72_tela_10:
    sw $20 0($8)
    sw $13 4($8)
    sw $20 8($8)
    sw $14 12($8)
    sw $20 0($22)
    sw $13 4($22)
    sw $20 8($22)
    sw $14 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco72_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 12($8)
    sw $20 1540($8)
    sw $13 8($8)
    sw $20 1536($8)
    sw $14 1544($8)
    sw $20 12($22)
    sw $20 1540($22)
    sw $13 8($22)
    sw $20 1536($22)
    sw $14 1544($22)
mario_bracol_bloco73_tela_10:
    lui $8 0x1001
    addi $8 $8 12496
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco73_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $20 8($8)
    sw $14 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $20 8($22)
    sw $14 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco73_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 4($8)
    sw $20 516($8)
    sw $20 1548($8)
    sw $14 8($8)
    sw $14 520($8)  
     sw $20 4($22)
    sw $20 516($22)
    sw $20 1548($22)
    sw $14 8($22)
    sw $14 520($22)    
mario_bracol_bloco74_tela_10:
    lui $8 0x1001
    addi $8 $8 14544
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco74_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $20 8($8)
    sw $20 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $20 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco74_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $13 8($8)
    sw $20 1540($8)
    sw $13 8($22)
    sw $20 1540($22)
mario_bracol_bloco75_tela_10:
    lui $8 0x1001
    addi $8 $8 16592
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco75_tela_10:
    sw $20 0($8)
    sw $20 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $20 0($22)
    sw $20 512($22)
    sw $13 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco75_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $13 520($8)
    sw $13 524($8)   
    sw $13 520($22)
    sw $13 524($22)  
mario_bracol_bloco76_tela_10:
    lui $8 0x1001
    addi $8 $8 18640
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco76_tela_10:
    sw $13 0($8)
    sw $13 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $13 0($22)
    sw $13 512($22)
    sw $13 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco76_tela_10
mario_bracol_bloco77_tela_10:
    lui $8 0x1001
    addi $8 $8 20688
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x7a1313
    li $9 4
laco_mario_bracol_bloco77_tela_10:
    sw $13 0($8)
    sw $20 512($8)
    sw $20 1024($8)
    sw $11 1536($8)
    sw $13 0($22)
    sw $20 512($22)
    sw $20 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco77_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $15 512($8)
    sw $15 516($8)
    sw $11 1032($8)
    sw $11 1036($8)
    sw $15 512($22)
    sw $15 516($22)
    sw $11 1032($22)
    sw $11 1036($22)
mario_bracol_bloco78_tela_10:
    lui $8 0x1001
    addi $8 $8 22736
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco78_tela_10:
    sw $11 0($8)
    sw $11 512($8)
    sw $11 1024($8)
    sw $11 1536($8)
    sw $11 0($22)
    sw $11 512($22)
    sw $11 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco78_tela_10
mario_bracol_bloco79_tela_10:
    lui $8 0x1001
    addi $8 $8 24784
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0xb7bf2a
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco79_tela_10:
    sw $14 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $14 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco79_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $11 0($8)
    sw $11 0($22)    
    
mario_bracol_bloco80_tela_10:
	lui $8 0x1001
	addi $8 $8 2272
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
laco_mario_bracol_bloco80_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco80_tela_10
	
mario_bracol_bloco81_tela_10:
	lui $8 0x1001
	addi $8 $8 4320
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $9 4
laco_mario_bracol_bloco81_tela_10:
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
	bnez $9 laco_mario_bracol_bloco81_tela_10 

mario_bracol_bloco82_tela_10:
	lui $8 0x1001
	addi $8 $8 6368
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $9 4
laco_mario_bracol_bloco82_tela_10:
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
	bnez $9 laco_mario_bracol_bloco82_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 1536($8)
	sw $11 1036($8)
	sw $20 1536($22)
	sw $11 1036($22)

mario_bracol_bloco83_tela_10:
	lui $8 0x1001
	addi $8 $8 8416
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x949d69
	li $13 0x82834c
	li $14 0x615e2f
	li $9 4
laco_mario_bracol_bloco83_tela_10:
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $14 524($8)
	sw $11 1024($8)
	sw $14 1028($8)
	sw $13 1032($8)
	sw $12 1036($8)
	sw $14 1536($8)
	sw $13 1540($8)
	sw $14 1544($8)
	sw $14 1548($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	sw $11 512($22)
	sw $11 516($22)
	sw $11 520($22)
	sw $14 524($22)
	sw $11 1024($22)
	sw $14 1028($22)
	sw $13 1032($22)
	sw $12 1036($22)
	sw $14 1536($22)
	sw $13 1540($22)
	sw $14 1544($22)
	sw $14 1548($22)
	
mario_bracol_bloco84_tela_10:
	lui $8 0x1001
	addi $8 $8 10464
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x949d69
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
laco_mario_bracol_bloco84_tela_10:
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
	bnez $9 laco_mario_bracol_bloco84_tela_10

	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 8($8)
	sw $11 12($8)
	sw $20 1028($8)
	sw $13 1540($8)
	sw $11 8($22)
	sw $11 12($22)
	sw $20 1028($22)
	sw $13 1540($22)
	
mario_bracol_bloco85_tela_10:
	lui $8 0x1001
	addi $8 $8 12512
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x615e2f
	li $9 4
laco_mario_bracol_bloco85_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco85_tela_10
	
	sw $12 -8($8)
	sw $12 -4($8)
	sw $20 1020($8)
	sw $12 -8($22)
	sw $12 -4($22)
	sw $20 1020($22)
	
mario_bracol_bloco86_tela_10:
	lui $8 0x1001
	addi $8 $8 14560
	addi $22 $8 65536
	li $20 0x22200a
	li $9 4
laco_mario_bracol_bloco86_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco86_tela_10	
	
mario_bracol_bloco87_tela_10:
	lui $8 0x1001
	addi $8 $8 16608
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $9 4
laco_mario_bracol_bloco87_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco87_tela_10
    
    	sw $11 -4($8)
    	sw $11 -4($22)
   
mario_bracol_bloco88_tela_10:
	lui $8 0x1001
	addi $8 $8 18656
	addi $22 $8 65536
	li $20 0x922020
	li $9 4
laco_mario_bracol_bloco88_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco88_tela_10   
    
mario_bracol_bloco89_tela_10:
	lui $8 0x1001
	addi $8 $8 20704
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $9 4
laco_mario_bracol_bloco89_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco89_tela_10    
    
mario_bracol_bloco90_tela_10:
	lui $8 0x1001
	addi $8 $8 22752
	addi $22 $8 65536
	li $20 0x255772

	li $9 8
laco_mario_bracol_bloco90_tela_10:
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
	bnez $9 laco_mario_bracol_bloco90_tela_10    
    
mario_bracol_bloco91_tela_10:
	lui $8 0x1001
	addi $8 $8 2288
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $13 0x922020
	li $9 4
laco_mario_bracol_bloco91_tela_10:
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
	bnez $9 laco_mario_bracol_bloco91_tela_10 
    
	sw $11 1016($8)
	sw $11 1020($8)
	sw $13 1528($8)
	sw $13 1532($8)
	sw $11 1016($22)
	sw $11 1020($22)
	sw $13 1528($22)
	sw $13 1532($22)
	
mario_bracol_bloco92_tela_10:
	lui $8 0x1001
	addi $8 $8 4336
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0xffffff
	li $12 0x922020
	li $9 4
laco_mario_bracol_bloco92_tela_10:
	sw $12 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $11 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco92_tela_10	
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 0($8)
	sw $11 12($8)
	sw $20 512($8)
	sw $11 524($8)
	sw $20 0($22)
	sw $11 12($22)
	sw $20 512($22)
	sw $11 524($22)
	
mario_bracol_bloco93_tela_10:
	lui $8 0x1001
	addi $8 $8 6384
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0xffffff
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
laco_mario_bracol_bloco93_tela_10:
	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $13 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $20 1024($22)
	sw $13 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco93_tela_10
	
	sw $11 -8($8)
	sw $20 -4($8)
	sw $20 504($8)
	sw $20 508($8)
	sw $13 1016($8)
	sw $13 1020($8)
	sw $11 -8($22)
	sw $20 -4($22)
	sw $20 504($22)
	sw $20 508($22)
	sw $13 1016($22)
	sw $13 1020($22)
			
mario_bracol_bloco94_tela_10:
	lui $8 0x1001
	addi $8 $8 8432
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69
	li $12 0x615e2f
	li $9 4
laco_mario_bracol_bloco94_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco94_tela_10				
					
	sw $11 1532($8)
	sw $11 1532($22)
	
mario_bracol_bloco95_tela_10:
	lui $8 0x1001
	addi $8 $8 10480
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x949d69
	li $12 0x615e2f
	li $13 0xfe0000
	li $14 0x82834c
	li $9 4
laco_mario_bracol_bloco95_tela_10:
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
	bnez $9 laco_mario_bracol_bloco95_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $13 1024($8)
	sw $14 524($8)
	sw $12 1548($8)
	sw $13 1024($22)
	sw $14 524($22)
	sw $12 1548($22)
	
mario_bracol_bloco96_tela_10:
	lui $8 0x1001
	addi $8 $8 12528
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $9 4
laco_mario_bracol_bloco96_tela_10:
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
	bnez $9 laco_mario_bracol_bloco96_tela_10	
	
	sw $20 -4($8)
	sw $20 -4($22)
	
mario_bracol_bloco97_tela_10:
	lui $8 0x1001
	addi $8 $8 14576
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0xcece55
	li $9 4
laco_mario_bracol_bloco97_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco97_tela_10	
	
	sw $11 1016($8)
	sw $11 1020($8)
	sw $11 1016($22)
	sw $11 1020($22)
	
mario_bracol_bloco98_tela_10:
	lui $8 0x1001
	addi $8 $8 16624
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x922020
	
	li $9 4
laco_mario_bracol_bloco98_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco98_tela_10	
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 8($8)
	sw $11 12($8)
	sw $12 512($8)
	sw $11 524($8)
	sw $12 1024($8)
	sw $12 1028($8)
	sw $11 8($22)
	sw $11 12($22)
	sw $12 512($22)
	sw $11 524($22)
	sw $12 1024($22)
	sw $12 1028($22)
	
mario_bracol_bloco99_tela_10:
	lui $8 0x1001
	addi $8 $8 18672
	addi $22 $8 65536
	li $20 0x922020
	
	li $9 4
laco_mario_bracol_bloco99_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco99_tela_10	
	
mario_bracol_bloco100_tela_10:
	lui $8 0x1001
	addi $8 $8 20720
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x255772
	li $12 0x7a1313
	
	li $9 4
laco_mario_bracol_bloco100_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco100_tela_10	
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 0($8)
	sw $20 512($8)
	sw $12 0($22)
	sw $20 512($22)
	
mario_bracol_bloco101_tela_10:
	lui $8 0x1001
	addi $8 $8 22768
	addi $22 $8 65536
	li $20 0x255772
	
	li $9 8
laco_mario_bracol_bloco101_tela_10:
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
	bnez $9 laco_mario_bracol_bloco101_tela_10	
	
mario_bracol_bloco102_tela_10:
	lui $8 0x1001
	addi $8 $8 2304
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $13 0x922020
	li $9 4
laco_mario_bracol_bloco102_tela_10:
	sw $11 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco102_tela_10	
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $11 512($8)
	sw $13 1548($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $13 1548($22)
	
mario_bracol_bloco103_tela_10:
	lui $8 0x1001
	addi $8 $8 4352
	addi $22 $8 65536
	li $20 0xffffff
	li $11 0x922020
	li $9 4
laco_mario_bracol_bloco103_tela_10:
	sw $11 0($8)
	sw $11 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco103_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 8($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 1540($8)
	sw $11 1544($8)
	sw $11 8($22)
	sw $20 1024($22)
	sw $20 1536($22)
	sw $20 1540($22)
	sw $11 1544($22)	
			
mario_bracol_bloco104_tela_10:
	lui $8 0x1001
	addi $8 $8 6400
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x7a1313
	li $9 4
laco_mario_bracol_bloco104_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco104_tela_10			
					
	sw $20 1532($8)
	sw $20 1532($22)				
							
mario_bracol_bloco105_tela_10:
	lui $8 0x1001
	addi $8 $8 8448
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69
	li $9 4
laco_mario_bracol_bloco105_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco105_tela_10								
									
	sw $11 -4($8)								
	sw $11 -4($22)											
												
mario_bracol_bloco106_tela_10:
	lui $8 0x1001
	addi $8 $8 10496
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 4
laco_mario_bracol_bloco106_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco106_tela_10													
														
mario_bracol_bloco107_tela_10:
	lui $8 0x1001
	addi $8 $8 12544
	addi $22 $8 65536
	li $20 0x22200a
	li $9 4
laco_mario_bracol_bloco107_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco107_tela_10															
	
mario_bracol_bloco108_tela_10:
	lui $8 0x1001
	addi $8 $8 14592
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0xcece55
	li $9 4
laco_mario_bracol_bloco108_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco108_tela_10															
																															
	addi $8 $8 -16
	addi $22 $22 -16
																																														
	sw $11 520($8)
	sw $11 1028($8)
	sw $11 1032($8)																																																												
	sw $11 520($22)
	sw $11 1028($22)
	sw $11 1032($22)																																																																												
																																																																																											
mario_bracol_bloco109_tela_10:
	lui $8 0x1001
	addi $8 $8 16640
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69
	li $12 0x922020
	li $9 4
laco_mario_bracol_bloco109_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco109_tela_10																																																																																																									
																																																																																																																									
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 1028($8)
	sw $12 1548($8)																																																																																																																																				
	sw $11 1028($22)
	sw $12 1548($22)																																																																																																																																																							
																																																																																																																																																																						
mario_bracol_bloco110_tela_10:
	lui $8 0x1001
	addi $8 $8 18688
	addi $22 $8 65536
	li $20 0x922020
	li $9 4
laco_mario_bracol_bloco110_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco110_tela_10
	
																																																																																																																																																																																			
mario_bracol_bloco111_tela_10:
	lui $8 0x1001
	addi $8 $8 20736
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x255772
	li $9 4
laco_mario_bracol_bloco111_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco111_tela_10																																																																																																																																																																																																			
																																																																																																																																																																																																																			
mario_bracol_bloco112_tela_10:
	lui $8 0x1001
	addi $8 $8 22784
	addi $22 $8 65536
	li $20 0x255772
	li $9 8
laco_mario_bracol_bloco112_tela_10:
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
	bnez $9 laco_mario_bracol_bloco112_tela_10																																																																																																																																																																																																																																	
																																																																																																																																																																																																																																																	
mario_bracol_bloco113_tela_10:
	lui $8 0x1001
	addi $8 $8 2320
	addi $22 $8 65536
	li $11 0x22200a
	li $12 0x255772
	li $13 0x922020
	li $9 4
laco_mario_bracol_bloco113_tela_10:
	sw $11 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $13 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $13 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco113_tela_10																																																																																																																																																																																																																																																															
																																																																																																																																																																																																																																																																															
mario_bracol_bloco114_tela_10:
	lui $8 0x1001
	addi $8 $8 4368
	addi $22 $8 65536
	li $20 0x922020
	li $9 4
laco_mario_bracol_bloco114_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco114_tela_10
	
mario_bracol_bloco115_tela_10:
	lui $8 0x1001
	addi $8 $8 6416
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $9 4
laco_mario_bracol_bloco115_tela_10:
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
	bnez $9 laco_mario_bracol_bloco115_tela_10																																																																																																																																																																																																																																																																																																													
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																											
	sw $11 1520($8)																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						
	sw $11 1520($22)																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		
mario_bracol_bloco116_tela_10:
	lui $8 0x1001
	addi $8 $8 8464
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $9 4
laco_mario_bracol_bloco116_tela_10:
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
	bnez $9 laco_mario_bracol_bloco116_tela_10																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												
	sw $20 -16($8)																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							
	sw $20 -16($22)																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			
mario_bracol_bloco117_tela_10:
	lui $8 0x1001
	addi $8 $8 10512
	addi $22 $8 65536
	li $20 0x82834c
	li $11 0x949d69
	li $9 4
laco_mario_bracol_bloco117_tela_10:
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
	bnez $9 laco_mario_bracol_bloco117_tela_10
	
mario_bracol_bloco118_tela_10:																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						
	lui $8 0x1001
	addi $8 $8 12560
	addi $22 $8 65536
	li $20 0x82834c
	li $11 0x22200a
	li $9 4
laco_mario_bracol_bloco118_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco118_tela_10																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						

	sw $20 -16($8)
	sw $20 -16($22)
	
mario_bracol_bloco119_tela_10:																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						
	lui $8 0x1001
	addi $8 $8 14608
	addi $22 $8 65536
	li $20 0xcece55
	li $11 0x22200a
	li $9 4
laco_mario_bracol_bloco119_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco119_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 512($8)
	sw $20 520($8)
	sw $20 1024($8)
	sw $20 1032($8)
	sw $20 512($22)
	sw $20 520($22)
	sw $20 1024($22)
	sw $20 1032($22)
	
mario_bracol_bloco120_tela_10:																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						
	lui $8 0x1001
	addi $8 $8 16656
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x949d69
	li $13 0x82834c
	li $9 4
laco_mario_bracol_bloco120_tela_10:
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
	bnez $9 laco_mario_bracol_bloco120_tela_10
	
	sw $13 -8($8)
	sw $13 -4($8)
	sw $13 504($8)
	sw $11 508($8)
	sw $13 -8($22)
	sw $13 -4($22)
	sw $13 504($22)
	sw $11 508($22)
	
mario_bracol_bloco121_tela_10:																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						
	lui $8 0x1001
	addi $8 $8 18704
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
laco_mario_bracol_bloco121_tela_10:
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
	bnez $9 laco_mario_bracol_bloco121_tela_10
	
	sw $12 1520($8)
	sw $12 1520($22)
	
mario_bracol_bloco122_tela_10:																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						
	lui $8 0x1001
	addi $8 $8 20752
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $9 4
laco_mario_bracol_bloco122_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco122_tela_10	
	
	sw $11 -16($8)
	sw $11 -16($22)
	
mario_bracol_bloco123_tela_10:																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						
	lui $8 0x1001
	addi $8 $8 22800
	addi $22 $8 65536
	li $20 0x255772
	li $9 8
laco_mario_bracol_bloco123_tela_10:
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
	bnez $9 laco_mario_bracol_bloco123_tela_10
	
mario_bracol_bloco124_tela_10:
	lui $8 0x1001
	addi $8 $8 2336
	addi $22 $8 65536
	li $11 0x22200a
	li $12 0x255772
	li $13 0x922020
	li $14 0x000001
	li $9 4
laco_mario_bracol_bloco124_tela_10:
	sw $11 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $13 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $11 1024($22)
	sw $13 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco124_tela_10
			
	sw $14 -8($8)
	sw $14 -4($8)
	sw $11 504($8)
	sw $11 508($8)
	sw $13 1016($8)
	sw $13 1020($8)	
	sw $14 -8($22)
	sw $14 -4($22)
	sw $11 504($22)
	sw $11 508($22)
	sw $13 1016($22)
	sw $13 1020($22)	
					
mario_bracol_bloco125_tela_10:
	lui $8 0x1001
	addi $8 $8 4384
	addi $22 $8 65536
	li $20 0x922020
	li $9 4
laco_mario_bracol_bloco125_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco125_tela_10					
							
mario_bracol_bloco126_tela_10:
	lui $8 0x1001
	addi $8 $8 6432
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $9 4
laco_mario_bracol_bloco126_tela_10:
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
	bnez $9 laco_mario_bracol_bloco126_tela_10							
									
mario_bracol_bloco127_tela_10:
	lui $8 0x1001
	addi $8 $8 8480
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
laco_mario_bracol_bloco127_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $13 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $13 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco127_tela_10									
											
	sw $12 508($8)
	sw $12 1020($8)
	sw $11 1520($8)
	sw $12 508($22)
	sw $12 1020($22)
	sw $11 1520($22)								
													
mario_bracol_bloco128_tela_10:
	lui $8 0x1001
	addi $8 $8 10528
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x949d69
	li $12 0x82834c
	li $13 0x615e2f
	li $9 4
laco_mario_bracol_bloco128_tela_10:
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
	bnez $9 laco_mario_bracol_bloco128_tela_10													
	
	addi $8 $8 -16
	addi $22 $22 -16
													
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $13 1540($8)
	sw $12 512($22)
	sw $12 516($22)
	sw $12 1024($22)
	sw $12 1536($22)
	sw $13 1540($22)																																	
																
mario_bracol_bloco129_tela_10:
	lui $8 0x1001
	addi $8 $8 12576
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x615e2f
	li $9 4
laco_mario_bracol_bloco129_tela_10:
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
	bnez $9 laco_mario_bracol_bloco129_tela_10																
																		
	sw $20 -16($8)																	
	sw $20 -16($22)	
	
mario_bracol_bloco130_tela_10:
	lui $8 0x1001
	addi $8 $8 14624
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0xcece55
	li $9 4
laco_mario_bracol_bloco130_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco130_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1028($22)
	
mario_bracol_bloco131_tela_10:
	lui $8 0x1001
	addi $8 $8 16672
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x922020
	li $9 4
laco_mario_bracol_bloco131_tela_10:
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
	bnez $9 laco_mario_bracol_bloco131_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 0($8)
	sw $12 12($8)
	sw $12 520($8)
	sw $12 524($8)
	sw $11 0($22)
	sw $12 12($22)
	sw $12 520($22)
	sw $12 524($22)
	
mario_bracol_bloco132_tela_10:
	lui $8 0x1001
	addi $8 $8 18720
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x255772
	li $12 0x922020
	li $13 0x7a1313
	li $9 4
laco_mario_bracol_bloco132_tela_10:
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $20 1536($8)
	sw $12 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco132_tela_10
	
	sw $13 1016($8)
	sw $20 1020($8)
	sw $11 1532($8)
	sw $13 1016($22)
	sw $20 1020($22)
	sw $11 1532($22)
	
mario_bracol_bloco133_tela_10:
	lui $8 0x1001
	addi $8 $8 20768
	addi $22 $8 65536
	li $20 0x255772
	li $9 12
laco_mario_bracol_bloco133_tela_10:
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
	bnez $9 laco_mario_bracol_bloco133_tela_10
	
mario_bracol_bloco134_tela_10:
	lui $8 0x1001
	addi $8 $8 2352
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x922020
	li $13 0x7a1313
	li $14 0x255772
	li $9 4
laco_mario_bracol_bloco134_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco134_tela_10
	
	sw $13 1008($8)
	sw $14 1020($8)
	sw $13 1528($8)
	sw $11 1532($8)
	sw $13 1008($22)
	sw $14 1020($22)
	sw $13 1528($22)
	sw $11 1532($22)
	
mario_bracol_bloco135_tela_10:
	lui $8 0x1001
	addi $8 $8 4400
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x7a1313
	li $9 4
laco_mario_bracol_bloco135_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco135_tela_10
	
	sw $11 -4($8)
	sw $11 -4($22)
	
mario_bracol_bloco136_tela_10:
	lui $8 0x1001
	addi $8 $8 6448
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $9 4
laco_mario_bracol_bloco136_tela_10:
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
	bnez $9 laco_mario_bracol_bloco136_tela_10	
	
mario_bracol_bloco137_tela_10:
	lui $8 0x1001
	addi $8 $8 8496
	addi $22 $8 65536
	li $20 0x7a1313
	li $11 0x22200a
	li $12 0x949d69
	li $13 0x82834c
	li $14 0x615e2f
	li $9 4
laco_mario_bracol_bloco137_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $13 1024($8)
	sw $14 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $13 1024($22)
	sw $14 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco137_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 0($8)
	sw $14 512($8)
	sw $14 1032($8)
	sw $11 1036($8)
	sw $13 1548($8)
	sw $11 0($22)
	sw $14 512($22)
	sw $14 1032($22)
	sw $11 1036($22)
	sw $13 1548($22)
	
mario_bracol_bloco138_tela_10:
	lui $8 0x1001
	addi $8 $8 10544
	addi $22 $8 65536
	li $20 0x000001
	li $11 0xfe0000
	li $12 0x949d69
	li $13 0x82834c
	li $14 0x615e2f
	li $9 4
laco_mario_bracol_bloco138_tela_10:
	sw $13 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $13 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco138_tela_10
	
	sw $12 -16($8)
	sw $13 508($8)
	sw $11 1008($8)
	sw $14 1532($8)
	sw $12 -16($22)
	sw $13 508($22)
	sw $11 1008($22)
	sw $14 1532($22)
	
mario_bracol_bloco139_tela_10:
	lui $8 0x1001
	addi $8 $8 12592
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x615e2f
	li $9 4
laco_mario_bracol_bloco139_tela_10:
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
	bnez $9 laco_mario_bracol_bloco139_tela_10
	
	sw $11 -4($8)
	sw $11 508($8)
	sw $11 -4($22)
	sw $11 508($22)
	
mario_bracol_bloco140_tela_10:
	lui $8 0x1001
	addi $8 $8 14640
	addi $22 $8 65536
	li $20 0x22200a
	li $9 4
laco_mario_bracol_bloco140_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco140_tela_10
	
mario_bracol_bloco141_tela_10:
	lui $8 0x1001
	addi $8 $8 16688
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $9 4
laco_mario_bracol_bloco141_tela_10:
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
	bnez $9 laco_mario_bracol_bloco141_tela_10
	
	sw $20 -16($8)
	sw $20 -16($22)
	
mario_bracol_bloco142_tela_10:
	lui $8 0x1001
	addi $8 $8 18736
	addi $22 $8 65536
	li $20 0x922020
	li $11 0x22200a
	li $12 0x255772
	li $9 4
laco_mario_bracol_bloco142_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco142_tela_10
	
mario_bracol_bloco143_tela_10:
	lui $8 0x1001
	addi $8 $8 20784
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
laco_mario_bracol_bloco143_tela_10:
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
	bnez $9 laco_mario_bracol_bloco143_tela_10	
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 12($8)
	sw $11 1544($8)
	sw $12 1548($8)
	sw $20 12($22)
	sw $11 1544($22)
	sw $12 1548($22)
	
mario_bracol_bloco144_tela_10:
	lui $8 0x1001
	addi $8 $8 22832
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
laco_mario_bracol_bloco144_tela_10:
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $20 4($22)
	sw $11 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco144_tela_10	
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 1028($8)
	sw $12 1032($8)
	sw $11 1540($8)
	sw $12 1544($8)
	sw $11 1028($22)
	sw $12 1032($22)
	sw $11 1540($22)
	sw $12 1544($22)
	
mario_bracol_bloco145_tela_10:
	lui $8 0x1001
	addi $8 $8 24880
	addi $22 $8 65536
	li $20 0x255772
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
laco_mario_bracol_bloco145_tela_10:
	sw $20 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco145_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 1024($8)
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1536($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $11 1024($22)
	sw $11 1032($22)
	sw $11 1036($22)
	sw $11 1536($22)
	sw $20 1544($22)
	sw $20 1548($22)
	
mario_bracol_bloco146_tela_10:
	lui $8 0x1001
	addi $8 $8 2368
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x255772
	li $9 4
laco_mario_bracol_bloco146_tela_10:
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
	bnez $9 laco_mario_bracol_bloco146_tela_10
	
	sw $11 -4($8)
	sw $12 508($8)
	sw $11 -4($22)
	sw $12 508($22)
	
mario_bracol_bloco147_tela_10:
	lui $8 0x1001
	addi $8 $8 4416
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $12 0x7a1313
	li $9 4
laco_mario_bracol_bloco147_tela_10:
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $20 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco147_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 4($22)
	sw $12 8($22)
	sw $12 12($22)
	
mario_bracol_bloco148_tela_10:
	lui $8 0x1001
	addi $8 $8 6464
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $12 0x7a1313
	li $9 4
laco_mario_bracol_bloco148_tela_10:
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
	bnez $9 laco_mario_bracol_bloco148_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 4($8)
	sw $12 1024($8)
	sw $20 1032($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $20 1544($8)
	sw $11 4($22)
	sw $12 1024($22)
	sw $20 1032($22)
	sw $12 1536($22)
	sw $12 1540($22)
	sw $20 1544($22)
	
mario_bracol_bloco149_tela_10:
	lui $8 0x1001
	addi $8 $8 8512
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $12 0x7a1313
	li $13 0x82834c
	li $14 0x615e2f
	li $9 4
laco_mario_bracol_bloco149_tela_10:
	sw $12 0($8)
	sw $12 4($8)
	sw $20 8($8)
	sw $11 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $20 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco149_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 1024($8)
	sw $20 1028($8)
	sw $13 1536($8)
	sw $14 1540($8)
	sw $20 1024($22)
	sw $20 1028($22)
	sw $13 1536($22)
	sw $14 1540($22)
	
mario_bracol_bloco150_tela_10:
	lui $8 0x1001
	addi $8 $8 10560
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $12 0x82834c
	li $9 4
laco_mario_bracol_bloco150_tela_10:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $20 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco150_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 8($8)
	sw $11 12($8)
	sw $20 8($22)
	sw $11 12($22)
	
mario_bracol_bloco151_tela_10:
	lui $8 0x1001
	addi $8 $8 12608
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $12 0x82834c
	li $9 4
laco_mario_bracol_bloco151_tela_10:
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $20 12($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $12 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco151_tela_10
	
	sw $20 -504($8)
	sw $20 -504($22)
	
mario_bracol_bloco152_tela_10:
	lui $8 0x1001
	addi $8 $8 14656
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $9 4
laco_mario_bracol_bloco152_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco152_tela_10
	
	sw $20 -16($8)
	sw $20 -12($8)
	sw $20 496($8)
	sw $20 -16($22)
	sw $20 -12($22)
	sw $20 496($22)
	
mario_bracol_bloco153_tela_10:
	lui $8 0x1001
	addi $8 $8 16704
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $9 4
laco_mario_bracol_bloco153_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco153_tela_10
	
	sw $20 1532($8)
	sw $20 1532($22)
	
mario_bracol_bloco154_tela_10:
	lui $8 0x1001
	addi $8 $8 18752
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x922020
	li $12 0x7a1313
	li $13 0x949d69
	li $14 0x255772
	li $9 4
laco_mario_bracol_bloco154_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $13 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $20 1024($22)
	sw $13 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco154_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 8($8)
	sw $20 12($8)
	sw $12 516($8)
	sw $20 520($8)
	sw $13 524($8)
	sw $13 1036($8)
	sw $14 1536($8)
	sw $20 1540($8)
	sw $20 8($22)
	sw $20 12($22)
	sw $12 516($22)
	sw $20 520($22)
	sw $13 524($22)
	sw $13 1036($22)
	sw $14 1536($22)
	sw $20 1540($22)
	
mario_bracol_bloco155_tela_10:
	lui $8 0x1001
	addi $8 $8 20800
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69
	li $9 4
laco_mario_bracol_bloco155_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco155_tela_10
	
	sw $20 -16($8)
	sw $20 -16($22)
	
mario_bracol_bloco156_tela_10:
	lui $8 0x1001
	addi $8 $8 22848
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69
	li $9 4
laco_mario_bracol_bloco156_tela_10:
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco156_tela_10
	
	sw $20 -504($8)
	sw $20 -504($22)
	
mario_bracol_bloco157_tela_10:
	lui $8 0x1001
	addi $8 $8 24896
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x949d69
	li $13 0x255772
	li $14 0xb7bf2a
	li $9 4
laco_mario_bracol_bloco157_tela_10:
	sw $20 0($8)
	sw $13 4($8)
	sw $13 8($8)
	sw $20 12($8)
	sw $20 0($22)
	sw $13 4($22)
	sw $13 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_bracol_bloco157_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 0($8)
	sw $20 4($8)
	sw $13 516($8)
	sw $14 1028($8)
	sw $14 1032($8)
	sw $14 1536($8)
	sw $14 1540($8)
	sw $14 1544($8)
	sw $11 0($22)
	sw $20 4($22)
	sw $13 516($22)
	sw $14 1028($22)
	sw $14 1032($22)
	sw $14 1536($22)
	sw $14 1540($22)
	sw $14 1544($22)
mario_bracol_bloco158_tela_10:
    lui $8 0x1001
    addi $8 $8 2384
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x7a1313
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco158_tela_10:
    sw $20 0($8)
    sw $11 512($8)
    sw $11 1024($8)
    sw $20 1536($8)
    sw $20 0($22)
    sw $11 512($22)
    sw $11 1024($22)
    sw $20 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco158_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 1032($8)
    sw $20 1036($8)
    sw $14 1544($8)
    sw $13 1548($8)
    sw $20 1032($22)
    sw $20 1036($22)
    sw $14 1544($22)
    sw $13 1548($22)
mario_bracol_bloco159_tela_10:
    lui $8 0x1001
    addi $8 $8 4432
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 24
laco_mario_bracol_bloco159_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco159_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 1536($8)
    sw $20 1540($8)
    sw $20 1536($22)
    sw $20 1540($22)	   
mario_bracol_bloco160_tela_10:
    lui $8 0x1001
    addi $8 $8 16720
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco160_tela_10:
    sw $20 0($8)
    sw $13 512($8)
    sw $20 1024($8)
    sw $14 1536($8)
    sw $20 0($22)
    sw $13 512($22)
    sw $20 1024($22)
    sw $14 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco160_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $13 12($8)
    sw $13 1024($8)
    sw $20 524($8)
    sw $20 1536($8)
    sw $14 1036($8)
mario_bracol_bloco161_tela_10:
    lui $8 0x1001
    addi $8 $8 18768
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 12
laco_mario_bracol_bloco161_tela_10:
    sw $14 0($8)
    sw $14 4($8)
    sw $14 8($8)
    sw $14 12($8)
    sw $14 0($22)
    sw $14 4($22)
    sw $14 8($22)
    sw $14 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco161_tela_10	
mario_bracol_bloco162_tela_10:
    lui $8 0x1001
    addi $8 $8 24912
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0xb7bf2a
    li $9 4
laco_mario_bracol_bloco162_tela_10:
    sw $14 0($8)
    sw $14 512($8)
    sw $20 1024($8)
    sw $20 1536($8)
    sw $14 0($22)
    sw $14 512($22)
    sw $20 1024($22)
    sw $20 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco162_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $14 1024($8)
    sw $14 1028($8)
    sw $15 1544($8)
    sw $15 1548($8)	
    sw $14 1024($22)
    sw $14 1028($22)
    sw $15 1544($22)
    sw $15 1548($22)	
mario_bracol_bloco163_tela_10:
    lui $8 0x1001
    addi $8 $8 2400
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x7a1313
    li $9 4
laco_mario_bracol_bloco163_tela_10:
    sw $20 0($8)
    sw $11 512($8)
    sw $20 1024($8)
    sw $11 1536($8)
    sw $20 0($22)
    sw $11 512($22)
    sw $20 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco163_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 1544($8)
    sw $20 -504($8)
    sw $20 -500($8)
    sw $11 8($8)
    sw $11 12($8)	      
    sw $11 1036($8)
    sw $11 1548($8)
    sw $13 1536($8)
    sw $15 1540($8)
    sw $20 1544($22)
    sw $20 -504($22)
    sw $20 -500($22)
    sw $11 8($22)
    sw $11 12($22)	      
    sw $11 1036($22)
    sw $11 1548($22)
    sw $13 1536($22)
    sw $15 1540($22)
mario_bracol_bloco164_tela_10:
    lui $8 0x1001
    addi $8 $8 4448
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 20
laco_mario_bracol_bloco164_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $20 8($8)
    sw $11 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $20 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco164_tela_10
    lui $8 0x1001
    addi $8 $8 14688
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x7a1313
    li $9 4
laco_mario_bracol_bloco165_tela_10:
    sw $13 0($8)
    sw $20 4($8)
    sw $20 8($8)
    sw $11 12($8)
    sw $13 0($22)
    sw $20 4($22)
    sw $20 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco165_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $13 4($8)
    sw $15 516($8)
    sw $11 1032($8)
    sw $11 1544($8)
    sw $13 4($22)
    sw $15 516($22)
    sw $11 1032($22)
    sw $11 1544($22)	
mario_bracol_bloco166_tela_10:
    lui $8 0x1001
    addi $8 $8 16736
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x7a1313
    li $9 4
laco_mario_bracol_bloco166_tela_10:
    sw $20 0($8)
    sw $20 512($8)
    sw $14 1024($8)
    sw $14 1536($8)
    sw $20 0($22)
    sw $20 512($22)
    sw $14 1024($22)
    sw $14 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco166_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $14 520($8)
    sw $14 524($8)
    sw $15 0($8)
    sw $14 520($22)
    sw $14 524($22)
    sw $15 0($22)
mario_bracol_bloco167_tela_10:
    lui $8 0x1001
    addi $8 $8 18784
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 12
laco_mario_bracol_bloco167_tela_10:
    sw $14 0($8)
    sw $14 4($8)
    sw $14 8($8)
    sw $14 12($8)
    sw $14 0($22)
    sw $14 4($22)
    sw $14 8($22)
    sw $14 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco167_tela_10
mario_bracol_bloco168_tela_10:
    lui $8 0x1001
    addi $8 $8 24928
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco168_tela_10:
    sw $14 0($8)
    sw $11 4($8)
    sw $12 8($8)
    sw $12 12($8)
    sw $14 0($22)
    sw $11 4($22)
    sw $12 8($22)
    sw $12 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco168_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $14 0($8)
    sw $14 4($8)
    sw $14 512($8)
    sw $20 8($8)
    sw $20 12($8)
    sw $20 516($8)
    sw $20 1024($8)
     sw $14 0($22)
    sw $14 4($22)
    sw $14 512($22)
    sw $20 8($22)
    sw $20 12($22)
    sw $20 516($22)
    sw $20 1024($22)
mario_bracol_bloco169_tela_10:
    lui $8 0x1001
    addi $8 $8 368
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x922020
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco169_tela_10:
    sw $15 0($8)
    sw $15 512($8)
    sw $15 1024($8)
    sw $20 1536($8)
    sw $15 0($22)
    sw $15 512($22)
    sw $15 1024($22)
    sw $20 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco169_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $14 1548($8)
    sw $20 1036($8)
    sw $14 1548($22)
    sw $20 1036($22)  
mario_bracol_bloco170_tela_10:
    lui $8 0x1001
    addi $8 $8 2416
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco170_tela_10:
    sw $12 0($8)
    sw $12 4($8)
    sw $12 8($8)
    sw $20 12($8)
    sw $12 0($22)
    sw $12 4($22)
    sw $12 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco170_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048   
    sw $13 12($8)
    sw $12 1548($8)
    sw $20 8($8)
    sw $13 12($22)
    sw $12 1548($22)
    sw $20 8($22)		
mario_bracol_bloco171_tela_10:
    lui $8 0x1001
    addi $8 $8 4464
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 8
laco_mario_bracol_bloco171_tela_10:
    sw $11 0($8)
    sw $12 4($8)
    sw $12 8($8)
    sw $12 12($8)
    sw $11 0($22)
    sw $12 4($22)
    sw $12 8($22)
    sw $12 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco171_tela_10
mario_bracol_bloco172_tela_10:
    lui $8 0x1001
    addi $8 $8 8560
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco172_tela_10:
    sw $11 0($8)
    sw $12 4($8)
    sw $12 8($8)
    sw $12 12($8)
    sw $11 0($22)
    sw $12 4($22)
    sw $12 8($22)
    sw $12 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco172_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048    
    sw $20 1036($8)
    sw $20 1548($8) 
    sw $20 1036($22)
    sw $20 1548($22)    
mario_bracol_bloco173_tela_10:
    lui $8 0x1001
    addi $8 $8 10608
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 12
laco_mario_bracol_bloco173_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $12 8($8)
    sw $20 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $12 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco173_tela_10	   
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 1540($8)
    sw $20 1544($8)	  
    sw $20 1540($22)
    sw $20 1544($22)
mario_bracol_bloco174_tela_10:
    lui $8 0x1001
    addi $8 $8 16752
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco174_tela_10:
    sw $14 0($8)
    sw $14 512($8)
    sw $14 1024($8)
    sw $14 1536($8)
    sw $14 0($22)
    sw $14 512($22)
    sw $14 1024($22)
    sw $14 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco174_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 0($8)
    sw $20 4($8)
    sw $20 0($22)
    sw $20 4($22)	
mario_bracol_bloco175_tela_10:
    lui $8 0x1001
    addi $8 $8 18800
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 8
laco_mario_bracol_bloco175_tela_10:
    sw $14 0($8)
    sw $14 4($8)
    sw $14 8($8)
    sw $14 12($8)
    sw $14 0($22)
    sw $14 4($22)
    sw $14 8($22)
    sw $14 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco175_tela_10	
mario_bracol_bloco176_tela_10:
    lui $8 0x1001
    addi $8 $8 22896
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco176_tela_10:
    sw $14 0($8)
    sw $20 4($8)
    sw $20 8($8)
    sw $14 12($8)
    sw $14 0($22)
    sw $20 4($22)
    sw $20 8($22)
    sw $14 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco176_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 1540($8)
    sw $20 1536($8)
    sw $14 4($8)	
    sw $14 8($8)
    sw $14 520($8)
    sw $12 1540($22)
    sw $20 1536($22)
    sw $14 4($22)	
    sw $14 8($22)
    sw $14 520($22)
mario_bracol_bloco177_tela_10:
    lui $8 0x1001
    addi $8 $8 24944
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x255772
    li $12 0x1f436b
    li $13 0x922020
    li $14 0x949d69
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco177_tela_10:
    sw $12 0($8)
    sw $12 4($8)
    sw $12 8($8)
    sw $20 12($8)
    sw $12 0($22)
    sw $12 4($22)
    sw $12 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco177_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048    
    sw $20 8($8)
    sw $20 520($8)
    sw $14 12($8)
    sw $14 524($8)
    sw $20 8($22)
    sw $20 520($22)
    sw $14 12($22)
    sw $14 524($22)
mario_bracol_bloco178_tela_10:
    lui $8 0x1001
    addi $8 $8 384
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco178_tela_10:
    sw $15 0($8)
    sw $15 512($8)
    sw $20 1024($8)
    sw $11 1536($8)
    sw $15 0($22)
    sw $15 512($22)
    sw $20 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco178_tela_10    
mario_bracol_bloco179_tela_10:
    lui $8 0x1001
    addi $8 $8 2432
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco179_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco179_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $20 1536($8)
    sw $12 524($8)
    sw $20 1536($22)
    sw $12 524($22)
mario_bracol_bloco180_tela_10:
    lui $8 0x1001
    addi $8 $8 4480
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco180_tela_10:
    sw $20 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $20 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco180_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 524($8)
    sw $12 524($22)
mario_bracol_bloco181_tela_10:
    lui $8 0x1001
    addi $8 $8 6528
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco181_tela_10:
    sw $20 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $20 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco181_tela_10
mario_bracol_bloco182_tela_10:
    lui $8 0x1001
    addi $8 $8 8576
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco182_tela_10:
    sw $20 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $20 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco182_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $11 1024($8)
    sw $11 1536($8)
    sw $11 1024($22)
    sw $11 1536($22)
mario_bracol_bloco183_tela_10:
    lui $8 0x1001
    addi $8 $8 10624
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco183_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco183_tela_10
mario_bracol_bloco184_tela_10:
    lui $8 0x1001
    addi $8 $8 12672
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco184_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $11 8($8)
    sw $11 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $11 8($22)
    sw $11 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco184_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 1036($8)
    sw $12 1036($22)
mario_bracol_bloco185_tela_10:
    lui $8 0x1001
    addi $8 $8 14720
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco185_tela_10:
    sw $11 0($8)
    sw $11 512($8)
    sw $20 1024($8)
    sw $13 1536($8)
    sw $11 0($22)
    sw $11 512($22)
    sw $20 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco185_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $11 1024($8)
    sw $12 520($8)
    sw $12 524($8)
    sw $20 1536($8)
mario_bracol_bloco186_tela_10:
    lui $8 0x1001
    addi $8 $8 16768
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 16
laco_mario_bracol_bloco186_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco186_tela_10
mario_bracol_bloco187_tela_10:
    lui $8 0x1001
    addi $8 $8 24960
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco187_tela_10:
    sw $13 0($8)
    sw $13 512($8)
    sw $13 1024($8)
    sw $20 1536($8)
    sw $13 0($22)
    sw $13 512($22)
    sw $13 1024($22)
    sw $20 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco187_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 1036($8)
    sw $20 1036($22)
mario_bracol_bloco188_tela_10:
    lui $8 0x1001
    addi $8 $8 400
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco188_tela_10:
    sw $15 0($8)
    sw $15 512($8)
    sw $20 1024($8)
    sw $11 1536($8)
    sw $15 0($22)
    sw $15 512($22)
    sw $20 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco188_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $12 1544($8) 
    sw $12 1548($8)
    sw $12 1544($22) 
    sw $12 1548($22)     
mario_bracol_bloco189_tela_10:
    lui $8 0x1001
    addi $8 $8 2448
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco189_tela_10:
    sw $12 0($8)
    sw $12 4($8)
    sw $12 8($8)
    sw $20 12($8)
    sw $12 0($22)
    sw $12 4($22)
    sw $12 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco189_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 1548($8)
    sw $11 1024($8)
    sw $11 1536($8)
    sw $11 1540($8)
    sw $11 1544($8)
    sw $12 1548($22)
    sw $11 1024($22)
    sw $11 1536($22)
    sw $11 1540($22)
    sw $11 1544($22)
mario_bracol_bloco190_tela_10:
    lui $8 0x1001
    addi $8 $8 4496
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco190_tela_10:
    sw $11 0($8)
    sw $12 4($8)
    sw $12 8($8)
    sw $20 12($8)
    sw $11 0($22)
    sw $12 4($22)
    sw $12 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco190_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $13 1036($8)
    sw $12 512($8)
    sw $12 12($8)
    sw $20 1032($8)
    sw $20 1544($8)
    sw $13 1036($22)
    sw $12 512($22)
    sw $12 12($22)
    sw $20 1032($22)
    sw $20 1544($22)
mario_bracol_bloco191_tela_10:
    lui $8 0x1001
    addi $8 $8 6544
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco191_tela_10:
    sw $11 0($8)
    sw $11 4($8)
    sw $12 8($8)
    sw $12 12($8)
    sw $11 0($22)
    sw $11 4($22)
    sw $12 8($22)
    sw $12 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco191_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $11 520($8)
    sw $12 4($8)
    sw $20 12($8)
    sw $11 520($22)
    sw $12 4($22)
    sw $20 12($22)
mario_bracol_bloco192_tela_10:
    lui $8 0x1001
    addi $8 $8 8592
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco192_tela_10:
    sw $11 0($8)
    sw $12 4($8)
    sw $20 8($8)
    sw $20 12($8)
    sw $11 0($22)
    sw $12 4($22)
    sw $20 8($22)
    sw $20 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco192_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 0($8)
    sw $12 1536($8)
    sw $12 8($8)
    sw $12 1544($8)
    sw $12 1548($8)
    sw $13 524($8)
    sw $12 0($22)
    sw $12 1536($22)
    sw $12 8($22)
    sw $12 1544($22)
    sw $12 1548($22)
    sw $13 524($22)
mario_bracol_bloco193_tela_10:
    lui $8 0x1001
    addi $8 $8 10640
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco193_tela_10:
    sw $11 0($8)
    sw $11 512($8)
    sw $12 1024($8)
    sw $11 1536($8)
    sw $11 0($22)
    sw $11 512($22)
    sw $12 1024($22)
    sw $11 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco193_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $12 12($8)
    sw $12 1544($8)
    sw $20 1548($8)
    sw $12 12($22)
    sw $12 1544($22)
    sw $20 1548($22)
mario_bracol_bloco194_tela_10:
    lui $8 0x1001
    addi $8 $8 12688
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco194_tela_10:
    sw $11 0($8)
    sw $12 4($8)
    sw $20 8($8)
    sw $14 12($8)
    sw $11 0($22)
    sw $12 4($22)
    sw $20 8($22)
    sw $14 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco194_tela_10
    addi $8 $8 -2048
    addi $22 $22 -2048
    sw $12 1024($8)
    sw $12 1536($8)
    sw $12 1544($8)
    sw $20 1548($8)
    sw $12 1024($22)
    sw $12 1536($22)
    sw $12 1544($22)
    sw $20 1548($22)
mario_bracol_bloco195_tela_10:
    lui $8 0x1001
    addi $8 $8 14736
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco195_tela_10:
    sw $11 0($8)
    sw $20 512($8)
    sw $13 1024($8)
    sw $13 1536($8)
    sw $11 0($22)
    sw $20 512($22)
    sw $13 1024($22)
    sw $13 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco195_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 12($8)
    sw $20 12($22)
mario_bracol_bloco196_tela_10:
    lui $8 0x1001
    addi $8 $8 16784
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 12
laco_mario_bracol_bloco196_tela_10:
    sw $13 0($8)
    sw $13 4($8)
    sw $13 8($8)
    sw $13 12($8)
    sw $13 0($22)
    sw $13 4($22)
    sw $13 8($22)
    sw $13 12($22)
    addi $8 $8 512
    addi $22 $22 512
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco196_tela_10     
mario_bracol_bloco197_tela_10:
    lui $8 0x1001
    addi $8 $8 22928
    addi $22 $8 65536
    li $20 0x22200a
    li $11 0x922020
    li $12 0x7a1313
    li $13 0x949d69
    li $14 0x82834c
    li $15 0x000001
    li $9 4
laco_mario_bracol_bloco197_tela_10:
    sw $13 0($8)
    sw $13 512($8)
    sw $13 1024($8)
    sw $15 1536($8)
    sw $13 0($22)
    sw $13 512($22)
    sw $13 1024($22)
    sw $15 1536($22)
    addi $8 $8 4
    addi $22 $22 4
    addi $9 $9 -1
    bnez $9 laco_mario_bracol_bloco197_tela_10
    addi $8 $8 -16
    addi $22 $22 -16
    sw $20 520($8)
    sw $20 524($8)
    sw $20 1032($8)
    sw $20 1540($8)
    sw $20 2052($8)
    sw $20 2560($8)
    sw $14 8($8)
    sw $14 12($8)
    sw $13 1536($8)
    sw $13 2048($8)
    sw $15 1036($8)
    sw $20 520($22)
    sw $20 524($22)
    sw $20 1032($22)
    sw $20 1540($22)
    sw $20 2052($22)
    sw $20 2560($22)
    sw $14 8($22)
    sw $14 12($22)
    sw $13 1536($22)
    sw $13 2048($22)
    sw $15 1036($22)
    
mario_braco1_bloco198_tela_10:
	lui $8 0x1001
	addi $8 $8 416
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x22200a
	li $12 0x949d69
	li $9 4
laco_mario_braco1_bloco198_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco198_tela_10
	
	sw $11 1520($8)
	sw $11 1520($22)
	
mario_braco1_bloco199_tela_10:
	lui $8 0x1001
	addi $8 $8 2464
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
laco_mario_braco1_bloco199_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco199_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 1024($8)
	sw $11 1028($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $11 1544($8)
	sw $11 1024($22)
	sw $11 1028($22)
	sw $12 1536($22)
	sw $12 1540($22)
	sw $11 1544($22)
	
mario_braco1_bloco200_tela_10:
	lui $8 0x1001
	addi $8 $8 4512
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
laco_mario_braco1_bloco200_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco200_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $12 0($22)
	sw $12 4($22)
	sw $11 8($22)
	sw $11 512($22)
	sw $11 516($22)
	
mario_braco1_bloco201_tela_10:
	lui $8 0x1001
	addi $8 $8 6560
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
laco_mario_braco1_bloco201_tela_10:
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
	bnez $9 laco_mario_braco1_bloco201_tela_10
	
	sw $12 1520($8)
	sw $12 1520($22)
	
mario_braco1_bloco202_tela_10:
	lui $8 0x1001
	addi $8 $8 8608
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $9 4
laco_mario_braco1_bloco202_tela_10:
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
	bnez $9 laco_mario_braco1_bloco202_tela_10
	
	sw $11 -16($8)
	sw $11 1008($8)
	sw $12 1520($8)
	sw $11 -16($22)
	sw $11 1008($22)
	sw $12 1520($22)
	
mario_braco1_bloco203_tela_10:
	lui $8 0x1001
	addi $8 $8 10656
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x22200a
	li $12 0x7a1313
	li $13 0x922020
	li $9 4
laco_mario_braco1_bloco203_tela_10:
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
	bnez $9 laco_mario_braco1_bloco203_tela_10
	
	sw $13 496($8)
	sw $11 508($8)
	sw $12 1008($8)
	sw $20 1020($8)
	sw $11 1520($8)
	sw $13 496($22)
	sw $11 508($22)
	sw $12 1008($22)
	sw $20 1020($22)
	sw $11 1520($22)
	
mario_braco1_bloco204_tela_10:
	lui $8 0x1001
	addi $8 $8 12704
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 4
laco_mario_braco1_bloco204_tela_10:
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
	bnez $9 laco_mario_braco1_bloco204_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $20 1548($8)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1028($22)
	sw $20 1548($22)
	
mario_braco1_bloco205_tela_10:
	lui $8 0x1001
	addi $8 $8 14752
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $12 0x22200a
	li $9 4
laco_mario_braco1_bloco205_tela_10:
	sw $11 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco205_tela_10
	
mario_braco1_bloco206_tela_10:
	lui $8 0x1001
	addi $8 $8 16800
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $12 0x22200a
	li $9 8
laco_mario_braco1_bloco206_tela_10:
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
	bnez $9 laco_mario_braco1_bloco206_tela_10
	
mario_braco1_bloco207_tela_10:
	lui $8 0x1001
	addi $8 $8 20896
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $12 0x22200a
	li $9 4
laco_mario_braco1_bloco207_tela_10:
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
	bnez $9 laco_mario_braco1_bloco207_tela_10
	
	sw $11 1020($8)
	sw $11 1020($22)
	
mario_braco1_bloco208_tela_10:
	lui $8 0x1001
	addi $8 $8 22944
	addi $22 $8 65536
	li $20 0x000001
	li $11 0x82834c
	li $12 0x22200a
	li $9 12
laco_mario_braco1_bloco208_tela_10:
	sw $11 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco208_tela_10
	
mario_braco1_bloco209_tela_10:
	lui $8 0x1001
	addi $8 $8 2480
	addi $22 $8 65536
	li $20 0x949d69
	li $9 36
laco_mario_braco1_bloco209_tela_10:
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
	bnez $9 laco_mario_braco1_bloco209_tela_10
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	li $20 0x22200a
	li $11 0x82834c
	
	sw $11 0($8)
	sw $20 512($8)
	sw $11 0($22)
	sw $20 512($22)
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	li $11 0x7a1313
	
	sw $20 -512($8)
	sw $20 -508($8)
	sw $11 0($8)
	sw $20 4($8)
	sw $20 512($8)
	sw $20 -512($22)
	sw $20 -508($22)
	sw $11 0($22)
	sw $20 4($22)
	sw $20 512($22)
	
	addi $8 $8 -4096
	addi $22 $22 -4096
	
	sw $20 1024($8)
	sw $20 1024($22)
	
	addi $8 $8 -6144
	addi $22 $22 -6144
	
	li $11 0x949d69
	li $12 0x615e2f
	
	sw $20 1024($8)
	sw $20 1028($8)
	sw $11 1536($8)
	sw $12 1540($8)
	sw $20 1544($8)
	sw $20 1548($8)
	sw $12 2060($8)
	
mario_braco1_bloco210_tela_10:
	lui $8 0x1001
	addi $8 $8 20912
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 4
laco_mario_braco1_bloco210_tela_10:
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $20 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco210_tela_10
	
mario_braco1_bloco211_tela_10:
	lui $8 0x1001
	addi $8 $8 2496
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $12 0x615e2f
	li $13 0x22200a
	li $14 0x000001
	li $9 4
laco_mario_braco1_bloco211_tela_10:
	sw $13 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $13 0($22)
	sw $20 512($22)
	sw $20 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco211_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $14 12($8)
	sw $11 516($8)
	sw $12 520($8)
	sw $13 524($8)
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1544($8)
	sw $11 1548($8)
	sw $14 12($22)
	sw $11 516($22)
	sw $12 520($22)
	sw $13 524($22)
	sw $11 1032($22)
	sw $11 1036($22)
	sw $11 1544($22)
	sw $11 1548($22)
	
mario_braco1_bloco212_tela_10:
	lui $8 0x1001
	addi $8 $8 4544
	addi $22 $8 65536
	li $20 0x949d69
	li $9 32
laco_mario_braco1_bloco212_tela_10:
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
	bnez $9 laco_mario_braco1_bloco212_tela_10
	
	addi $8 $8 -16384
	addi $22 $22 -16384
	
	li $20 0x82834c
	
	sw $20 8($8)
	sw $20 12($8)
	sw $20 524($8)
	sw $20 1036($8)
	sw $20 8($22)
	sw $20 12($22)
	sw $20 524($22)
	sw $20 1036($22)
	
mario_braco1_bloco213_tela_10:
	lui $8 0x1001
	addi $8 $8 20928
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 4
laco_mario_braco1_bloco213_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco213_tela_10
	
	sw $20 -16($8)
	sw $20 -12($8)
	sw $20 -8($8)
	sw $20 -16($22)
	sw $20 -12($22)
	sw $20 -8($22)
	
mario_braco1_bloco214_tela_10:
	lui $8 0x1001
	addi $8 $8 4560
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x615e2f
	li $9 4
laco_mario_braco1_bloco214_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco214_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 -1536($8)
	sw $12 -1024($8)
	sw $20 -1020($8)
	sw $11 -512($8)
	sw $12 -508($8)
	sw $20 -504($8)
	sw $12 12($8)
	sw $20 -1536($22)
	sw $12 -1024($22)
	sw $20 -1020($22)
	sw $11 -512($22)
	sw $12 -508($22)
	sw $20 -504($22)
	sw $12 12($22)
	
mario_braco1_bloco215_tela_10:
	lui $8 0x1001
	addi $8 $8 6608
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 4
laco_mario_braco1_bloco215_tela_10:
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
	bnez $9 laco_mario_braco1_bloco215_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 4($8)
	sw $11 516($8)
	sw $11 4($22)
	sw $11 516($22)
	
mario_braco1_bloco216_tela_10:
	lui $8 0x1001
	addi $8 $8 8656
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 20
laco_mario_braco1_bloco216_tela_10:
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
	bnez $9 laco_mario_braco1_bloco216_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $11 -500($8)
	sw $11 12($8)
	sw $11 524($8)
	sw $11 1036($8)
	sw $11 1548($8)
	sw $11 -500($22)
	sw $11 12($22)
	sw $11 524($22)
	sw $11 1036($22)
	sw $11 1548($22)
	
	addi $8 $8 -8192
	addi $22 $22 -8192
	
	sw $11 8($8)
	sw $11 12($8)
	sw $11 524($8)
	sw $11 8($22)
	sw $11 12($22)
	sw $11 524($22)
	
mario_braco1_bloco217_tela_10:
	lui $8 0x1001
	addi $8 $8 18896
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 4
laco_mario_braco1_bloco217_tela_10:
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
	bnez $9 laco_mario_braco1_bloco217_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $20 8($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $20 8($22)
	sw $11 1536($22)
	sw $11 1540($22)
	
mario_braco1_bloco218_tela_10:
	lui $8 0x1001
	addi $8 $8 20944
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 4
laco_mario_braco1_bloco218_tela_10:
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco218_tela_10
	
	li $20 0x22200a
	li $12 0x615e2f
	
	sw $11 0($8)
	sw $12 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 16($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $11 0($22)
	sw $12 4($22)
	sw $20 8($22)
	sw $20 12($22)
	sw $20 16($22)
	sw $20 512($22)
	sw $20 516($22)
	
mario_braco1_bloco219_tela_10:
	lui $8 0x1001
	addi $8 $8 4576
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x615e2f
	li $13 0x000001
	li $9 4
laco_mario_braco1_bloco219_tela_10:
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $11 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco219_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $13 8($8)
	sw $13 12($8)
	sw $12 516($8)
	sw $20 520($8)
	sw $13 524($8)
	sw $12 1032($8)
	sw $20 1036($8)
	sw $12 1548($8)
	sw $13 8($22)
	sw $13 12($22)
	sw $12 516($22)
	sw $20 520($22)
	sw $13 524($22)
	sw $12 1032($22)
	sw $20 1036($22)
	sw $12 1548($22)
	
mario_braco1_bloco220_tela_10:
	lui $8 0x1001
	addi $8 $8 6624
	addi $22 $8 65536
	li $20 0x949d69
	li $11 0x82834c
	li $9 28
laco_mario_braco1_bloco220_tela_10:
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $11 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco220_tela_10
	
	addi $8 $8 -8192
	addi $22 $22 -8192
	
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
	
mario_braco1_bloco221_tela_10:
	lui $8 0x1001
	addi $8 $8 20960
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x615e2f
	li $13 0x000001
	li $9 4
laco_mario_braco1_bloco221_tela_10:
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $20 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco221_tela_10
	
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 1032($8)
	sw $20 1036($8)
	sw $12 1536($8)
	sw $13 1548($8)
	sw $12 1032($22)
	sw $20 1036($22)
	sw $12 1536($22)
	sw $13 1548($22)
	
mario_braco1_bloco222_tela_10:
	lui $8 0x1001
	addi $8 $8 6640
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x615e2f
	li $13 0x000001
	li $9 4
laco_mario_braco1_bloco222_tela_10:
	sw $11 0($8)
	sw $20 4($8)
	sw $11 0($22)
	sw $20 4($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco222_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 0($8)
	sw $20 -512($8)
	sw $12 0($22)
	sw $20 -512($22)
	
mario_braco1_bloco223_tela_10:
	lui $8 0x1001
	addi $8 $8 8688
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x615e2f
	li $13 0x000001
	li $9 4
laco_mario_braco1_bloco223_tela_10:
	sw $11 0($8)
	sw $11 4($8)
	sw $20 8($8)
	sw $11 0($22)
	sw $20 4($22)
	sw $20 8($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco223_tela_10
	
	addi $8 $8 -2048
	addi $22 $22 -2048
	
	sw $12 4($8)
	sw $12 4($22)
	
mario_braco1_bloco224_tela_10:
	lui $8 0x1001
	addi $8 $8 10736
	addi $22 $8 65536
	li $20 0x22200a
	li $11 0x82834c
	li $12 0x615e2f
	li $13 0x000001
	li $9 20
laco_mario_braco1_bloco224_tela_10:
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	sw $11 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $20 12($22)
	
	addi $8 $8 512
	addi $22 $22 512
	addi $9 $9 -1
	bnez $9 laco_mario_braco1_bloco224_tela_10
	
	sw $12 -508($8)
	sw $20 -504($8)
	sw $12 -1016($8)
	sw $11 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $12 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	sw $12 -508($22)
	sw $20 -504($22)
	sw $12 -1016($22)
	sw $11 0($22)
	sw $20 4($22)
	sw $20 8($22)
	sw $12 512($22)
	sw $20 516($22)
	sw $20 1024($22)
	
	addi $8 $8 -10240
	addi $22 $22 -10240
	
	sw $12 8($8)
	sw $12 8($22)