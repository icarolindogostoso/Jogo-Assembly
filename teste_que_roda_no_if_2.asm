.text
menu_level_1:
	add $25 $0 $0 # registrador de retorno (pode usar)
	add $24 $0 $0 # registrador de retorno (pode usar)
	add $23 $0 $0 # registrador de retorno (pode usar)
	
	add $22 $0 $0 # registrador que vai guardar quantas vezes o mapa andou
	add $21 $0 $0 # registrador que vai guardar o que foi lido do teclado
	add $20 $0 $0 # registrador que vai guardar quantos cenarios ja foram desenhados
	
	add $19 $0 $0 # registrador que vai guardar a copia do botao que vai apertado no teclado
	add $18 $0 $0 # registrador que vai guardar se o personsagem está colidindo com algo
	
	add $17 $0 $0 # registrador que vai guardar se o cogumelo ja nasceu
	add $16 $0 $0 # registrador que vai guardar se o personagem está grande ou pequeno
	
	add $15 $0 $0 # nada
	add $14 $0 $0 # nada
	add $13 $0 $0 # registrador que vai guardar a posicao do inimigo
	
	add $12 $0 $0 # registrador que vai guardar o movimento pra cima
	add $11 $0 $0 # registrador que vai guardar o movimento para a direita
	add $10 $0 $0 # registrador que vai guardar o movimento para a esquerda
	
	add $9 $0 $0 # nada
	
	add $8 $0 $0 # registrador que vai guardar a posicao atual do personagem
	
	jal desenhar_mapa_1
	jal salvar_terceira_copia
	addi $20 $20 1
	
	jal desenhar_mapa_2
	addi $20 $20 1
	
	lui $8 0x1001
	addi $8 $8 22528
	add $4 $8 $0
	jal desenhar_personagem_direita
	
	lui $13 0x1001
	addi $13 $13 22856
	add $4 $13 $0
	jal desenhar_toad
	
	lui $9 0xffff
	addi $10 $0 'a'
	addi $11 $0 'd'
	add $12 $0 $0
	
loop_principal:
	lw $21 0($9)
	bne $18 $0 esta_colidindo
	beq $21 $0 baixo
	lw $21 4($9)
	add $19 $21 $0
	beq $21 $10 esquerda
	beq $21 $11 direita
	beq $21 $12 cima
	
	j continuacao
	
esta_colidindo:
	beq $21 $0 continuacao
	lw $21 4($9)
	add $19 $21 $0
	beq $21 $10 esquerda
	beq $21 $11 direita
	beq $21 $12 cima
	
	j continuacao
	
esquerda:
	add $4 $8 $0
	jal andar_para_esquerda
	add $8 $2 $0
	
	j baixo
	
direita:
	add $4 $8 $0
	add $5 $20 $0
	add $6 $22 $0
	jal andar_para_direita
	add $8 $2 $0
	add $22 $3 $0
	add $20 $25 $0
	addi $2 $0 1
	beq $2 $24 desenhar_tela_de_morte
	addi $2 $0 2
	beq $2 $24 iniciar_nivel_2
	add $12 $24 $0
	
	j baixo
	
baixo:
	add $4 $8 $0
	jal andar_para_baixo
	add $8 $2 $0
	addi $2 $0 1
	beq $2 $3 desenhar_tela_de_morte
	add $12 $3 $0
	
	j continuacao
	
desenhar_tela_de_morte:
	j menu_morte
	
cima:
	addi $15 $0 9
laco_andar_cima:
	beq $15 $0 fim_laco_andar_cima
	
	lw $21 0($9)
	beq $21 $0 continuacao_cima
	lw $21 4($9)
	add $19 $21 $0
	beq $21 $10 esquerda_cima
	beq $21 $11 direita_cima

continuacao_cima: 
	add $4 $8 $0
	jal andar_para_cima
	add $8 $2 $0
	addi $15 $15 -1
	j laco_andar_cima
fim_laco_andar_cima:

	add $12 $0 $0
	
	j continuacao
	
esquerda_cima:
	add $4 $8 $0
	jal andar_para_esquerda
	add $8 $2 $0
	
	j continuacao_cima
direita_cima:
	add $4 $8 $0
	add $5 $20 $0
	add $6 $22 $0
	jal andar_para_direita
	add $8 $2 $0
	add $22 $3 $0
	add $20 $25 $0
	addi $2 $0 2
	beq $2 $24 iniciar_nivel_2
	add $12 $24 $0
	
	j continuacao_cima
	
continuacao:
	add $4 $8 $0
	jal verificar_situacao_toad
	add $8 $3 $0
	bne $2 $0 desenhar_tela_de_morte
	
	add $4 $22 $0
	jal coferir_spawn_toad
	add $13 $2 $0
	add $14 $3 $0
       	
       	andi $5 $13 0xffff0000
       	lui $4 0x1001
       	bne $4 $5 mob_foi_morto
	add $5 $14 $0
	add $4 $13 $0
	jal andar_toad
	add $13 $2 $0
	add $14 $3 $0
	
mob_foi_morto:
	j loop_principal
	
menu_morte:
	jal desenhar_mapa_morte
	
	lui $9 0xffff
	addi $10 $0 'r'
	
loop_principal_menu_morte:
	lw $21 0($9)
	beq $21 $0 continuacao_menu_morte
	lw $21 4($9)
	add $19 $21 $0
	beq $21 $10 renascer
	
	j continuacao_menu_morte
	
renascer:
	j menu_level_1
	
continuacao_menu_morte:
	j loop_principal_menu_morte
	
iniciar_nivel_2:
	jal timer_mob
	jal timer_mob
	jal timer_mob
	
	add $25 $0 $0 # registrador de retorno (pode usar)
	add $24 $0 $0 # registrador de retorno (pode usar)
	add $23 $0 $0 # registrador de retorno (pode usar)
	
	add $22 $0 $0 # registrador que vai guardar quantas vezes o mapa andou
	add $21 $0 $0 # registrador que vai guardar o que foi lido do teclado
	add $20 $0 $0 # registrador que vai guardar quantos cenarios ja foram desenhados
	
	add $19 $0 $0 # registrador que vai guardar a copia do botao que vai apertado no teclado
	add $18 $0 $0 # registrador que vai guardar se o personsagem está colidindo com algo
	
	add $17 $0 $0 # registrador que vai guardar se o cogumelo ja nasceu
	add $16 $0 $0 # registrador que vai guardar se o personagem está grande ou pequeno
	
	add $15 $0 $0 # nada
	add $14 $0 $0 # nada
	add $13 $0 $0 # registrador que vai guardar a posicao do inimigo
	
	add $12 $0 $0 # registrador que vai guardar o movimento pra cima
	add $11 $0 $0 # registrador que vai guardar o movimento para a direita
	add $10 $0 $0 # registrador que vai guardar o movimento para a esquerda
	
	add $9 $0 $0 # nada
	
	add $8 $0 $0 # registrador que vai guardar a posicao atual do personagem
	
	jal desenhar_mapa_5
	jal salvar_terceira_copia
	addi $20 $20 1
	
	jal desenhar_mapa_6
	addi $20 $20 1
	
	lui $8 0x1001
	addi $8 $8 22528
	add $4 $8 $0
	jal desenhar_personagem_direita
	
	lui $13 0x1001
	addi $13 $13 18916
	add $4 $13 $0
	jal desenhar_toad
	
	lui $9 0xffff
	addi $10 $0 'a'
	addi $11 $0 'd'
	add $12 $0 $0
	
loop_principal_nivel_2:
	lw $21 0($9)
	bne $18 $0 esta_colidindo_nivel_2
	beq $21 $0 baixo_nivel_2
	lw $21 4($9)
	add $19 $21 $0
	beq $21 $10 esquerda_nivel_2
	beq $21 $11 direita_nivel_2
	beq $21 $12 cima_nivel_2
	
	j continuacao_nivel_2
	
esta_colidindo_nivel_2:
	beq $21 $0 continuacao_nivel_2
	lw $21 4($9)
	add $19 $21 $0
	beq $21 $10 esquerda_nivel_2
	beq $21 $11 direita_nivel_2
	beq $21 $12 cima_nivel_2
	
	j continuacao_nivel_2
	
esquerda_nivel_2:
	add $4 $8 $0
	jal andar_para_esquerda
	add $8 $2 $0
	
	j baixo_nivel_2
	
direita_nivel_2:
	add $4 $8 $0
	add $5 $20 $0
	add $6 $22 $0
	jal andar_para_direita_nivel_2
	add $8 $2 $0
	add $22 $3 $0
	add $20 $25 $0
	addi $2 $0 1
	beq $2 $24 desenhar_tela_de_morte_nivel_2
	add $12 $24 $0
	
	j baixo_nivel_2
	
baixo_nivel_2:
	add $4 $8 $0
	jal andar_para_baixo
	add $8 $2 $0
	addi $2 $0 1
	beq $2 $3 desenhar_tela_de_morte_nivel_2
	add $12 $3 $0
	
	j continuacao_nivel_2
	
desenhar_tela_de_morte_nivel_2:
	j menu_morte
	
cima_nivel_2:
	addi $15 $0 9
laco_andar_cima_nivel_2:
	beq $15 $0 fim_laco_andar_cima_nivel_2
	
	lw $21 0($9)
	beq $21 $0 continuacao_cima_nivel_2
	lw $21 4($9)
	add $19 $21 $0
	beq $21 $10 esquerda_cima_nivel_2
	beq $21 $11 direita_cima_nivel_2

continuacao_cima_nivel_2: 
	add $4 $8 $0
	jal andar_para_cima
	add $8 $2 $0
	addi $15 $15 -1
	j laco_andar_cima_nivel_2
fim_laco_andar_cima_nivel_2:

	add $12 $0 $0
	
	j continuacao_nivel_2
	
esquerda_cima_nivel_2:
	add $4 $8 $0
	jal andar_para_esquerda
	add $8 $2 $0
	
	j continuacao_cima_nivel_2
direita_cima_nivel_2:
	add $4 $8 $0
	add $5 $20 $0
	add $6 $22 $0
	jal andar_para_direita_nivel_2
	add $8 $2 $0
	add $22 $3 $0
	add $20 $25 $0
	
	j continuacao_cima_nivel_2
	
continuacao_nivel_2:
	add $4 $8 $0
	jal verificar_situacao_toad
	add $8 $3 $0
	bne $2 $0 desenhar_tela_de_morte_nivel_2
	
	add $4 $22 $0
	jal coferir_spawn_toad_nivel_2
	add $13 $2 $0
	add $14 $3 $0
       	
       	andi $5 $13 0xffff0000
       	lui $4 0x1001
       	bne $4 $5 mob_foi_morto_nivel_2
	add $5 $14 $0
	add $4 $13 $0
	jal andar_toad_nivel_2 # analisar
	add $13 $2 $0
	add $14 $3 $0
	
mob_foi_morto_nivel_2:
	j loop_principal_nivel_2
	
#====================================================
# - funcao para desenhar mapa 1
# - registrador de entrada: -
# - registrador de saida: -

desenhar_mapa_1:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
	sw $12 0($29)
       	addi $29 $29 -4
	sw $13 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $22 0($29)
       	addi $29 $29 -4
       	
tela_1:
	lui $8 0x1001
	addi $22 $8 65536
	li $9 8192
	li $20 0x20d8ff
ceu_tela_1:
	
	sw $20 0($8)
	sw $20 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 ceu_tela_1
	
bloco_chao_1_init_tela_1:
	lui $8 0x1001
	addi $8 $8 26624
	addi $22 $8 65536
	li $10 32
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_1:
	li $9 4
bloco_chao_1_tela_1:
	beq $9 $0 final_bloco_chao_1_tela_1
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_1_tela_1
final_bloco_chao_1_tela_1:
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
	bne $10 $0 laco_bloco_chao_1_tela_1
	
bloco_chao_2_init_tela_1:
	lui $8 0x1001
	addi $8 $8 28672
	addi $22 $8 65536
	li $10 32
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_2_tela_1:
	li $9 4
bloco_chao_2_tela_1:
	beq $9 $0 final_bloco_chao_2_tela_1
	
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
	j bloco_chao_2_tela_1
final_bloco_chao_2_tela_1:
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
	bne $10 $0 laco_bloco_chao_2_tela_1
	
bloco_chao_3_init_tela_1:
	lui $8 0x1001
	addi $8 $8 30720
	addi $22 $8 65536
	li $10 32
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_3_tela_1:
	li $9 4
bloco_chao_3_tela_1:
	beq $9 $0 final_bloco_chao_3_tela_1
	
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
	j bloco_chao_3_tela_1
final_bloco_chao_3_tela_1:
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
	bne $10 $0 laco_bloco_chao_3_tela_1
	
tijolo_init:
	lui $8, 0x1001
	addi $8, $8, 10432
	li $20, 0xed6408
	li $9, 11
	li $10, 11
	li $11, 1
	
tijolo:
	beq $9, $0, plt
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j tijolo
	
plt:
	beq $10, $0, dtvi
	addi $10, $10, -1
	addi $8, $8, 468
	li $9, 11
	j tijolo
	
dtvi:
	addi $8, $8, -5680
	li $20, 0x000000
	li $9, 3
	
detalhe_tijoloV:
	beq $9, $0 dthi
	
	sw $20 24($8)
	sw $20, 44($8)
	sw $20 65560($8)
	sw $20 65580($8)
	
	sw $20, 2060($8)
	sw $20, 2084($8)
	sw $20 67596($8)
	sw $20 67620($8)
	
	sw $20, 4120($8)
	sw $20, 4140($8)
	sw $20 69656($8)
	sw $20 69676($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j detalhe_tijoloV
	
dthi:
	addi $8, $8, -1536
	li $20, 0x000000
	li $9, 11
	
detalhe_tijoloH:
	beq $9, $0 , prox_t
	
	sw $20 1540($8)
	sw $20 3588($8)
	sw $20 5636($8)
	sw $20 67076($8)
	sw $20 69124($8)
	sw $20 71172($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j detalhe_tijoloH
	
prox_t:
	beq $11, $0, caixa_init
	addi $8, $8, 60
	li $20, 0xed6408
	li $9, 11
	li $10, 11
	addi $11, $11, -1
	j tijolo
	
caixa_init:
	lui $8, 0x1001
	addi $8, $8, 10476
	li $20, 0xfbbe2e
	li $9, 14
	li $10, 11

caixa:
	beq $9, $0, plc
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j caixa
	
plc:
	beq $10, $0, lci
	addi $10, $10, -1
	addi $8, $8, 456
	li $9, 14
	j caixa
lci:
	li $20, 0xfbbe2d
	li $9, 6
	addi $8, $8, -4
lc:
	beq $9, $0, interro_init
	sw $20, 0($8)
	sw $20 65536($8)
	sw $20 -32($8)
	sw $20 65504($8)
	
	addi $8, $8, -4
	addi $9, $9, -1
	j lc
 
interro_init:
	addi $8, $8, 44
	lui $8, 0x1001
	addi $8, $8, 11004
	li $20, 0xffffff
	li $9, 2

interro:
	beq $9, $0 fim
	
	sw $20, 0($8)
	sw $20, 8($8)
	sw $20, 12($8)
	sw $20, 65536($8)
	sw $20, 65544($8)
	sw $20, 65548($8)
	
	sw $20, 508($8)
	sw $20, 1020($8)
	sw $20, 1532($8)
	sw $20, 66044($8)
	sw $20, 66556($8)
	sw $20, 67068($8)
	
	sw $20, 528($8)
	sw $20, 1040($8)
	sw $20, 1552($8)
	sw $20, 2064($8)
	sw $20, 66064($8)
	sw $20, 66576($8)
	sw $20, 67088($8)
	sw $20, 67600($8)
	
	sw $20, 2060($8)
	sw $20, 67596($8)
	
	sw $20, 2568($8)
	sw $20, 3080($8)
	sw $20, 68104($8)
	sw $20, 68616($8)
	
	sw $20, 4104($8)
	sw $20, 4616($8)
	sw $20, 69640($8)
	sw $20, 70152($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	
	j interro
	
fim:
	addi $29 $29 4                                                    
       	lw $22 0($29)
	addi $29 $29 4                                                    
       	lw $20 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
#=============================================
# - funcao para desenhar mapa 2
# - registrador de entrada: -
# - registrador de saida: $2

desenhar_mapa_2:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
	addi $29 $29 -4
       	sw $12 0($29)
	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4

tela_2:
	lui $8 0x1001
	addi $8 $8 32768
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
	addi $8 $8 32768
	addi $8 $8 26624
	li $10 7
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
	addi $8 $8 32768
	addi $8 $8 27024
	li $10 7
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
	
bloco_chao_2_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 26736
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
	
bloco_chao_3_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 27008
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
	
bloco_chao_4_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 28784
	li $10 2
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
	
bloco_chao_5_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 29056
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
	
bloco_chao_6_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 28672
	li $10 6
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
	addi $8 $8 32768
	addi $8 $8 29088
	li $10 6
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
	
bloco_chao_7_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 28768
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
	
bloco_chao_8_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 29072
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
	
bloco_chao_9_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 30816
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
	
bloco_chao_10_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 31120
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
	
bloco_chao_12_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 30720
	li $10 6
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
	addi $8 $8 32768
	addi $8 $8 31136
	li $10 6
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
	
bloco_obstaculo_1_init_tela_2:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 18496
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
	addi $8 $8 32768
	addi $8 $8 18512
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
	addi $8 $8 32768
	addi $8 $8 18528
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
	addi $8 $8 32768
	addi $8 $8 20544
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
	addi $8 $8 32768
	addi $8 $8 20560
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
	addi $8 $8 32768
	addi $8 $8 20576
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
	addi $8 $8 32768
	addi $8 $8 22592
	li $10 2
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
	addi $8 $8 32768
	addi $8 $8 22608
	li $10 2
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
	addi $8 $8 32768
	addi $8 $8 22624
	li $10 2
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
	
bloco_obstaculo_1_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16784
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $14 0x00b215
	li $9 4
	
bloco_obstaculo_1_tela_2_3:
	beq $9 $0 fim_bloco_obstaculo_1_tela_2_3
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_2_3
fim_bloco_obstaculo_1_tela_2_3:
	addi $8 $8 -16
	
	sw $11 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $14 1540($8)
	
bloco_obstaculo_2_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16800
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_2_tela_2_3:
	beq $9 $0 bloco_obstaculo_3_init_tela_2_3
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_2_3

bloco_obstaculo_3_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16816
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_3_tela_2_3:
	beq $9 $0 fim_bloco_obstaculo_3_tela_2_3
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_2_3
fim_bloco_obstaculo_3_tela_2_3:
	addi $8 $8 -16
	
	sw $11 520($8)
	sw $13 1024($8)
	sw $13 1028($8)
	sw $20 1036($8)
	sw $13 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $20 1548($8)
	
bloco_obstaculo_4_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 18832
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_4_tela_2_3:
	beq $9 $0 fim_bloco_obstaculo_4_tela_2_3
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_2_3
fim_bloco_obstaculo_4_tela_2_3:
	addi $8 $8 -2048
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 516($8)
	sw $12 1028($8)
	sw $12 1540($8)
	
bloco_obstaculo_5_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 18848
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_5_tela_2_3:
	beq $9 $0 fim_bloco_obstaculo_5_tela_2_3
	
	sw $12 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_2_3
fim_bloco_obstaculo_5_tela_2_3:
	addi $8 $8 -16
	
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	
bloco_obstaculo_6_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 18864
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_6_tela_2_3:
	beq $9 $0 fim_bloco_obstaculo_6_tela_2_3
	
	sw $11 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_2_3
fim_bloco_obstaculo_6_tela_2_3:
	addi $8 $8 -2048
	
	sw $12 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	
bloco_obstaculo_7_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20880
	li $10 3
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_7_tela_2_3:
	li $9 4
bloco_obstaculo_7_tela_2_3:
	beq $9 $0 fim_bloco_obstaculo_7_tela_2_3
	
	sw $20 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_2_3
fim_bloco_obstaculo_7_tela_2_3:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_7_tela_2_3
	
bloco_obstaculo_8_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20896
	li $10 3
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_8_tela_2_3:
	li $9 4
bloco_obstaculo_8_tela_2_3:
	beq $9 $0 fim_bloco_obstaculo_8_tela_2_3
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $13 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_2_3
fim_bloco_obstaculo_8_tela_2_3:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_8_tela_2_3
	
bloco_obstaculo_9_init_tela_2_3:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 20912
	li $10 3
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_9_tela_2_3:
	li $9 4
bloco_obstaculo_9_tela_2_3:
	beq $9 $0 fim_bloco_obstaculo_9_tela_2_3
	
	sw $13 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_9_tela_2_3
fim_bloco_obstaculo_9_tela_2_3:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_9_tela_2_3
	
bloco_obstaculo_1_init_tela_2_4:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 14480
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_1_tela_2_4:
	beq $9 $0 final_bloco_obstaculo_1_tela_2_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_2_4
final_bloco_obstaculo_1_tela_2_4:
	addi $8 $8 -16
	
	sw $20 512($8)
	sw $12 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
bloco_obstaculo_2_init_tela_2_4:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16528
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_2_tela_2_4:
	beq $9 $0 final_bloco_obstaculo_2_tela_2_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_2_4
final_bloco_obstaculo_2_tela_2_4:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1028($8)
	
bloco_obstaculo_3_init_tela_2_4:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 14496
	li $10 6
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_3_tela_2_4:
	li $9 4
bloco_obstaculo_3_tela_2_4:
	beq $9 $0 final_bloco_obstaculo_3_tela_2_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_2_4
final_bloco_obstaculo_3_tela_2_4:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 1548($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_3_tela_2_4
	
bloco_obstaculo_4_init_tela_2_4:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16544
	li $10 6
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_4_tela_2_4:
	li $9 4
bloco_obstaculo_4_tela_2_4:
	beq $9 $0 final_bloco_obstaculo_4_tela_2_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_2_4
final_bloco_obstaculo_4_tela_2_4:
	addi $8 $8 -16
	
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1032($8)
	sw $12 1036($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_4_tela_2_4
	
bloco_obstaculo_5_init_tela_2_4:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 14512
	li $10 6
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_5_tela_2_4:
	li $9 4
bloco_obstaculo_5_tela_2_4:
	beq $9 $0 final_bloco_obstaculo_5_tela_2_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_2_4
final_bloco_obstaculo_5_tela_2_4:
	addi $8 $8 -16
	
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_5_tela_2_4
	
bloco_obstaculo_6_init_tela_2_4:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16560
	li $10 6
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_6_tela_2_4:
	li $9 4
bloco_obstaculo_6_tela_2_4:
	beq $9 $0 final_bloco_obstaculo_6_tela_2_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_2_4
final_bloco_obstaculo_6_tela_2_4:
	addi $8 $8 -16
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1028($8)
	sw $12 1024($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_6_tela_2_4
	
bloco_obstaculo_7_init_tela_2_4:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 16736
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_7_tela_2_4:
	li $9 4
bloco_obstaculo_7_tela_2_4:
	beq $9 $0 final_bloco_obstaculo_7_tela_2_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_2_4
final_bloco_obstaculo_7_tela_2_4:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 524($8)
	sw $12 1032($8)
	sw $20 1036($8)
	
bloco_obstaculo_8_init_tela_2_4:
	lui $8 0x1001
	addi $8 $8 32768
	addi $8 $8 14688
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_8_tela_2_4:
	li $9 4
bloco_obstaculo_8_tela_2_4:
	beq $9 $0 final_bloco_obstaculo_8_tela_2_4
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_2_4
final_bloco_obstaculo_8_tela_2_4:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $20 524($8)
	sw $20 1036($8)
	sw $20 1548($8)
	
	addi $29 $29 4                                                    
       	lw $20 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#================================================
# - funcao para desenhar mapa 3

desenhar_mapa_3:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	sw $22 0($29)
       	addi $29 $29 -4
       	
ceu_init_m3:  
	lui $8, 0x1001
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 8192
	li $20, 0x0ec7db
ceu_m3:
	beq $9, $0, nuvem_init_m3
	sw $20, 0($8)
	sw $20, 0($22)
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j ceu_m3
nuvem_init_m3:
	lui $8, 0x1001
	addi $8, $8, 5212
	addi $22 $8 98304
	addi $8 $8 32768
	li $21, 1
	li $9, 12
	li $20, 0xfbfdff
	
nuvem_m3:
	beq $9, $0, proxima_nuvem_m3
	#linha 1
	sw $20, 16($8)
	sw $20, 16($22)
	
	# linha 2 e 3
	sw $20, 520($8)
	sw $20, 532($8)
	sw $20, 520($22)
	sw $20, 532($22)
	
	sw $20, 1032($8)
	sw $20, 1068($8)
	sw $20, 1032($22)
	sw $20, 1068($22)
	
	# linha 4
	sw $20, 1532($8)
	sw $20, 1580($8)
	sw $20, 1588($8)
	sw $20, 1532($22)
	sw $20, 1580($22)
	sw $20, 1588($22)

	# linha 5 a 8
	sw $20, 2040($8)
	sw $20, 2080($8)
	sw $20, 2104($8)
	sw $20, 2040($22)
	sw $20, 2080($22)
	sw $20, 2104($22)
	
	sw $20, 2552($8)
	sw $20, 2568($8)
	sw $20, 2616($8)
	sw $20, 2552($22)
	sw $20, 2568($22)
	sw $20, 2616($22)
	
	sw $20, 3064($8)
	sw $20, 3080($8)
	sw $20, 3128($8)
	sw $20, 3064($22)
	sw $20, 3080($22)
	sw $20, 3128($22)
	
	sw $20, 3576($8)
	sw $20, 3592($8)
	sw $20, 3640($8)
	sw $20, 3576($22)
	sw $20, 3592($22)
	sw $20, 3640($22)
	
	# linha 9
	sw $20, 4092($8)
	sw $20, 4140($8)
	sw $20, 4148($8)
	sw $20, 4092($22)
	sw $20, 4140($22)
	sw $20, 4148($22)
	
	# linha 10
	sw $20, 4632($8)
	sw $20, 4632($22)
	
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j nuvem_m3

proxima_nuvem_m3:
	beq $21 $0 solo_init_m3
	addi $21, $21, -1
	addi $8, $8, -2872
	addi $22 $22 -2872
	li $9, 12
	j nuvem_m3
	
# chao/piso/solo
	
solo_init_m3:
	li $20, 0xc89858
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 1536
	
solo_m3:
	beq $9, $0, detalhe_solo_init_m3
	sw $20, 0($8)
	sw $20, 0($22)
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j solo_m3
	
	
detalhe_solo_init_m3:
	li $20, 0xe0c050
	li $21, 1
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 16

detalhe_solo_m3:
	beq $9, $0, npds_m3
	
	sw $20, 0($8)
	sw $20, 4($8)
	sw $20, 512($8)
	sw $20, 516($8)
	sw $20, 1024($8)
	sw $20, 1028($8)
	sw $20, 0($22)
	sw $20, 4($22)
	sw $20, 512($22)
	sw $20, 516($22)
	sw $20, 1024($22)
	sw $20, 1028($22)
	
	sw $20, 1036($8)
	sw $20, 1548($8)
	sw $20, 1036($22)
	sw $20, 1548($22)

	
	addi $8, $8, 32
	addi $22 $22 32
	addi $9, $9, -1

	j detalhe_solo_m3
	
npds_m3:
	beq $21, $0 grama_init_m3
	addi $21, $21, -1
	addi $8, $8, 2604
	addi $22 $22 2604
	li $9, 16
	j detalhe_solo_m3
	
grama_init_m3:
	li $20, 0x00c800
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 128
	
grama_m3:
	beq $9, $0, dg_init_m3
	
	sw $20, 0($8)
	sw $20, 512($8)
	sw $20, 0($22)
	sw $20, 512($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j grama_m3
	
dg_init_m3:
	li $21, 0x786818
	li $9, 26
	
dg_m3:
	beq $9, $0, moita_init_m3
	
	
	sw $20, 0($8)
	sw $20 4($8)
	sw $20, 12($8)
	sw $20, 0($22)
	sw $20 4($22)
	sw $20, 12($22)
	
	# sombras
	sw $21, 8($8)
	sw $21, 16($8)
	sw $21, 512($8)
	sw $21, 516($8)
	sw $21, 524($8)
	sw $21, 8($22)
	sw $21, 16($22)
	sw $21, 512($22)
	sw $21, 516($22)
	sw $21, 524($22)
	
	addi $8, $8, 20
	addi $22 $22 20
	addi $9, $9, -1
	j dg_m3

moita_init_m3:
	lui $8, 0x1001
	addi $8, $8, 21324
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 5
	li $20, 0x03f906
	
moita_m3:
	beq $9, $0, dm_m3
	#line 1
	sw $20, 52($8)
	sw $20, 52($22)
	
	#line 2
	sw $20, 560($8)
	sw $20, 568($8)
	sw $20, 560($22)
	sw $20, 568($22)
	
	#line 3
	sw $20, 1064($8)
	sw $20, 1080($8)
	sw $20, 1064($22)
	sw $20, 1080($22)
	
	#line 4
	sw $20, 1576($8)
	sw $20, 1596($8)
	sw $20, 1576($22)
	sw $20, 1596($22)
	
	#line 5
	sw $20, 2088($8)
	sw $20, 2108($8)
	sw $20, 2120($8)
	sw $20, 2088($22)
	sw $20, 2108($22)
	sw $20, 2120($22)
	
	#line6
	sw $20, 2596($8)
	sw $20, 2616($8)
	sw $20, 2632($8)
	sw $20, 2596($22)
	sw $20, 2616($22)
	sw $20, 2632($22)
	
	#line7
	sw $20, 3104($8)
	sw $20, 3124($8)
	sw $20, 3144($8)
	sw $20, 3104($22)
	sw $20, 3124($22)
	sw $20, 3144($22)
	
	#line 8*
	sw $20, 3604($8)
	sw $20, 3624($8)
	sw $20, 3644($8)
	sw $20, 3660($8)
	sw $20, 3604($22)
	sw $20, 3624($22)
	sw $20, 3644($22)
	sw $20, 3660($22)
	
	#line 9
	sw $20, 4112($8)
	sw $20, 4132($8)
	sw $20, 4152($8)
	sw $20, 4172($8)
	sw $20, 4112($22)
	sw $20, 4132($22)
	sw $20, 4152($22)
	sw $20, 4172($22)
	
	#line 10
	sw $20, 4620($8)
	sw $20, 4640($8)
	sw $20, 4660($8)
	sw $20, 4680($8)
	sw $20, 4696($8)
	sw $20, 4620($22)
	sw $20, 4640($22)
	sw $20, 4660($22)
	sw $20, 4680($22)
	sw $20, 4696($22)
	
	#line 11
	sw $20, 5132($8)
	sw $20, 5152($8)
	sw $20, 5172($8)
	sw $20, 5192($8)
	sw $20, 5208($8)
	sw $20, 5132($22)
	sw $20, 5152($22)
	sw $20, 5172($22)
	sw $20, 5192($22)
	sw $20, 5208($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j moita_m3
dm_m3: 
	lui $8, 0x1001
	addi $8, $8, 21324
	addi $22 $8 98304
	addi $8 $8 32768
	
	sw $20, 1624($8)
	sw $20, 3688($8)
	sw $20, 4200($8)
	sw $20, 4196($8)
	
	sw $20, 1624($22)
	sw $20, 3688($22)
	sw $20, 4200($22)
	sw $20, 4196($22)
	j topo_cano_init_m3
	
# parte de cima do cano
	
topo_cano_init_m3:
	lui $8, 0x1001
	addi $8, $8, 19012
	addi $22 $8 98304
	addi $8 $8 32768
	li $20, 0x00ff50
	li $9, 14
	li $10, 4
	li $11, 1
	
topo_cano_m3:
	beq $9, $0 pltc_m3
	
	sw $20, 0($8)
	sw $20, 0($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j topo_cano_m3

pltc_m3:
	beq $10, $0, borda_tchi_m3
	addi $8, $8, 456
	addi $22 $22 456
	li $9, 14
	subi $10, $10, 1
	j topo_cano_m3
	
borda_tchi_m3:
	subi $8, $8, 2620
	subi $22 $22 2620
	li $20, 0x000000
	li $9, 16
borda_tch_m3:
	beq $9, $0 borda_tcvi_m3
	
	sw $20, 0($8)
	sw $20, 0($22)
	sw $20, 3072($8)
	sw $20, 3072($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	subi $9, $9, 1
	j borda_tch_m3
	
borda_tcvi_m3:
	subi $8, $8, 64
	subi $22 $22 64
	li $9, 6
	
borda_tcv_m3:
	beq $9, $0 cano_init_m3
	
	sw $20, 0($8)
	sw $20, 0($22)
	sw $20, 60($8)
	sw $20, 60($22)
	
	addi $8, $8, 512
	addi $22 $22 512
	subi $9, $9, 1
	j borda_tcv_m3


# parte de baixo cano

cano_init_m3:
	lui $8, 0x1001
	addi $8, $8, 22596
	addi $22 $8 98304
	addi $8 $8 32768
	li $20, 0x00ff50
	li $9, 14
	li $10, 7
	li $11, 1
	li $21, 4156
	li $13, 9

cano_m3:
	beq $9, $0 plc_m3
	
	sw $20, 0($8)
	sw $20, 0($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j cano_m3
plc_m3:
	beq $10, $0, borda_cano_init_m3
	addi $8, $8, 456
	addi $22 $22 456
	li $9, 14
	subi $10, $10, 1
	j cano_m3
	
borda_cano_init_m3:
	sub $8, $8, $21
	sub $22 $22 $21
	li $20, 0x000000
	li $9, 16
borda_ch_m3:
	beq $9, $0 borda_cvi_m3
	
	sw $20, 0($8)
	sw $20, 0($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	subi $9, $9, 1
	j borda_ch_m3
	
borda_cvi_m3:
	subi $8, $8, 64
	subi $22 $22 64
	move $9, $13
	
borda_cv_m3:
	beq $9, $0 buraco_init
	
	sw $20, 0($8)
	sw $20, 0($22)
	sw $20, 60($8)
	sw $20, 60($22)
	
	addi $8, $8, 512
	addi $22 $22 512
	subi $9, $9, 1
	j borda_cv_m3

buraco_init:
	lui $8, 0x1001
	addi $8, $8, 26800
	addi $22 $8 98304
	addi $8 $8 32768
	li $20, 0x0ec7db
	li $9, 18
	li $10, 10
	
buraco:
	beq $9, $0 plb_m3
	
	sw $20, 0($8)
	sw $20, 0($22)

	
	addi $8, $8, 4
	subi $9, $9, 1
	j buraco
plb_m3:
	beq $10, $0 dead_line_init
	subi $10, $10, 1
	
	addi $8, $8, 440
	addi $22 $22 440
	li $9, 18
	j buraco

dead_line_init:
	li $20, 0x0ec7da
	addi $8, $8, 440
	addi $22 $22 440
	li $9, 18
dead_line:	
	beq $9, $0 tijolo_init_m3
	
	sw $20, 0($8)
	sw $20, 0($22)

	
	addi $8, $8, 4
	addi $22 $22 4
	subi $9, $9, 1
	j dead_line	
	
tijolo_init_m3:
	lui $8, 0x1001
	addi $8, $8, 10560
	addi $22 $8 98308
	addi $8 $8 32768
	li $20, 0xed6408
	li $9, 11
	li $10, 11
	li $11, 2
	
tijolo_m3:
	beq $9, $0, plt_m3
	sw $20, 0($8)
	sw $20, 0($22)
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j tijolo_m3
	
plt_m3:
	beq $10, $0, dtvi_m3
	addi $10, $10, -1
	addi $8, $8, 468
	addi $22 $22 468
	li $9, 11
	j tijolo_m3
	
dtvi_m3:
	subi $8, $8, 5680
	subi $22 $22 5680
	
	li $20, 0x000000
	li $9, 3
	
detalhe_tijoloV_m3:
	beq $9, $0 dthi_m3
	
	sw $20 24($8)
	sw $20, 44($8)
	sw $20 24($22)
	sw $20, 44($22)
	
	sw $20, 2060($8)
	sw $20, 2084($8)
	sw $20, 2060($22)
	sw $20, 2084($22)
	
	sw $20, 4120($8)
	sw $20, 4140($8)
	sw $20, 4120($22)
	sw $20, 4140($22)
	
	addi $8, $8, 512
	addi $22 $22 512
	addi $9, $9, -1
	j detalhe_tijoloV_m3
	
dthi_m3:
	subi $8, $8, 1536
	subi $22 $22 1536
	li $20, 0x000000
	li $9, 11
	
detalhe_tijoloH_m3:
	beq $9, $0 , prox_tijolo
	
	sw $20 1540($8)
	sw $20 3588($8)
	sw $20 5636($8)
	sw $20 1540($22)
	sw $20 3588($22)
	sw $20 5636($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j detalhe_tijoloH_m3
	
prox_tijolo:
	beq $11, $0, fim_mapa_3
	addi $8, $8, 4
	addi $22 $22 4
	li $20, 0xed6408
	li $9, 11
	li $10, 11
	addi $11, $11, -1
	j tijolo_m3
	
fim_mapa_3:
	addi $29 $29 4                                                    
       	lw $22 0($29)
	addi $29 $29 4                                                    
       	lw $21 0($29)
	addi $29 $29 4                                                    
       	lw $20 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4 
	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
#================================================
# funcao para desenhar mapa 4

desenhar_mapa_4:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $4 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	sw $22 0($29)
       	addi $29 $29 -4
ceu_init_mapa_4:  
	lui $8, 0x1001
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 8192
	li $20, 0x0ec7db
ceu_mapa_4:
	beq $9, $0, nuvem_init_mapa_4
	sw $20, 0($8)
	sw $20, 0($22)
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j ceu_mapa_4

nuvem_init_mapa_4:
	lui $8, 0x1001
	addi $8, $8, 612
	addi $22 $8 98304
	addi $8 $8 32768
	li $21, 1
	li $9, 12
	li $20, 0xfbfdff
	
nuvem_mapa_4:
	beq $9, $0, proxima_nuvem_mapa_4
	#linha 1
	sw $20, 16($8)
	sw $20, 16($22)
	
	# linha 2 e 3
	sw $20, 520($8)
	sw $20, 532($8)
	sw $20, 520($22)
	sw $20, 532($22)
	
	sw $20, 1032($8)
	sw $20, 1068($8)
	sw $20, 1032($22)
	sw $20, 1068($22)
	
	# linha 4
	sw $20, 1532($8)
	sw $20, 1580($8)
	sw $20, 1588($8)
	sw $20, 1532($22)
	sw $20, 1580($22)
	sw $20, 1588($22)

	# linha 5 a 8
	sw $20, 2040($8)
	sw $20, 2080($8)
	sw $20, 2104($8)
	sw $20, 2040($22)
	sw $20, 2080($22)
	sw $20, 2104($22)
	
	sw $20, 2552($8)
	sw $20, 2568($8)
	sw $20, 2616($8)
	sw $20, 2552($22)
	sw $20, 2568($22)
	sw $20, 2616($22)
	
	sw $20, 3064($8)
	sw $20, 3080($8)
	sw $20, 3128($8)
	sw $20, 3064($22)
	sw $20, 3080($22)
	sw $20, 3128($22)
	
	sw $20, 3576($8)
	sw $20, 3592($8)
	sw $20, 3640($8)
	sw $20, 3576($22)
	sw $20, 3592($22)
	sw $20, 3640($22)
	
	# linha 9
	sw $20, 4092($8)
	sw $20, 4140($8)
	sw $20, 4148($8)
	sw $20, 4092($22)
	sw $20, 4140($22)
	sw $20, 4148($22)
	
	# linha 10
	sw $20, 4632($8)
	sw $20, 4632($22)
	
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j nuvem_mapa_4

proxima_nuvem_mapa_4:
	beq $21 $0 solo_init_mapa_4
	addi $21, $21, -1
	addi $8, $8, 3296
	addi $22 $22 3296
	li $9, 12
	j nuvem_mapa_4
	
# chao/piso/solo
	
solo_init_mapa_4:
	li $20, 0xc89858
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 1536
	
solo_mapa_4:
	beq $9, $0, detalhe_solo_init_mapa_4
	sw $20, 0($8)
	sw $20, 0($22)
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j solo_mapa_4
	
	
detalhe_solo_init_mapa_4:
	li $20, 0xe0c050
	li $21, 1
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 16

detalhe_solo_mapa_4:
	beq $9, $0, npds_mapa_4
	
	sw $20, 0($8)
	sw $20, 4($8)
	sw $20, 512($8)
	sw $20, 516($8)
	sw $20, 1024($8)
	sw $20, 1028($8)
	sw $20, 0($22)
	sw $20, 4($22)
	sw $20, 512($22)
	sw $20, 516($22)
	sw $20, 1024($22)
	sw $20, 1028($22)
	
	sw $20, 1036($8)
	sw $20, 1548($8)
	sw $20, 1036($22)
	sw $20, 1548($22)

	
	addi $8, $8, 32
	addi $22 $22 32
	addi $9, $9, -1

	j detalhe_solo_mapa_4
npds_mapa_4:
	beq $21, $0 grama_init_mapa_4
	addi $21, $21, -1
	addi $8, $8, 2604
	addi $22 $22 2604
	li $9, 16
	j detalhe_solo_mapa_4
	
grama_init_mapa_4:
	li $20, 0x00c800
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 128
	
grama_mapa_4:
	beq $9, $0, dg_init_mapa_4
	
	sw $20, 0($8)
	sw $20, 512($8)
	sw $20, 0($22)
	sw $20, 512($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j grama_mapa_4
	
dg_init_mapa_4:
	li $21, 0x786818
	li $9, 26
	
dg_mapa_4:
	beq $9, $0, mastro_init_mapa_4
	
	sw $20 0($8)
	sw $20, 4($8)
	sw $20, 12($8)
	sw $20 0($22)
	sw $20, 4($22)
	sw $20, 12($22)
	
	# sombras
	sw $21, 8($8)
	sw $21, 16($8)
	sw $21, 512($8)
	sw $21, 516($8)
	sw $21, 524($8)
	sw $21, 8($22)
	sw $21, 16($22)
	sw $21, 512($22)
	sw $21, 516($22)
	sw $21, 524($22)
	
	addi $8, $8, 20
	addi $22 $22 20
	addi $9, $9, -1
	j dg_mapa_4

mastro_init_mapa_4:
	li $20, 0xb4f42c
	lui $8, 0x1001
	addi $8, $8, 10112
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 33
	
mastro_mapa_4:
	beq $9, $0, bola_init_mapa_4
	sw $20, 0($8)
	sw $20, 0($22)
	addi $8, $8, 512
	addi $22 $22 512
	addi $9, $9, -1
	j mastro_mapa_4
	
bola_init_mapa_4:
	li $20, 0x00b000
	lui $8, 0x1001
	addi $8, $8, 7548
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 3
bola_mapa_4:
	beq $9, $0, bloco_init_mapa_4
	sw $20, 0($8)
	sw $20,	508($8)
	sw $20,516($8)
	sw $20,1020($8)
	sw $20,1028($8)
	sw $20,1532($8)
	sw $20,1540($8)
	sw $20,2048($8)
	sw $20, 0($22)
	sw $20,	508($22)
	sw $20,516($22)
	sw $20,1020($22)
	sw $20,1028($22)
	sw $20,1532($22)
	sw $20,1540($22)
	sw $20,2048($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j bola_mapa_4
	

bloco_init_mapa_4:
	li $20, 0xae4c0f
	lui $8, 0x1001
	addi $8, $8, 22688
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 8
	li $10, 7
	li $11, 1
	li $21, 1

	
bloco_mapa_4:
	beq $9, $0 plb_m4_mapa_4
	
	sw $20, 0($8)
	sw $20, 0($22)

	
	addi $8, $8, 4
	addi $22 $22 4
	subi $9, $9, 1
	j bloco_mapa_4
plb_m4_mapa_4:
	beq $10, $0 detalhe_blocoHi_mapa_4
	subi $10, $10, 1
	
	addi $8, $8, 480
	addi $22 $22 480
	li $9, 8
	
	j bloco_mapa_4
	
detalhe_blocoHi_mapa_4:
	move $10, $8
	subi $8, $8 3612
	subi $22 $22 3612
	li $20, 0xd28a5c # luz
	li $12, 0x5e3217 # sombra
	li $9, 4
detalhe_blocoH_mapa_4:
	beq $9, $0 detalhe_blocoVI_mapa_4
	
	sw $20, 0($8)
	sw $20, 8($8)
	sw $20, 516($8)
	sw $20, 0($22)
	sw $20, 8($22)
	sw $20, 516($22)
	
	sw $12, 3076($8)
	sw $12, 3584($8)
	sw $12, 3592($8)
	sw $12, 3076($22)
	sw $12, 3584($22)
	sw $12, 3592($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	subi $9, $9, 1
	j detalhe_blocoH_mapa_4
	
detalhe_blocoVI_mapa_4:
	subi $8, $8 20
	addi $8, $8 512
	addi $22 $22 512
	li $9, 4
	
detalhe_blocoV_mapa_4:
	beq $9, $0 prox_bloco_mapa_4	
	
	sw $20, 0($8)
	sw $20, 1024($8)
	sw $20, 516($8)
	sw $20, 0($22)
	sw $20, 1024($22)
	sw $20, 516($22)
	
	sw $12, 28($8)
	sw $12, 1052($8)
	sw $12, 536($8)
	sw $12, 28($22)
	sw $12, 1052($22)
	sw $12, 536($22)

	addi $8, $8, 512
	addi $22 $22 512
	subi $9, $9, 1
	j detalhe_blocoV_mapa_4
	
prox_bloco_mapa_4:
	move $8, $10
	beq $11, $0, bloco_acima_mapa_4
	subi $8, $8, 3584
	subi $22 $22 3584
	li $20, 0xae4c0f
	li $9, 8
	li $10, 7
	addi $11, $11, -1
	j bloco_mapa_4
bloco_acima_mapa_4:
	beq $21, $0, fim_mapa_4
	li $21, 0
	subi $8, $8, 7712
	subi $22 $22 7712
	li $20, 0xae4c0f
	li $9, 8
	li $10, 7
	j bloco_mapa_4
fim_mapa_4:
	addi $29 $29 4                                                    
       	lw $22 0($29)
	addi $29 $29 4                                                    
       	lw $21 0($29)
	addi $29 $29 4                                                    
       	lw $20 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4
	lw $12 0($29)
       	addi $29 $29 4  
	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $4 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
#================================================
# - funcao para desenhar tela 5

desenhar_mapa_5:
	sw $31, 0($29)
       	addi $29, $29, -4
       	sw $8, 0($29)
       	addi $29, $29, -4
       	sw $9, 0($29)
       	addi $29, $29, -4
       	sw $10, 0($29)
       	addi $29, $29, -4
	sw $11, 0($29)
       	addi $29, $29, -4
	sw $12, 0($29)
       	addi $29, $29, -4
	sw $13, 0($29)
       	addi $29, $29, -4
	sw $20, 0($29)
       	addi $29, $29, -4
       	sw $22, 0($29)
       	addi $29, $29, -4
       	
tela_5:
	lui $8 0x1001
	addi $22 $8 65536
	li $9 8192
	li $20 0x20d8ff
ceu_tela_5:
	beq $9 $0 arvore_clara_init_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j ceu_tela_5
arvore_clara_init_tela_5:
   li $20 0x2a8d79
   lui $8 0x1001
   addi $8, $8, 4464
   addi $22 $8 65536
   li $9 42
arvore_clara_tela_5:
	beqz $9 arvore_escura_init_tela_5
   	#arvre 1
   	sw $20 13968($8)
sw $20 13968($22)
   	sw $20 11924($8)
sw $20 11924($22)
   	sw $20 9368($8)
sw $20 9368($22)
   	sw $20 6812($8)
sw $20 6812($22)
   	sw $20 4256($8)
sw $20 4256($22)
   	sw $20 3236($8)
sw $20 3236($22)
   	sw $20 3752($8)
sw $20 3752($22)
	sw $20 4780($8)
sw $20 4780($22)
	sw $20 6832($8)
sw $20 6832($22)
	sw $20 7860($8)
sw $20 7860($22)
	sw $20 8888($8)
sw $20 8888($22)
	sw $20 10428($8)
sw $20 10428($22)
   	sw $20 11456($8)
sw $20 11456($22)
   	sw $20 11972($8)
sw $20 11972($22)
   	
   	# arvore 2
   	sw $20 11464($8)
sw $20 11464($22)
   	sw $20 10956($8)
sw $20 10956($22)
   	sw $20 9936($8)
sw $20 9936($22)
   	sw $20 8916($8)
sw $20 8916($22)
   	sw $20 8408($8)
sw $20 8408($22)
   	sw $20 5852($8)
sw $20 5852($22)
   	sw $20 1760($8)
sw $20 1760($22)
   	sw $20 2788($8)
sw $20 2788($22)
   	sw $20 3816($8)
sw $20 3816($22)
   	sw $20 4844($8)
sw $20 4844($22)
   	sw $20 6896($8)
sw $20 6896($22)
   	sw $20 8436($8)
sw $20 8436($22)
   	sw $20 9464($8)
sw $20 9464($22)
   	sw $20 10492($8)
sw $20 10492($22)
   	sw $20 11008($8)
sw $20 11008($22)
   	sw $20 11524($8)
sw $20 11524($22)
   	sw $20 11528($8)
sw $20 11528($22)
   	sw $20 11532($8)
sw $20 11532($22)
   	
   	#arvre 3
   	sw $20 11024($8)
sw $20 11024($22)
   	sw $20 11028($8)
sw $20 11028($22)
   	sw $20 10520($8)
sw $20 10520($22)
   	sw $20 10012($8)
sw $20 10012($22)
   	sw $20 10016($8)
sw $20 10016($22)
   	sw $20 10532($8)
sw $20 10532($22)
   	sw $20 11048($8)
sw $20 11048($22)
   	sw $20 11564($8)
sw $20 11564($22)
   	sw $20 12080($8)
sw $20 12080($22)
   	sw $20 12084($8)
sw $20 12084($22)
   	sw $20 12088($8)
sw $20 12088($22)
   	
   	sw $20 11580($8)
sw $20 11580($22)
   	sw $20 11072($8)
sw $20 11072($22)
   	sw $20 10564($8)
sw $20 10564($22)
   	sw $20 10056($8)
sw $20 10056($22)
   	
   	sw $20 10060($8)
sw $20 10060($22)
   	sw $20 10064($8)
sw $20 10064($22)
   	sw $20 10068($8)
sw $20 10068($22)
   	sw $20 10072($8)
sw $20 10072($22)
   	sw $20 10076($8)
sw $20 10076($22)
   	sw $20 10080($8)
sw $20 10080($22)
   	sw $20 10084($8)
sw $20 10084($22)
   	sw $20 11112($8)
sw $20 11112($22)
   	sw $20 12140($8)
sw $20 12140($22)
   	sw $20 13680($8)
sw $20 13680($22)
   	sw $20 14196($8)
sw $20 14196($22)
   	sw $20 14712($8)
sw $20 14712($22)
   	
   	sw $20 14204($8)
sw $20 14204($22)
   	sw $20 13184($8)
sw $20 13184($22)
   	sw $20 11652($8)
sw $20 11652($22)
   	sw $20 10632($8)
sw $20 10632($22)
   	sw $20 7052($8)
sw $20 7052($22)
   	sw $20 3984($8)
sw $20 3984($22)
   	sw $20 1940($8)
sw $20 1940($22)
   	sw $20 920($8)
sw $20 920($22)
   	sw $20 1436($8)
sw $20 1436($22)
   	sw $20 2464($8)
sw $20 2464($22)
   	sw $20 4004($8)
sw $20 4004($22)
   	sw $20 6056($8)
sw $20 6056($22)
   	sw $20 7596($8)
sw $20 7596($22)
   	sw $20 9648($8)
sw $20 9648($22)
   	sw $20 11700($8)
sw $20 11700($22)
   	sw $20 11704($8)
sw $20 11704($22)
   	
   	sw $20 11196($8)
sw $20 11196($22)
   	sw $20 10176($8)
sw $20 10176($22)
   	sw $20 9668($8)
sw $20 9668($22)
   	sw $20 9160($8)
sw $20 9160($22)
   	sw $20 9164($8)
sw $20 9164($22)
   	sw $20 9168($8)
sw $20 9168($22)
   	sw $20 9172($8)
sw $20 9172($22)
   	sw $20 9176($8)
sw $20 9176($22)
   	sw $20 9180($8)
sw $20 9180($22)
   	sw $20 9184($8)
sw $20 9184($22)
   	sw $20 9188($8)
sw $20 9188($22)
   	sw $20 6632($8)
sw $20 6632($22)
   	sw $20 4076($8)
sw $20 4076($22)
   	sw $20 2544($8)
sw $20 2544($22)
   	sw $20 1012($8)
sw $20 1012($22)
   	sw $20 -8($8)
sw $20 -8($22)
   	sw $20 -516($8)
sw $20 -516($22)
   	sw $20 -512($8)
sw $20 -512($22)
   	sw $20 516($8)
sw $20 516($22)
   	sw $20 1544($8)
sw $20 1544($22)
   	sw $20 2060($8)
sw $20 2060($22)
   	sw $20 2576($8)
sw $20 2576($22)
   	sw $20 3604($8)
sw $20 3604($22)
   	sw $20 3608($8)
sw $20 3608($22)
   	sw $20 4636($8)
sw $20 4636($22)
   	sw $20 5664($8)
sw $20 5664($22)
   	sw $20 6692($8)
sw $20 6692($22)
   	sw $20 9768($8)
sw $20 9768($22)
   	sw $20 9772($8)
sw $20 9772($22)
   	sw $20 9776($8)
sw $20 9776($22)
   	sw $20 11316($8)
sw $20 11316($22)
   	sw $20 11832($8)
sw $20 11832($22)
   	sw $20 12348($8)
sw $20 12348($22)
   	
   	sw $20 11840($8)
sw $20 11840($22)
   	sw $20 11844($8)
sw $20 11844($22)
   	sw $20 11336($8)
sw $20 11336($22)
   	sw $20 10828($8)
sw $20 10828($22)
   	sw $20 9808($8)
sw $20 9808($22)
   	sw $20 6740($8)
sw $20 6740($22)
   	sw $20 5720($8)
sw $20 5720($22)
   	sw $20 4700($8)
sw $20 4700($22)
   	sw $20 4192($8)
sw $20 4192($22)
   	sw $20 5732($8)
sw $20 5732($22)
   	sw $20 8808($8)
sw $20 8808($22)
   	sw $20 9324($8)
sw $20 9324($22)
   	sw $20 9840($8)
sw $20 9840($22)
   	sw $20 9844($8)
sw $20 9844($22)
   	sw $20 10360($8)
sw $20 10360($22)
   	sw $20 10876($8)
sw $20 10876($22)
   	sw $20 10880($8)
sw $20 10880($22)
   	sw $20 11396($8)
sw $20 11396($22)
   	sw $20 11912($8)
sw $20 11912($22)
   	sw $20 11916($8)
sw $20 11916($22)

   	
   	addi $8 $8 512
addi $22 $22 512
	addi $9 $9 -1
   	j arvore_clara_tela_5
   	
arvore_escura_init_tela_5:
   li $20 0x146a5f
   lui $8 0x1001
   addi $8, $8, 16904
   addi $22 $8 65536
   li $9 15
arvore_escura_tela_5:
	beqz $9 nuvem_init_tela_5
	
	sw $20 8704($8)
sw $20 8704($22)
	sw $20 6660($8)
sw $20 6660($22)
	sw $20 4616($8)
sw $20 4616($22)
	sw $20 2060($8)
sw $20 2060($22)
	sw $20 2064($8)
sw $20 2064($22)
	sw $20 4116($8)
sw $20 4116($22)
	sw $20 6680($8)
sw $20 6680($22)
	sw $20 8220($8)
sw $20 8220($22)
	
	sw $20 8752($8)
sw $20 8752($22)
	sw $20 6708($8)
sw $20 6708($22)
	sw $20 4152($8)
sw $20 4152($22)
	sw $20 6204($8)
sw $20 6204($22)
	sw $20 6720($8)
sw $20 6720($22)
	sw $20 6724($8)
sw $20 6724($22)
	sw $20 6728($8)
sw $20 6728($22)
	
	sw $20 5708($8)
sw $20 5708($22)
	sw $20 1616($8)
sw $20 1616($22)
	sw $20 2128($8)
sw $20 2128($22)
	sw $20 596($8)
sw $20 596($22)
	sw $20 2132($8)
sw $20 2132($22)
	sw $20 1112($8)
sw $20 1112($22)
	sw $20 2136($8)
sw $20 2136($22)
	sw $20 2140($8)
sw $20 2140($22)
	sw $20 4192($8)
sw $20 4192($22)
	sw $20 5220($8)
sw $20 5220($22)
	sw $20 5736($8)
sw $20 5736($22)
	sw $20 6252($8)
sw $20 6252($22)
	sw $20 6768($8)
sw $20 6768($22)
	sw $20 6772($8)
sw $20 6772($22)
	
	sw $20 5240($8)
sw $20 5240($22)
	sw $20 3708($8)
sw $20 3708($22)
	sw $20 2176($8)
sw $20 2176($22)
	sw $20 1668($8)
sw $20 1668($22)
	sw $20 2180($8)
sw $20 2180($22)
	sw $20 2184($8)
sw $20 2184($22)
	sw $20 3212($8)
sw $20 3212($22)
	sw $20 4752($8)
sw $20 4752($22)
	sw $20 5780($8)
sw $20 5780($22)
	sw $20 6808($8)
sw $20 6808($22)
	sw $20 7836($8)
sw $20 7836($22)
	sw $20 7840($8)
sw $20 7840($22)
	sw $20 7844($8)
sw $20 7844($22)
	
	sw $20 7336($8)
sw $20 7336($22)
	sw $20 5804($8)
sw $20 5804($22)
	sw $20 4272($8)
sw $20 4272($22)
	sw $20 3252($8)
sw $20 3252($22)
	sw $20 2232($8)
sw $20 2232($22)
	sw $20 2748($8)
sw $20 2748($22)
	sw $20 3776($8)
sw $20 3776($22)
	sw $20 4804($8)
sw $20 4804($22)
	sw $20 6344($8)
sw $20 6344($22)
	sw $20 7372($8)
sw $20 7372($22)
	sw $20 8912($8)
sw $20 8912($22)
	sw $20 9428($8)
sw $20 9428($22)
	
	sw $20 8408($8)
sw $20 8408($22)
	sw $20 7900($8)
sw $20 7900($22)
	sw $20 7392($8)
sw $20 7392($22)
	sw $20 6884($8)
sw $20 6884($22)
	sw $20 7912($8)
sw $20 7912($22)
	sw $20 9964($8)
sw $20 9964($22)
	sw $20 9968($8)
sw $20 9968($22)
	sw $20 10996($8)
sw $20 10996($22)
	sw $20 11512($8)
sw $20 11512($22)
	sw $20 11004($8)
sw $20 11004($22)
	
	sw $20 9984($8)
sw $20 9984($22)
	sw $20 8964($8)
sw $20 8964($22)
	sw $20 7432($8)
sw $20 7432($22)
	sw $20 8460($8)
sw $20 8460($22)
	sw $20 9488($8)
sw $20 9488($22)
	sw $20 9492($8)
sw $20 9492($22)
	sw $20 10008($8)
sw $20 10008($22)
	sw $20 10012($8)
sw $20 10012($22)
	sw $20 10016($8)
sw $20 10016($22)
	
	sw $20 10024($8)
sw $20 10024($22)
	sw $20 10028($8)
sw $20 10028($22)
	sw $20 10032($8)
sw $20 10032($22)
	sw $20 10036($8)
sw $20 10036($22)
	sw $20 7972($8)
sw $20 7972($22)
	sw $20 6952($8)
sw $20 6952($22)
	sw $20 5932($8)
sw $20 5932($22)
	sw $20 5936($8)
sw $20 5936($22)
	sw $20 5428($8)
sw $20 5428($22)
	sw $20 2872($8)
sw $20 2872($22)
	sw $20 828($8)
sw $20 828($22)
	sw $20 2876($8)
sw $20 2876($22)
	sw $20 1344($8)
sw $20 1344($22)
	sw $20 1860($8)
sw $20 1860($22)
	sw $20 2888($8)
sw $20 2888($22)
	
	sw $20 1868($8)
sw $20 1868($22)
	sw $20 1360($8)
sw $20 1360($22)
	sw $20 852($8)
sw $20 852($22)
	sw $20 -680($8)
sw $20 -680($22)
	sw $20 -1700($8)
sw $20 -1700($22)
	sw $20 -2208($8)
sw $20 -2208($22)
	sw $20 -2204($8)
sw $20 -2204($22)
	sw $20 -2200($8)
sw $20 -2200($22)
	sw $20 -1696($8)
sw $20 -1696($22)
	sw $20 -1692($8)
sw $20 -1692($22)
	sw $20 -1688($8)
sw $20 -1688($22)
	sw $20 -1684($8)
sw $20 -1684($22)
	sw $20 -2196($8)
sw $20 -2196($22)
	sw $20 -1168($8)
sw $20 -1168($22)
	sw $20 884($8)
sw $20 884($22)
	sw $20 2936($8)
sw $20 2936($22)
	sw $20 3964($8)
sw $20 3964($22)
	sw $20 4992($8)
sw $20 4992($22)
	sw $20 4996($8)
sw $20 4996($22)
	sw $20 5000($8)
sw $20 5000($22)
	sw $20 5004($8)
sw $20 5004($22)
	
	sw $20 3984($8)
sw $20 3984($22)
	sw $20 3988($8)
sw $20 3988($22)
	sw $20 3480($8)
sw $20 3480($22)
	sw $20 2972($8)
sw $20 2972($22)
	sw $20 4000($8)
sw $20 4000($22)
	sw $20 5540($8)
sw $20 5540($22)
	
	sw $20 5048($8)
sw $20 5048($22)
	sw $20 4028($8)
sw $20 4028($22)
	sw $20 3008($8)
sw $20 3008($22)
	sw $20 2500($8)
sw $20 2500($22)
	sw $20 1992($8)
sw $20 1992($22)
	sw $20 1996($8)
sw $20 1996($22)
	sw $20 2512($8)
sw $20 2512($22)
	sw $20 2516($8)
sw $20 2516($22)
	sw $20 2520($8)
sw $20 2520($22)
	sw $20 3036($8)
sw $20 3036($22)
	sw $20 3040($8)
sw $20 3040($22)
	sw $20 3556($8)
sw $20 3556($22)
	sw $20 3560($8)
sw $20 3560($22)
	sw $20 4076($8)
sw $20 4076($22)
	sw $20 4080($8)
sw $20 4080($22)
	sw $20 4596($8)
sw $20 4596($22)
	
	addi $8 $8 512
addi $22 $22 512
	addi $9 $9 -1
	j arvore_escura_tela_5
	
nuvem_init_tela_5:
	li $20 0xa8f0fe
   	lui $8 0x1001
   	addi $8, $8, 96
	addi $22 $8 65536
   	li $9 9
   	
nuvem_tela_5:
	beqz $9 nuvem_detalhe_init_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $20 36($8)
sw $20 36($22)
	sw $20 72($8)
sw $20 72($22)#
	sw $20 536($8)
sw $20 536($22)
	sw $20 572($8)
sw $20 572($22)
	sw $20 580($8)
sw $20 580($22)#
	sw $20 1036($8)
sw $20 1036($22)
	sw $20 1072($8)
sw $20 1072($22)
	sw $20 1084($8)
sw $20 1084($22)#
	sw $20 1452($8)
sw $20 1452($22)
	sw $20 1488($8)
sw $20 1488($22)
	sw $20 1524($8)
sw $20 1524($22)
	sw $20 1560($8)
sw $20 1560($22)
	sw $20 1576($8)
sw $20 1576($22)#
	sw $20 1964($8)
sw $20 1964($22)
	sw $20 2000($8)
sw $20 2000($22)
	sw $20 2036($8)
sw $20 2036($22)
	sw $20 2068($8)
sw $20 2068($22)#
	sw $20 2476($8)
sw $20 2476($22)
	sw $20 2512($8)
sw $20 2512($22)
	sw $20 2548($8)
sw $20 2548($22)
	sw $20 2580($8)
sw $20 2580($22)
	sw $20 2588($8)
sw $20 2588($22)#
	sw $20 2996($8)
sw $20 2996($22)
	sw $20 3032($8)
sw $20 3032($22)
	sw $20 3068($8)
sw $20 3068($22)
	sw $20 3104($8)
sw $20 3104($22)
	sw $20 3140($8)
sw $20 3140($22)
	sw $20 3168($8)
sw $20 3168($22)#
	sw $20 3508($8)
sw $20 3508($22)
	sw $20 3584($8)
sw $20 3584($22)
	sw $20 3620($8)
sw $20 3620($22)
	sw $20 3656($8)
sw $20 3656($22)
	sw $20 3680($8)
sw $20 3680($22)#
	sw $20 4108($8)
sw $20 4108($22)
	sw $20 4144($8)
sw $20 4144($22)
	sw $20 4180($8)
sw $20 4180($22)
	sw $20 4188($8)
sw $20 4188($22)#
	sw $20 4624($8)
sw $20 4624($22)
	sw $20 4660($8)
sw $20 4660($22)
	sw $20 4696($8)
sw $20 4696($22)#
	sw $20 5148($8)
sw $20 5148($22)
	sw $20 5184($8)
sw $20 5184($22)
	sw $20 5196($8)
sw $20 5196($22)#
	sw $20 5672($8)
sw $20 5672($22)
	sw $20 5692($8)
sw $20 5692($22)
	
	sw $20 9372($8)
sw $20 9372($22)
	sw $20 9408($8)
sw $20 9408($22)
	sw $20 9428($8)
sw $20 9428($22)#
	sw $20 9888($8)
sw $20 9888($22)
	sw $20 9924($8)
sw $20 9924($22)
	sw $20 9932($8)
sw $20 9932($22)#
	sw $20 10408($8)
sw $20 10408($22)
	sw $20 10432($8)
sw $20 10432($22)#
	sw $20 11972($8)
sw $20 11972($22)
	sw $20 12008($8)
sw $20 12008($22)
	sw $20 12044($8)
sw $20 12044($22)
	sw $20 12080($8)
sw $20 12080($22)
	sw $20 12116($8)
sw $20 12116($22)
	sw $20 12120($8)
sw $20 12120($22)#
	sw $20 12484($8)
sw $20 12484($22)
	sw $20 12520($8)
sw $20 12520($22)
	sw $20 12556($8)
sw $20 12556($22)
	sw $20 12592($8)
sw $20 12592($22)
	sw $20 12628($8)
sw $20 12628($22)
	sw $20 12636($8)
sw $20 12636($22)#
	sw $20 13004($8)
sw $20 13004($22)
	sw $20 13040($8)
sw $20 13040($22)
	sw $20 13076($8)
sw $20 13076($22)
	sw $20 13112($8)
sw $20 13112($22)#
	sw $20 13532($8)
sw $20 13532($22)
	sw $20 13568($8)
sw $20 13568($22)
	sw $20 13604($8)
sw $20 13604($22)#
	sw $20 14060($8)
sw $20 14060($22)
	sw $20 14096($8)
sw $20 14096($22)
	sw $20 14060($8)
sw $20 14060($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j nuvem_tela_5
	
nuvem_detalhe_init_tela_5:
   	lui $8 0x1001
   	addi $8, $8, 1052
	addi $22 $8 65536
   	li $9 4
nuvem_detalhe_tela_5:
	beqz $9 detalhe_fundo_init_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $20 4($8)
sw $20 4($22)
	
	sw $20 3620($8)
sw $20 3620($22)
	sw $20 4128($8)
sw $20 4128($22)
	
	sw $20 1712($8)
sw $20 1712($22)
	
	sw $20 2272($8)
sw $20 2272($22)
	sw $20 2288($8)
sw $20 2288($22)
	sw $20 2296($8)
sw $20 2296($22)
	sw $20 2792($8)
sw $20 2792($22)
	sw $20 2808($8)
sw $20 2808($22)
	
	sw $20 7904($8)
sw $20 7904($22)
	
	sw $20 10000($8)
sw $20 10000($22)
	sw $20 10008($8)
sw $20 10008($22)
	sw $20 10508($8)
sw $20 10508($22)
	sw $20 10520($8)
sw $20 10520($22)
	
	sw $20 10648($8)
sw $20 10648($22)
	sw $20 10644($8)
sw $20 10644($22)
	sw $20 10128($8)
sw $20 10128($22)
	sw $20 9612($8)
sw $20 9612($22)
	sw $20 9096($8)
sw $20 9096($22)
	
	sw $20 4028($8)
sw $20 4028($22)
	sw $20 4044($8)
sw $20 4044($22)
	sw $20 4552($8)
sw $20 4552($22)
	sw $20 3520($8)
sw $20 3520($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j nuvem_detalhe_tela_5

detalhe_fundo_init_tela_5:
	lui $8 0x1001
	addi $8 $8 30212
addi $22 $22 30212
	addi $22 $8 65536
	li $9 64
	li $20 0x0c5454
detalhe_fundo_tela_5:
	beqz $9 parte_la_debaixo_init_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $20 512($8)
sw $20 512($22)
	sw $20 1020($8)
sw $20 1020($22)
	
	addi $8 $8 8
addi $22 $22 8
	addi $9 $9 -1
	j detalhe_fundo_tela_5
parte_la_debaixo_init_tela_5:
	lui $8 0x1001
	addi $8 $8 31744
addi $22 $22 31744
	addi $22 $8 65536
	li $9 256
	li $20 0x0c5454
parte_la_debaixo_tela_5:
	beq $9 $0 bloco_chao_1_init_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j parte_la_debaixo_tela_5

bloco_chao_1_init_tela_5:
	lui $8 0x1001
	addi $8 $8 26624
addi $22 $22 26624
	addi $22 $8 65536
	li $10 14
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_5:
	li $9 4
bloco_chao_1_tela_5:
	beq $9 $0 final_bloco_chao_1_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_1_tela_5
final_bloco_chao_1_tela_5:
	addi $8 $8 1520
addi $22 $22 1520
	
	sw $12 0($8)
sw $12 0($22)
	sw $11 4($8)
sw $11 4($22)
	sw $11 8($8)
sw $11 8($22)
	sw $12 12($8)
sw $12 12($22)
	
	addi $8 $8 -1520
addi $22 $22 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_5
	
bloco_chao_1_init_part_2_tela_5:
	addi $8 $8 -3984
addi $22 $22 -3984
	li $10 11
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_part_2_tela_5:
	li $9 4
bloco_chao_1_part_2_tela_5:
	beq $9 $0 final_bloco_chao_1_part_2_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_1_part_2_tela_5
final_bloco_chao_1_part_2_tela_5:
	addi $8 $8 1520
addi $22 $22 1520
	
	sw $12 0($8)
sw $12 0($22)
	sw $11 4($8)
sw $11 4($22)
	sw $11 8($8)
sw $11 8($22)
	sw $12 12($8)
sw $12 12($22)
	
	addi $8 $8 -1520
addi $22 $22 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_part_2_tela_5
	
bloco_chao_2_init_tela_5:
	lui $8 0x1001
	addi $8 $8 26848
addi $22 $22 26848
	addi $22 $8 65536
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_5:
	beq $9 $0 final_bloco_chao_2_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $11 1536($8)
sw $11 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_2_tela_5
final_bloco_chao_2_tela_5:
	
	sw $20 508($8)
sw $20 508($22)
	sw $20 1020($8)
sw $20 1020($22)
	sw $20 1532($8)
sw $20 1532($22)
	sw $12 1520($8)
sw $12 1520($22)
	
bloco_chao_3_init_tela_5:
	lui $8 0x1001
	addi $8 $8 22848
addi $22 $22 22848
	addi $22 $8 65536
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_5:
	beq $9 $0 final_bloco_chao_3_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $11 1536($8)
sw $11 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_3_tela_5
final_bloco_chao_3_tela_5:
	
	sw $20 496($8)
sw $20 496($22)
	sw $20 1008($8)
sw $20 1008($22)
	sw $20 1520($8)
sw $20 1520($22)
	sw $12 1532($8)
sw $12 1532($22)
	
bloco_chao_4_init_tela_5:
	lui $8 0x1001
	addi $8 $8 28896
addi $22 $22 28896
	addi $22 $8 65536
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_5:
	li $9 4
bloco_chao_4_tela_5:
	beq $9 $0 final_bloco_chao_4_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $11 4($8)
sw $11 4($22)
	sw $11 8($8)
sw $11 8($22)
	sw $20 12($8)
sw $20 12($22)
	
	addi $8 $8 512
addi $22 $22 512
	addi $9 $9 -1
	j bloco_chao_4_tela_5
final_bloco_chao_4_tela_5:
	
	sw $12 -2048($8)
sw $12 -2048($22)
	sw $12 -512($8)
sw $12 -512($22)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_5
	
bloco_chao_5_init_tela_5:
	lui $8 0x1001
	addi $8 $8 24896
addi $22 $22 24896
	addi $22 $8 65536
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_5:
	li $9 4
bloco_chao_5_tela_5:
	beq $9 $0 final_bloco_chao_5_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $11 4($8)
sw $11 4($22)
	sw $11 8($8)
sw $11 8($22)
	sw $11 12($8)
sw $11 12($22)
	
	addi $8 $8 512
addi $22 $22 512
	addi $9 $9 -1
	j bloco_chao_5_tela_5
final_bloco_chao_5_tela_5:
	
	sw $12 -2036($8)
sw $12 -2036($22)
	sw $12 -500($8)
sw $12 -500($22)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_5
	
bloco_chao_6_init_tela_5:
	lui $8 0x1001
	addi $8 $8 28672
addi $22 $22 28672
	addi $22 $8 65536
	li $10 13
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_5:
	li $9 4
bloco_chao_6_tela_5:
	beq $9 $0 final_bloco_chao_6_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $12 512($8)
sw $12 512($22)
	sw $12 1024($8)
sw $12 1024($22)
	sw $12 1536($8)
sw $12 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_6_tela_5
final_bloco_chao_6_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $20 0($8)
sw $20 0($22)
	sw $20 12($8)
sw $20 12($22)
	sw $20 516($8)
sw $20 516($22)
	sw $20 520($8)
sw $20 520($22)
	
	addi $8 $8 16
addi $22 $22 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_5
	
bloco_chao_6_init_parte_2_tela_5:
	addi $8 $8 -3952
addi $22 $22 -3952
	li $10 10
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_parte_2_tela_5:
	li $9 4
bloco_chao_6_parte_2_tela_5:
	beq $9 $0 final_bloco_chao_6_parte_2_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $12 512($8)
sw $12 512($22)
	sw $12 1024($8)
sw $12 1024($22)
	sw $12 1536($8)
sw $12 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_6_parte_2_tela_5
final_bloco_chao_6_parte_2_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $20 0($8)
sw $20 0($22)
	sw $20 12($8)
sw $20 12($22)
	sw $20 516($8)
sw $20 516($22)
	sw $20 520($8)
sw $20 520($22)
	
	addi $8 $8 16
addi $22 $22 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_parte_2_tela_5
	
bloco_chao_7_init_tela_5:
	lui $8 0x1001
	addi $8 $8 28880
addi $22 $22 28880
	addi $22 $8 65536
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_5:
	beq $9 $0 final_bloco_chao_7_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $12 512($8)
sw $12 512($22)
	sw $12 1024($8)
sw $12 1024($22)
	sw $12 1536($8)
sw $12 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_7_tela_5
final_bloco_chao_7_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $20 0($8)
sw $20 0($22)
	sw $20 516($8)
sw $20 516($22)
	sw $20 520($8)
sw $20 520($22)
	sw $11 524($8)
sw $11 524($22)
	sw $20 1032($8)
sw $20 1032($22)
	sw $11 1036($8)
sw $11 1036($22)
	sw $20 1548($8)
sw $20 1548($22)
	
bloco_chao_8_init_tela_5:
	lui $8 0x1001
	addi $8 $8 24912
addi $22 $22 24912
	addi $22 $8 65536
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_5:
	beq $9 $0 final_bloco_chao_8_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $12 512($8)
sw $12 512($22)
	sw $12 1024($8)
sw $12 1024($22)
	sw $12 1536($8)
sw $12 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_8_tela_5
final_bloco_chao_8_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $20 12($8)
sw $20 12($22)
	sw $20 520($8)
sw $20 520($22)
	sw $20 516($8)
sw $20 516($22)
	sw $11 512($8)
sw $11 512($22)
	sw $20 1028($8)
sw $20 1028($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $20 1536($8)
sw $20 1536($22)
	
bloco_chao_9_init_tela_5:
	lui $8 0x1001
	addi $8 $8 30928
addi $22 $22 30928
	addi $22 $8 65536
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_5:
	beq $9 $0 final_bloco_chao_9_tela_5
	
	sw $12 0($8)
sw $12 0($22)
	sw $12 4($8)
sw $12 4($22)
	sw $12 8($8)
sw $12 8($22)
	sw $11 12($8)
sw $11 12($22)
	
	addi $8 $8 512
addi $22 $22 512
	addi $9 $9 -1
	j bloco_chao_9_tela_5
final_bloco_chao_9_tela_5:
	addi $8 $8 -2048
addi $22 $22 -2048
	
	sw $20 12($8)
sw $20 12($22)
	sw $20 520($8)
sw $20 520($22)
	sw $13 516($8)
sw $13 516($22)
	sw $20 1032($8)
sw $20 1032($22)
	sw $13 1024($8)
sw $13 1024($22)
	sw $20 1548($8)
sw $20 1548($22)
	sw $13 1536($8)
sw $13 1536($22)
	sw $13 1540($8)
sw $13 1540($22)
	sw $13 1544($8)
sw $13 1544($22)
	
bloco_chao_10_init_tela_5:
	lui $8 0x1001
	addi $8 $8 26960
addi $22 $22 26960
	addi $22 $8 65536
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_5:
	beq $9 $0 final_bloco_chao_10_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $12 4($8)
sw $12 4($22)
	sw $12 8($8)
sw $12 8($22)
	sw $12 12($8)
sw $12 12($22)
	
	addi $8 $8 512
addi $22 $22 512
	addi $9 $9 -1
	j bloco_chao_10_tela_5
final_bloco_chao_10_tela_5:
	addi $8 $8 -2048
addi $22 $22 -2048
	
	sw $20 0($8)
sw $20 0($22)
	sw $20 516($8)
sw $20 516($22)
	sw $13 520($8)
sw $13 520($22)
	sw $20 1028($8)
sw $20 1028($22)
	sw $13 1036($8)
sw $13 1036($22)
	sw $20 1536($8)
sw $20 1536($22)
	sw $13 1540($8)
sw $13 1540($22)
	sw $13 1544($8)
sw $13 1544($22)
	sw $13 1548($8)
sw $13 1548($22)
	
bloco_chao_11_init_tela_5:
	lui $8 0x1001
	addi $8 $8 29008
addi $22 $22 29008
	addi $22 $8 65536
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11_tela_5:
	li $9 4
bloco_chao_11_tela_5:
	beq $9 $0 final_bloco_chao_11_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $12 4($8)
sw $12 4($22)
	sw $12 8($8)
sw $12 8($22)
	sw $12 12($8)
sw $12 12($22)
	
	addi $8 $8 512
addi $22 $22 512
	addi $9 $9 -1
	j bloco_chao_11_tela_5
final_bloco_chao_11_tela_5:
	addi $8 $8 -2048
addi $22 $22 -2048
	
	sw $20 0($8)
sw $20 0($22)
	sw $20 516($8)
sw $20 516($22)
	sw $20 1028($8)
sw $20 1028($22)
	sw $20 1536($8)
sw $20 1536($22)
	
	addi $8 $8 2048
addi $22 $22 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_5
	
bloco_chao_12_init_tela_5:
	lui $8 0x1001
	addi $8 $8 30720
addi $22 $22 30720
	addi $22 $8 65536
	li $10 13
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_5:
	li $9 4
bloco_chao_12_tela_5:
	beq $9 $0 final_bloco_chao_12_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $12 1536($8)
sw $12 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_12_tela_5
final_bloco_chao_12_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $12 1024($8)
sw $12 1024($22)
	sw $12 1036($8)
sw $12 1036($22)
	sw $12 516($8)
sw $12 516($22)
	sw $12 520($8)
sw $12 520($22)
	
	addi $8 $8 16
addi $22 $22 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_5
	
bloco_chao_12_init_parte_2_tela_5:
	addi $8 $8 -3952
addi $22 $22 -3952
	li $10 10
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_parte_2_tela_5:
	li $9 4
bloco_chao_12_parte_2_tela_5:
	beq $9 $0 final_bloco_chao_12_parte_2_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $12 1536($8)
sw $12 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_12_parte_2_tela_5
final_bloco_chao_12_parte_2_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $12 1024($8)
sw $12 1024($22)
	sw $12 1036($8)
sw $12 1036($22)
	sw $12 516($8)
sw $12 516($22)
	sw $12 520($8)
sw $12 520($22)
	
	addi $8 $8 16
addi $22 $22 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_parte_2_tela_5
	
bloco_chao_13_init_tela_5:
	lui $8 0x1001
	addi $8 $8 29016
addi $22 $22 29016
	addi $22 $8 65536
	li $11 0x6b5727
laco_bloco_chao_13_tela_5:
	li $9 42
bloco_chao_13_tela_5:
	beq $9 $0 bloco_obstaculo_1_init_tela_5
	sw $11 0($8)
sw $11 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $11 1536($8)
sw $11 1536($22)
	sw $11 2048($8)
sw $11 2048($22)
	sw $11 2560($8)
sw $11 2560($22)
	sw $11 3072($8)
sw $11 3072($22)
	sw $11 3584($8)
sw $11 3584($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_13_tela_5
	
bloco_obstaculo_1_init_tela_5:
	lui $8 0x1001
	addi $8 $8 10368
addi $22 $22 10368
	addi $22 $8 65536
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_1_tela_5:
	beq $9 $0 final_bloco_obstaculo_1_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $11 1536($8)
sw $11 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_5
final_bloco_obstaculo_1_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $20 512($8)
sw $20 512($22)
	sw $12 516($8)
sw $12 516($22)
	sw $20 1024($8)
sw $20 1024($22)
	sw $20 1536($8)
sw $20 1536($22)
	
bloco_obstaculo_2_init_tela_5:
	lui $8 0x1001
	addi $8 $8 12416
addi $22 $22 12416
	addi $22 $8 65536
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_2_tela_5:
	beq $9 $0 final_bloco_obstaculo_2_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $20 1536($8)
sw $20 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_5
final_bloco_obstaculo_2_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $20 0($8)
sw $20 0($22)
	sw $20 512($8)
sw $20 512($22)
	sw $20 1024($8)
sw $20 1024($22)
	sw $12 1028($8)
sw $12 1028($22)
	
bloco_obstaculo_3_init_tela_5:
	lui $8 0x1001
	addi $8 $8 10384
addi $22 $22 10384
	addi $22 $8 65536
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_3_tela_5:
	li $9 4
bloco_obstaculo_3_tela_5:
	beq $9 $0 final_bloco_obstaculo_3_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $11 1536($8)
sw $11 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_5
final_bloco_obstaculo_3_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $12 520($8)
sw $12 520($22)
	sw $12 524($8)
sw $12 524($22)
	sw $12 1036($8)
sw $12 1036($22)
	sw $12 1548($8)
sw $12 1548($22)
	
	addi $8 $8 32
addi $22 $22 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_3_tela_5
	
bloco_obstaculo_4_init_tela_5:
	lui $8 0x1001
	addi $8 $8 12432
addi $22 $22 12432
	addi $22 $8 65536
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_4_tela_5:
	li $9 4
bloco_obstaculo_4_tela_5:
	beq $9 $0 final_bloco_obstaculo_4_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $20 1536($8)
sw $20 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_5
final_bloco_obstaculo_4_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $12 12($8)
sw $12 12($22)
	sw $12 524($8)
sw $12 524($22)
	sw $12 1032($8)
sw $12 1032($22)
	sw $12 1036($8)
sw $12 1036($22)
	
	addi $8 $8 32
addi $22 $22 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_4_tela_5
	
bloco_obstaculo_5_init_tela_5:
	lui $8 0x1001
	addi $8 $8 10400
addi $22 $22 10400
	addi $22 $8 65536
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_5_tela_5:
	li $9 4
bloco_obstaculo_5_tela_5:
	beq $9 $0 final_bloco_obstaculo_5_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $11 1536($8)
sw $11 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_5
final_bloco_obstaculo_5_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $12 512($8)
sw $12 512($22)
	sw $12 516($8)
sw $12 516($22)
	sw $12 1024($8)
sw $12 1024($22)
	sw $12 1536($8)
sw $12 1536($22)
	
	addi $8 $8 32
addi $22 $22 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_5_tela_5
	
bloco_obstaculo_6_init_tela_5:
	lui $8 0x1001
	addi $8 $8 12448
addi $22 $22 12448
	addi $22 $8 65536
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_6_tela_5:
	li $9 4
bloco_obstaculo_6_tela_5:
	beq $9 $0 final_bloco_obstaculo_6_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $20 1536($8)
sw $20 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_5
final_bloco_obstaculo_6_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $12 0($8)
sw $12 0($22)
	sw $12 512($8)
sw $12 512($22)
	sw $12 1028($8)
sw $12 1028($22)
	sw $12 1024($8)
sw $12 1024($22)
	
	addi $8 $8 32
addi $22 $22 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_6_tela_5
	
bloco_obstaculo_7_init_tela_5:
	lui $8 0x1001
	addi $8 $8 12496
addi $22 $22 12496
	addi $22 $8 65536
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_7_tela_5:
	li $9 4
bloco_obstaculo_7_tela_5:
	beq $9 $0 final_bloco_obstaculo_7_tela_5
	
	sw $11 0($8)
sw $11 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $20 1536($8)
sw $20 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_5
final_bloco_obstaculo_7_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $20 12($8)
sw $20 12($22)
	sw $20 524($8)
sw $20 524($22)
	sw $12 1032($8)
sw $12 1032($22)
	sw $20 1036($8)
sw $20 1036($22)
	
bloco_obstaculo_8_init_tela_5:
	lui $8 0x1001
	addi $8 $8 10448
addi $22 $22 10448
	addi $22 $8 65536
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_8_tela_5:
	li $9 4
bloco_obstaculo_8_tela_5:
	beq $9 $0 final_bloco_obstaculo_8_tela_5
	
	sw $20 0($8)
sw $20 0($22)
	sw $11 512($8)
sw $11 512($22)
	sw $11 1024($8)
sw $11 1024($22)
	sw $11 1536($8)
sw $11 1536($22)
	
	addi $8 $8 4
addi $22 $22 4
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_5
final_bloco_obstaculo_8_tela_5:
	addi $8 $8 -16
addi $22 $22 -16
	
	sw $12 520($8)
sw $12 520($22)
	sw $20 524($8)
sw $20 524($22)
	sw $20 1036($8)
sw $20 1036($22)
	sw $20 1548($8)
sw $20 1548($22)

	addi $29 $29 4  
	lw $22 0($29)
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $13 0($29)
	addi $29 $29 4  
	lw $12 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4  
	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
#================================================
# - funcao para desenhar tela 6

desenhar_mapa_6:
	sw $31, 0($29)
       	addi $29, $29, -4
       	sw $8, 0($29)
       	addi $29, $29, -4
       	sw $9, 0($29)
       	addi $29, $29, -4
       	sw $10, 0($29)
       	addi $29, $29, -4
       	sw $11, 0($29)
       	addi $29, $29, -4
       	sw $12, 0($29)
       	addi $29, $29, -4
       	sw $13, 0($29)
       	addi $29, $29, -4
       	sw $14, 0($29)
       	addi $29, $29, -4
       	sw $20, 0($29)
       	addi $29, $29, -4
       	
tela_6:
	lui $8 0x1001
	addi $8 $8 32768
	li $9 8192
	li $20 0x20d8ff
ceu_tela_6:
	beq $9 $0 bloco_chao_1_init_tela_6
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j ceu_tela_6
	
bloco_chao_1_init_tela_6:
	lui $8 0x1001
	addi $8 $8 22528
	addi $8 $8 32768
	li $10 5
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_6:
	li $9 4
bloco_chao_1_tela_6:
	beq $9 $0 final_bloco_chao_1_tela_6
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_6
final_bloco_chao_1_tela_6:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_6
	
bloco_chao_1_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 26832
	addi $8 $8 32768
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_6_2:
	li $9 4
bloco_chao_1_tela_6_2:
	beq $9 $0 final_bloco_chao_1_tela_6_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_6_2
final_bloco_chao_1_tela_6_2:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_6_2
	
bloco_chao_1_init_tela_6_3:
	lui $8 0x1001
	addi $8 $8 27008
	addi $8 $8 32768
	li $10 8
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_6_3:
	li $9 4
bloco_chao_1_tela_6_3:
	beq $9 $0 final_bloco_chao_1_tela_6_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_6_3
final_bloco_chao_1_tela_6_3:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_6_3
	
bloco_chao_2_init_tela_6:
	lui $8 0x1001
	addi $8 $8 22608
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_6:
	beq $9 $0 final_bloco_chao_2_tela_6
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_6
final_bloco_chao_2_tela_6:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_2_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 26896
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_6_2:
	beq $9 $0 final_bloco_chao_2_tela_6_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_6_2
final_bloco_chao_2_tela_6_2:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_3_init_tela_6:
	lui $8 0x1001
	addi $8 $8 26816
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_6:
	beq $9 $0 final_bloco_chao_3_tela_6
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_6
final_bloco_chao_3_tela_6:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_3_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 26992
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_6_2:
	beq $9 $0 final_bloco_chao_3_tela_6_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_6_2
final_bloco_chao_3_tela_6_2:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_4_init_tela_6:
	lui $8 0x1001
	addi $8 $8 24656
	addi $8 $8 32768
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_6:
	li $9 4
bloco_chao_4_tela_6:
	beq $9 $0 final_bloco_chao_4_tela_6
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_6
final_bloco_chao_4_tela_6:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_6
	
bloco_chao_4_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 28944
	addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_6_2:
	li $9 4
bloco_chao_4_tela_6_2:
	beq $9 $0 final_bloco_chao_4_tela_6_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_6_2
final_bloco_chao_4_tela_6_2:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_6_2
	
bloco_chao_5_init_tela_6:
	lui $8 0x1001
	addi $8 $8 28864
	addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_6:
	li $9 4
bloco_chao_5_tela_6:
	beq $9 $0 final_bloco_chao_5_tela_6
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_6
final_bloco_chao_5_tela_6:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_6
	
bloco_chao_5_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 29040
	addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_6_2:
	li $9 4
bloco_chao_5_tela_6_2:
	beq $9 $0 final_bloco_chao_5_tela_6_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_6_2
final_bloco_chao_5_tela_6_2:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_6_2
	
bloco_chao_6_init_tela_6_6:
	lui $8 0x1001
	addi $8 $8 24576
	addi $8 $8 32768
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_6:
	li $9 4
bloco_chao_6_tela_6:
	beq $9 $0 final_bloco_chao_6_tela_6
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_6
final_bloco_chao_6_tela_6:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_6
	
bloco_chao_6_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 28896 #29.072
	addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_6_2:
	li $9 4
bloco_chao_6_tela_6_2:
	beq $9 $0 final_bloco_chao_6_tela_6_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_6_2
final_bloco_chao_6_tela_6_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_6_2
	
bloco_chao_6_init_tela_6_3:
	lui $8 0x1001
	addi $8 $8 29072
	addi $8 $8 32768
	li $10 7
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_tela_6_3:
	li $9 4
bloco_chao_6_tela_6_3:
	beq $9 $0 final_bloco_chao_6_tela_6_3
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_6_3
final_bloco_chao_6_tela_6_3:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_tela_6_3
	
bloco_chao_7_init_tela_6:
	lui $8 0x1001
	addi $8 $8 24640
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_6:
	beq $9 $0 final_bloco_chao_7_tela_6
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_6
final_bloco_chao_7_tela_6:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_7_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 28928
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_6_2:
	beq $9 $0 final_bloco_chao_7_tela_6_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_6_2
final_bloco_chao_7_tela_6_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_8_init_tela_6:
	lui $8 0x1001
	addi $8 $8 28880
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_6:
	beq $9 $0 final_bloco_chao_8_tela_6
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_6
final_bloco_chao_8_tela_6:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_8_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 29056
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_6_2:
	beq $9 $0 final_bloco_chao_8_tela_6_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_6_2
final_bloco_chao_8_tela_6_2:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_9_init_tela_6:
	lui $8 0x1001
	addi $8 $8 26688
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_6:
	beq $9 $0 final_bloco_chao_9_tela_6
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_6
final_bloco_chao_9_tela_6:
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
	
bloco_chao_9_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 30976
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_6_2:
	beq $9 $0 final_bloco_chao_9_tela_6_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_6_2
final_bloco_chao_9_tela_6_2:
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
	
bloco_chao_10_init_tela_6:
	lui $8 0x1001
	addi $8 $8 30928
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_6:
	beq $9 $0 final_bloco_chao_10_tela_6
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_6
final_bloco_chao_10_tela_6:
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
	
bloco_chao_10_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 31104
	addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_6_2:
	beq $9 $0 final_bloco_chao_10_tela_6_2
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_6_2
final_bloco_chao_10_tela_6_2:
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
	
bloco_chao_11_init_tela_6:
	lui $8 0x1001
	addi $8 $8 28736
	addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11_tela_6:
	li $9 4
bloco_chao_11_tela_6:
	beq $9 $0 final_bloco_chao_11_tela_6
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_6
final_bloco_chao_11_tela_6:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_6
	
bloco_chao_12_init_tela_6:
	lui $8 0x1001
	addi $8 $8 26624
	addi $8 $8 32768
	li $10 4
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_6:
	li $9 4
bloco_chao_12_tela_6:
	beq $9 $0 final_bloco_chao_12_tela_6
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_6
final_bloco_chao_12_tela_6:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_6
	
bloco_chao_12_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 30944
	addi $8 $8 32768
	li $10 2
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_6_2:
	li $9 4
bloco_chao_12_tela_6_2:
	beq $9 $0 final_bloco_chao_12_tela_6_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_6_2
final_bloco_chao_12_tela_6_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_6_2
	
bloco_chao_12_init_tela_6_3:
	lui $8 0x1001
	addi $8 $8 31120
	addi $8 $8 32768
	li $10 7
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_tela_6_3:
	li $9 4
bloco_chao_12_tela_6_3:
	beq $9 $0 final_bloco_chao_12_tela_6_3
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_tela_6_3
final_bloco_chao_12_tela_6_3:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_6_3
	
bloco_chao_13_init_tela_6:
	lui $8 0x1001
	addi $8 $8 28672
	addi $8 $8 32768
	li $11 0x6b5727
laco_bloco_chao_13_tela_6:
	li $9 16
bloco_chao_13_tela_6:
	beq $9 $0 bloco_obstaculo_1_init_tela_6
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
	j bloco_chao_13_tela_6
	
bloco_obstaculo_1_init_tela_6:
	lui $8 0x1001
	addi $8 $8 12288
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $14 0x00b215
	li $9 4
	
bloco_obstaculo_1_tela_6:
	beq $9 $0 fim_bloco_obstaculo_1_tela_6
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_6
fim_bloco_obstaculo_1_tela_6:
	addi $8 $8 -16
	
	sw $11 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $14 1540($8)
	
bloco_obstaculo_2_init_tela_6:
	lui $8 0x1001
	addi $8 $8 12304
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_2_tela_6:
	beq $9 $0 bloco_obstaculo_3_init_tela_6
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_6

bloco_obstaculo_3_init_tela_6:
	lui $8 0x1001
	addi $8 $8 12320
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_3_tela_6:
	beq $9 $0 fim_bloco_obstaculo_3_tela_6
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_6
fim_bloco_obstaculo_3_tela_6:
	addi $8 $8 -16
	
	sw $11 520($8)
	sw $13 1024($8)
	sw $13 1028($8)
	sw $20 1036($8)
	sw $13 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $20 1548($8)
	
bloco_obstaculo_4_init_tela_6:
	lui $8 0x1001
	addi $8 $8 14336
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_4_tela_6:
	beq $9 $0 fim_bloco_obstaculo_4_tela_6
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_6
fim_bloco_obstaculo_4_tela_6:
	addi $8 $8 -2048
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 516($8)
	sw $12 1028($8)
	sw $12 1540($8)
	
bloco_obstaculo_5_init_tela_6:
	lui $8 0x1001
	addi $8 $8 14352
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_5_tela_6:
	beq $9 $0 fim_bloco_obstaculo_5_tela_6
	
	sw $12 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_6
fim_bloco_obstaculo_5_tela_6:
	addi $8 $8 -16
	
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	
bloco_obstaculo_6_init_tela_6:
	lui $8 0x1001
	addi $8 $8 14368
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_6_tela_6:
	beq $9 $0 fim_bloco_obstaculo_6_tela_6
	
	sw $11 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_6
fim_bloco_obstaculo_6_tela_6:
	addi $8 $8 -2048
	
	sw $12 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	
bloco_obstaculo_7_init_tela_6:
	lui $8 0x1001
	addi $8 $8 16384
	addi $8 $8 32768
	li $10 3
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_7_tela_6:
	li $9 4
bloco_obstaculo_7_tela_6:
	beq $9 $0 fim_bloco_obstaculo_7_tela_6
	
	sw $20 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_6
fim_bloco_obstaculo_7_tela_6:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_7_tela_6
	
bloco_obstaculo_8_init_tela_6:
	lui $8 0x1001
	addi $8 $8 16400
	addi $8 $8 32768
	li $10 3
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_8_tela_6:
	li $9 4
bloco_obstaculo_8_tela_6:
	beq $9 $0 fim_bloco_obstaculo_8_tela_6
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $13 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_6
fim_bloco_obstaculo_8_tela_6:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_8_tela_6
	
bloco_obstaculo_9_init_tela_6:
	lui $8 0x1001
	addi $8 $8 16416
	addi $8 $8 32768
	li $10 3
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_9_tela_6:
	li $9 4
bloco_obstaculo_9_tela_6:
	beq $9 $0 fim_bloco_obstaculo_9_tela_6
	
	sw $13 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_9_tela_6
fim_bloco_obstaculo_9_tela_6:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_9_tela_6
	
bloco_obstaculo_1_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 18864
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $14 0x00b215
	li $9 4
	
bloco_obstaculo_1_tela_6_2:
	beq $9 $0 fim_bloco_obstaculo_1_tela_6_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_6_2
fim_bloco_obstaculo_1_tela_6_2:
	addi $8 $8 -16
	
	sw $11 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $14 1540($8)
	
bloco_obstaculo_2_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 18880
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_2_tela_6_2:
	beq $9 $0 bloco_obstaculo_3_init_tela_6_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_6_2

bloco_obstaculo_3_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 18896
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_3_tela_6_2:
	beq $9 $0 fim_bloco_obstaculo_3_tela_6_2
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_6_2
fim_bloco_obstaculo_3_tela_6_2:
	addi $8 $8 -16
	
	sw $11 520($8)
	sw $13 1024($8)
	sw $13 1028($8)
	sw $20 1036($8)
	sw $13 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $20 1548($8)
	
bloco_obstaculo_4_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 20912
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_4_tela_6_2:
	beq $9 $0 fim_bloco_obstaculo_4_tela_6_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_6_2
fim_bloco_obstaculo_4_tela_6_2:
	addi $8 $8 -2048
	
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 516($8)
	sw $12 1028($8)
	sw $12 1540($8)
	
bloco_obstaculo_5_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 20928
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_5_tela_6_2:
	beq $9 $0 fim_bloco_obstaculo_5_tela_6_2
	
	sw $12 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_6_2
fim_bloco_obstaculo_5_tela_6_2:
	addi $8 $8 -16
	
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	
bloco_obstaculo_6_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 20944
	addi $8 $8 32768
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
	li $9 4
bloco_obstaculo_6_tela_6_2:
	beq $9 $0 fim_bloco_obstaculo_6_tela_6_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_6_2
fim_bloco_obstaculo_6_tela_6_2:
	addi $8 $8 -2048
	
	sw $12 0($8)
	sw $13 512($8)
	sw $13 1024($8)
	sw $13 1536($8)
	
bloco_obstaculo_7_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 22960
	addi $8 $8 32768
	li $10 2
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_7_tela_6_2:
	li $9 4
bloco_obstaculo_7_tela_6_2:
	beq $9 $0 fim_bloco_obstaculo_7_tela_6_2
	
	sw $20 0($8)
	sw $12 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_6_2
fim_bloco_obstaculo_7_tela_6_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_7_tela_6_2
	
bloco_obstaculo_8_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 22976
	addi $8 $8 32768
	li $10 2
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_8_tela_6_2:
	li $9 4
bloco_obstaculo_8_tela_6_2:
	beq $9 $0 fim_bloco_obstaculo_8_tela_6_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $13 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_6_2
fim_bloco_obstaculo_8_tela_6_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_8_tela_6_2
	
bloco_obstaculo_9_init_tela_6_2:
	lui $8 0x1001
	addi $8 $8 22992
	addi $8 $8 32768
	li $10 2
	li $20 0x000000
	li $11 0x00d419
	li $12 0x00b215
	li $13 0x35ff4c
laco_bloco_obstaculo_9_tela_6_2:
	li $9 4
bloco_obstaculo_9_tela_6_2:
	beq $9 $0 fim_bloco_obstaculo_9_tela_6_2
	
	sw $13 0($8)
	sw $11 4($8)
	sw $12 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_obstaculo_9_tela_6_2
fim_bloco_obstaculo_9_tela_6_2:	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_9_tela_6_2
	
fundo_1_parte_1_tela_6_init:
	lui $8 0x1001
	addi $8 $8 28768
	addi $8 $8 32768
	li $20 0x116767
	li $11 0x288e78
	li $9 12
fundo_1_parte_1_tela_6:
	
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
	bne $9 $0 fundo_1_parte_1_tela_6
	
	addi $8 $8 -16
	
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $11 1036($8)
	
fundo_1_parte_2_tela_6_init:
	lui $8 0x1001
	addi $8 $8 26720
	addi $8 $8 32768
	li $20 0x116767
	li $11 0x288e78
	li $9 4
fundo_1_parte_2_tela_6:
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_2_tela_6
	
	sw $11 -4($8)
	
fundo_1_parte_3_tela_6_init:
	lui $8 0x1001
	addi $8 $8 26736
	addi $8 $8 32768
	li $20 0x116767
	li $11 0x288e78
	li $9 4
fundo_1_parte_3_tela_6:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_3_tela_6
	
	addi $8 $8 -16
	
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1548($8)
	
fundo_1_parte_4_tela_6_init:
	lui $8 0x1001
	addi $8 $8 30864
	addi $8 $8 32768
	li $20 0x116767
	li $11 0x288e78
	li $9 4
fundo_1_parte_4_tela_6:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_1_parte_4_tela_6
	
	addi $8 $8 -2048
	
	sw $20 1032($8)
	sw $20 1544($8)
	sw $20 1548($8)
	
fundo_2_parte_1_tela_6_init:
	lui $8 0x1001
	addi $8 $8 18480
	addi $8 $8 32768
	li $20 0x288e78
	li $11 0x20d8ff
	li $9 12
fundo_2_parte_1_tela_6:
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
	bne $9 $0 fundo_2_parte_1_tela_6
	
	sw $11 -4($8)
	sw $11 -8($8)
	sw $11 -12($8)
	
fundo_2_parte_2_tela_6_init:
	lui $8 0x1001
	addi $8 $8 20576
	addi $8 $8 32768
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $9 12
fundo_2_parte_2_tela_6:
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
	bne $9 $0 fundo_2_parte_2_tela_6
	
	addi $8 $8 -6144
	
	sw $11 24($8)
	sw $11 28($8)
	sw $12 5632($8)
	sw $12 5636($8)
	
fundo_2_parte_3_tela_6_init:
	lui $8 0x1001
	addi $8 $8 22656
	addi $8 $8 32768
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $9 12
fundo_2_parte_3_tela_6:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_3_tela_6
	
	addi $8 $8 -6144
	
	sw $11 8($8)
	sw $11 12($8)
	sw $11 520($8)
	sw $11 524($8)
	
fundo_2_parte_4_tela_6_init:
	lui $8 0x1001
	addi $8 $8 24720
	addi $8 $8 32768
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 12
fundo_2_parte_4_tela_6:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_4_tela_6
	
	addi $8 $8 -6144
	
	sw $20 -512($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $13 1036($8)
	sw $20 -512($8)
	
fundo_2_parte_5_tela_6_init:
	lui $8 0x1001
	addi $8 $8 26784
	addi $8 $8 32768
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 12
fundo_2_parte_5_tela_6:
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_5_tela_6
	
	addi $8 $8 -6144
	
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $13 520($8)
	sw $13 524($8)
	sw $13 1036($8)
	sw $13 1548($8)
	sw $12 5632($8)
	
fundo_2_parte_6_tela_6_init:
	lui $8 0x1001
	addi $8 $8 28848
	addi $8 $8 32768
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 4
fundo_2_parte_6_tela_6:
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
	bne $9 $0 fundo_2_parte_6_tela_6
	
	addi $8 $8 -16
	
	sw $20 512($8)
	sw $13 1032($8)
	sw $13 1036($8)
	
fundo_2_parte_7_tela_6_init:
	lui $8 0x1001
	addi $8 $8 18528
	addi $8 $8 32768
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 4
fundo_2_parte_7_tela_6:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_7_tela_6
	
	addi $8 $8 -16
	
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1548($8)
	
fundo_2_parte_8_tela_6_init:
	lui $8 0x1001
	addi $8 $8 16432
	addi $8 $8 32768
	li $20 0x288e78
	li $11 0x20d8ff
	li $12 0x116767
	li $13 0x9494fc
	li $9 4
fundo_2_parte_8_tela_6:
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_8_tela_6
	
	addi $8 $8 -16
	
	sw $11 1036($8)
	
fundo_3_parte_1_tela_6_init:
	lui $8 0x1001
	addi $8 $8 24736
	addi $8 $8 32768
	li $20 0x9494fc
	li $11 0x20d8ff
	li $9 68
fundo_3_parte_1_tela_6:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_1_tela_6
	
fundo_3_parte_2_tela_6_init:
	lui $8 0x1001
	addi $8 $8 25056
	addi $8 $8 32768
	li $20 0x9494fc
	li $11 0x20d8ff
	li $9 8
fundo_3_parte_2_tela_6:
	
	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_2_tela_6
	
fundo_3_parte_3_tela_6_init:
	lui $8 0x1001
	addi $8 $8 26800
	addi $8 $8 32768
	li $20 0x9494fc
	li $11 0x20d8ff
	li $9 4
fundo_3_parte_3_tela_6:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_3_tela_6
	
fundo_3_parte_4_tela_6_init:
	lui $8 0x1001
	addi $8 $8 26912
	addi $8 $8 32768
	li $20 0x9494fc
	li $11 0x20d8ff
	li $9 12
fundo_3_parte_4_tela_6_1:
	li $10 20
fundo_3_parte_4_tela_6_2:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	bne $10 $0 fundo_3_parte_4_tela_6_2
	addi $8 $8 -80
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_4_tela_6_1
	
fundo_4_parte_1_tela_6_init:
	lui $8 0x1001
	addi $8 $8 24848
	addi $8 $8 32768
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 20
fundo_4_parte_1_tela_6:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_1_tela_6
	
	sw $20 1024($8)
	
	addi $8 $8 -80
	
	sw $11 1536($8)
	
fundo_4_parte_2_tela_6_init:
	lui $8 0x1001
	addi $8 $8 26912
	addi $8 $8 32768
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 8
fundo_4_parte_2_tela_6:
	
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
	bne $9 $0 fundo_4_parte_2_tela_6

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
	
fundo_4_parte_3_tela_6_init:
	lui $8 0x1001
	addi $8 $8 26944
	addi $8 $8 32768
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 12
fundo_4_parte_3_tela_6:
	
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
	bne $9 $0 fundo_4_parte_3_tela_6
	
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
	
fundo_4_parte_4_tela_6_init:
	lui $8 0x1001
	addi $8 $8 31056
	addi $8 $8 32768
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 8
fundo_4_parte_4_tela_6:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_4_tela_6
	
	addi $8 $8 -32
	
	sw $20 -8($8)
	sw $20 -4($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 1544($8)
	
fundo_4_parte_5_tela_6_init:
	lui $8 0x1001
	addi $8 $8 24940
	addi $8 $8 32768
	li $20 0xdcdcfc
	li $11 0x9494fc
	li $12 0x20d8ff
	li $9 8
fundo_4_parte_5_tela_6:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_5_tela_6
	
fundo_5_parte_1_tela_6_init:
	lui $8 0x1001
	addi $8 $8 2144
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 8
fundo_5_parte_1_tela_6:
	
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
	bne $9 $0 fundo_5_parte_1_tela_6
	
	addi $8 $8 -32
	
	sw $11 512($8)
	sw $11 516($8)
	sw $20 1532($8)
	sw $11 2560($8)
	
fundo_5_parte_2_tela_6_init:
	lui $8 0x1001
	addi $8 $8 2176
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_2_tela_6:
	
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
	bne $9 $0 fundo_5_parte_2_tela_6
	
	addi $8 $8 -16
	
	sw $11 3072($8)
	sw $11 3076($8)
	sw $11 3080($8)
	sw $11 3584($8)
	sw $11 3588($8)
	sw $11 3592($8)
	sw $11 3596($8)
	
fundo_5_parte_3_tela_6_init:
	lui $8 0x1001
	addi $8 $8 2192
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 12
fundo_5_parte_3_tela_6:
	
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
	bne $9 $0 fundo_5_parte_3_tela_6
	
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
	
fundo_5_parte_4_tela_6_init:
	lui $8 0x1001
	addi $8 $8 4288
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_4_tela_6:
	
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
	bne $9 $0 fundo_5_parte_4_tela_6
	
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
	
fundo_5_parte_5_tela_6_init:
	lui $8 0x1001
	addi $8 $8 8368
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 20
fundo_5_parte_5_tela_6:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_5_tela_6
	
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
	
fundo_5_parte_6_tela_6_init:
	lui $8 0x1001
	addi $8 $8 3340
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_6_tela_6:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_6_tela_6
	
	addi $8 $8 -16
	
	sw $20 -4($8)
	
fundo_5_parte_7_tela_6_init:
	lui $8 0x1001
	addi $8 $8 304
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_7_tela_6:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_7_tela_6
	
	addi $8 $8 -96
	
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $11 1548($8)
		
fundo_5_parte_8_tela_6_init:
	lui $8 0x1001
	addi $8 $8 2400
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_8_tela_6:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_8_tela_6
	
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
	
fundo_5_parte_9_tela_6_init:
	lui $8 0x1001
	addi $8 $8 4448
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_9_tela_6:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_9_tela_6
	
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
	
fundo_5_parte_10_tela_6_init:
	lui $8 0x1001
	addi $8 $8 6560
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 8
fundo_5_parte_10_tela_6:
	
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
	bne $9 $0 fundo_5_parte_10_tela_6
	
	sw $11 508($8)
	
	addi $8 $8 -32
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 3072($8)
	
fundo_5_parte_11_tela_6_init:
	lui $8 0x1001
	addi $8 $8 6544
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_11_tela_6:
	
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
	bne $9 $0 fundo_5_parte_11_tela_6
	
	addi $8 $8 -16
	
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 2048($8)
	sw $20 2572($8)
	
fundo_5_parte_12_tela_6_init:
	lui $8 0x1001
	addi $8 $8 6592
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 8
fundo_5_parte_12_tela_6:
	
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
	bne $9 $0 fundo_5_parte_12_tela_6
	
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
	
fundo_5_parte_13_tela_6_init:
	lui $8 0x1001
	addi $8 $8 10688
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_13_tela_6:
	
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
	bne $9 $0 fundo_5_parte_13_tela_6
	
	addi $8 $8 -2048
	
	sw $20 24($8)
	sw $20 28($8)
	sw $20 536($8)
	sw $20 1544($8)
	
fundo_5_parte_14_tela_6_init:
	lui $8 0x1001
	addi $8 $8 12736
	addi $8 $8 32768
	li $20 0xa9f0ff
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	sw $20 512($8)
	sw $20 516($8)
	
fundo_5_parte_15_tela_6_init:
	lui $8 0x1001
	addi $8 $8 12720
	addi $8 $8 32768
	li $20 0xa9f0ff
	
	sw $20 520($8)
	sw $20 524($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1036($8)
	
fundo_5_parte_16_tela_6_init:
	lui $8 0x1001
	addi $8 $8 10512
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 32
fundo_5_parte_16_tela_6:
	
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
	bne $9 $0 fundo_5_parte_16_tela_6
	
	addi $8 $8 -128
	
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1040($8)
	sw $11 1044($8)
	sw $11 1048($8)
	sw $11 1052($8)
	
fundo_5_parte_17_tela_6_init:
	lui $8 0x1001
	addi $8 $8 10496
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_17_tela_6:
	
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
	bne $9 $0 fundo_5_parte_17_tela_6
	
	addi $8 $8 -16
	
	sw $11 1536($8)
	sw $11 1540($8)
	sw $11 2560($8)
	sw $11 3072($8)
	sw $11 3076($8)
	
fundo_5_parte_18_tela_6_init:
	lui $8 0x1001
	addi $8 $8 10640
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_18_tela_6:
	
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
	bne $9 $0 fundo_5_parte_18_tela_6
	
	addi $8 $8 -16
	
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 1540($8)
	sw $20 3072($8)
	sw $20 3076($8)
	sw $20 3584($8)
	
fundo_5_parte_19_tela_6_init:
	lui $8 0x1001
	addi $8 $8 14704
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_19_tela_6:
	
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
	bne $9 $0 fundo_5_parte_19_tela_6
	
	addi $8 $8 -2048
	
	sw $20 -4($8)
	sw $11 512($8)
	sw $11 536($8)
	sw $20 1564($8)
	
undo_5_parte_20_tela_6_init:
	lui $8 0x1001
	addi $8 $8 16752
	addi $8 $8 32768
	li $20 0xa9f0ff
	li $11 0x20d8ff
	li $9 24
fundo_5_parte_20_tela_6:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)

	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_20_tela_6
	
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
	
fundo_6_parte_1_tela_6_init:
	lui $8 0x1001
	addi $8 $8 10884
	addi $8 $8 32768
	li $20 0x0cc4ec
	
	sw $20 0($8)
	sw $20 8($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 1028($8)
	
fundo_6_parte_2_tela_6_init:
	lui $8 0x1001
	addi $8 $8 13452
	addi $8 $8 32768
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
	
fundo_6_parte_3_tela_6_init:
	lui $8 0x1001
	addi $8 $8 13484
	addi $8 $8 32768
	li $20 0x0cc4ec
	
	sw $20 0($8)
	sw $20 8($8)
	sw $20 516($8)
	
fundo_6_parte_4_tela_6_init:
	lui $8 0x1001
	addi $8 $8 15548
	addi $8 $8 32768
	li $20 0x0cc4ec
	
	sw $20 0($8)
	sw $20 8($8)
	sw $20 516($8)
	
fundo_6_parte_5_tela_6_init:
	lui $8 0x1001
	addi $8 $8 16548
	addi $8 $8 32768
	li $20 0x0cc4ec
	
	sw $20 0($8)
	sw $20 8($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 1028($8)
	
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $14 0($29)
	addi $29 $29 4  
	lw $13 0($29)
	addi $29 $29 4  
	lw $12 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4  
	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
#================================================
# - funcao para desenhar tela 7

desenhar_mapa_7:
	sw $31, 0($29)
       	addi $29, $29, -4
       	sw $8, 0($29)
       	addi $29, $29, -4
       	sw $9, 0($29)
       	addi $29, $29, -4
       	sw $10, 0($29)
       	addi $29, $29, -4
       	sw $11, 0($29)
       	addi $29, $29, -4
       	sw $12, 0($29)
       	addi $29, $29, -4
       	sw $13, 0($29)
       	addi $29, $29, -4
	sw $20, 0($29)
       	addi $29, $29, -4
       	
tela_7:
	lui $8 0x1001
	addi $8 $8 32768
	li $9 8192
	li $20 0x20d8ff
ceu_tela_7:
	beq $9 $0 bloco_chao_1_init_tela_7
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j ceu_tela_7
	
bloco_chao_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 26624
	addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_7
final_bloco_chao_1_tela_7:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_7
	
bloco_chao_1_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 14656
	addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_7_2
final_bloco_chao_1_tela_7_2:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_7_2
	
bloco_chao_1_init_tela_7_3:
	lui $8 0x1001
	addi $8 $8 18848
	addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_7_3
final_bloco_chao_1_tela_7_3:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_7_3
	

bloco_chao_2_init_tela_7:
	lui $8 0x1001
	addi $8 $8 26656
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_7
final_bloco_chao_2_tela_7:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_2_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 14704
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_7_2
final_bloco_chao_2_tela_7_2:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_2_init_tela_7_3:
	lui $8 0x1001
	addi $8 $8 18880
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_7_3
final_bloco_chao_2_tela_7_3:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_3_init_tela_7:
	lui $8 0x1001
	addi $8 $8 14640
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_7
final_bloco_chao_3_tela_7:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_3_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 18832
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_7_2
final_bloco_chao_3_tela_7_2:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_4_init_tela_7:
	lui $8 0x1001
	addi $8 $8 28704
    addi $8 $8 32768
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
    addi $8 $8 32768
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
    addi $8 $8 32768
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
    addi $8 $8 32768
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
    addi $8 $8 32768
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
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_7
final_bloco_chao_6_tela_7:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
bloco_chao_6_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 16720
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_7_2
final_bloco_chao_6_tela_7_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
bloco_chao_7_init_tela_7:
	lui $8 0x1001
	addi $8 $8 28688
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_7
final_bloco_chao_7_tela_7:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_7_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 16736
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_7_2
final_bloco_chao_7_tela_7_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_7_init_tela_7_3:
	lui $8 0x1001
	addi $8 $8 20912
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_7_3
final_bloco_chao_7_tela_7_3:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_8_init_tela_7:
	lui $8 0x1001
	addi $8 $8 16704
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_7
final_bloco_chao_8_tela_7:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_8_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 20896
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_7_2
final_bloco_chao_8_tela_7_2:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_9_init_tela_7:
	lui $8 0x1001
	addi $8 $8 30736
    addi $8 $8 32768
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
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_7
final_bloco_chao_9_tela_7:
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
	
bloco_chao_9_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 18784
    addi $8 $8 32768
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
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_7_2
final_bloco_chao_9_tela_7_2:
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
	
bloco_chao_9_init_tela_7_3:
	lui $8 0x1001
	addi $8 $8 22960
    addi $8 $8 32768
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
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_7_3
final_bloco_chao_9_tela_7_3:
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
	
bloco_chao_10_init_tela_7:
	lui $8 0x1001
	addi $8 $8 18752
    addi $8 $8 32768
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
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_7
final_bloco_chao_10_tela_7:
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
	
bloco_chao_10_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 22944
    addi $8 $8 32768
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
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_7_2
final_bloco_chao_10_tela_7_2:
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
	
bloco_chao_11_init_tela_7:
	lui $8 0x1001
	addi $8 $8 20832
    addi $8 $8 32768
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
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_7
final_bloco_chao_11_tela_7:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_7
	
bloco_chao_11_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 25008
    addi $8 $8 32768
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
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_7_2
final_bloco_chao_11_tela_7_2:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_7_2
	
bloco_chao_12_init_tela_7:
	lui $8 0x1001
	addi $8 $8 20800
    addi $8 $8 32768
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
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_12_tela_7
final_bloco_chao_12_tela_7:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_7
	
bloco_chao_12_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 24992
    addi $8 $8 32768
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
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_12_tela_7_2
final_bloco_chao_12_tela_7_2:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_7_2
	
bloco_chao_13_init_tela_7:
	lui $8 0x1001
	addi $8 $8 30720
    addi $8 $8 32768
	li $11 0x817235
	li $12 0x6b5727
	li $9 4
bloco_chao_13_tela_7:
	beq $9 $0 final_bloco_chao_13_tela_7
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13_tela_7
final_bloco_chao_13_tela_7:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
bloco_chao_13_init_tela_7_2:
	lui $8 0x1001
	addi $8 $8 18768
    addi $8 $8 32768
	li $11 0x817235
	li $12 0x6b5727
	li $9 4
bloco_chao_13_tela_7_2:
	beq $9 $0 final_bloco_chao_13_tela_7_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13_tela_7_2
final_bloco_chao_13_tela_7_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
bloco_chao_14_init_tela_7:
	lui $8 0x1001
	addi $8 $8 20816
    addi $8 $8 32768
	li $20 0x6b5727
	li $9 24
laco_bloco_chao_14_init_tela_7_1:
	beq $9 $0 bloco_obstaculo_1_init_tela_7
	li $10 4
laco_bloco_chao_14_init_tela_7_2:
	beq $10 $0 fim_laco_bloco_chao_14_init_tela_7_2
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_bloco_chao_14_init_tela_7_2
fim_laco_bloco_chao_14_init_tela_7_2:
	addi $8 $8 -16
	addi $8 $8 512
	addi $9 $9 -1
	j laco_bloco_chao_14_init_tela_7_1

bloco_obstaculo_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 10304
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_7
final_bloco_obstaculo_1_tela_7:
	addi $8 $8 -16
	
	sw $20 512($8)
	sw $12 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
bloco_obstaculo_2_init_tela_7:
	lui $8 0x1001
	addi $8 $8 12352
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_7
final_bloco_obstaculo_2_tela_7:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1028($8)
	
bloco_obstaculo_3_init_tela_7:
	lui $8 0x1001
	addi $8 $8 10320
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_7
final_bloco_obstaculo_3_tela_7:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 1548($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_3_tela_7
	
bloco_obstaculo_4_init_tela_7:
	lui $8 0x1001
	addi $8 $8 12368
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_7
final_bloco_obstaculo_4_tela_7:
	addi $8 $8 -16
	
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1032($8)
	sw $12 1036($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_4_tela_7
	
bloco_obstaculo_5_init_tela_7:
	lui $8 0x1001
	addi $8 $8 10336
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_7
final_bloco_obstaculo_5_tela_7:
	addi $8 $8 -16
	
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_5_tela_7
	
bloco_obstaculo_6_init_tela_7:
	lui $8 0x1001
	addi $8 $8 12384
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_7
final_bloco_obstaculo_6_tela_7:
	addi $8 $8 -16
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1028($8)
	sw $12 1024($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_6_tela_7
	
bloco_obstaculo_7_init_tela_7:
	lui $8 0x1001
	addi $8 $8 12560
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_7
final_bloco_obstaculo_7_tela_7:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 524($8)
	sw $12 1032($8)
	sw $20 1036($8)
	
bloco_obstaculo_8_init_tela_7:
	lui $8 0x1001
	addi $8 $8 10512
    addi $8 $8 32768
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
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_7
final_bloco_obstaculo_8_tela_7:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $20 524($8)
	sw $20 1036($8)
	sw $20 1548($8)


fundo_1_parte_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 30784
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
        addi $8 $8 32768
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
	
fundo_4_parte_8_init_tela_7:
	lui $8 0x1001
	addi $8 $8 10528
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 56
fundo_4_parte_8_tela_7:

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
	bne $9 $0 fundo_4_parte_8_tela_7
	
	addi $8 $8 -176
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	sw $11 16($8)
	sw $11 20($8)
	sw $11 24($8)
	sw $11 28($8)
	sw $11 32($8)
	sw $11 36($8)
	sw $11 40($8)
	
	addi $8 $8 16
	
	sw $11 512($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $11 524($8)
	sw $11 528($8)
	
fundo_4_parte_9_init_tela_7:
	lui $8 0x1001
	addi $8 $8 14720
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 32
fundo_4_parte_9_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_9_tela_7
	
	addi $8 $8 -32
	
	sw $12 516($8)
	sw $12 1028($8)
	sw $12 1540($8)
	
fundo_4_parte_10_init_tela_7:
	lui $8 0x1001
	addi $8 $8 16768
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 24
fundo_4_parte_10_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_10_tela_7
	
fundo_4_parte_11_init_tela_7:
	lui $8 0x1001
	addi $8 $8 18816
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 8
fundo_4_parte_11_tela_7:

	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_11_tela_7
	
fundo_4_parte_12_init_tela_7:
	lui $8 0x1001
	addi $8 $8 8576
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 32
fundo_4_parte_12_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_12_tela_7
	
	addi $8 $8 -128
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $20 1532($8)
	
fundo_4_parte_13_init_tela_7:
	lui $8 0x1001
	addi $8 $8 4496
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 28
fundo_4_parte_13_tela_7:

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
	bne $9 $0 fundo_4_parte_13_tela_7
	
	addi $8 $8 -112
	
	sw $20 -504($8)
	sw $11 0($8)
	sw $11 4($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $20 3580($8)
	
fundo_4_parte_14_init_tela_7:
	lui $8 0x1001
	addi $8 $8 2496
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 16
fundo_4_parte_14_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_14_tela_7
	
	addi $8 $8 -64
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 512($8)
	sw $11 516($8)
	sw $11 1024($8)
	sw $20 1532($8)
	
fundo_4_parte_15_init_tela_7:
	lui $8 0x1001
	addi $8 $8 464
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 12
fundo_4_parte_15_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_15_tela_7
	
	addi $8 $8 -48
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	
fundo_4_parte_16_init_tela_7:
	lui $8 0x1001
	addi $8 $8 8432
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $9 22
fundo_4_parte_16_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_16_tela_7
	
	sw $11 -4($8)
	sw $20 1536($8)
	
	addi $8 $8 -56
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	
	addi $8 $8 -32
	
	sw $11 0($8)
	sw $11 512($8)
	
fundo_4_parte_17_init_tela_7:
	lui $8 0x1001
	addi $8 $8 6384
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $13 0xa4f4fc
	li $9 4
fundo_4_parte_17_tela_7:

	sw $13 0($8)
	sw $13 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_17_tela_7
	
	addi $8 $8 -2048
	
	sw $20 1040($8)
	sw $11 1536($8)
	sw $11 1540($8)
	sw $20 1552($8)
	
fundo_4_parte_18_init_tela_7:
	lui $8 0x1001
	addi $8 $8 4336
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $13 0xa4f4fc
	li $9 4
fundo_4_parte_18_tela_7:

	sw $11 0($8)
	sw $11 4($8)
	sw $20 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_18_tela_7
	
	sw $13 -512($8)
	
fundo_4_parte_19_init_tela_7:
	lui $8 0x1001
	addi $8 $8 6448
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $13 0xa4f4fc
	li $9 4
fundo_4_parte_19_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_19_tela_7
	
	sw $20 1536($8)
	
fundo_4_parte_20_init_tela_7:
	lui $8 0x1001
	addi $8 $8 6432
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $13 0xa4f4fc
	li $9 4
fundo_4_parte_20_tela_7:

	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_20_tela_7
	
	addi $8 $8 -16
	
	sw $11 1024($8)
	sw $11 1028($8)
	
fundo_4_parte_21_init_tela_7:
	lui $8 0x1001
	addi $8 $8 4400
        addi $8 $8 32768
	li $20 0x248c7c
	li $11 0x20d8ff
	li $12 0x0c646c
	li $13 0xa4f4fc
	li $9 4
fundo_4_parte_21_tela_7:

	sw $11 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_21_tela_7
	
	addi $8 $8 -2048
	
	sw $11 4($8)
	sw $11 516($8)
	
fundo_5_parte_1_init_tela_7:
	lui $8 0x1001
	addi $8 $8 16432
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 5
fundo_5_parte_1_tela_7:

	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_1_tela_7
	
	sw $20 -8($8)
	sw $20 -4($8)
	sw $20 512($8)
	
fundo_5_parte_2_init_tela_7:
	lui $8 0x1001
	addi $8 $8 8216
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 8
fundo_5_parte_2_tela_7:

	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_2_tela_7
	
	sw $11 504($8)
	sw $11 508($8)
	sw $11 1020($8)
	sw $20 2032($8)
	sw $20 2036($8)
	sw $20 2040($8)
	sw $20 2044($8)
	
	addi $8 $8 -32
	
	sw $11 512($8)
	sw $11 516($8)
	sw $11 520($8)
	sw $11 1536($8)
	
fundo_5_parte_3_init_tela_7:
	lui $8 0x1001
	addi $8 $8 6216
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 5
fundo_5_parte_3_tela_7:

	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_3_tela_7
	
fundo_5_parte_4_init_tela_7:
	lui $8 0x1001
	addi $8 $8 6304
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 20
fundo_5_parte_4_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_4_tela_7
	
	sw $20 -516($8)
	sw $20 -520($8)
	sw $20 -524($8)
	sw $20 -528($8)
	sw $20 -532($8)
	sw $20 -536($8)
	sw $20 -540($8)
	sw $11 1520($8)
	sw $11 1524($8)
	sw $11 1528($8)
	sw $11 1532($8)
	
	addi $8 $8 -80
	
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 1540($8)
	
fundo_5_parte_5_init_tela_7:
	lui $8 0x1001
	addi $8 $8 4256
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 6
fundo_5_parte_5_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_5_tela_7
	
	sw $11 -8($8)
	sw $11 -4($8)
	sw $11 508($8)
	sw $20 1536($8)
	sw $20 1540($8)
	
fundo_5_parte_6_init_tela_7:
	lui $8 0x1001
	addi $8 $8 4208
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 12
fundo_5_parte_6_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_6_tela_7
	
	sw $20 1016($8)
	sw $20 1020($8)
	sw $20 1532($8)
	
fundo_5_parte_7_init_tela_7:
	lui $8 0x1001
	addi $8 $8 4160
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 12
fundo_5_parte_7_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_7_tela_7
	
	sw $11 1520($8)
	sw $11 1524($8)
	sw $11 1528($8)
	sw $11 1532($8)
	
	addi $8 $8 -48
	
	sw $20 -8($8)
	sw $20 -4($8)
	sw $20 508($8)
	sw $20 1024($8)
	
fundo_5_parte_8_init_tela_7:
	lui $8 0x1001
	addi $8 $8 2096
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 8
fundo_5_parte_8_tela_7:

	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_8_tela_7
	
	addi $8 $8 -32
	
	sw $20 1016($8)
	sw $20 1020($8)
	sw $20 1532($8)
	
fundo_5_parte_9_init_tela_7:
	lui $8 0x1001
	addi $8 $8 2128
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 12
fundo_5_parte_9_tela_7:

	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_9_tela_7
	
	sw $20 -4($8)
	
fundo_5_parte_10_init_tela_7:
	lui $8 0x1001
	addi $8 $8 2176
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 12
fundo_5_parte_10_tela_7:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_10_tela_7
	
	sw $11 -16($8)
	sw $11 -12($8)
	sw $11 -8($8)
	sw $11 -4($8)
	sw $11 508($8)
	
	addi $8 $8 -48
	
	sw $20 -508($8)
	sw $20 -504($8)
	sw $20 -500($8)
	sw $20 -496($8)
	sw $20 -492($8)
	
fundo_5_parte_11_init_tela_7:
	lui $8 0x1001
	addi $8 $8 4116
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_11_tela_7:

	sw $11 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_11_tela_7
	
fundo_5_parte_12_init_tela_7:
	lui $8 0x1001
	addi $8 $8 2252
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_12_tela_7:

	sw $11 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_12_tela_7
	
fundo_5_parte_13_init_tela_7:
	lui $8 0x1001
	addi $8 $8 2268
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_13_tela_7:

	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_13_tela_7
	
	sw $20 -516($8)
	sw $20 -512($8)
	sw $20 -1024($8)
	
fundo_5_parte_14_init_tela_7:
	lui $8 0x1001
	addi $8 $8 240
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 8
fundo_5_parte_14_tela_7:

	sw $11 0($8)
	sw $11 512($8)
	sw $20 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_14_tela_7
	
fundo_5_parte_15_init_tela_7:
	lui $8 0x1001
	addi $8 $8 2384
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 12
fundo_5_parte_15_tela_7:

	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_15_tela_7
	
	sw $11 1528($8)
	sw $11 1532($8)
	
	addi $8 $8 -48
	
	sw $11 512($8)
	sw $11 516($8)
	sw $20 1012($8)
	sw $20 1016($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $20 2052($8)
	sw $20 2056($8)
	sw $20 2060($8)
	sw $20 2064($8)
	sw $20 2068($8)
	sw $20 2072($8)
	sw $20 2076($8)
	
fundo_5_parte_16_init_tela_7:
	lui $8 0x1001
	addi $8 $8 2432
        addi $8 $8 32768
	li $20 0xa4f4fc
	li $11 0x20d8ff
	li $9 4
fundo_5_parte_16_tela_7:

	sw $11 0($8)
	sw $20 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_16_tela_7
	
	sw $20 -8($8)
	sw $20 -4($8)
	sw $20 512($8)
	sw $20 516($8)
	
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $13 0($29)
	addi $29 $29 4  
	lw $12 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4  
	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
		addi $29 $29 4                                                    
       	lw $31 0($29)
	
		jr $31
	
#================================================
# - funcao para desenhar tela 8

desenhar_mapa_8:
	sw $31, 0($29)
       	addi $29, $29, -4
       	sw $8, 0($29)
       	addi $29, $29, -4
       	sw $9, 0($29)
       	addi $29, $29, -4
       	sw $10, 0($29)
       	addi $29, $29, -4
	sw $11, 0($29)
       	addi $29, $29, -4
	sw $12, 0($29)
       	addi $29, $29, -4
	sw $13, 0($29)
       	addi $29, $29, -4
	sw $14, 0($29)
       	addi $29, $29, -4
	sw $20, 0($29)
       	addi $29, $29, -4
       	
tela_8:
	lui $8 0x1001
	addi $8 $8 32768
	li $9 8192
	li $20 0x20d8ff
ceu_tela_8:
	beq $9 $0 bloco_chao_1_init_tela_8
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j ceu_tela_8
	
bloco_chao_1_init_tela_8:
	lui $8 0x1001
addi $8 $8 12304
addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_8:
	li $9 4
bloco_chao_1_tela_8:
	beq $9 $0 final_bloco_chao_1_tela_8
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_8
final_bloco_chao_1_tela_8:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_8
	
bloco_chao_1_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 24704
addi $8 $8 32768
	li $10 3
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_8_2:
	li $9 4
bloco_chao_1_tela_8_2:
	beq $9 $0 final_bloco_chao_1_tela_8_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_8_2
final_bloco_chao_1_tela_8_2:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_8_2
	
bloco_chao_1_init_tela_8_3:
	lui $8 0x1001
addi $8 $8 26896
addi $8 $8 32768
	li $10 15
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_8_3:
	li $9 4
bloco_chao_1_tela_8_3:
	beq $9 $0 final_bloco_chao_1_tela_8_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_tela_8_3
final_bloco_chao_1_tela_8_3:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_8_3
	
bloco_chao_2_init_tela_8:
	lui $8 0x1001
addi $8 $8 12336
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_8:
	beq $9 $0 final_bloco_chao_2_tela_8
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_8
final_bloco_chao_2_tela_8:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_2_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 24752
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2_tela_8_2:
	beq $9 $0 final_bloco_chao_2_tela_8_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2_tela_8_2
final_bloco_chao_2_tela_8_2:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_3_init_tela_8:
	lui $8 0x1001
addi $8 $8 12288
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_8:
	beq $9 $0 final_bloco_chao_3_tela_8
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_8
final_bloco_chao_3_tela_8:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_3_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 24688
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_8_2:
	beq $9 $0 final_bloco_chao_3_tela_8_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_8_2
final_bloco_chao_3_tela_8_2:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_3_init_tela_8_3:
	lui $8 0x1001
addi $8 $8 26880
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3_tela_8_3:
	beq $9 $0 final_bloco_chao_3_tela_8_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3_tela_8_3
final_bloco_chao_3_tela_8_3:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_4_init_tela_8:
	lui $8 0x1001
addi $8 $8 14384
addi $8 $8 32768
	li $10 9
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_8:
	li $9 4
bloco_chao_4_tela_8:
	beq $9 $0 final_bloco_chao_4_tela_8
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_8
final_bloco_chao_4_tela_8:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_8
	
bloco_chao_4_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 26800
addi $8 $8 32768
	li $10 3
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4_tela_8_2:
	li $9 4
bloco_chao_4_tela_8_2:
	beq $9 $0 final_bloco_chao_4_tela_8_2
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4_tela_8_2
final_bloco_chao_4_tela_8_2:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4_tela_8_2
	
bloco_chao_5_init_tela_8:
	lui $8 0x1001
addi $8 $8 14336
addi $8 $8 32768
	li $10 9
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_8:
	li $9 4
bloco_chao_5_tela_8:
	beq $9 $0 final_bloco_chao_5_tela_8
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_8
final_bloco_chao_5_tela_8:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_8
	
bloco_chao_5_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 26736
addi $8 $8 32768
	li $10 3
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_8_2:
	li $9 4
bloco_chao_5_tela_8_2:
	beq $9 $0 final_bloco_chao_5_tela_8_2
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_8_2
final_bloco_chao_5_tela_8_2:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_8_2
		
bloco_chao_5_init_tela_8_3:
	lui $8 0x1001
addi $8 $8 28928
addi $8 $8 32768
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5_tela_8_3:
	li $9 4
bloco_chao_5_tela_8_3:
	beq $9 $0 final_bloco_chao_5_tela_8_3
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5_tela_8_3
final_bloco_chao_5_tela_8_3:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5_tela_8_3
	
bloco_chao_6_init_tela_8:
	lui $8 0x1001
addi $8 $8 26768
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_6_tela_8:
	beq $9 $0 final_bloco_chao_6_tela_8
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_8
final_bloco_chao_6_tela_8:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
bloco_chao_6_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 28960
addi $8 $8 32768
	li $10 14
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_init_tela_8_2:
	li $9 4
bloco_chao_6_tela_8_2:
	beq $9 $0 final_bloco_chao_6_tela_8_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_tela_8_2
final_bloco_chao_6_tela_8_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_init_tela_8_2
	
bloco_chao_7_init_tela_8:
	lui $8 0x1001
addi $8 $8 26784
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_8:
	beq $9 $0 final_bloco_chao_7_tela_8
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_8
final_bloco_chao_7_tela_8:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_7_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 14368
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7_tela_8_2:
	beq $9 $0 final_bloco_chao_7_tela_8_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7_tela_8_2
final_bloco_chao_7_tela_8_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_8_init_tela_8:
	lui $8 0x1001
addi $8 $8 14352
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_8:
	beq $9 $0 final_bloco_chao_8_tela_8
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_8
final_bloco_chao_8_tela_8:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_8_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 26752
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_8_2:
	beq $9 $0 final_bloco_chao_8_tela_8_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_8_2
final_bloco_chao_8_tela_8_2:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_8_init_tela_8_3:
	lui $8 0x1001
addi $8 $8 28944
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8_tela_8_3:
	beq $9 $0 final_bloco_chao_8_tela_8_3
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8_tela_8_3
final_bloco_chao_8_tela_8_3:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_9_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 28832
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_8_2:
	beq $9 $0 final_bloco_chao_9_tela_8_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_8_2
final_bloco_chao_9_tela_8_2:
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
	
bloco_chao_9_init_tela_8_3:
	lui $8 0x1001
addi $8 $8 16416
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9_tela_8_3:
	beq $9 $0 final_bloco_chao_9_tela_8_3
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9_tela_8_3
final_bloco_chao_9_tela_8_3:
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
	
bloco_chao_10_init_tela_8:
	lui $8 0x1001
addi $8 $8 28800
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_8:
	beq $9 $0 final_bloco_chao_10_tela_8
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_8
final_bloco_chao_10_tela_8:
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
	
bloco_chao_10_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 30992
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_8_2:
	beq $9 $0 final_bloco_chao_10_tela_8_2
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_8_2
final_bloco_chao_10_tela_8_2:
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
	
bloco_chao_10_init_tela_8_3:
	lui $8 0x1001
addi $8 $8 16400
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10_tela_8_3:
	beq $9 $0 final_bloco_chao_10_tela_8_3
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10_tela_8_3
final_bloco_chao_10_tela_8_3:
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
	
bloco_chao_11_init_tela_8:
	lui $8 0x1001
addi $8 $8 18464
addi $8 $8 32768
	li $10 7
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11_tela_8:
	li $9 4
bloco_chao_11_tela_8:
	beq $9 $0 final_bloco_chao_11_tela_8
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_8
final_bloco_chao_11_tela_8:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11_tela_8
	
bloco_chao_11_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 30880
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
	li $9 4
bloco_chao_11_tela_8_2:
	beq $9 $0 final_bloco_chao_11_tela_8_2
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11_tela_8_2
final_bloco_chao_11_tela_8_2:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1548($8)

bloco_chao_12_init_tela_8:
	lui $8 0x1001
addi $8 $8 18448
addi $8 $8 32768
	li $10 7
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_12_tela_8:
	li $9 4
bloco_chao_12_tela_8:
	beq $9 $0 final_bloco_chao_12_tela_8
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_12_tela_8
final_bloco_chao_12_tela_8:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_tela_8
	
bloco_chao_12_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 30848
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
	li $9 4
bloco_chao_12_tela_8_2:
	beq $9 $0 final_bloco_chao_12_tela_8_2
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_12_tela_8_2
final_bloco_chao_12_tela_8_2:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	
bloco_chao_13_init_tela_8:
	lui $8 0x1001
addi $8 $8 28816
addi $8 $8 32768
	li $11 0x817235
	li $12 0x6b5727
	li $9 4
bloco_chao_13_tela_8:
	beq $9 $0 final_bloco_chao_13_tela_8
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13_tela_8
final_bloco_chao_13_tela_8:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
bloco_chao_13_init_tela_8_2:
	lui $8 0x1001
addi $8 $8 31008
addi $8 $8 32768
	li $10 14
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_13_init_tela_8_2:
	li $9 4
bloco_chao_13_tela_8_2:
	beq $9 $0 final_bloco_chao_13_tela_8_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13_tela_8_2
final_bloco_chao_13_tela_8_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_13_init_tela_8_2
	
bloco_chao_14_init_tela_8:
	lui $8 0x1001
addi $8 $8 30864
addi $8 $8 32768
	li $20 0x6b5727
	li $9 4
laco_bloco_chao_14_init_tela_8:
	beq $9 $0 bloco_obstaculo_1_init_tela_8
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j laco_bloco_chao_14_init_tela_8

bloco_obstaculo_1_init_tela_8:
	lui $8 0x1001
addi $8 $8 8384
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_1_tela_8:
	beq $9 $0 final_bloco_obstaculo_1_tela_8
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1_tela_8
final_bloco_obstaculo_1_tela_8:
	addi $8 $8 -16
	
	sw $20 512($8)
	sw $12 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
bloco_obstaculo_2_init_tela_3:
	lui $8 0x1001
addi $8 $8 10432
addi $8 $8 32768
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_2_tela_8:
	beq $9 $0 final_bloco_obstaculo_2_tela_8
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2_tela_8
final_bloco_obstaculo_2_tela_8:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1028($8)
	
bloco_obstaculo_3_init_tela_8:
	lui $8 0x1001
addi $8 $8 8400
addi $8 $8 32768
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_3_tela_8:
	beq $9 $0 final_bloco_obstaculo_3_tela_8
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3_tela_8
final_bloco_obstaculo_3_tela_8:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 1548($8)
	
bloco_obstaculo_4_init_tela_8:
	lui $8 0x1001
addi $8 $8 10448
addi $8 $8 32768
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_4_tela_8:
	beq $9 $0 final_bloco_obstaculo_4_tela_8
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_4_tela_8
final_bloco_obstaculo_4_tela_8:
	addi $8 $8 -16
	
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1032($8)
	sw $12 1036($8)
	
bloco_obstaculo_5_init_tela_8:
	lui $8 0x1001
addi $8 $8 8416
addi $8 $8 32768
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_5_tela_8:
	beq $9 $0 final_bloco_obstaculo_5_tela_8
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5_tela_8
final_bloco_obstaculo_5_tela_8:
	addi $8 $8 -16
	
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
bloco_obstaculo_6_init_tela_8:
	lui $8 0x1001
addi $8 $8 10464
addi $8 $8 32768
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_6_tela_8:
	beq $9 $0 final_bloco_obstaculo_6_tela_8
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_6_tela_8
final_bloco_obstaculo_6_tela_8:
	addi $8 $8 -16
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1028($8)
	sw $12 1024($8)
	
bloco_obstaculo_7_init_tela_8:
	lui $8 0x1001
addi $8 $8 10480
addi $8 $8 32768
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_7_tela_8:
	beq $9 $0 final_bloco_obstaculo_7_tela_8
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_7_tela_8
final_bloco_obstaculo_7_tela_8:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 524($8)
	sw $12 1032($8)
	sw $20 1036($8)
	
bloco_obstaculo_8_init_tela_8:
	lui $8 0x1001
addi $8 $8 8432
addi $8 $8 32768
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
	li $9 4
bloco_obstaculo_8_tela_8:
	beq $9 $0 final_bloco_obstaculo_8_tela_8
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_8_tela_8
final_bloco_obstaculo_8_tela_8:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $20 524($8)
	sw $20 1036($8)
	sw $20 1548($8)

fundo_1_parte_1_init_tela_8:
	lui $8 0x1001
addi $8 $8 26688
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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
addi $8 $8 32768
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

fundo_2_parte_18_init_tela_8:
	lui $8 0x1001
addi $8 $8 8576
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 4
fundo_2_parte_18_tela_8:
	
	sw $13 0($8)
	sw $13 512($8)
	sw $14 1024($8)
	sw $14 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_18_tela_8
	
	addi $8 $8 -16
	
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	sw $20 1540($8)
	
fundo_2_parte_19_init_tela_8:
	lui $8 0x1001
addi $8 $8 10624
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 4
fundo_2_parte_19_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_19_tela_8
	
	sw $12 -8($8)
	sw $12 -4($8)
	sw $12 1020($8)
	
fundo_2_parte_20_init_tela_8:
	lui $8 0x1001
addi $8 $8 14752
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 4
fundo_2_parte_20_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_20_tela_8
	
fundo_2_parte_21_init_tela_8:
	lui $8 0x1001
addi $8 $8 12688
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 8
fundo_2_parte_21_tela_8:
	
	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_21_tela_8
	
	sw $20 -8($8)
	sw $20 -4($8)
	sw $20 504($8)
	sw $20 508($8)
	
fundo_2_parte_22_init_tela_8:
	lui $8 0x1001
addi $8 $8 12720
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 16
fundo_2_parte_22_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_22_tela_8
	
	sw $11 -4($8)
	sw $11 508($8)
	sw $11 1020($8)
	sw $11 1528($8)
	sw $11 1532($8)
	
	addi $8 $8 -48
	
	sw $11 524($8)
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $11 1548($8)
	sw $11 1552($8)
	
fundo_2_parte_23_init_tela_8:
	lui $8 0x1001
addi $8 $8 10656
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 16
fundo_2_parte_23_tela_8:
	
	sw $14 0($8)
	sw $14 512($8)
	sw $14 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_23_tela_8
	
	addi $8 $8 -64
	
	sw $13 4($8)
	sw $13 8($8)
	sw $13 12($8)
	sw $12 512($8)
	sw $13 516($8)
	sw $13 520($8)
	sw $13 524($8)
	sw $12 1024($8)
	sw $12 1028($8)
	sw $13 1032($8)
	sw $13 1036($8)
	sw $12 1536($8)
	sw $12 1540($8)
	
fundo_2_parte_24_init_tela_8:
	lui $8 0x1001
addi $8 $8 10720
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 4
fundo_2_parte_24_tela_8:
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_24_tela_8
	
	addi $8 $8 -16
	
	sw $14 0($8)
	sw $14 4($8)
	sw $14 512($8)
	
fundo_2_parte_25_init_tela_8:
	lui $8 0x1001
addi $8 $8 8688
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 8
fundo_2_parte_25_tela_8:
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_25_tela_8
	
	addi $8 $8 -2048
	
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1028($8)
	sw $11 1536($8)
	sw $11 1540($8)
	
fundo_2_parte_26_init_tela_8:
	lui $8 0x1001
addi $8 $8 6640
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 4
fundo_2_parte_26_tela_8:
	
	sw $13 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_26_tela_8
	
	addi $8 $8 -2048
	
	sw $13 4($8)
	
fundo_2_parte_27_init_tela_8:
	lui $8 0x1001
addi $8 $8 4592
addi $8 $8 32768
	li $20 0x0c646c
	li $11 0x045454
	li $12 0xa4f4fc
	li $13 0x20d8ff
	li $14 0x0cc4ec

	li $9 4
fundo_2_parte_27_tela_8:
	
	sw $13 0($8)
	sw $13 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_2_parte_27_tela_8
	
	addi $8 $8 -2048
	
	sw $14 512($8)
	sw $14 1024($8)
	sw $14 1028($8)
	
	addi $8 $8 -2048
	
	sw $20 520($8)
	sw $20 1032($8)
	sw $20 1544($8)
	sw $20 1548($8)
	
fundo_3_parte_1_init_tela_8:
	lui $8 0x1001
	addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $9 24
fundo_3_parte_1_tela_8:

	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_1_tela_8
	
	addi $8 $8 -6144
	
	sw $12 516($8)
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1028($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $12 1548($8)
	
	addi $8 $8 -6128
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 516($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1536($8)
	sw $20 1540($8)
	
fundo_3_parte_2_init_tela_8:
	lui $8 0x1001
addi $8 $8 2064
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $9 20
fundo_3_parte_2_tela_8:

	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_2_tela_8
	
	addi $8 $8 -6144
	
	sw $12 8($8)
	sw $12 12($8)
	sw $12 512($8)
	sw $12 516($8)
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1024($8)
	sw $12 1028($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $12 1548($8)
	
	addi $8 $8 -4096
	
	sw $11 12($8)
	sw $11 524($8)
	
fundo_3_parte_3_init_tela_8:
	lui $8 0x1001
addi $8 $8 4128
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $9 16
fundo_3_parte_3_tela_8:

	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_3_tela_8
	
	sw $13 -512($8)
	sw $13 -1024($8)
	sw $13 -1536($8)
	
	addi $8 $8 -6144
	
	sw $12 -500($8)
	sw $12 -504($8)
	sw $12 -508($8)
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	sw $12 512($8)
	sw $12 516($8)
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1024($8)
	sw $12 1028($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $12 1548($8)
	sw $12 2060($8)
	
	addi $8 $8 -2048
	
	sw $20 -512($8)
	sw $20 -508($8)
	sw $20 -504($8)
	sw $20 -500($8)
	
fundo_3_parte_4_init_tela_8:
	lui $8 0x1001
addi $8 $8 4144
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $9 16
fundo_3_parte_4_tela_8:

	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_4_tela_8
	
	addi $8 $8 -6144
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1028($8)
	sw $12 1032($8)
	sw $12 1036($8)
	sw $12 1536($8)
	sw $12 1540($8)
	sw $12 1544($8)
	sw $12 1548($8)
	sw $12 2048($8)
	sw $12 2052($8)
	sw $12 2056($8)
	sw $12 2060($8)
	
	addi $8 $8 -2048
	
	sw $20 -1012($8)
	sw $20 -1016($8)
	sw $12 -500($8)
	sw $20 -504($8)
	sw $20 -508($8)
	sw $20 -512($8)
	sw $12 8($8)
	sw $12 12($8)
	
fundo_3_parte_5_init_tela_8:
	lui $8 0x1001
addi $8 $8 6208
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 16
fundo_3_parte_5_tela_8:

	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_5_tela_8
	
	addi $8 $8 -8192
	
	sw $14 8($8)
	sw $14 12($8)
	sw $14 520($8)
	sw $14 524($8)
	sw $12 1024($8)
	sw $11 1036($8)
	sw $12 1536($8)
	sw $11 1548($8)
	sw $12 2048($8)
	
fundo_3_parte_6_init_tela_8:
	lui $8 0x1001
addi $8 $8 10320
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 8
fundo_3_parte_6_tela_8:

	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_6_tela_8
	
	addi $8 $8 -4096
	
	sw $20 -1024($8)
	sw $20 -512($8)
	sw $11 8($8)
	sw $11 12($8)
	
fundo_3_parte_7_init_tela_8:
	lui $8 0x1001
addi $8 $8 10336
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 8
fundo_3_parte_7_tela_8:

	sw $11 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_3_parte_7_tela_8
	
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $11 524($8)
	
fundo_4_parte_1_init_tela_8:
	lui $8 0x1001
addi $8 $8 4160
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 8
fundo_4_parte_1_tela_8:

	sw $12 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_1_tela_8
	
	addi $8 $8 -32
	
	sw $20 1024($8)
	sw $20 1536($8)
	sw $14 1540($8)
	sw $14 1544($8)
	
fundo_4_parte_2_init_tela_8:
	lui $8 0x1001
addi $8 $8 2112
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 6
fundo_4_parte_2_tela_8:

	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_2_tela_8
	
fundo_4_parte_3_init_tela_8:
	lui $8 0x1001
addi $8 $8 48
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 2
fundo_4_parte_3_tela_8:

	sw $11 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_3_tela_8
	
fundo_4_parte_4_init_tela_8:
	lui $8 0x1001
addi $8 $8 100
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 7
fundo_4_parte_4_tela_8:

	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_4_tela_8
	
	sw $12 -4($8)
	
fundo_4_parte_5_init_tela_8:
	lui $8 0x1001
addi $8 $8 128
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 5
fundo_4_parte_5_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_5_tela_8
	
fundo_4_parte_6_init_tela_8:
	lui $8 0x1001
addi $8 $8 148
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 4
fundo_4_parte_6_tela_8:

	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_6_tela_8
	
fundo_4_parte_7_init_tela_8:
	lui $8 0x1001
addi $8 $8 164
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 11
fundo_4_parte_7_tela_8:

	sw $11 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_7_tela_8
	
fundo_4_parte_8_init_tela_8:
	lui $8 0x1001
addi $8 $8 208
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 3
fundo_4_parte_8_tela_8:

	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_8_tela_8
	
fundo_4_parte_9_init_tela_8:
	lui $8 0x1001
addi $8 $8 2176
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 6
fundo_4_parte_9_tela_8:

	sw $11 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_9_tela_8
	
	sw $12 508($8)
	
	addi $8 $8 -24
	
	sw $12 1532($8)
	
fundo_4_parte_10_init_tela_8:
	lui $8 0x1001
addi $8 $8 2200
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 5
fundo_4_parte_10_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_10_tela_8
	
fundo_4_parte_11_init_tela_8:
	lui $8 0x1001
addi $8 $8 2220
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 7
fundo_4_parte_11_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_11_tela_8
	
fundo_4_parte_12_init_tela_8:
	lui $8 0x1001
addi $8 $8 2248
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 6
fundo_4_parte_12_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_12_tela_8
	
fundo_4_parte_13_init_tela_8:
	lui $8 0x1001
addi $8 $8 2272
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 6
fundo_4_parte_13_tela_8:

	sw $11 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_13_tela_8
	
	sw $12 1536($8)
	sw $12 1540($8)
	
	addi $8 $8 -24
	
	sw $12 512($8)
	sw $12 516($8)
	
fundo_4_parte_14_init_tela_8:
	lui $8 0x1001
addi $8 $8 4316
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 10
fundo_4_parte_14_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_14_tela_8
	
	addi $8 $8 -40
	
	sw $12 -8($8)
	sw $12 -4($8)
	
fundo_4_parte_15_init_tela_8:
	lui $8 0x1001
addi $8 $8 244
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 7
fundo_4_parte_15_tela_8:

	sw $11 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_15_tela_8
	
fundo_4_parte_16_init_tela_8:
	lui $8 0x1001
addi $8 $8 2320
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 9
fundo_4_parte_16_tela_8:

	sw $11 0($8)
	sw $11 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_16_tela_8
	
fundo_4_parte_17_init_tela_8:
	lui $8 0x1001
addi $8 $8 1800
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 4
fundo_4_parte_17_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_17_tela_8
	
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1028($8)
	
	addi $8 $8 -16
	
	sw $12 -4($8)
	
fundo_4_parte_18_init_tela_8:
	lui $8 0x1001
addi $8 $8 300
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 13
fundo_4_parte_18_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_18_tela_8

fundo_4_parte_19_init_tela_8:
	lui $8 0x1001
addi $8 $8 352
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 13
fundo_4_parte_19_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_19_tela_8
	
	addi $8 $8 -16
	
	sw $11 524($8)
	sw $11 1032($8)
	sw $11 1036($8)
	sw $11 1540($8)
	sw $11 1544($8)
	sw $11 1548($8)
	
fundo_4_parte_20_init_tela_8:
	lui $8 0x1001
addi $8 $8 10640
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 4
fundo_4_parte_20_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_20_tela_8
	
fundo_4_parte_21_init_tela_8:
	lui $8 0x1001
addi $8 $8 8492
addi $8 $8 32768
	li $20 0x2c8c7c
	li $11 0x20d8ff
	li $12 0xa4f4fc
	li $13 0x0c646c
	li $14 0x0cc4ec
	li $9 5
fundo_4_parte_21_tela_8:

	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_4_parte_21_tela_8
	
	addi $8 $8 -28
	
	sw $14 0($8)
	sw $14 4($8)
	sw $11 1544($8)
	sw $11 1548($8)
	
fundo_5_parte_1_init_tela_8:
	lui $8 0x1001
addi $8 $8 6736
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 3
fundo_5_parte_1_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_1_tela_8
	
fundo_5_parte_2_init_tela_8:
	lui $8 0x1001
addi $8 $8 7252
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 5
fundo_5_parte_2_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_2_tela_8
	
fundo_5_parte_3_init_tela_8:
	lui $8 0x1001
addi $8 $8 7776
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 6
fundo_5_parte_3_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_3_tela_8
	
fundo_5_parte_4_init_tela_8:
	lui $8 0x1001
addi $8 $8 8304
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 11
fundo_5_parte_4_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_4_tela_8
	
fundo_5_parte_5_init_tela_8:
	lui $8 0x1001
addi $8 $8 8840
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 10
fundo_5_parte_5_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_5_tela_8
	
fundo_5_parte_6_init_tela_8:
	lui $8 0x1001
addi $8 $8 9364
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 11
fundo_5_parte_6_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_6_tela_8
	
fundo_5_parte_7_init_tela_8:
	lui $8 0x1001
addi $8 $8 9900
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 5
fundo_5_parte_7_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_7_tela_8
	
fundo_5_parte_8_init_tela_8:
	lui $8 0x1001
addi $8 $8 8960
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 2
fundo_5_parte_8_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_8_tela_8
	
fundo_5_parte_9_init_tela_8:
	lui $8 0x1001
addi $8 $8 8968
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 5
fundo_5_parte_9_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_9_tela_8
	
fundo_5_parte_10_init_tela_8:
	lui $8 0x1001
addi $8 $8 8456
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 7
fundo_5_parte_10_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_10_tela_8
	
fundo_5_parte_11_init_tela_8:
	lui $8 0x1001
addi $8 $8 7952
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 11
fundo_5_parte_11_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_11_tela_8
	
fundo_5_parte_12_init_tela_8:
	lui $8 0x1001
addi $8 $8 7460
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 7
fundo_5_parte_12_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_12_tela_8
	
fundo_5_parte_13_init_tela_8:
	lui $8 0x1001
addi $8 $8 6964
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 4
fundo_5_parte_13_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_13_tela_8
	
fundo_5_parte_14_init_tela_8:
	lui $8 0x1001
addi $8 $8 6456
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 3
fundo_5_parte_14_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_14_tela_8
	
fundo_5_parte_15_init_tela_8:
	lui $8 0x1001
addi $8 $8 5952
addi $8 $8 32768
	li $20 0x0cc4ec
	li $9 2
fundo_5_parte_15_tela_8:

	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_5_parte_15_tela_8
	
fundo_6_parte_1_init_tela_8:
	lui $8 0x1001
addi $8 $8 8592
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_1_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_1_tela_8
	
fundo_6_parte_2_init_tela_8:
	lui $8 0x1001
addi $8 $8 8608
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_2_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_2_tela_8
	
	addi $8 $8 -16
	
	sw $20 1024($8)
	sw $20 1536($8)
	
fundo_6_parte_3_init_tela_8:
	lui $8 0x1001
addi $8 $8 8624
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 8
fundo_6_parte_3_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_3_tela_8
	
fundo_6_parte_4_init_tela_8:
	lui $8 0x1001
addi $8 $8 8656
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_4_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_4_tela_8
	
	addi $8 $8 -16
	
	sw $12 4($8)
	sw $12 516($8)
	sw $12 524($8)
	
fundo_6_parte_5_init_tela_8:
	lui $8 0x1001
addi $8 $8 8672
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_5_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_5_tela_8
	
	sw $12 -8($8)
	sw $12 -4($8)
	sw $11 1532($8)
	
fundo_6_parte_6_init_tela_8:
	lui $8 0x1001
addi $8 $8 6544
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_6_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_6_tela_8
	
	sw $12 -8($8)
	sw $12 1016($8)
	
fundo_6_parte_7_init_tela_8:
	lui $8 0x1001
addi $8 $8 6560
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_7_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_7_tela_8
	
	sw $12 -12($8)
	sw $12 1012($8)
	
fundo_6_parte_8_init_tela_8:
	lui $8 0x1001
addi $8 $8 6576
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 8
fundo_6_parte_8_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_8_tela_8
	
	sw $20 -8($8)
	sw $20 -4($8)
	sw $20 504($8)
	sw $20 508($8)
	sw $20 1016($8)
	sw $20 1020($8)
	sw $20 1528($8)
	sw $20 1532($8)
	
fundo_6_parte_9_init_tela_8:
	lui $8 0x1001
addi $8 $8 6608
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_9_tela_8:

	sw $20 0($8)
	sw $12 4($8)
	sw $20 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_9_tela_8
	
fundo_6_parte_10_init_tela_8:
	lui $8 0x1001
addi $8 $8 6624
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_10_tela_8:

	sw $20 0($8)
	sw $20 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_10_tela_8
	
fundo_6_parte_11_init_tela_8:
	lui $8 0x1001
addi $8 $8 4496
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 8
fundo_6_parte_11_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_11_tela_8
	
fundo_6_parte_12_init_tela_8:
	lui $8 0x1001
addi $8 $8 4480
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_12_tela_8:

	sw $12 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_12_tela_8
	
	sw $20 -8($8)
	sw $20 -4($8)
	
fundo_6_parte_13_init_tela_8:
	lui $8 0x1001
addi $8 $8 4528
addi $8 $8 32768
	li $20 0x0cc4ec
	sw $20 -512($8)
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_13_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_13_tela_8
	
	sw $12 -8($8)
	sw $12 -4($8)
	sw $12 504($8)
	
fundo_6_parte_14_init_tela_8:
	lui $8 0x1001
addi $8 $8 2448
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 8
fundo_6_parte_14_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_14_tela_8
	
	sw $12 -4($8)
	sw $12 508($8)
	
	addi $8 $8 -32
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 512($8)
	sw $12 516($8)
	
fundo_6_parte_15_init_tela_8:
	lui $8 0x1001
addi $8 $8 412
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 3
fundo_6_parte_15_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_15_tela_8
	
	sw $20 504($8)
	
fundo_6_parte_16_init_tela_8:
	lui $8 0x1001
addi $8 $8 4544
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_16_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_16_tela_8
	
	addi $8 $8 -16
	
	sw $20 -504($8)
	sw $12 0($8)
	sw $12 1536($8)
	sw $12 1540($8)
	
fundo_6_parte_17_init_tela_8:
	lui $8 0x1001
addi $8 $8 4560
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_17_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_17_tela_8
	
fundo_6_parte_18_init_tela_8:
	lui $8 0x1001
addi $8 $8 4576
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_18_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_18_tela_8
	
	sw $20 -524($8)
	sw $20 -520($8)
	sw $12 1528($8)
	sw $12 1532($8)
	
fundo_6_parte_19_init_tela_8:
	lui $8 0x1001
addi $8 $8 2512
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_19_tela_8:

	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_19_tela_8
	
	sw $20 512($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 -16
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	
fundo_6_parte_20_init_tela_8:
	lui $8 0x1001
addi $8 $8 464
addi $8 $8 32768
	li $20 0x0cc4ec
	li $11 0x045454
	li $12 0x20d8ff
	li $9 4
fundo_6_parte_20_tela_8:

	sw $12 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	bne $9 $0 fundo_6_parte_20_tela_8
	
	addi $8 $8 -16
	
	sw $20 8($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 1028($8)
	sw $20 1032($8)
	
mastro_init_mapa_8:
	li $20, 0xb4f42c
	lui $8, 0x1001
	addi $8, $8, 10112
	addi $8 $8 32768
	li $9, 33
	
mastro_mapa_8:
	beq $9, $0, bola_init_mapa_8
	sw $20, 0($8)
	addi $8, $8, 512
	addi $9, $9, -1
	j mastro_mapa_8
	
bola_init_mapa_8:
	li $20, 0x00b000
	lui $8, 0x1001
	addi $8, $8, 7548
	addi $8 $8 32768
	li $9, 3
bola_mapa_8:
	beq $9, $0, fim_mapa_8
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
	j bola_mapa_8

fim_mapa_8:
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $14 0($29)
	addi $29 $29 4  
	lw $13 0($29)
	addi $29 $29 4  
	lw $12 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4  
	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
#================================================
# - funcao para desenhar a tela de morte

desenhar_mapa_morte:
	sw $31, 0($29)
       	addi $29, $29, -4
       	sw $8, 0($29)
       	addi $29, $29, -4
       	sw $9, 0($29)
       	addi $29, $29, -4
       	sw $20, 0($29)
       	addi $29, $29, -4
	li $20, 0x000020
	lui $8, 0x1001
	li $9, 8192
	
GameOver_screen:
	beqz $9 Game_word_init
	sw $20, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j GameOver_screen
	
Game_word_init:
	li $20, 0xffffff
	lui $8, 0x1001
	addi $8, $8, 7280
	li $9, 2
Game_word:
	beqz $9 D_Game_word
	
	#G
	sw $20, 0($8)
	sw $20, 8($8)
	sw $20, 12($8)
	sw $20, 508($8)
	sw $20, 1016($8)
	sw $20, 1528($8)
	sw $20, 1548($8)
	sw $20, 1544($8)
	sw $20, 2040($8)
	sw $20, 2556($8)
	sw $20, 3072($8)
	sw $20, 3080($8)
	sw $20, 3084($8)
	sw $20, 2572($8)
	sw $20, 2060($8)
	#A
	sw $20, 36($8)
	sw $20, 40($8)
	sw $20, 544($8)
	sw $20, 556($8)
	sw $20, 1052($8)
	sw $20, 1072($8)
	sw $20, 1584($8)
	sw $20, 2096($8)
	sw $20, 2092($8)
	sw $20, 1564($8)
	sw $20, 2080($8)
	sw $20, 2084($8)
	sw $20, 2076($8)
	sw $20, 2588($8)
	sw $20, 2608($8)
	sw $20, 3100($8)
	sw $20, 3120($8)
	#M
	sw $20, 64($8)
	sw $20, 576($8)
	sw $20, 1088($8)
	sw $20, 1600($8)
	sw $20, 2112($8)
	sw $20, 2624($8)
	sw $20, 3136($8)
	
	sw $20, 596($8)   
	sw $20, 84($8)    
	sw $20, 1108($8)  
	sw $20, 1620($8)  
	sw $20, 2132($8)  
	sw $20, 2644($8) 
	sw $20, 3156($8) 
	
	sw $20, 580($8)
	sw $20, 592($8)
	sw $20, 1096($8)
	sw $20, 1100($8)
	
	#E
	sw $20, 100($8)
	sw $20, 108($8)
	sw $20, 116($8)
	sw $20, 120($8)
	sw $20, 612($8)
	sw $20, 1124($8)
	sw $20, 1636($8)
	sw $20, 1644($8)
	sw $20, 1652($8)
	sw $20, 2148($8)
	sw $20, 2660($8)
	sw $20, 3172($8)
	sw $20, 3180($8)
	sw $20, 3188($8)
	sw $20, 3192($8)
	
	
	addi $8, $8, 4
	addi $9, $9, -1
	j Game_word

D_Game_word:
	sw $20, 1604($8)

Over_word_init:
	lui $8, 0x1001
	addi $8, $8, 7440
	li $9, 2
Over_word:
	beqz $9	D_Over_word
	
	sw $20 0($8)
	sw $20 8($8)
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $20 2044($8)
	sw $20 2556($8)
	sw $20 524($8)
	sw $20, 1036($8)
	sw $20, 1548($8)
	sw $20, 2060($8)
	sw $20, 2572($8)

	sw $20 3072($8)
	sw $20 3080($8)	
	
	#V
	sw $20 28($8)
	sw $20 540($8)
	sw $20 1052($8)
	sw $20 1564($8)
	sw $20 1568($8)
	sw $20 1580($8)
	sw $20 48($8)
	sw $20, 560($8)
	sw $20, 1072($8)
	sw $20, 1584($8)
		
	sw $20, 2080($8)
	sw $20, 2088($8)
	sw $20, 2092($8)
	sw $20, 2596($8)
	sw $20, 2600($8)
	#E
	sw $20, 64($8)
	sw $20, 72($8)
	sw $20, 80($8)
	sw $20, 84($8)
	sw $20, 576($8)
	sw $20, 1088($8)
	sw $20, 1600($8)
	sw $20, 1608($8)
	sw $20, 1616($8)
	sw $20, 2112($8)
	sw $20, 2624($8)
	sw $20, 3136($8)
	sw $20, 3144($8)
	sw $20, 3152($8)
	sw $20, 3156($8)
	#R
	sw $20, 100($8)
	sw $20, 108($8)
	sw $20, 116($8)
	sw $20, 612($8)
	sw $20, 632($8)
	sw $20, 1124($8)
	sw $20, 1144($8)
	sw $20, 1636($8)
	sw $20, 1656($8)
	sw $20, 1652($8)
	sw $20, 2148($8)
	sw $20, 2156($8)
	sw $20, 2160($8)
	sw $20, 2660($8)
	sw $20, 2672($8)
	sw $20, 2676($8)
	sw $20, 3172($8)
	sw $20, 3192($8)
	sw $20, 3188($8)




	addi $8, $8, 4
	addi $9, $9, -1
	j Over_word

D_Over_word:
	sw $20, 3104($8)
	
press_word_init:
	lui $8, 0x1001
	addi $8, $8, 16048
	#P
	sw $20 0($8)
	sw $20 4($8)
	sw $20 8($8)
	sw $20 512($8)
	sw $20 524($8)
	sw $20 1024($8)
	sw $20 1028($8)
	sw $20 1032($8)
	sw $20 1036($8)
	sw $20 1536($8)
	sw $20 2048($8)
	#R
	sw $20, 20($8)
	sw $20, 24($8)
	sw $20, 28($8)
	sw $20, 532($8)
	sw $20, 544($8)
	sw $20, 1044($8)
	sw $20, 1048($8)
	sw $20, 1052($8)
	sw $20, 1056($8)
	sw $20, 1556($8)
	sw $20, 1564($8)
	sw $20, 2068($8)
	sw $20, 2080($8)
	#E
	sw $20, 40($8)
	sw $20, 44($8)
	sw $20, 48($8)	
	sw $20, 52($8)
	sw $20, 552($8)
	sw $20, 1064($8)
	sw $20, 1068($8)
	sw $20, 1072($8)
	sw $20, 1576($8)
	sw $20, 2088($8)
	sw $20, 2092($8)
	sw $20, 2096($8)
	sw $20, 2100($8)
	
	#s
	sw $20, 64($8)
	sw $20, 68($8)
	sw $20, 72($8)
	sw $20, 572($8)
	sw $20, 1088($8)
	sw $20, 1092($8)
	sw $20, 1096($8)
	sw $20, 1612($8)
	sw $20, 2112($8)
	sw $20, 2116($8)
	sw $20, 2120($8)
	
	sw $20, 88($8)
	sw $20, 92($8)
	sw $20, 96($8)
	sw $20, 596($8)
	sw $20, 1112($8)
	sw $20, 1116($8)
	sw $20, 1120($8)
	sw $20, 1636($8)
	sw $20, 2136($8)
	sw $20, 2140($8)
	sw $20, 2144($8)
	
	li $20, 0xffff00
	
	sw $20, 132($8)
	sw $20, 136($8)
	sw $20, 140($8)
	sw $20, 644($8)
	sw $20, 656($8)
	sw $20, 1156($8)
	sw $20, 1160($8)
	sw $20, 1164($8)
	sw $20, 1168($8)
	sw $20, 1668($8)
	sw $20, 1676($8)
	sw $20, 2180($8)
	sw $20, 2192($8)
fim_laco_desenhar_mapa_morte:
	addi $29, $29, 4                                                    
       	lw $20, 0($29)
       	addi $29, $29, 4                                                    
       	lw $9, 0($29)
       	addi $29, $29, 4                                                    
       	lw $8, 0($29)
       	addi $29, $29, 4                                                    
       	lw $31, 0($29)
	jr $31
	
#================================================
# - funcao para apagar o fundo do personagem
apagar_fundo:
	sw $31, 0($29)
       	addi $29, $29, -4
       	sw $8, 0($29)
       	addi $29, $29, -4
       	sw $9, 0($29)
       	addi $29, $29, -4
       	sw $10, 0($29)
       	addi $29, $29, -4
       	sw $11, 0($29)
       	addi $29, $29, -4
       	sw $12, 0($29)
       	addi $29, $29, -4
       	sw $13, 0($29)
       	addi $29, $29, -4

	add $8 $4 $0
	add $10 $0 $5
lacoP1:
	beq $10 $0 fimp1
	add $11 $0 $5
lacoP2:
	beq $11 $0 fimp2

	lw $13 0($8)
	jal pintar
	addi $8 $8 4
	addi $11 $11 -1
	j lacoP2
fimp2:
	addi $13 $0 4
	mul $13 $13 $5
	sub $8 $8 $13
	addi $8 $8 512
	addi $10 $10 -1
	j lacoP1
fimp1:
	addi $29, $29, 4                                                    
       	lw $13, 0($29)
       	addi $29, $29, 4                                                    
       	lw $12, 0($29)
       	addi $29, $29, 4                                                    
       	lw $11, 0($29)
       	addi $29, $29, 4                                                    
       	lw $10, 0($29)
       	addi $29, $29, 4                                                    
       	lw $9, 0($29)
       	addi $29, $29, 4                                                    
       	lw $8, 0($29)
       	addi $29, $29, 4                                                    
       	lw $31, 0($29)
	jr $31
	
#================================================
# - funcao para trocar a cor pelo fundo do cenario

pintar:
	sw $31, 0($29)
       	addi $29, $29, -4
       	sw $9, 0($29)
       	addi $29, $29, -4
       	sw $12, 0($29)
       	addi $29, $29, -4
       	sw $13, 0($29)
       	
	ori $9 $0 0x0ec7db
	beq $9 $13 pint	
		
	lw $13, 0($29)
       	addi $29, $29, 4                                                    
       	lw $12, 0($29)
       	addi $29, $29, 4                                                    
       	lw $9, 0($29)
       	addi $29, $29, 4                                                    
       	lw $31, 0($29)
	jr $31		
pint:
	lw $12 131072($8)
	sw $12 65536($8)
	sw $12 0($8)
	
	lw $13, 0($29)
       	addi $29, $29, 4                                                    
       	lw $12, 0($29)
       	addi $29, $29, 4                                                    
       	lw $9, 0($29)
       	addi $29, $29, 4                                                    
       	lw $31, 0($29)
	jr $31	
	
#================================================
# - funcao para desenhar personagem
# - registrador de entrada: -
# - registrador de saida: $2

desenhar_personagem_direita:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 8
laco_personagem_direita_1:
	beq $10 $0 fim_laco_personagem_direita_1
	addi $11 $0 8
laco_personagem_direita_2:
	beq $11 $0 fim_laco_personagem_direita_2
	
	sw $9 0($8)
	
	addi $8 $8 4
	addi $11 $11 -1
	j laco_personagem_direita_2
fim_laco_personagem_direita_2:
	addi $8 $8 -32
	addi $8 $8 512
	addi $10 $10 -1
	j laco_personagem_direita_1
fim_laco_personagem_direita_1:
	add $8 $4 $0
	li $9, 3
	li $20, 0xfdff0e
	li $10, 0xb64aae
	
	
roupa:
	beq $9, $0, detalhe_roupaI
	
	sw $20 12($8)
	sw $20 524($8)
	sw $20 532($8)
	
	sw $20 2564($8)
	
	sw $10 2572($8)
	sw $10 3080($8)
	sw $10 3088($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j roupa
	
detalhe_roupaI:
	subi $8, $8, 12
	li $9, 0xfcfcfc
	li $20, 0xffffff
	li $10, 0x247C39
detalhe_roupa:
	sw $20, 24($8)
	sw $20, 3072($8)
	sw $20, 3100($8)
	
	sw $9, 2572($8)
	sw $9, 2584($8)
	
	sw $10, 3592($8)
	sw $10, 3608($8)
cabeca_init:

	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeca:
	beq $9, $0 plc_player
		
	sw $20, 12($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeca
plc_player:
	beq $10, $0 detalhe_cabeca
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeca
detalhe_cabeca:
	subi $8, $8, 1044
	li $9, 0x784936
	li $10, 0x000001
	li $20, 0xf474a6
	
	sw $9 12($8)
	sw $9 524($8)
	sw $9 1040($8)
	sw $9 536($8)
	sw $9 540($8)
	sw $9 20($8)
	
	sw $10 24($8)
	sw $20 544($8)
	j fim_personagem_direita
	
fim_personagem_direita:

	addi $5 $0 8
	jal apagar_fundo
	
	addi $29 $29 4                                                    
       	lw $20 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
      	jr $31
      	
#===================================================
# - funcao para desehnar o personagem virado para a esquerda

desenhar_personagem_esquerda:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 8
laco_personagem_esquerda_1:
	beq $10 $0 fim_laco_personagem_esquerda_1
	addi $11 $0 8
laco_personagem_esquerda_2:
	beq $11 $0 fim_laco_personagem_esquerda_2
	
	sw $9 0($8)
	
	addi $8 $8 4
	addi $11 $11 -1
	j laco_personagem_esquerda_2
fim_laco_personagem_esquerda_2:
	addi $8 $8 -32
	addi $8 $8 512
	addi $10 $10 -1
	j laco_personagem_esquerda_1
fim_laco_personagem_esquerda_1:
	add $8 $4 $0
	li $9, 3
	li $20, 0xfdff0e
	li $10, 0xb64aae
	
	
roupa_personagem_esquerda:
	beq $9, $0, detalhe_roupaI_personagem_esquerda
	
	sw $20 8($8)
	sw $20 512($8)
	sw $20 520($8)
	
	sw $20 2576($8)
	
	sw $10 2564($8)
	sw $10 3076($8)
	sw $10 3084($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j roupa_personagem_esquerda
	
detalhe_roupaI_personagem_esquerda:
	subi $8, $8, 12
	li $9, 0xfcfcfc
	li $20, 0xffffff
	li $10, 0x247C39
detalhe_roupa_personagem_esquerda:
	sw $20, 4($8)
	sw $20, 3100($8)
	sw $20, 3072($8)
	
	#botoes
	sw $9, 2564($8)
	sw $9, 2576($8)
	
	sw $10, 3588($8)
	sw $10, 3604($8)
cabeca_init_personagem_esquerda:

	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeca_personagem_esquerda:
	beq $9, $0 plc_player_personagem_esquerda
		
	sw $20, 4($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeca_personagem_esquerda
plc_player_personagem_esquerda:
	beq $10, $0 detalhe_cabeca_personagem_esquerda
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeca_personagem_esquerda
detalhe_cabeca_personagem_esquerda:
	subi $8, $8, 1044
	li $9, 0x784936
	li $10, 0x000001
	li $20, 0xf474a6
	#cabelo
	sw $9 24($8)
	sw $9 536($8)
	sw $9 1044($8)
	sw $9 16($8)
	#bigas
	sw $9 520($8)
	sw $9 524($8)
	
	# olho e nariz
	sw $10 12($8)
	sw $20 516($8)
	j fim_personagem_esquerda
	
fim_personagem_esquerda:
	addi $5 $0 8
	jal apagar_fundo

	addi $29 $29 4                                                    
       	lw $20 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
      	jr $31
      	
#===================================================
# - funcao para desenhar o personagem pulando para a direita

desenhar_personagem_pulando_direita:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 8
laco_personagem_pulando_direita_1:
	beq $10 $0 fim_laco_personagem_pulando_direita_1
	addi $11 $0 8
laco_personagem_pulando_direita_2:
	beq $11 $0 fim_laco_personagem_pulando_direita_2
	
	sw $9 0($8)
	
	addi $8 $8 4
	addi $11 $11 -1
	j laco_personagem_pulando_direita_2
fim_laco_personagem_pulando_direita_2:
	addi $8 $8 -32
	addi $8 $8 512
	addi $10 $10 -1
	j laco_personagem_pulando_direita_1
fim_laco_personagem_pulando_direita_1:
	
	add $8 $4 $0
	li $9, 2
	li $20, 0xfdff0e #amarelo
	li $10, 0x9A3894 #roxo claro
	li $11, 0x592559 #roxo escuro
roupa_pulando_direita:
	beq $9, $0, sapatos_pulando_direita
	sw $20, 2056($8)
	sw $10, 2568($8)
	sw $10, 2572($8)
	sw $10, 2576($8)
	sw $10, 2580($8)
	sw $11, 2584($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j roupa_pulando_direita
	
sapatos_pulando_direita:
	addi $8, $8, 4
	li $20, 0x2b7741 #verde  claro
	li $10, 0x225028 #verde escuro
	
	sw $20, 2048($8)

	sw $10, 2580($8)
	
chapeu_init_pulando_direita:
	subi $8, $8, 3584
	
	li $9, 3
	li $20, 0xfdff0e

	
	
chapeu_pulando_direita:
	beq $9, $0, detalhe_roupaI_pulando_direita
	
	sw $20 2568($8)
	sw $20 3080($8)
	sw $20 3088($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j chapeu_pulando_direita
	
detalhe_roupaI_pulando_direita:
	subi $8, $8, 12
	li $9, 0xe0e0f0
	li $20, 0xffffff
	li $11, 0xfdff0e #amarelo
detalhe_roupa_pulando_direita:
	sw $11, 4608($8)
	sw $20, 2580($8)
	sw $9, 5128($8)
	sw $9, 5140($8)
	sw $20, 5116($8)
	sw $20, 5144($8)
	
	

cabeca_init_pulando_direita:

	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeca_pulando_direita:
	beq $9, $0 plc_player_pulando_direita
		
	sw $20, 2568($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeca_pulando_direita
plc_player_pulando_direita:
	beq $10, $0 detalhe_cabeca_pulando_direita
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeca_pulando_direita
detalhe_cabeca_pulando_direita:
	subi $8, $8, 1044
	li $9, 0x784936
	li $10, 0x000001
	li $20, 0xf474a6
	
	sw $9 2568($8)
	sw $9 3080($8)
	sw $9 3596($8)
	sw $9 3092($8)
	sw $9 3096($8)
	sw $9 2576($8)
	
	sw $10 2580($8)
	sw $20 3100($8)
	j fim_pulando_direita
	
fim_pulando_direita:
	addi $5 $0 8
	jal apagar_fundo

	addi $29 $29 4                                                    
       	lw $20 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para desenhar o personagem pulando para a esquerda
desenhar_personagem_pulando_esquerda:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 8
laco_personagem_pulando_esquerda_1:
	beq $10 $0 fim_laco_personagem_pulando_esquerda_1
	addi $11 $0 8
laco_personagem_pulando_esquerda_2:
	beq $11 $0 fim_laco_personagem_pulando_esquerda_2
	
	sw $9 0($8)
	
	addi $8 $8 4
	addi $11 $11 -1
	j laco_personagem_pulando_esquerda_2
fim_laco_personagem_pulando_esquerda_2:
	addi $8 $8 -32
	addi $8 $8 512
	addi $10 $10 -1
	j laco_personagem_pulando_esquerda_1
fim_laco_personagem_pulando_esquerda_1:
	
	add $8 $4 $0
	li $9, 2
	li $20, 0xfdff0e #amarelo
	li $10, 0x9A3894 #roxo claro
	li $11, 0x592559 #roxo escuro
roupa_pulando_esquerda:
	beq $9, $0, sapatos_pulando_esquerda
	sw $11, 2564($8)
	sw $10, 2568($8)
	sw $10, 2572($8)
	sw $10, 2576($8)
	sw $10, 2580($8)
	sw $20, 2068($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j roupa_pulando_esquerda
	
sapatos_pulando_esquerda:
	addi $8, $8, 4
	li $20, 0x2b7741 #verde  claro
	li $10, 0x225028 #verde escuro
	
	sw $10, 2560($8)

	sw $20, 2068($8)
	
chapeu_init_pulando_esquerda:
	subi $8, $8, 3584
	
	li $9, 3
	li $20, 0xfdff0e

	
	
chapeu_pulando_esquerda:
	beq $9, $0, detalhe_roupaI_pulando_esquerda
	
	sw $20 2564($8)
	sw $20 3068($8)
	sw $20 3076($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j chapeu_pulando_esquerda
	
detalhe_roupaI_pulando_esquerda:
	subi $8, $8, 12
	li $9, 0xe0e0f0
	li $20, 0xffffff
	li $10, 0xfdff0e #amarelo
detalhe_roupa_pulando_esquerda:
	sw $20, 2560($8)
	sw $20, 5144($8)
	sw $9, 5132($8)
	sw $9, 5120($8)
	sw $10, 4628($8)
	sw $20, 5116($8)
	
	

cabeca_init_pulando_esquerda:

	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeca_pulando_esquerda:
	beq $9, $0 plc_player_pulando_esquerda
		
	sw $20, 2560($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeca_pulando_esquerda
plc_player_pulando_esquerda:
	beq $10, $0 detalhe_cabeca_pulando_esquerda
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeca_pulando_esquerda
detalhe_cabeca_pulando_esquerda:
	subi $8, $8, 1044
	li $9, 0x784936
	li $10, 0x000001
	li $20, 0xf474a6
	#cabelo
	sw $9 2580($8)
	sw $9 3092($8)
	sw $9 3600($8)
	sw $9 2572($8)
	#bigas
	sw $9 3076($8)
	sw $9 3080($8)
	
	# olho e nariz
	sw $10 2568($8)
	sw $20 3072($8)
	j fim_pulando_esquerda
	
fim_pulando_esquerda:
	addi $5 $0 8
	jal apagar_fundo

	addi $29 $29 4                                                    
       	lw $20 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para desenhar o personagem morrendo

desenhar_personagem_morrendo:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 8
laco_personagem_morrendo_1:
	beq $10 $0 fim_laco_personagem_morrendo_1
	addi $11 $0 8
laco_personagem_morrendo_2:
	beq $11 $0 fim_laco_personagem_morrendo_2
	
	sw $9 0($8)
	
	addi $8 $8 4
	addi $11 $11 -1
	j laco_personagem_morrendo_2
fim_laco_personagem_morrendo_2:
	addi $8 $8 -32
	addi $8 $8 512
	addi $10 $10 -1
	j laco_personagem_morrendo_1
fim_laco_personagem_morrendo_1:
	
	add $8 $4 $0
	addi $8 $8 2052
	li $20, 0xffd7a4
	li $9, 6
	li $10, 2
cabeca_kill:
	beqz $9 plck
	
	sw $20, -512($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j cabeca_kill
	
plck:
	beqz $10 linhas_kill_init
	subi $10, $10 1
	addi $8, $8, 488
	li $9, 6
	j cabeca_kill
	
linhas_kill_init:
	subi $8, $8, 2580
	li $9, 2
	li $10, 0x000001
	li $11, 0x9a3894 
	li $12, 0xfdff0e
	li $21, 0xaa7722
	li $20, 0xf474a6
linhas_kill:
	beqz $9 detalhes_kill
	
	sw $12 0($8)
	sw $12 8($8)
	sw $12 508($8)
	sw $12 516($8)
	sw $12 524($8)
	
	sw $21 1532($8)
	sw $20 1540($8)
	sw $21 1548($8)
	
	sw $12 2572($8)
	sw $12 2556($8)
	sw $11 2564($8)
	sw $11 3076($8)
	sw $11 3068($8)
	sw $11 3084($8)

	addi $8, $8 4
	addi $9, $9 -1
	j linhas_kill
detalhes_kill:
	subi $8, $8, 4
	li $9, 0x2b7741 
	li $10, 0x000001
	li $11, 0xffffff
	
	sw $10, 1020($8)
	sw $10, 1032($8)
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 2036($8)
	sw $11 2064($8)
	sw $11 2556($8)
	sw $11 2568($8)
	
	sw $9 3088($8)
	sw $9 3060($8)
fim_personagem_morrendo:
	addi $5 $0 8
	jal apagar_fundo

	addi $29 $29 4                                                    
       	lw $20 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para desenhar o personagem grande para a direita

desenhar_personagem_grande_direita:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	sw $22 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 16
laco_personagem_grande_direita_1:
	beq $10 $0 fim_laco_personagem_grande_direita_1
	addi $11 $0 16
laco_personagem_grande_direita_2:
	beq $11 $0 fim_laco_personagem_grande_direita_2

	sw $9 0($8)

	addi $8 $8 4
	addi $11 $11 -1
	j laco_personagem_grande_direita_2
fim_laco_personagem_grande_direita_2:
	addi $8 $8 -64
	addi $8 $8 512
	addi $10 $10 -1
	j laco_personagem_grande_direita_1
fim_laco_personagem_grande_direita_1:
	addi $8 $8 -7656
	li $20, 0xfdff0e
	li $9, 5

amarelosr:
	beq $9, $0, cabecagr_init
	#chapeu
	sw $20, 0($8)
	sw $20, 508($8)
	sw $20, 524($8)
	
	#manga
	sw $20, 4088($8)
	sw $20,	4600($8)
	sw $20, 5112($8)
	
	#roupa
	sw $20, 4104($8)
	sw $20, 4620($8)
	
	
	addi $8, $8, 4
	addi $9, $9 -1
	j amarelosr
cabecagr_init:
	addi $8, $8, 1000
	li $20, 0xffd7a4
	li $9, 7
	li $10, 5
cabecagr:
	beqz $9 plcpr
	
	sw $20, 0($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabecagr
	
plcpr:
	beqz $10 detalhesCabecagri
	addi $8, $8, 484
	subi $10, $10, 1
	li $9, 7
	j cabecagr
	
detalhesCabecagri:
	subi $8, $8, 2588
	li $9, 2
	li $10, 0x784936 # marrom
	li $11, 0xf474a6 # rosa
	li $20, 0xffd7a4
	li $22 0x000001
detalhesCabecagr:
	beqz $9 bigasR_init
	
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 516($8)
	sw $10, 520($8)
	
	sw $11, 536($8)
	sw $11, 540($8)
	sw $11, 544($8)
	sw $11, 1052($8)
	sw $11, 1056($8)
	
	sw $22, 16($8)
	
	sw $20, 508($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j detalhesCabecagr
	
bigasR_init:
	addi $8, $8 512
	li $20, 0x000001
	li $10, 0xffffff
	li $9, 3
bigasR:
	beqz $9 macacaoR_init
	
	sw $20, 12($8)
	sw $20, 16($8)
	sw $10, 528($8)
	addi $8, $8 4
	addi $9, $9 -1
	j bigasR

macacaoR_init:
	addi $8, $8, 1528
	li $20, 0x9a3894 
	li $9, 3
macacao_e_luvaR:
	beqz $9 sapatospgr_init
	
	sw $20, 8($8)
	sw $20, 524($8)
	sw $20, 1040($8)
	sw $20, 1032($8)
	sw $20, 1540($8)
	sw $20, 1536($8)
	sw $20, 1532($8)
	sw $20, 1044($8)
	sw $20, 1048($8)
	sw $20, 1052($8)
	sw $20, 1036($8)
	sw $20, 1548($8)
	
	sw $10, 1056($8) #luva direita
	sw $10, 500($8)
	sw $10, 496($8)
	sw $10, 1012($8)
	sw $10, 1016($8)
	addi $8, $8, 512
	addi $9, $9, -1
	j macacao_e_luvaR

sapatospgr_init:
	addi $8, $8, 516
	li $9, 3
	li $20, 0x2b7741
sapatospgR:
	beqz $9 bordash_init
	
	sw $20, 16($8)
	sw $20, 528($8)
	sw $20, 1036($8)
	
	sw $20, 496($8)
	sw $20, 1008($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j sapatospgR
bordash_init:
	subi $8, $8, 6672
	li $9, 2
	li $22 0x000001
bordash:
	beqz $9 bordasv_init
	
	sw $22, 0($8)
	sw $22, 8($8)
	sw $22, 16($8)
	sw $22, 536($8)
	
	sw $22, 1556($8)
	sw $22, 1560($8)
	
	sw $22, 3608($8)
	sw $22, 4088($8)
	sw $22, 4092($8)
	sw $22, 3064($8)
	
	sw $22, 6140($8)
	sw $22, 6644($8)
	sw $22, 7172($8)
	
	sw $22, 4592($8)
	

	addi $8, $8, 4
	addi $9, $9, -1
	j bordash
	
bordasv_init:
	li $9, 2
	li $22 0x000001
bordasv:
	beqz $9 detalhes_finais_player
	
	sw $22, 1008($8)
	sw $22, 2028($8)
	sw $22, 2072($8)
	sw $22, 2584($8)
	sw $22, 3600($8)
	sw $22, 3572($8)
	
	sw $22, 5092($8)#braço esquerda
	sw $22, 5660($8) #braço direita
	sw $22, 6680($8)# pe direito
	sw $22, 7144($8)# outro pe
	
	addi $8, $8, 512
	addi $9, $9, -1
	j bordasv

detalhes_finais_player:
	subi $8, $8 524
	li $20, 0xffffff
	li $21, 0x9a3894
	li $22 0x000001
	
	sw $22, 0($8)
	sw $20, 24($8)
	sw $22, 548($8)
	#macacao
	sw $21, 4104($8)
	sw $21, 4120($8)
	sw $21, 4636($8)
	
	sw $22, 4128($8)#pescoço frente
	sw $22, 4644($8)
	
	sw $22, 5128($8)

	sw $22, 6656($8)
	sw $22, 6676($8)
	sw $22, 6168($8)
	sw $22, 7184($8)
	sw $22, 7172($8)
	sw $22, 7200($8)
	
	sw $22, 5620($8)
	sw $20, 5648($8)
	sw $20, 5660($8)

fim_personagem_grande_direita:
	addi $5 $0 16
	jal apagar_fundo
	
	addi $29 $29 4  
	lw $22 0($29)
	addi $29 $29 4  
	lw $21 0($29)
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para desenhar o personagem grande virado para a esquerda

desenhar_personagem_grande_esquerda:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 16
laco_personagem_grande_esquerda_1:
	beq $10 $0 fim_laco_personagem_grande_esquerda_1
	addi $11 $0 16
laco_personagem_grande_esquerda_2:
	beq $11 $0 fim_laco_personagem_grande_esquerda_2

	sw $9 0($8)

	addi $8 $8 4
	addi $11 $11 -1
	j laco_personagem_grande_esquerda_2
fim_laco_personagem_grande_esquerda_2:
	addi $8 $8 -64
	addi $8 $8 512
	addi $10 $10 -1
	j laco_personagem_grande_esquerda_1
fim_laco_personagem_grande_esquerda_1:
	addi $8 $8 -7656
	li $20, 0xfdff0e
	li $9, 5

amarelosgl:
	beq $9, $0, cabecagl_init

	#chapeu
	sw $20, -4($8)
	sw $20, 496($8)
	sw $20, 512($8)
	
	#manga
	sw $20, 4080($8)
	sw $20,	4592($8)
	sw $20, 5132($8)
	
	#roupa
	sw $20, 4104($8)
	sw $20, 4616($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j amarelosgl
cabecagl_init:
	addi $8, $8, 1000
	li $20, 0xffd7a4
	li $9, 7
	li $10, 5
cabecagl:
	beqz $9 plcgl
	
	sw $20, -4($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabecagl
	
plcgl:
	beqz $10 detalhesCabecagli
	addi $8, $8, 484
	subi $10, $10, 1
	li $9, 7
	j cabecagl
	
detalhesCabecagli:
	subi $8, $8, 2588
	li $9, 2
	li $10, 0x784936 # marrom
	li $11, 0xf474a6 # rosa
	li $20, 0xffd7a4
	li $21, 0x000001
detalhesCabecagl:
	beqz $9 bigasgl_init
	
	sw $10, 20($8)
	sw $10, 16($8)
	sw $10, 528($8)
	sw $10, 524($8)
	
	sw $11, 500($8)
	sw $11, 504($8)
	sw $11, 508($8)
	sw $11, 1012($8)
	sw $11, 1016($8)
	
	
	
	sw $20, 536($8)
	
	sw $21, 4($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j detalhesCabecagl
	
bigasgl_init:
	addi $8, $8 512
	li $20, 0x000001
	li $10, 0xffffff
	li $9, 3
bigasgl:
	beqz $9 macacaogl_init
	sw $20, -4($8)
	sw $20, 0($8)
	sw $10, 508($8)
	addi $8, $8 4
	addi $9, $9 -1
	j bigasgl

macacaogl_init:
	addi $8, $8, 1528
	li $20, 0x9a3894 
	li $9, 3
macacao_e_luvagl:
	beqz $9 sapatospgl_init
	
	sw $20, 4($8)
	sw $20, 500($8)
	
	sw $20, 1008($8)
	sw $20, 1016($8)
	sw $20, 1020($8)
	sw $20, 1024($8)
	sw $20, 1028($8)
	sw $20, 1032($8)
	
	sw $20, 1548($8)
	sw $20, 1552($8)
	
	sw $20, 1536($8)
	sw $20, 1532($8)

	
	sw $10, 1004($8) #luva direita
	sw $10, 540($8)
	sw $10, 536($8)
	sw $10, 1044($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j macacao_e_luvagl

sapatospgl_init:
	addi $8, $8, 516
	li $9, 3
	li $20, 0x2b7741
sapatospgl:
	beqz $9 bordashgl_init
	
	sw $20, -20($8)
	sw $20, 524($8)
	sw $20, 1036($8)
	
	sw $20, 492($8)
	sw $20, 1008($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j sapatospgl
bordashgl_init:
	subi $8, $8, 6672
	li $10, 0x000001
	li $9, 2
bordashgl:
	beqz $9 bordasvgl_init
	
	sw $10, -8($8)
	sw $10, 0($8)
	sw $10, 8($8)
	sw $10, 496($8)
	
	sw $10, 1520($8)
	sw $10, 1524($8)
	
	sw $10, 3088($8)
	
	sw $10, 3568($8) #abaixo do nariz
	sw $10, 4108($8) #pescoço
	sw $10, 4112($8)
	
	sw $10, 4632($8)#cima luva
	sw $10, 6156($8)#baixo braço
	sw $10, 6676($8)#pe direita
	sw $10, 7172($8)#pe exquerda

	

	addi $8, $8, 4
	addi $9, $9, -1
	j bordashgl
	
bordasvgl_init:
	li $9, 2
bordasvgl:
	beqz $9 detalhes_finais_playergl
	
	sw $10, 1036($8)#bone
	
	sw $10, 2064($8) #orelha
	sw $10, 2020($8)# nariz
	sw $10, 2532($8)#nariz tbm
	sw $10, 3592($8)#parte da orelha
	sw $10, 3564($8)# parte do nariz
	
	sw $10, 5144($8)#braço esquerda
	sw $10, 5600($8) #braço direita
	sw $10, 6628($8)# pe direito
	sw $10, 7188($8)# outro pe
	
	addi $8, $8, 512
	addi $9, $9, -1
	j bordasvgl

detalhes_finais_playergl:
	subi $8, $8 524
	li $20, 0xffffff
	li $21, 0x9a3894
	
	sw $10, 20($8)
	sw $20, -4($8)

	sw $10, 496($8)
	#macacao
	sw $21, 4092($8)
	sw $21, 4108($8)#direita
	sw $21, 4612($8)
	
	sw $20, 5636($8)#botoes
	sw $20, 5624($8)
	
	sw $10, 4084($8)#pescoço frente
	sw $10, 4592($8)
	
	sw $10, 5132($8)#braço
	sw $10, 5664($8)
	
	sw $10, 6656($8)
	sw $10, 6676($8)
	sw $10, 6140($8)
	
	sw $10, 7184($8)
	sw $10, 7172($8)
	sw $10, 7156($8)

fim_personagem_grande_esquerda:
	addi $5 $0 16
	jal apagar_fundo
	
	addi $29 $29 4  
	lw $21 0($29)
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para desenhar o personagem grande pulando para a direita

desenhar_personagem_grande_pulando_direita:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 16
laco_personagem_grande_pulando_direita_1:
	beq $10 $0 fim_laco_personagem_grande_pulando_direita_1
	addi $11 $0 16
laco_personagem_grande_pulando_direita_2:
	beq $11 $0 fim_laco_personagem_grande_pulando_direita_2

	sw $9 0($8)

	addi $8 $8 4
	addi $11 $11 -1
	j laco_personagem_grande_pulando_direita_2
fim_laco_personagem_grande_pulando_direita_2:
	addi $8 $8 -64
	addi $8 $8 512
	addi $10 $10 -1
	j laco_personagem_grande_pulando_direita_1
fim_laco_personagem_grande_pulando_direita_1:
	addi $8 $8 -7664
	li $20, 0xfdff0e
	li $9, 5

amarelosgjr:
	beq $9, $0, cabecagjr_init

	sw $20, 0($8)# chapeu
	sw $20, 512($8)
	sw $20, 524($8)
	
	sw $20, 1048($8)#braço
	sw $20, 1560($8)
	sw $20, 2072($8)
	sw $20, 3604($8)
	
	sw $20, 4092($8)#roupa
	sw $20, 4108($8)
	sw $20, 4608($8)
	sw $20, 4616($8)
	sw $20, 5124($8)
	sw $20, 5636($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j amarelosgjr
cabecagjr_init:
	addi $8, $8, 1004
	li $20, 0xffd7a4
	li $9, 7
	li $10, 5
cabecagjr:
	beqz $9 plcpgjr
	
	sw $20, 0($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabecagjr
	
plcpgjr:
	beqz $10 detalhesCabecagjri
	addi $8, $8, 484
	subi $10, $10, 1
	li $9, 7
	j cabecagjr
	
detalhesCabecagjri:
	subi $8, $8, 2592
	li $9, 2
	li $10, 0x784936 # marrom
	li $11, 0xf474a6 # rosa
	li $20, 0xffd7a4
	li $21, 0x000001
detalhesCabecagjr:
	beqz $9 bigasgjr_init
	
	sw $11 540($8)# nareba
	sw $11 544($8)
	sw $11 548($8)
	sw $11 1056($8)
	sw $11 1060($8)
	
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 520($8)
	sw $10, 524($8)
	
	sw $21, 20($8)#0lh0
	sw $20 512($8)#orelha
	
	addi $8, $8, 512
	addi $9, $9, -1
	j detalhesCabecagjr
	
bigasgjr_init:
	addi $8, $8 512
	li $20, 0x000001
	li $10, 0xffffff
	li $9, 3
bigasgjr:
	beqz $9 macacaogjr_init
	sw $20, 16($8)
	sw $20, 20($8)
	sw $10, 532($8)
	addi $8, $8 4
	addi $9, $9 -1
	j bigasgjr

macacaogjr_init:
	addi $8, $8, 1528
	li $20, 0x9a3894 
	li $9, 3
macacao_e_luvagjr:
	beqz $9 sapatosgjr_init

	sw $10 -4568($8)#luva direita
	sw $10 -4572($8)
	sw $10 -4576($8)
	
	sw $10 500($8)#luva esquerda
	sw $10 504($8)
	sw $10 508($8)
	
	sw $20 524($8)# alça
	sw $20 540($8)
	
	sw $20 1040($8)
	sw $20 1044($8)
	sw $20 1048($8)
	sw $20 1052($8)
	
	sw $20 1536($8)#regiao perna esquerda
	sw $20 1544($8)
	sw $20 1548($8)
	sw $20 1552($8)
	sw $20 2052($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j macacao_e_luvagjr

sapatosgjr_init:
	addi $8, $8, 516
	li $9, 3
	li $20, 0x2b7741
sapatosgjr:
	beqz $9 bordashgjr_init
	
	sw $20, -16($8)
	sw $20, 496($8)
	sw $20, 1008($8)
	
	
	sw $20, -996($8)
	sw $20, -484($8)
	sw $20, 28($8)
	sw $20, 540($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j sapatosgjr
bordashgjr_init:
	subi $8, $8, 6672
	li $10, 0x000001
	li $9, 2
bordashgjr:
	beqz $9 bordasvgjr_init
	
	sw $10, 4($8) #bone encima
	sw $10, 8($8)
	sw $10, 16($8)
	
	sw $10, 536($8) #cap

	sw $10, 32($8)#luva direita 
	sw $10, 36($8)
	
	sw $10, 1560($8)#cap embaixo
	sw $10, 1564($8)
	
	sw $10, 3612($8)#abaixo nariz
	
	sw $10, 3068($8)# pescoço
	sw $10, 4092($8)
	sw $10, 4096($8)
	
	sw $10, 5112($8)#braço esquerdo
	sw $10, 5108($8)
	
	sw $10, 5156($8)#pe direito
	sw $10, 5152($8)
	sw $10, 7712($8)
	
	sw $10, 7192($8)#barriga
	sw $10, 7188($8)
	sw $10, 7684($8)
	sw $10, 7692($8)

	addi $8, $8, 4
	addi $9, $9, -1
	j bordashgjr
	
bordasvgjr_init:
	li $9, 2
bordasvgjr:
	beqz $9 detalhes_finais_playergjr
	
	sw $10, 1012($8)#cabeça atras
	sw $10, 2032($8)
	
	sw $10, 548($8)#luva direita
	sw $10, 1048($8)
	
	sw $10, 1568($8) #braço direito
	sw $10, 2080($8)
	sw $10, 3100($8)
	sw $10, 3612($8)
	sw $10, 3604($8)

	sw $10, 3576($8)#pescoço
	
	sw $10, 4592($8)# breaço esquerdo

	sw $10, 5608($8)#luva esquerda
	sw $10, 5624($8)
	
	sw $10, 5668($8)# pe direito
	sw $10, 6688($8)
	sw $10, 4632($8)
	sw $10, 5144($8)
	
	sw $10, 7144($8)# esquerdo
	
	addi $8, $8, 512
	addi $9, $9, -1
	j bordasvgjr

detalhes_finais_playergjr:
	subi $8, $8 524
	li $20, 0xffffff
	li $21, 0x9a3894
	
	sw $10, 4($8)
 	sw $20, 24($8)
	sw $10, 548($8)
	#macacao
	sw $21, 4108($8)
	sw $21, 4124($8)
	sw $20, 5140($8)
	sw $20, 5152($8)

	sw $10, 6136($8)
	sw $10, 6144($8)
	sw $10, 6660($8)
	sw $10, 7168($8)

fim_personagem_grande_pulando_direita:
	addi $5 $0 16
	jal apagar_fundo
	
	addi $29 $29 4  
	lw $21 0($29)
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para desenhar o personagem grande pulando para a esquerda

desenhar_personagem_grande_pulando_esquerda:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 16
laco_personagem_grande_pulando_esquerda_1:
	beq $10 $0 fim_laco_personagem_grande_pulando_esquerda_1
	addi $11 $0 16
laco_personagem_grande_pulando_esquerda_2:
	beq $11 $0 fim_laco_personagem_grande_pulando_esquerda_2

	sw $9 0($8)

	addi $8 $8 4
	addi $11 $11 -1
	j laco_personagem_grande_pulando_esquerda_2
fim_laco_personagem_grande_pulando_esquerda_2:
	addi $8 $8 -64
	addi $8 $8 512
	addi $10 $10 -1
	j laco_personagem_grande_pulando_esquerda_1
fim_laco_personagem_grande_pulando_esquerda_1:
	addi $8 $4 16
	li $20, 0xfdff0e
	li $9, 5

amarelosgjr_pulando_esquerda:
	beq $9, $0, cabecagjr_init_pulando_esquerda

	sw $20, 8($8)
	sw $20, 512($8)
	sw $20, 528($8)
	
	sw $20, 1016($8)
	sw $20, 2040($8)
	sw $20, 1524($8)
	
	sw $20 3576($8)
	sw $20 4096($8)
	sw $20 4112($8)
	sw $20 4608($8)
	sw $20 4620($8)
	sw $20 5128($8)
	sw $20 5640($8)
	
	
	addi $8, $8, 4
	addi $9, $9 -1
	j amarelosgjr_pulando_esquerda
cabecagjr_init_pulando_esquerda:
	addi $8, $8, 1004
	li $20, 0xffd7a4
	li $9, 7
	li $10, 5
cabecagjr_pulando_esquerda:
	beqz $9 plcpgjr_pulando_esquerda
	
	sw $20, 4($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabecagjr_pulando_esquerda
	
plcpgjr_pulando_esquerda:
	beqz $10 detalhesCabecagjri_pulando_esquerda
	addi $8, $8, 484
	subi $10, $10, 1
	li $9, 7
	j cabecagjr_pulando_esquerda
	
detalhesCabecagjri_pulando_esquerda:
	subi $8, $8, 2592
	li $9, 2
	li $10, 0x784936 # marrom
	li $11, 0xf474a6 # rosa
	li $20, 0xffd7a4
	li $21, 0x000001
detalhesCabecagjr_pulando_esquerda:
	beqz $9 bigasgjr_init_pulando_esquerda
	
	sw $21, 16($8)
	
	sw $11, 512($8)
	sw $11, 516($8)
	sw $11, 520($8)
	sw $11, 1024($8)
	sw $11, 1028($8)
	
	sw $20, 548($8)
	
	sw $10, 28($8)
	sw $10, 32($8)
	sw $10, 536($8)
	sw $10, 540($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j detalhesCabecagjr_pulando_esquerda
	
bigasgjr_init_pulando_esquerda:
	addi $8, $8 512
	li $20, 0x000001
	li $10, 0xffffff
	li $9, 3
bigasgjr_pulando_esquerda:
	beqz $9 macacaogjr_init_pulando_esquerda
	sw $20, 8($8)
	sw $20, 12($8)
	sw $10, 520($8)
	
	addi $8, $8 4
	addi $9, $9 -1
	j bigasgjr_pulando_esquerda

macacaogjr_init_pulando_esquerda:
	addi $8, $8, 1528
	li $20, 0x9a3894 
	li $9, 3
macacao_e_luvagjr_pulando_esquerda:
	beqz $9 sapatosgjr_init_pulando_esquerda

	sw $10, -4100($8)
	sw $10, -4104($8)
	sw $10, -4108($8)
	sw $10, 544($8)
	sw $10, 548($8)
	sw $10, 552($8)
	
	sw $20, 512($8)
	sw $20, 528($8)
	sw $20, 1024($8)
	sw $20, 1028($8)
	sw $20, 1032($8)
	sw $20, 1036($8)
	sw $20, 1548($8)
	sw $20, 1552($8)
	sw $20, 1556($8)
	sw $20, 2072($8)
	sw $20, 1564($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j macacao_e_luvagjr_pulando_esquerda

sapatosgjr_init_pulando_esquerda:
	addi $8, $8, 516
	li $9, 3
	li $20, 0x2b7741
sapatosgjr_pulando_esquerda:
	beqz $9 bordashgjr_init_pulando_esquerda
	
	sw $20, -1044($8)
	sw $20, -528($8)
	sw $20, -16($8)
	sw $20, 500($8)
	sw $20, 28($8)
	sw $20, 540($8)
	sw $20, 1052($8)
	

	addi $8, $8, 4
	addi $9, $9, -1
	j sapatosgjr_pulando_esquerda
bordashgjr_init_pulando_esquerda:
	subi $8, $8, 6672
	li $10, 0x000001
	li $9, 2
bordashgjr_pulando_esquerda:
	beqz $9 bordasvgjr_init_pulando_esquerda
	
	sw $10, 8($8) #bone encima
	sw $10, 12($8)
	sw $10, 20($8)
	
	sw $10, 512($8) #cap

	sw $10, -12($8)#luva direita 
	sw $10, -8($8)
	
	sw $10, 1536($8)#cap embaixo

	
	sw $10, 3580($8)#abaixo nariz
	
	sw $10, 3100($8)# pescoço
	sw $10, 4120($8)
	sw $10, 4124($8)
	
	sw $10, 5152($8)#braço esquerdo
	sw $10, 5156($8)
	
	sw $10, 5108($8)#pe direito
	sw $10, 7672($8)
	
	sw $10, 7172($8)#barriga
	sw $10, 7168($8)
	sw $10, 7692($8)
	sw $10, 7700($8)

	addi $8, $8, 4
	addi $9, $9, -1
	j bordashgjr_pulando_esquerda
	
bordasvgjr_init_pulando_esquerda:
	li $9, 2
bordasvgjr_pulando_esquerda:
	beqz $9 detalhes_finais_playergjr_pulando_esquerda
	
	sw $10, 1048($8)#cabeça atras
	sw $10, 2076($8)
	
	sw $10, 488($8)#luva esquerda
	sw $10, 1012($8)
	
	sw $10, 1516($8) #braço esquerdo
	sw $10, 2028($8)
	sw $10, 3056($8)
	sw $10, 3568($8)
	sw $10, 3576($8)

	sw $10, 3604($8)#pescoço
	
	sw $10, 4636($8)# breaço direito

	sw $10, 5608($8)#luva direita
	sw $10, 5652($8)
	
	sw $10, 5668($8)# pe direito
	sw $10, 6636($8)

	sw $10, 5108($8)
	sw $10, 4596($8)
	
	sw $10, 7204($8)# esquerdo
	
	addi $8, $8, 512
	addi $9, $9, -1
	j bordasvgjr_pulando_esquerda

detalhes_finais_playergjr_pulando_esquerda:
	subi $8, $8 524
	li $20, 0xffffff
	li $21, 0x9a3894
	
	sw $10, 32($8)
 	sw $20, 12($8)
	sw $10, 548($8)
	#macacao
	sw $21, 4104($8)
	sw $21, 4120($8)
	sw $20, 5136($8)
	sw $20, 5124($8)

	sw $10, 6188($8)
	sw $10, 6180($8)
	sw $10, 6688($8)
	sw $10, 7204($8)

fim_personagem_grande_pulando_esquerda:
	addi $5 $0 16
	jal apagar_fundo
	
	addi $29 $29 4  
	lw $21 0($29)
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# funcao para desenhar o cogumelo

desenhar_cogumelo:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 0x0ec7db
	
	addi $10 $0 7
laco_cogumelo_1:
	beq $10 $0 fim_laco_cogumelo_1
	addi $11 $0 7
laco_cogumelo_2:
	beq $11 $0 fim_laco_cogumelo_2
	
	sw $9 0($8)
	
	addi $8 $8 4
	addi $11 $11 -1
	j laco_cogumelo_2
fim_laco_cogumelo_2:
	addi $8 $8 -28
	addi $8 $8 512
	addi $10 $10 -1
	j laco_cogumelo_1
fim_laco_cogumelo_1:
	add $8 $4 $0
	li $9, 5
	li $20, 0xffa237

cabeca_cogumelo:
	beq $9, $0, manchas_coguI
	sw $20, 4($8)
	sw $20, 512($8)
	sw $20, 520($8)
	sw $20, 1024($8)
	sw $20, 1032($8)
	sw $20, 1536($8)
	sw $20, 1544($8)
	sw $20, 2048($8)
	sw $20, 2056($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabeca_cogumelo
manchas_coguI:
	subi $8, $8, 4
	subi $21 $21 4
	li $20, 0xff0000
	sw $20, 0($8)
	subi $8, $8, 8
	li $9, 2
manchas_cogumelo:
	beq $9, $0, base_coguI
	sw $20, 4($8)	
	sw $20, 8($8)
	sw $20, 1020($8)
	sw $20, 1016($8)	
	sw $20, 1040($8)
	
	addi $8, $8, 512
	addi $9, $9 -1
	j manchas_cogumelo	

base_coguI:
	addi $8, $8, 1532
	li $20, 0xffffff
	li $9, 3
base_cogumelo:
	beq $9, $0, fim_cogumelo
	
	sw $20, 4($8)
	sw $20, 516($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j base_cogumelo
fim_cogumelo:
	addi $5 $0 7
	jal apagar_fundo
	
	addi $8 $0 0xfbbe2e
	addi $9 $0 0xffffff
	add $10 $4 $0
	addi $11 $0 7
laco_trocar_pelo_fundo_1:
	beq $11 $0 fim_laco_trocar_pelo_fundo_1
	addi $12 $0 7
laco_trocar_pelo_fundo_2:
	beq $12 $0 fim_laco_trocar_pelo_fundo_2
	
	lw $13 65536($10)
	beq $13 $8 trocar
	beq $13 $9 trocar
	j continuacao_trocar

trocar:
	sw $13 0($10)
	j continuacao_trocar
continuacao_trocar:
	
	addi $10 $10 4
	addi $12 $12 -1
	j laco_trocar_pelo_fundo_2
fim_laco_trocar_pelo_fundo_2:
	addi $10 $10 -28
	addi $10 $10 512
	addi $11 $11 -1
	j laco_trocar_pelo_fundo_1
fim_laco_trocar_pelo_fundo_1:
	
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para desenhar o toad (o inimigo)

desenhar_toad:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	sw $22 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $22 $8 65536
	addi $9 $0 0x0ec7db
	
	addi $10 $0 8
laco_toad_1:
	beq $10 $0 fim_laco_toad_1
	addi $11 $0 8
laco_toad_2:
	beq $11 $0 fim_laco_toad_2
	
	sw $9 0($8)
	sw $9 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $11 $11 -1
	j laco_toad_2
fim_laco_toad_2:
	addi $8 $8 -32
	addi $22 $22 -32
	addi $8 $8 512
	addi $22 $22 512
	addi $10 $10 -1
	j laco_toad_1
fim_laco_toad_1:
	add $8 $4 $0
	addi $8 $8 512
	addi $22 $8 65536
	li $9 7
	li $10 3
	li $20, 0xfffffe
	
cabeca_toad:
	beqz $9 plc_toad
	
	sw $20, 0($8)
	sw $20, 0($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9 -1
	j cabeca_toad
	
plc_toad:
	beqz $10 detalhes_cabeca_toad_init
	subi $10, $10, 1
	addi $8, $8, 484
	addi $22 $22 484
	li $9, 7
	j cabeca_toad

detalhes_cabeca_toad_init:
	addi $8, $8 -2072
	addi $22 $22 -2072
	li $9 2
	li $20, 0xff0000
	li $21, 0xfffffe
	
detalhes_cabeca_toad:
	beqz $9 rosto_toad_init
	
	sw $21 0($8)
	sw $21 4($8)
	sw $21 0($22)
	sw $21 4($22)
	
	sw $20 8($8)
	sw $20 12($8)
	sw $20 16($8)
	sw $20 8($22)
	sw $20 12($22)
	sw $20 16($22)
	
	sw $20 1044($8)
	sw $20 1044($22)
	
	sw $20 1020($8)
	sw $20 1024($8)
	sw $20 1020($22)
	sw $20 1024($22)

	addi $8, $8, 512
	addi $22 $22 512
	addi $9, $9 -1
	j detalhes_cabeca_toad
	
	
rosto_toad_init:
	addi $8, $8 516
	addi $22 $22 516
	li $9 3
	li $10 2
	li $20, 0xffd4a2
	
rosto_toad:
	beqz $9 plr_toad
	
	sw $20, 0($8)
	sw $20, 0($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9 -1
	j rosto_toad
	
plr_toad:
	beqz $10 roupas_toad_init
	subi $10, $10, 1
	addi $8, $8, 500
	addi $22 $22 500
	li $9, 3
	j rosto_toad
	
roupas_toad_init:
	addi $8, $8 -16
	addi $22 $22 -16
	li $9 2
	li $10, 0xfffffe
	li $20, 0x2025ff
	li $21, 0x924328

roupas_toad:
	beqz $9 detalhes_toad
	
	sw $20, 0($8)
	sw $20, 12($8)
	sw $20, 0($22)
	sw $20, 12($22)
	
	sw $10 512($8)
	sw $10 520($8)
	sw $10 524($8)
	sw $10 512($22)
	sw $10 520($22)
	sw $10 524($22)
	
	sw $21 1024($8)
	sw $21 1036($8)
	sw $21 1024($22)
	sw $21 1036($22)
		
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9 -1
	j roupas_toad
	
detalhes_toad:
	subi $8, $8, 1028
	subi $22 $22 1028
	li $10 0x000001
	li $20 0xffd4a2
	
	sw $10 0($8)
	sw $10 8($8)
	sw $10 0($22)
	sw $10 8($22)
	
	sw $20 1016($8)
	sw $20 1040($8)
	sw $20 1016($22)
	sw $20 1040($22)
fim_toad:
	addi $5 $0 8
	jal apagar_fundo
	
	addi $29 $29 4  
	lw $22 0($29)
	addi $29 $29 4  
	lw $21 0($29)
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para desenhar a bandeira do mastro

desenhar_bandeira:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $22 0($29)
       	addi $29 $29 -4
       	
       	add $8 $4 $0
       	addi $22 $8 65536
	addi $9 $0 0x0ec7db
	
	addi $10 $0 12
laco_bandeira_1:
	beq $10 $0 fim_laco_bandeira_1
	addi $11 $0 12
laco_bandeira_2:
	beq $11 $0 fim_laco_bandeira_2
	
	sw $9 0($8)
	#sw $9 0($22)
	#sw $9 32768($22)
	
	#addi $22 $22 4
	addi $8 $8 4
	addi $11 $11 -1
	j laco_bandeira_2
fim_laco_bandeira_2:
	addi $8 $8 -48
	#addi $22 $22 -48
	addi $8 $8 512
	#addi $22 $22 512
	addi $10 $10 -1
	j laco_bandeira_1
fim_laco_bandeira_1:

	li $20, 0xffffff
	add $8 $4 $0
	#addi $22 $8 65536
	li $9, 12
	move $10, $9 
bandeira_mapa_4:
	beq $9, $0, plb_mapa_4
	sw $20, 0($8)
	#sw $20, 0($22)
	#sw $20 65536($22)
	
	addi $8, $8, 4
	#addi $22 $22 4
	addi $9, $9, -1
	j bandeira_mapa_4
plb_mapa_4:
	beq $10, $0, fim_bandeira_desenhar
	addi $9, $10, -1
	move $10, $9
	li $12, 4
	mul $11, $10, $12
	addi $8, $8, 512
	#addi $22 $22 512
	sub $8, $8, $11
	#sub $22 $22 $11

	j bandeira_mapa_4
	
fim_bandeira_desenhar:
	addi $5 $0 12
	jal apagar_fundo
	
	addi $29 $29 4  
	lw $22 0($29)
	addi $29 $29 4  
	lw $20 0($29)
	addi $29 $29 4  
	lw $12 0($29)
	addi $29 $29 4  
	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
#===================================================
# - funcao para andar para a esquerda
# - registradores de entrada: $4
# - registradores de saida: $2

andar_para_esquerda:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	
       	bne $16 $0 personagem_grande_esquerda
       	addi $9 $0 8
       	j continuacao_conferir_colisoes_esquerda
personagem_grande_esquerda:
	addi $9 $0 16
	j continuacao_conferir_colisoes_esquerda
continuacao_conferir_colisoes_esquerda:
       	
       	add $8 $0 $0
       	
       	addi $24 $0 -4
       	addi $23 $0 0xed6408
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0x000000
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0xfbbe2e
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0x00c800
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0xc89858
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0x786818
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0xd28a5c
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0x5e3217
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	bne $8 $0 nao_anda_esquerda
       	
       	bne $16 $0 personagem_grande_andando_esquerda
       	
	addi $8 $4 -16
	
	addi $24 $0 -4
       	addi $23 $0 0xffa237
       	jal conferir_colisao
       	bne $2 $0 trocar_para_personagem_grande_esquerda
	
	jal verificar_saiu_da_tela
	bne $2 $0 nao_anda_esquerda
	
	addi $9 $4 16
	add $2 $8 $0
	
	add $4 $8 $0
	jal desenhar_personagem_esquerda
	
	addi $10 $0 8
	
laco_1_andar_esquerda:
	beq $10 $0 fim_laco_1_andar_esquerda
	
	addi $11 $0 4
laco_2_andar_esquerda:
	beq $11 $0 fim_laco_2_andar_esquerda
	
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_esquerda
fim_laco_2_andar_esquerda:
	addi $9 $9 -16
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_esquerda
fim_laco_1_andar_esquerda:
	jal timer
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
personagem_grande_andando_esquerda:
	addi $8 $4 -16
	
	jal verificar_saiu_da_tela
	bne $2 $0 nao_anda_esquerda
	
	addi $9 $4 48
	add $2 $8 $0
	
	add $4 $8 $0
	jal desenhar_personagem_grande_esquerda
	
	addi $10 $0 16
	
laco_1_andar_esquerda_grande:
	beq $10 $0 fim_laco_1_andar_esquerda_grande
	
	addi $11 $0 4
laco_2_andar_esquerda_grande:
	beq $11 $0 fim_laco_2_andar_esquerda_grande
	
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_esquerda_grande
fim_laco_2_andar_esquerda_grande:
	addi $9 $9 -16
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_esquerda_grande
fim_laco_1_andar_esquerda_grande:
	jal timer
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
nao_anda_esquerda:
	add $2 $4 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
trocar_para_personagem_grande_esquerda:
	andi $8 $8 0x0000ffff
	addi $9 $0 512
	div $8 $9
	mfhi $9
	lui $8 0x1001
	addi $8 $8 2048
	add $8 $8 $9
	addi $4 $8 -16
	jal retomar_terceira_copia
	add $4 $8 $0
	add $2 $4 $0
	jal desenhar_personagem_grande_esquerda
	
	addi $16 $0 1
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para andar para a direita
# - registradores de entrada: $4 (onde o personagem ta), $5 (quantos mapas foram desenhados), $6 (quantas vezes o mapa andou)
# - registradores de saida: $2

andar_para_direita:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	
       	bne $16 $0 personagem_grande_direita
       	addi $9 $0 8
       	j continuacao_conferir_colisoes_direita
personagem_grande_direita:
	addi $9 $0 16
	j continuacao_conferir_colisoes_direita
continuacao_conferir_colisoes_direita:
       	
       	add $8 $0 $0
       	
       	addi $24 $0 4
       	addi $23 $0 0xed6408
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0x000000
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xfbbe2e
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0x00c800
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xc89858
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0x786818
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xd28a5c
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0x5e3217
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	bne $8 $0 nao_anda_direita
       	
       	bne $16 $0 personagem_grande_andando_direita
       	
	jal verificar_metade_mapa
	bne $2 $0 mexer_mapa
	
	addi $8 $4 16
	
	addi $24 $0 4
       	addi $23 $0 0xffa237
       	jal conferir_colisao
       	bne $2 $0 trocar_para_personagem_grande_direita
       	
       	addi $24 $0 4
       	addi $23 $0 0xb4f42c
       	jal conferir_colisao
       	bne $2 $0 personagem_vitoria
	
	add $9 $4 $0
	
	add $4 $8 $0
	jal desenhar_personagem_direita
	
	addi $10 $0 8
	
laco_1_andar_direita:
	beq $10 $0 fim_laco_1_andar_direita
	addi $11 $0 4
laco_2_andar_direita:
	beq $11 $0 fim_laco_2_andar_direita
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_direita
fim_laco_2_andar_direita:
	addi $9 $9 -16
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_direita
fim_laco_1_andar_direita:
	jal timer
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31

personagem_grande_andando_direita:
	jal verificar_metade_mapa
	bne $2 $0 mexer_mapa
	
	addi $8 $4 16
	
	addi $24 $0 4
       	addi $23 $0 0xb4f42c
       	jal conferir_colisao
       	bne $2 $0 personagem_vitoria
	
	add $9 $4 $0
	
	add $4 $8 $0
	jal desenhar_personagem_grande_direita
	
	addi $10 $0 16
	
laco_1_andar_direita_grande:
	beq $10 $0 fim_laco_1_andar_direita_grande
	addi $11 $0 4
laco_2_andar_direita_grande:
	beq $11 $0 fim_laco_2_andar_direita_grande
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_direita_grande
fim_laco_2_andar_direita_grande:
	addi $9 $9 -16
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_direita_grande
fim_laco_1_andar_direita_grande:
	jal timer
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
mexer_mapa:
	jal conferir_mexer_mapa
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
nao_anda_direita:
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
trocar_para_personagem_grande_direita:
	andi $8 $8 0x0000ffff
	addi $9 $0 512
	div $8 $9
	mfhi $9
	lui $8 0x1001
	addi $8 $8 2048
	add $8 $8 $9
	addi $4 $8 -16
	jal retomar_terceira_copia
	add $4 $8 $0
	add $2 $4 $0
	jal desenhar_personagem_grande_direita
	
	addi $16 $0 1
	
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
personagem_vitoria:
	addi $25 $8 -16
	lui $8, 0x1001
	addi $8, $8, 18768
	addi $9 $0 16
laco_subir_bandeira_1:
	beq $9 $0 fim_laco_subir_bandeira_1
	
	add $4 $8 $0
	jal desenhar_bandeira
	
	bne $16 $0 personagem_grande_vitoria
	add $4 $25 $0
	jal desenhar_personagem_direita
	j continuacao_vitoria
personagem_grande_vitoria:
	add $4 $25 $0
	jal desenhar_personagem_grande_direita
	j continuacao_vitoria
continuacao_vitoria:
	
	addi $11 $8 6188
	
	lw $12 32768($11)
	sw $12 0($11)

	addi $8 $8 -512
	jal timer
	jal timer
	jal timer
	jal timer
	jal timer
	
	addi $9 $9 -1
	j laco_subir_bandeira_1
fim_laco_subir_bandeira_1:

	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	addi $24 $0 2
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#==================================================
# - funcao para andar para a direita, mas especificamente para o nivel 2

andar_para_direita_nivel_2:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	
       	bne $16 $0 personagem_grande_direita_nivel_2
       	addi $9 $0 8
       	j continuacao_conferir_colisoes_direita_nivel_2
personagem_grande_direita_nivel_2:
	addi $9 $0 16
	j continuacao_conferir_colisoes_direita_nivel_2
continuacao_conferir_colisoes_direita_nivel_2:
       	
       	add $8 $0 $0
       	
       	addi $24 $0 4
       	addi $23 $0 0xed6408
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0x000000
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xfbbe2e
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0x00c800
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xc89858
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0x786818
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0xd28a5c
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 4
       	addi $23 $0 0x5e3217
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	bne $8 $0 nao_anda_direita_nivel_2
       	
       	bne $16 $0 personagem_grande_andando_direita_nivel_2
       	
	jal verificar_metade_mapa
	bne $2 $0 mexer_mapa_nivel_2
	
	addi $8 $4 16
	
	addi $24 $0 4
       	addi $23 $0 0xffa237
       	jal conferir_colisao
       	bne $2 $0 trocar_para_personagem_grande_direita_nivel_2
       	
       	addi $24 $0 4
       	addi $23 $0 0xb4f42c
       	jal conferir_colisao
       	bne $2 $0 personagem_vitoria_nivel_2
	
	add $9 $4 $0
	
	add $4 $8 $0
	jal desenhar_personagem_direita
	
	addi $10 $0 8
	
laco_1_andar_direita_nivel_2:
	beq $10 $0 fim_laco_1_andar_direita_nivel_2
	addi $11 $0 4
laco_2_andar_direita_nivel_2:
	beq $11 $0 fim_laco_2_andar_direita_nivel_2
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_direita_nivel_2
fim_laco_2_andar_direita_nivel_2:
	addi $9 $9 -16
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_direita_nivel_2
fim_laco_1_andar_direita_nivel_2:
	jal timer
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31

personagem_grande_andando_direita_nivel_2:
	jal verificar_metade_mapa
	bne $2 $0 mexer_mapa_nivel_2
	
	addi $8 $4 16
	
	addi $24 $0 4
       	addi $23 $0 0xb4f42c
       	jal conferir_colisao
       	bne $2 $0 personagem_vitoria_nivel_2
	
	add $9 $4 $0
	
	add $4 $8 $0
	jal desenhar_personagem_grande_direita
	
	addi $10 $0 16
	
laco_1_andar_direita_grande_nivel_2:
	beq $10 $0 fim_laco_1_andar_direita_grande_nivel_2
	addi $11 $0 4
laco_2_andar_direita_grande_nivel_2:
	beq $11 $0 fim_laco_2_andar_direita_grande_nivel_2
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_direita_grande_nivel_2
fim_laco_2_andar_direita_grande_nivel_2:
	addi $9 $9 -16
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_direita_grande_nivel_2
fim_laco_1_andar_direita_grande_nivel_2:
	jal timer
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
mexer_mapa_nivel_2:
	jal conferir_mexer_mapa_nivel_2
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
nao_anda_direita_nivel_2:
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
trocar_para_personagem_grande_direita_nivel_2:
	andi $8 $8 0x0000ffff
	addi $9 $0 512
	div $8 $9
	mfhi $9
	lui $8 0x1001
	addi $8 $8 2048
	add $8 $8 $9
	addi $4 $8 -16
	jal retomar_terceira_copia
	add $4 $8 $0
	add $2 $4 $0
	jal desenhar_personagem_grande_direita
	
	addi $16 $0 1
	
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
personagem_vitoria_nivel_2:
	addi $25 $8 -16
	lui $8, 0x1001
	addi $8, $8, 18768
	addi $9 $0 16
laco_subir_bandeira_1_nivel_2:
	beq $9 $0 fim_laco_subir_bandeira_1_nivel_2
	
	add $4 $8 $0
	jal desenhar_bandeira
	
	bne $16 $0 personagem_grande_vitoria_nivel_2
	add $4 $25 $0
	jal desenhar_personagem_direita
	j continuacao_vitoria_nivel_2
personagem_grande_vitoria_nivel_2:
	add $4 $25 $0
	jal desenhar_personagem_grande_direita
	j continuacao_vitoria_nivel_2
continuacao_vitoria_nivel_2:
	
	addi $11 $8 6188
	
	lw $12 32768($11)
	sw $12 0($11)

	addi $8 $8 -512
	jal timer
	jal timer
	jal timer
	jal timer
	jal timer
	
	addi $9 $9 -1
	j laco_subir_bandeira_1_nivel_2
fim_laco_subir_bandeira_1_nivel_2:

	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#===================================================
# - funcao para andar para baixo
# - registradores de entrada: $4
# - registradores de saida: $2

andar_para_baixo:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	
       	bne $16 $0 personagem_grande_baixo
       	addi $9 $0 8
       	j continuacao_conferir_colisoes_baixo
personagem_grande_baixo:
	addi $9 $0 16
	j continuacao_conferir_colisoes_baixo
continuacao_conferir_colisoes_baixo:
       	
       	add $8 $0 $0
       	
       	addi $24 $0 512
       	addi $23 $0 0xed6408
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0x000000
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0xfbbe2e
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0x00c800
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0xc89858
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0x786818
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0xd28a5c
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0x5e3217
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	bne $8 $0 nao_anda_baixo
       	
       	bne $16 $0 personagem_grande_andando_baixo
       	
	addi $8 $4 2048
	
	jal verificar_saiu_da_tela
	bne $2 $0 morreu_baixo
	
	addi $24 $0 512
       	addi $23 $0 0xffa237
       	jal conferir_colisao
       	bne $2 $0 trocar_para_personagem_grande_baixo
	
	add $9 $4 $0
	add $2 $8 $0
	
	add $4 $8 $0
	add $13 $10 $0
	beq $13 $19 personagem_andando_esquerda_baixo
	jal desenhar_personagem_pulando_direita
	j continuacao_para_laco_baixo
personagem_andando_esquerda_baixo:
	jal desenhar_personagem_pulando_esquerda
continuacao_para_laco_baixo:
	addi $10 $0 4
	
laco_1_andar_baixo:
	beq $10 $0 fim_laco_1_andar_baixo
	
	addi $11 $0 8
laco_2_andar_baixo:
	beq $11 $0 fim_laco_2_andar_baixo
	
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_baixo
fim_laco_2_andar_baixo:
	addi $9 $9 -32
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_baixo
fim_laco_1_andar_baixo:
	addi $29 $29 4                                                    
       	lw $13 0($29)
       	
	andi $8 $13 0xffff0000
       	lui $9 0x1001
       	bne $9 $8 mob_foi_morto_medir_time
	
	jal timer
	j continuacao_medir_time
	
mob_foi_morto_medir_time:
	jal timer
	jal timer
	jal timer
	jal timer
	jal timer
	
continuacao_medir_time:
	
	add $3 $0 $0
	add $18 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
personagem_grande_andando_baixo:
	addi $8 $4 2048
	
	jal verificar_saiu_da_tela
	bne $2 $0 morreu_baixo_grande
	
	add $9 $4 $0
	add $2 $8 $0
	
	add $4 $8 $0
	add $13 $10 $0
	beq $13 $19 personagem_grande_andando_esquerda_baixo
	jal desenhar_personagem_grande_pulando_direita
	j continuacao_para_laco_baixo_grande
personagem_grande_andando_esquerda_baixo:
	jal desenhar_personagem_grande_pulando_esquerda
continuacao_para_laco_baixo_grande:
	addi $10 $0 4
	
laco_1_andar_baixo_grande:
	beq $10 $0 fim_laco_1_andar_baixo_grande
	
	addi $11 $0 16
laco_2_andar_baixo_grande:
	beq $11 $0 fim_laco_2_andar_baixo_grande
	
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_baixo_grande
fim_laco_2_andar_baixo_grande:
	addi $9 $9 -64
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_baixo_grande
fim_laco_1_andar_baixo_grande:
	addi $29 $29 4                                                    
       	lw $13 0($29)
       	
	andi $8 $13 0xffff0000
       	lui $9 0x1001
       	bne $9 $8 mob_foi_morto_medir_time_grande
	
	jal timer
	j continuacao_medir_time_grande
	
mob_foi_morto_medir_time_grande:
	jal timer
	jal timer
	jal timer
	jal timer
	jal timer
	
continuacao_medir_time_grande:
	
	add $3 $0 $0
	add $18 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
nao_anda_baixo:
	bne $16 $0 personagem_nao_anda_grande
	add $13 $10 $0
	beq $13 $19 personagem_nao_andando_esquerda_baixo
	jal desenhar_personagem_direita
	j continuacao_para_laco_baixo_nao_anda
personagem_nao_andando_esquerda_baixo:
	jal desenhar_personagem_esquerda
	j continuacao_para_laco_baixo_nao_anda
	
personagem_nao_anda_grande:
	add $13 $10 $0
	beq $13 $19 personagem_grande_nao_andando_esquerda_baixo
	jal desenhar_personagem_grande_direita
	j continuacao_para_laco_baixo_nao_anda
personagem_grande_nao_andando_esquerda_baixo:
	jal desenhar_personagem_grande_esquerda
	j continuacao_para_laco_baixo_nao_anda
	
continuacao_para_laco_baixo_nao_anda:
	addi $18 $0 1
	add $2 $4 $0
	
	addi $3 $0 'w'
	
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
morreu_baixo:
	
	jal personagem_morrendo
	
	add $2 $4 $0
	add $3 $0 1
	
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
trocar_para_personagem_grande_baixo:
	andi $8 $8 0x0000ffff
	addi $9 $0 512
	div $8 $9
	mfhi $9
	lui $8 0x1001
	addi $8 $8 2048
	add $8 $8 $9
	addi $4 $8 -16
	jal retomar_terceira_copia
	add $4 $8 $0
	add $2 $4 $0
	jal desenhar_personagem_grande_direita
	
	add $3 $0 $0
	add $18 $0 $0
	
	addi $16 $0 1
	
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
morreu_baixo_grande:
	addi $9 $0 16
	addi $11 $8 -2048
laco_morreu_baixo_grande_1:
	beq $9 $0 fim_morreu_baixo_grande_1
	addi $10 $0 16
laco_morreu_baixo_grande_2:
	beq $10 $0 fim_laco_morreu_baixo_grande_2
	
	lw $12 65536($11)
	sw $12 0($11)
	
	addi $11 $11 4
	addi $10 $10 -1
	j laco_morreu_baixo_grande_2
fim_laco_morreu_baixo_grande_2:
	addi $11 $11 -64
	addi $11 $11 512
	addi $9 $9 -1
	j laco_morreu_baixo_grande_1
fim_morreu_baixo_grande_1:
	addi $4 $4 20 
	jal personagem_morrendo

	add $2 $4 $0
	add $3 $0 1
	
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
#===================================================
# - funcao para andar para cima
# - registradores de entrada: $4
# - registradores de saida: $2

andar_para_cima:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	
       	bne $16 $0 personagem_grande_cima
       	addi $9 $0 8
       	j continuacao_conferir_colisoes_cima
personagem_grande_cima:
	addi $9 $0 16
	j continuacao_conferir_colisoes_cima
continuacao_conferir_colisoes_cima:
       	
       	add $8 $0 $0
       	
       	addi $24 $0 -512
       	addi $23 $0 0xed6408
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -512
       	addi $23 $0 0x000000
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -512
       	addi $23 $0 0xfbbe2e
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -512
       	addi $23 $0 0x00c800
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -512
       	addi $23 $0 0xc89858
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -512
       	addi $23 $0 0x786818
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -512
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -512
       	addi $23 $0 0xae4c0f
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -512
       	addi $23 $0 0xd28a5c
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	addi $24 $0 -512
       	addi $23 $0 0x5e3217
       	jal conferir_colisao
       	
       	add $8 $8 $2
       	
       	bne $8 $0 nao_anda_cima
       	
       	bne $16 $0 personagem_grande_andando_cima
       	
	addi $8 $4 -2048
	
	add $9 $4 2048
	add $2 $8 $0
	
	add $4 $8 $0
	beq $10 $19 personagem_andando_esquerda_cima
	jal desenhar_personagem_pulando_direita
	j continuacao_para_laco_cima
personagem_andando_esquerda_cima:
	jal desenhar_personagem_pulando_esquerda
continuacao_para_laco_cima:
	
	addi $10 $0 4
	
laco_1_andar_cima:
	beq $10 $0 fim_laco_1_andar_cima
	
	addi $11 $0 8
laco_2_andar_cima:
	beq $11 $0 fim_laco_2_andar_cima
	
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_cima
fim_laco_2_andar_cima:
	addi $9 $9 -32
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_cima
fim_laco_1_andar_cima:
	jal timer
	jal timer
	jal timer
	jal timer
	jal timer
	
	add $18 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
personagem_grande_andando_cima:
	addi $8 $4 -2048
	
	add $9 $4 6144
	add $2 $8 $0
	
	add $4 $8 $0
	beq $10 $19 personagem_grande_andando_esquerda_cima
	jal desenhar_personagem_grande_pulando_direita
	j continuacao_para_laco_cima_grande
personagem_grande_andando_esquerda_cima:
	jal desenhar_personagem_grande_pulando_esquerda
continuacao_para_laco_cima_grande:
	
	addi $10 $0 4
	
laco_1_andar_cima_grande:
	beq $10 $0 fim_laco_1_andar_cima_grande
	
	addi $11 $0 16
laco_2_andar_cima_grande:
	beq $11 $0 fim_laco_2_andar_cima_grande
	
	lw $12 65536($9)
	sw $12 0($9)
	addi $9 $9 4
	addi $11 $11 -1
	j laco_2_andar_cima_grande
fim_laco_2_andar_cima_grande:
	addi $9 $9 -64
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_cima_grande
fim_laco_1_andar_cima_grande:
	jal timer
	jal timer
	jal timer
	jal timer
	jal timer
	
	add $18 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
nao_anda_cima:
	addi $8 $4 -2048
	
	bne $17 $0 cogumelo_ja_nasceu
	jal conferir_cogumelo

cogumelo_ja_nasceu:
	add $2 $4 $0
	add $18 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
#=============================================
# - funcao para verificar se o personagem chegou a metade do mapa
# - registradores de entrada: $4 (quantos mapas ja foram desenhados), $5 (posicao do personagem)
# - registradores de saida: $2

verificar_metade_mapa:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $4 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	sw $14 0($29)
       	addi $29 $29 -4
       	
	addi $8 $0 4
	beq $8 $5 fim_laco_verificacao
	
	lui $8 0x1001
	
	addi $9 $0 64
	add $10 $0 $0
	
	addi $11 $0 256
	addi $12 $0 512
	
laco_verificacao:
	beq $9 $10 fim_laco_verificacao
	
	mul $13 $10 $12
	add $13 $13 $11
	add $8 $8 $13
	
	addi $14 $4 16
	
	beq $8 $14 meio_da_tela
	
	sub $8 $8 $13
	
	addi $10 $10 1
	j laco_verificacao
fim_laco_verificacao:
	addi $29 $29 4                                                    
       	lw $14 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
       	addi $29 $29 4                                                    
       	lw $12 0($29)
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $4 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)

	add $2 $0 $0
	jr $31
meio_da_tela:
	addi $29 $29 4                                                    
       	lw $14 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
       	addi $29 $29 4                                                    
       	lw $12 0($29)
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
       	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $4 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	addi $2 $0 1
	jr $31
	
#=============================================
# funcao para conferir se o mapa vai mexer ou se vai desenhar o terceiro mapa
# registradores de entrada: $6 (quantas vezes o mapa andou)

conferir_mexer_mapa:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $2 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	
	addi $8 $0 32
	bne $6 $8 nao_desenhar_mapa_3
	jal desenhar_mapa_3
	j mapa_3_incompleto

nao_desenhar_mapa_3:
	addi $8 $0 64
	bne $6 $8 mapa_3_incompleto
	jal desenhar_mapa_4
	addi $5 $5 1

mapa_3_incompleto:
	addi $8 $0 95
	bne $6 $8 mapa_4_incompleto
	addi $5 $5 1
	
mapa_4_incompleto:
	jal andar_mapa
	addi $13 $13 -16
	#addi $14 $14 4
	addi $6 $6 1
	
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $2 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para conferir se o mapa vai andar especificamente para o mapa 2

conferir_mexer_mapa_nivel_2:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $2 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	
	addi $8 $0 32
	bne $6 $8 nao_desenhar_mapa_7
	jal desenhar_mapa_7
	j mapa_7_incompleto

nao_desenhar_mapa_7:
	addi $8 $0 64
	bne $6 $8 mapa_7_incompleto
	jal desenhar_mapa_8
	addi $5 $5 1

mapa_7_incompleto:
	addi $8 $0 95
	bne $6 $8 mapa_8_incompleto
	addi $5 $5 1
	
mapa_8_incompleto:
	jal andar_mapa
	addi $13 $13 -16
	#addi $14 $14 4
	addi $6 $6 1
	
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $2 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para fazer o mapa andar
# - registrador de entrada: $4

andar_mapa:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	sw $14 0($29)
       	addi $29 $29 -4
       	sw $15 0($29)
       	addi $29 $29 -4
       	sw $16 0($29)
       	addi $29 $29 -4
	
	lui $8 0x1001
	addi $9 $0 0xffffff
	
	
	addi $10 $0 16
	add $11 $0 $0
	
andar_mapa_loop_1:
	beq $10 $11 fim_andar_mapa_loop_1
	
	addi $12 $0 32
	add $13 $0 $0
	
andar_mapa_loop_2:
	beq $12 $13 fim_andar_mapa_loop_2
	
	addi $14 $0 31
	beq $13 $14 pega_proximo
	
	lw $14 65552($8)
	sw $14 0($8)
	sw $14 65536($8)
	lw $14 131088($8)
	sw $14 131072($8)
	
	lw $14 65556($8)
	sw $14 4($8)
	sw $14 65540($8)
	lw $14 131092($8)
	sw $14 131076($8)
	
	lw $14 65560($8)
	sw $14 8($8)
	sw $14 65544($8)
	lw $14 131096($8)
	sw $14 131080($8)
	
	lw $14 65564($8)
	sw $14 12($8)
	sw $14 65548($8)
	lw $14 131100($8)
	sw $14 131084($8)
	
	
	lw $14 66064($8)
	sw $14 512($8)
	sw $14 66048($8)
	lw $14 131600($8)
	sw $14 131584($8)
	
	lw $14 66068($8)
	sw $14 516($8)
	sw $14 66052($8)
	lw $14 131604($8)
	sw $14 131588($8)
	
	lw $14 66072($8)
	sw $14 520($8)
	sw $14 66056($8)
	lw $14 131608($8)
	sw $14 131592($8)
	
	lw $14 66076($8)
	sw $14 524($8)
	sw $14 66060($8)
	lw $14 131612($8)
	sw $14 131596($8)
	
	
	lw $14 66576($8)
	sw $14 1024($8)
	sw $14 66560($8)
	lw $14 132112($8)
	sw $14 132096($8)
	
	lw $14 66580($8)
	sw $14 1028($8)
	sw $14 66564($8)
	lw $14 132116($8)
	sw $14 132100($8)
	
	lw $14 66584($8)
	sw $14 1032($8)
	sw $14 66568($8)
	lw $14 132120($8)
	sw $14 132104($8)
	
	lw $14 66588($8)
	sw $14 1036($8)
	sw $14 66572($8)
	lw $14 132124($8)
	sw $14 132108($8)
	
	
	
	lw $14 67088($8)
	sw $14 1536($8)
	sw $14 67072($8)
	lw $14 132624($8)
	sw $14 132608($8)
	
	lw $14 67092($8)
	sw $14 1540($8)
	sw $14 67076($8)
	lw $14 132628($8)
	sw $14 132612($8)
	
	lw $14 67096($8)
	sw $14 1544($8)
	sw $14 67080($8)
	lw $14 132632($8)
	sw $14 132616($8)
	
	lw $14 67100($8)
	sw $14 1548($8)
	sw $14 67084($8)
	lw $14 132636($8)
	sw $14 132620($8)
	
	addi $8 $8 16
	j continuacao_andar_mapa
	
pega_proximo:
	div $6 $12
	mfhi $16
	lui $15 0x1001
	addi $14 $0 16
	mul $14 $14 $16
	add $15 $15 $14
	
	addi $14 $0 2048
	mul $14 $14 $11
	add $15 $15 $14
	
	lw $14 32768($15)
	sw $14 0($8)
	sw $14 65536($8)
	sw $14 131072($8)
	
	lw $14 32772($15)
	sw $14 4($8)
	sw $14 65540($8)
	sw $14 131076($8)
	
	lw $14 32776($15)
	sw $14 8($8)
	sw $14 65544($8)
	sw $14 131080($8)
	
	lw $14 32780($15)
	sw $14 12($8)
	sw $14 65548($8)
	sw $14 131084($8)
	
	
	lw $14 33280($15)
	sw $14 512($8)
	sw $14 66048($8)
	sw $14 131584($8)
	
	lw $14 33284($15)
	sw $14 516($8)
	sw $14 66052($8)
	sw $14 131588($8)
	
	lw $14 33288($15)
	sw $14 520($8)
	sw $14 66056($8)
	sw $14 131592($8)
	
	lw $14 33292($15)
	sw $14 524($8)
	sw $14 66060($8)
	sw $14 131596($8)
	
	
	lw $14 33792($15)
	sw $14 1024($8)
	sw $14 66560($8)
	sw $14 132096($8)
	
	lw $14 33796($15)
	sw $14 1028($8)
	sw $14 66564($8)
	sw $14 132100($8)
	
	lw $14 33800($15)
	sw $14 1032($8)
	sw $14 66568($8)
	sw $14 132104($8)
	
	lw $14 33804($15)
	sw $14 1036($8)
	sw $14 66572($8)
	sw $14 132108($8)
	
	
	
	lw $14 34304($15)
	sw $14 1536($8)
	sw $14 67072($8)
	sw $14 132608($8)
	
	lw $14 34308($15)
	sw $14 1540($8)
	sw $14 67076($8)
	sw $14 132612($8)
	
	lw $14 34312($15)
	sw $14 1544($8)
	sw $14 67080($8)
	sw $14 132616($8)
	
	lw $14 34316($15)
	sw $14 1548($8)
	sw $14 67084($8)
	sw $14 132620($8)
	
	addi $8 $8 1552
	j continuacao_andar_mapa
	
continuacao_andar_mapa:
	addi $13 $13 1
	j andar_mapa_loop_2

fim_andar_mapa_loop_2:
	addi $11 $11 1
	j andar_mapa_loop_1
fim_andar_mapa_loop_1:

	addi $29 $29 4                                                    
       	lw $16 0($29)
	addi $29 $29 4                                                    
       	lw $15 0($29)
	addi $29 $29 4                                                    
       	lw $14 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
	
#=============================================
# funcao para saber se o personagem colidiu com um obstaculo
# registrador de entrada: $4 (posicao do personagem), $24, $23
# registrador de saida: $2

conferir_colisao:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $24
	add $12 $9 $0
	
	add $9 $0 $12
laco_conferir_colisao_1:
	beq $9 $0 fim_laco_conferir_colisao_1
	add $10 $0 $12
laco_conferir_colisao_2:
	beq $10 $0 fim_laco_conferir_colisao_2
	
	lw $11 0($8)
	beq $11 $23 houve_colisao
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_conferir_colisao_2
fim_laco_conferir_colisao_2:
	addi $11 $0 4
	mul $11 $11 $12
	sub $8 $8 $11
	addi $8 $8 512
	addi $9 $9 -1
	j laco_conferir_colisao_1
fim_laco_conferir_colisao_1:
	
	add $2 $0 $0
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
houve_colisao:
	addi $2 $0 1
	
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
#=============================================
# - funcao para conferir se ele ta saindo mapa, mas nao morre
# - registrador de entrada: $8
# - registrador de saida: $2

verificar_saiu_da_tela:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	
	lui $10 0x1001
	addi $10 $10 496
	addi $9 $0 64
laco_verificar_saiu_da_tela_1:
	beq $9 $0 fim_laco_verificar_saiu_da_tela_1
	
	beq $8 $10 saiu_da_tela

	addi $10 $10 512
	
	addi $9 $9 -1
	j laco_verificar_saiu_da_tela_1
fim_laco_verificar_saiu_da_tela_1:
	lui $10 0x1001
	addi $10 $10 28672
	addi $9 $0 128
laco_verificar_saiu_da_tela_2:
	beq $9 $0 fim_laco_verificar_saiu_da_tela_2
	
	bne $16 $0 personagem_grande_saiu_tela_verificar
	add $11 $8 $0
	j cotinuacao_verificacao_saiu_tela
personagem_grande_saiu_tela_verificar:
	addi $11 $8 4096
cotinuacao_verificacao_saiu_tela:
	beq $11 $10 saiu_da_tela

	addi $10 $10 4
	
	addi $9 $9 -1
	j laco_verificar_saiu_da_tela_2
fim_laco_verificar_saiu_da_tela_2:
	
	add $2 $0 $0
	
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
saiu_da_tela:
	addi $2 $0 1
	
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
#=============================================
# - funcao para animar o personagem morrendo
# - registrador de entrada: $4
# - registrador de saida:

personagem_morrendo:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	
	addi $9 $0 8
laco_personagem_morrendo_subindo_1:
	beq $9 $0 fim_laco_personagem_morrendo_subindo_1
	
	addi $8 $8 -2048
	addi $10 $8 4096
	add $4 $8 $0
	jal desenhar_personagem_morrendo
	
	addi $11 $0 4
laco_personagem_morrendo_subindo_2:
	beq $11 $0 fim_laco_personagem_morrendo_subindo_2
	
	addi $12 $0 8
laco_personagem_morrendo_subindo_3:
	beq $12 $0 fim_laco_personagem_morrendo_subindo_3
	
	lw $13 65536($10)
	sw $13 0($10)
	
	addi $10 $10 4
	addi $12 $12 -1
	j laco_personagem_morrendo_subindo_3
fim_laco_personagem_morrendo_subindo_3:
	addi $10 $10 -32
	addi $10 $10 512
	
	addi $11 $11 -1
	j laco_personagem_morrendo_subindo_2
fim_laco_personagem_morrendo_subindo_2:
	jal timer
	jal timer
	jal timer
	jal timer
	addi $9 $9 -1
	j laco_personagem_morrendo_subindo_1
fim_laco_personagem_morrendo_subindo_1:
	addi $9 $0 10
laco_personagem_morrendo_descendo_1:
	beq $9 $0 fim_laco_personagem_morrendo_descendo_1
	addi $8 $8 2048
	addi $10 $8 -2048
	add $4 $8 $0
	jal desenhar_personagem_morrendo
	
	addi $11 $0 4
laco_personagem_morrendo_descendo_2:
	beq $11 $0 fim_laco_personagem_morrendo_descendo_2
	addi $12 $0 8
laco_personagem_morrendo_descendo_3:
	beq $12 $0 fim_laco_personagem_morrendo_descendo_3
	
	lw $13 65536($10)
	sw $13 0($10)
	
	addi $10 $10 4
	addi $12 $12 -1
	j laco_personagem_morrendo_descendo_3
fim_laco_personagem_morrendo_descendo_3:
	addi $10 $10 -32
	addi $10 $10 512
	addi $11 $11 -1
	j laco_personagem_morrendo_descendo_2
fim_laco_personagem_morrendo_descendo_2:
	jal timer
	jal timer
	jal timer
	jal timer
	addi $9 $9 -1
	j laco_personagem_morrendo_descendo_1
fim_laco_personagem_morrendo_descendo_1:
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=================================================
# - funcao para conferir se o cogumelo vai nascer
conferir_cogumelo:
	sw $31 0($29)
       	addi $29 $29 -4
       	
	addi $24 $0 -512
       	addi $23 $0 0xfbbe2e
       	jal conferir_colisao
	beq $2 $0 nao_nasce_cogumelo
	jal nascer_cogumelo
	addi $17 $0 1
	
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
nao_nasce_cogumelo:
	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
#=================================================
# funcao para fazer a animacao do cogumelo nascendo
# registrador de entrada: $2
# registrador de saida:

nascer_cogumelo:
	sw $31 0($29)
	addi $29 $29 -4
	sw $4 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	
	lui $8 0x1001
	addi $8 $8 16632
	addi $9 $0 16
	mul $9 $9 $6
	sub $8 $8 $9
	addi $8 $8 -4096
	addi $8 $8 4
	
	addi $9 $0 3
laco_cogumelo_nascendo_1:
	beq $9 $0 fim_laco_cogumelo_nascendo_1
	
	addi $8 $8 -2048
	addi $10 $8 3584
	
	add $4 $8 $0
	jal desenhar_cogumelo
	
	addi $11 $0 4
laco_cogumelo_nascendo_2:
	beq $11 $0 fim_laco_cogumelo_nascendo_2
	
	addi $12 $0 7
laco_cogumelo_nascendo_3:
	beq $12 $0 fim_laco_cogumelo_nascendo_3
	
	lw $13 65536($10)
	sw $13 0($10)
	
	addi $10 $10 4
	addi $12 $12 -1
	j laco_cogumelo_nascendo_3
fim_laco_cogumelo_nascendo_3:
	addi $10 $10 -28
	addi $10 $10 512
	
	addi $11 $11 -1
	j laco_cogumelo_nascendo_2
fim_laco_cogumelo_nascendo_2:
	jal timer
	addi $9 $9 -1
	j laco_cogumelo_nascendo_1
fim_laco_cogumelo_nascendo_1:
	add $4 $8 $0
	jal salvar_copia_cogumelo
	
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $4 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
#=============================================
# - funcao para salvar a copia do cogumelo pronto na memoria
# - registrador de entrada: $4
# - registrador de saida:

salvar_copia_cogumelo:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 7
laco_copia_cogumelo_1:
	beq $9 $0 fim_laco_copia_cogumelo_1
	addi $10 $0 7
laco_copia_cogumelo_2:
	beq $10 $0 fim_laco_copia_cogumelo_2
	
	lw $11 0($8)
	sw $11 65536($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_copia_cogumelo_2
fim_laco_copia_cogumelo_2:
	addi $8 $8 -28
	addi $8 $8 512
	addi $9 $9 -1
	j laco_copia_cogumelo_1
fim_laco_copia_cogumelo_1:
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para salvar o mapa na terceira copia (sempre vai guardar o que tem no mapa 1)

salvar_terceira_copia:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4

	lui $9 0x1001
	addi $8 $0 8192
laco_salvar_terceira_copia:
	beq $8 $0 fim_laco_salvar_terceira_copia
	
	lw $10 65536($9)
	sw $10 131072($9)
	
	addi $9 $9 4
	addi $8 $8 -1
	j laco_salvar_terceira_copia
fim_laco_salvar_terceira_copia:
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para retornar uma parte da terceira copia para o original
retomar_terceira_copia:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 16
laco_retomar_terceira_copia_1:
	beq $9 $0 fim_laco_retomar_terceira_copia_1
	addi $10 $0 16
laco_retomar_terceira_copia_2:
	beq $10 $0 fim_laco_retomar_terceira_copia_2
	
	lw $11 131072($8)
	sw $11 65536($8)
	sw $11 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_retomar_terceira_copia_2
fim_laco_retomar_terceira_copia_2:
	addi $8 $8 -64
	addi $8 $8 512
	addi $9 $9 -1
	j laco_retomar_terceira_copia_1
fim_laco_retomar_terceira_copia_1:
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para o fazer o toad andar pelo cenario

andar_toad:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	
       	jal verificar_toad_visivel
       	bne $2 $0 deixar_toad_invisivel
       	
       	addi $8 $0 82
       	div $5 $8
       	mfhi $8
       	addi $9 $0 40
       	slt $9 $9 $8
       	bne $9 $0 toad_andar_direita
       	
	addi $8 $4 -4
	
	addi $9 $8 32
	
	add $4 $8 $0
	jal desenhar_toad
	
	jal verificar_toad_visivel
       	beq $2 $0 nao_apagar_primeira_vez
       	add $4 $8 $0
	jal apagar_area_toad
nao_apagar_primeira_vez:
	add $2 $8 $0
	addi $10 $0 8
	
laco_1_andar_toad_esquerda:
	beq $10 $0 fim_laco_1_andar_toad_esquerda
	
	lw $12 131072($9)
	sw $12 65536($9)
	sw $12 0($9)
	
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_toad_esquerda
fim_laco_1_andar_toad_esquerda:
	jal timer_mob
	addi $3 $5 1
       
       	addi $29 $29 4                                                    
       	lw $12 0($29)	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
toad_andar_direita:
	addi $8 $4 4
	add $2 $8 $0
	
	addi $9 $8 -4
	
	add $4 $8 $0
	jal desenhar_toad
	
	addi $10 $0 8
	
laco_1_andar_toad_direita:
	beq $10 $0 fim_laco_1_andar_toad_direita
	
	lw $12 131072($9)
	sw $12 65536($9)
	sw $12 0($9)
	
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_toad_direita
fim_laco_1_andar_toad_direita:
	jal timer_mob
	
	addi $3 $5 1
       
       	addi $29 $29 4                                                    
       	lw $12 0($29)	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
deixar_toad_invisivel:
	addi $8 $0 82#122
       	div $5 $8
       	mfhi $8
       	addi $9 $0 40#60
       	slt $9 $9 $8
       	bne $9 $0 toad_andar_direita_invisivel
       	
	addi $8 $4 -4
	
	addi $9 $8 32
	
	jal verificar_toad_passou
	bne $2 $0 toad_passou_esquerda
	
	add $4 $8 $0
	jal desenhar_toad
	jal apagar_area_toad
	
toad_passou_esquerda:
	addi $3 $5 1
	add $2 $8 $0
	jal timer_mob
       
       	addi $29 $29 4                                                    
       	lw $12 0($29)	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
toad_andar_direita_invisivel:
	addi $8 $4 4
	
	addi $9 $8 -4
	
	jal verificar_toad_passou
	bne $2 $0 toad_passou_direita
	
	add $4 $8 $0
	jal desenhar_toad
	jal apagar_area_toad
	
toad_passou_direita:
	
	addi $3 $5 1
	add $2 $8 $0
       	jal timer_mob
       
       	addi $29 $29 4                                                    
       	lw $12 0($29)	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para o fazer o toad andar pelo cenario espeficamente para o nivel 2

andar_toad_nivel_2:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	
       	jal verificar_toad_visivel
       	bne $2 $0 deixar_toad_invisivel_nivel_2
       	
       	addi $8 $0 80
       	div $5 $8
       	mfhi $8
       	addi $9 $0 39
       	slt $9 $9 $8
       	bne $9 $0 toad_andar_direita_nivel_2
       	
	addi $8 $4 -4
	
	addi $9 $8 32
	
	add $4 $8 $0
	jal desenhar_toad
	
	jal verificar_toad_visivel
       	beq $2 $0 nao_apagar_primeira_vez_nivel_2
       	add $4 $8 $0
	jal apagar_area_toad
nao_apagar_primeira_vez_nivel_2:
	add $2 $8 $0
	addi $10 $0 8
	
laco_1_andar_toad_esquerda_nivel_2:
	beq $10 $0 fim_laco_1_andar_toad_esquerda_nivel_2
	
	lw $12 131072($9)
	sw $12 65536($9)
	sw $12 0($9)
	
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_toad_esquerda_nivel_2
fim_laco_1_andar_toad_esquerda_nivel_2:
	jal timer_mob
	addi $3 $5 1
       
       	addi $29 $29 4                                                    
       	lw $12 0($29)	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
toad_andar_direita_nivel_2:
	addi $8 $4 4
	add $2 $8 $0
	
	addi $9 $8 -4
	
	add $4 $8 $0
	jal desenhar_toad
	
	addi $10 $0 8
	
laco_1_andar_toad_direita_nivel_2:
	beq $10 $0 fim_laco_1_andar_toad_direita_nivel_2
	
	lw $12 131072($9)
	sw $12 65536($9)
	sw $12 0($9)
	
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_toad_direita_nivel_2
fim_laco_1_andar_toad_direita_nivel_2:
	jal timer_mob
	
	addi $3 $5 1
       
       	addi $29 $29 4                                                    
       	lw $12 0($29)	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
deixar_toad_invisivel_nivel_2:
	addi $8 $0 80
       	div $5 $8
       	mfhi $8
       	addi $9 $0 39
       	slt $9 $9 $8
       	bne $9 $0 toad_andar_direita_invisivel_nivel_2
       	
	addi $8 $4 -4
	
	addi $9 $8 32
	
	jal verificar_toad_passou
	bne $2 $0 toad_passou_esquerda_nivel_2
	
	add $4 $8 $0
	jal desenhar_toad
	jal apagar_area_toad
	
toad_passou_esquerda_nivel_2:
	add $2 $8 $0
	
	addi $10 $0 8
	
laco_1_andar_toad_esquerda_invisivel_nivel_2:
	beq $10 $0 fim_laco_1_andar_toad_esquerda_invisivel_nivel_2
	
	lw $12 131072($9)
	sw $12 65536($9)
	sw $12 0($9)
	
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_toad_esquerda_invisivel_nivel_2
fim_laco_1_andar_toad_esquerda_invisivel_nivel_2:
	jal timer_mob
	
	addi $3 $5 1
       
       	addi $29 $29 4                                                    
       	lw $12 0($29)	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
toad_andar_direita_invisivel_nivel_2:
	addi $8 $4 4
	
	addi $9 $8 -4
	
	jal verificar_toad_passou
	bne $2 $0 toad_passou_direita_nivel_2
	
	add $4 $8 $0
	jal desenhar_toad
	jal apagar_area_toad
	
toad_passou_direita_nivel_2:
	add $2 $8 $0
	
	addi $10 $0 8
	
laco_1_andar_toad_direita_invisivel_nivel_2:
	beq $10 $0 fim_laco_1_andar_toad_direita_invisivel_nivel_2
	
	lw $12 131072($9)
	sw $12 65536($9)
	sw $12 0($9)
	
	addi $9 $9 512
	addi $10 $10 -1
	j laco_1_andar_toad_direita_invisivel_nivel_2
fim_laco_1_andar_toad_direita_invisivel_nivel_2:
	jal timer_mob
	
	addi $3 $5 1
       
       	addi $29 $29 4                                                    
       	lw $12 0($29)	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para verificar se o toad esta com os pes no chao, se nao tiver ele tem que ficar invisivel

verificar_toad_visivel:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
	sw $12 0($29)
       	addi $29 $29 -4
	sw $13 0($29)
       	addi $29 $29 -4
       	
	addi $8 $4 4096
	addi $9 $0 0x000000
	addi $10 $0 0x30c92e
	addi $11 $0 0x4f1808
	addi $12 $0 0x340d02

	lw $13 0($8)
	bne $13 $9 toad_invisivel
	lw $13 512($8)
	bne $13 $10 conferido_1
	j toad_visivel
conferido_1:
	bne $13 $11 conferido_2
	j toad_visivel
conferido_2:
	bne $13 $12 toad_invisivel
	j toad_visivel
toad_visivel:

	add $2 $0 $0
	
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
toad_invisivel:
	addi $2 $0 1
	
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para apagar a area que o toad nao pode aparecer

apagar_area_toad:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	
	andi $8 $4 0x0000ffff
	addi $9 $0 512
	div $8 $9
	mflo $10
	mul $10 $10 $9
	addi $9 $0 484
	add $10 $10 $9
	lui $9 0x1001
	add $8 $9 $10
	addi $9 $0 8
laco_apagar_area_toad_1:
	beq $9 $0 fim_laco_apagar_area_toad_1
	addi $10 $0 7
laco_apagar_area_toad_2:
	beq $10 $0 fim_laco_apagar_area_toad_2
	
	lw $11 131072($8)
	sw $11 65536($8)
	sw $11 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_apagar_area_toad_2
fim_laco_apagar_area_toad_2:
	addi $8 $8 -28
	addi $8 $8 512
	addi $9 $9 -1
	j laco_apagar_area_toad_1
fim_laco_apagar_area_toad_1:
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para verificar se o toad ja passou completamente para o outro lado

verificar_toad_passou:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       
	andi $8 $4 0x0000ffff
	addi $9 $0 512
	div $8 $9
	mflo $10
	mul $10 $10 $9
	addi $9 $0 484
	add $10 $10 $9
	lui $9 0x1001
	add $8 $9 $10
	slt $9 $8 $4
	
	beq $9 $0 toad_passou
	
	add $2 $0 $0
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
toad_passou:

	addi $2 $0 1
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao para saber se o toad tocou no personagem

verificar_situacao_toad:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	
       	bne $16 $0 personagem_grande_situacao_toad
       	addi $9 $0 8
       	
       	addi $24 $0 4
       	addi $23 $0 0xfffffe
       	jal conferir_colisao
       	add $8 $0 $2
       	
       	addi $24 $0 -4
       	addi $23 $0 0xfffffe
       	jal conferir_colisao
       	add $8 $8 $2
       	bne $8 $0 personagem_morreu
       	
       	addi $24 $0 512
       	addi $23 $0 0xfffffe
       	jal conferir_colisao
       	add $8 $0 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0xff0000
       	jal conferir_colisao
       	add $8 $8 $2
       	bne $8 $0 personagem_matou
       	
       	add $2 $0 $0
       	add $3 $4 $0
       	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
personagem_grande_situacao_toad:
	addi $9 $0 16
       	
	addi $24 $0 4
       	addi $23 $0 0xfffffe
       	jal conferir_colisao
       	bne $2 $0 personagem_diminuir_direita
       	
       	addi $24 $0 -4
       	addi $23 $0 0xfffffe
       	jal conferir_colisao
       	bne $2 $0 personagem_diminuir_esquerda
       	
       	addi $24 $0 512
       	addi $23 $0 0xfffffe
       	jal conferir_colisao
       	add $8 $0 $2
       	
       	addi $24 $0 512
       	addi $23 $0 0xff0000
       	jal conferir_colisao
       	add $8 $8 $2
       	bne $8 $0 personagem_matou
       	
       	add $2 $0 $0
       	add $3 $4 $0
       	
       	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
personagem_morreu:
	jal personagem_morrendo
	addi $2 $0 1 
	add $3 $4 $0
	
	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
personagem_matou:
	addi $8 $4 4096
	addi $8 $8 -32
	addi $9 $0 12
laco_personagem_matou_1:
	beq $9 $0 fim_laco_personagem_matou_1
	addi $10 $0 24
laco_personagem_matou_2:
	beq $10 $0 fim_laco_personagem_matou_2
	
	lw $11 131072($8)
	sw $11 65536($8)
	sw $11 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_personagem_matou_2
fim_laco_personagem_matou_2:
	addi $8 $8 -96
	addi $8 $8 512
	addi $9 $9 -1
	j laco_personagem_matou_1
fim_laco_personagem_matou_1:
	add $2 $0 $0
	add $3 $4 $0
	add $13 $0 $0
	add $14 $0 $0

	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
personagem_diminuir_direita:
	add $8 $4 $0
	addi $9 $0 16
laco_personagem_diminuir_1:
	beq $9 $0 fim_laco_personagem_diminuir_1
	addi $10 $0 16
laco_personagem_diminuir_2:
	beq $10 $0 fim_laco_personagem_diminuir_2
	
	lw $11 65536($8)
	sw $11 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_personagem_diminuir_2
fim_laco_personagem_diminuir_2:
	addi $8 $8 -64
	addi $8 $8 512
	addi $9 $9 -1
	j laco_personagem_diminuir_1
fim_laco_personagem_diminuir_1:
	add $16 $0 $0
	
	addi $8 $4 4096
	
	add $4 $8 $0
	jal desenhar_personagem_direita
	
	add $2 $0 $0
	add $3 $8 $0
	
	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
personagem_diminuir_esquerda:
       	add $8 $4 $0
	addi $9 $0 16
laco_personagem_diminuir_1_esquerda:
	beq $9 $0 fim_laco_personagem_diminuir_1_esquerda
	addi $10 $0 16
laco_personagem_diminuir_2_esquerda:
	beq $10 $0 fim_laco_personagem_diminuir_2_esquerda
	
	lw $11 65536($8)
	sw $11 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_personagem_diminuir_2_esquerda
fim_laco_personagem_diminuir_2_esquerda:
	addi $8 $8 -64
	addi $8 $8 512
	addi $9 $9 -1
	j laco_personagem_diminuir_1_esquerda
fim_laco_personagem_diminuir_1_esquerda:
	add $16 $0 $0
	
	addi $8 $4 4096
	addi $8 $8 32
	
	add $4 $8 $0
	jal desenhar_personagem_direita
	
	add $2 $0 $0
	add $3 $8 $0
	
	addi $29 $29 4                                                    
       	lw $11 0($29)
       	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
#=============================================
# - funcao para conferir o spawn do toad

coferir_spawn_toad:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	
	add $8 $4 $0
	addi $9 $0 22
	beq $8 $9 spawnar_outro_toad
	
	addi $9 $0 65
	beq $8 $9 spawnar_outro_toad
	
	add $2 $13 $0
	add $3 $14 $0
	
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
	
spawnar_outro_toad:
	lui $2 0x1001
	addi $2 $2 10728
	add $3 $0 $0
       	
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31

#=============================================
# - funcao para conferir o spawn do toad exclusivamente para o nivel 2

coferir_spawn_toad_nivel_2:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
	
	add $8 $4 $0
	addi $9 $0 50
	beq $8 $9 spawnar_outro_toad_nivel_2
	
	add $2 $13 $0
	add $3 $14 $0
	
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
	
spawnar_outro_toad_nivel_2:
	lui $2 0x1001
	addi $2 $2 6608
	add $3 $0 $0
       	
       	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# funcao timer

timer:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	
	addi $8 $0 10000
laco_timer:
	beq $8 $0 fim_laco_timer
	nop
	nop
	addi $8 $8 -1
	j laco_timer
fim_laco_timer:
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
       	
#=============================================
# - funcao timer somente para os mobs

timer_mob:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	
	addi $8 $0 150000
laco_timer_mob:
	beq $8 $0 fim_laco_timer_mob
	nop
	nop
	addi $8 $8 -1
	j laco_timer_mob
fim_laco_timer_mob:
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
       	jr $31
