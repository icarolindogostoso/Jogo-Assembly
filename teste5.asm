.text
menu_level_1:
	add $25 $0 $0 # nada
	add $24 $0 $0 # nada
	add $23 $0 $0 # nada
	add $22 $0 $0 # nada
	add $21 $0 $0 # registrador qeu vai guardar o que foi lido do teclado
	add $22 $0 $0 # registrador que vai guardar quantas vezes o mapa andou
	add $20 $0 $0 # registrador que vai guardar quantos cenarios ja foram desenhados
	add $19 $0 $0 # registrador que vai guardar a copia do botao que vai apertado no teclado
	add $18 $0 $0 # registrador que vai guardar se o personsagem está colidindo com algo
	add $17 $0 $0 # registrador que vai guardar se o cogumelo ja nasceu
	add $16 $0 $0 # registrador que vai guardar se o personagem está grande ou pequeno
	add $15 $0 $0 # nada
	add $14 $0 $0 # nada
	add $13 $0 $0 # nada
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
	
	j continuacao_cima
	
continuacao:
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
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	sw $22 0($29)
       	addi $29 $29 -4
       	
ceu_init:  
	lui $8, 0x1001
	li $9, 8192
	li $20, 0x0ec7db
ceu:
	beq $9, $0, nuvem_init
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j ceu

nuvem_init:
	lui $8, 0x1001
	addi $8, $8, 612
	li $21, 1
	li $9, 12
	li $20, 0xfbfdff
	
nuvem:
	beq $9, $0, proxima_nuvem
	#linha 1
	sw $20, 16($8)
	sw $20, 65552($8)
	
	# linha 2 e 3
	sw $20, 520($8)
	sw $20, 532($8)
	sw $20, 66056($8)
	sw $20, 66068($8)
	
	sw $20, 1032($8)
	sw $20, 1068($8)
	sw $20, 66568($8)
	sw $20, 66604($8)
	
	# linha 4
	sw $20, 1532($8)
	sw $20, 1580($8)
	sw $20, 1588($8)
	sw $20, 67068($8)
	sw $20, 67116($8)
	sw $20, 67124($8)

	# linha 5 a 8
	sw $20, 2040($8)
	sw $20, 2080($8)
	sw $20, 2104($8)
	sw $20, 67576($8)
	sw $20, 67616($8)
	sw $20, 67640($8)
	
	sw $20, 2552($8)
	sw $20, 2568($8)
	sw $20, 2616($8)
	sw $20, 68088($8)
	sw $20, 68104($8)
	sw $20, 68152($8)
	
	sw $20, 3064($8)
	sw $20, 3080($8)
	sw $20, 3128($8)
	sw $20, 68600($8)
	sw $20, 68616($8)
	sw $20, 68664($8)
	
	sw $20, 3576($8)
	sw $20, 3592($8)
	sw $20, 3640($8)
	sw $20, 69112($8)
	sw $20, 69128($8)
	sw $20, 69176($8)
	
	# linha 9
	sw $20, 4092($8)
	sw $20, 4140($8)
	sw $20, 4148($8)
	sw $20, 69628($8)
	sw $20, 69676($8)
	sw $20, 69684($8)
	
	# linha 10
	sw $20, 4632($8)
	sw $20, 70168($8)
	
	
	addi $8, $8, 4
	addi $9, $9, -1
	j nuvem

proxima_nuvem:
	beq $21 $0 solo_init
	addi $21, $21, -1
	addi $8, $8, 3296
	li $9, 12
	j nuvem
	
# chao/piso/solo
	
solo_init:
	li $20, 0xc89858
	lui $8, 0x1001
	addi $8, $8, 26624
	li $9, 6554
	
solo:
	beq $9, $0, detalhe_solo_init
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j solo
	
	
detalhe_solo_init:
	li $20, 0xe0c050
	li $21, 2
	lui $8, 0x1001
	addi $8, $8, 26624
	li $9, 16

detalhe_solo:
	beq $9, $0, npds
	
	sw $20, 0($8)
	sw $20, 4($8)
	sw $20, 512($8)
	sw $20, 516($8)
	sw $20, 1024($8)
	sw $20, 1028($8)
	sw $20, 65536($8)
	sw $20, 65540($8)
	sw $20, 66048($8)
	sw $20, 66052($8)
	sw $20, 66560($8)
	sw $20, 66564($8)
	
	sw $20, 1036($8)
	sw $20, 1548($8)
	sw $20, 66572($8)
	sw $20, 67084($8)

	
	addi $8, $8, 32
	addi $9, $9, -1

	j detalhe_solo
npds:
	beq $21, $0 grama_init
	addi $21, $21, -1
	addi $8, $8, 2604
	li $9, 16
	j detalhe_solo
	
grama_init:
	li $20, 0x00c800
	lui $8, 0x1001
	addi $8, $8, 26624
	li $9, 128
	
grama:
	beq $9, $0, dg_init
	
	sw $20, 0($8)
	sw $20, 512($8)
	sw $20, 65536($8)
	sw $20, 66048($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j grama
	
dg_init:
	li $21, 0x786818
	li $9, 26
	
dg:
	beq $9, $0, moita_init
	
	
	sw $20, 4($8)
	sw $20, 12($8)
	sw $20, 65536($8)
	sw $20, 65540($8)
	sw $20, 65548($8)
	
	# sombras
	sw $21, 8($8)
	sw $21, 16($8)
	sw $21, 512($8)
	sw $21, 516($8)
	sw $21, 524($8)
	sw $21, 65544($8)
	sw $21, 65552($8)
	sw $21, 66048($8)
	sw $21, 66052($8)
	sw $21, 66060($8)
	
	addi $8, $8, 20
	addi $9, $9, -1
	j dg

moita_init:
	lui $8, 0x1001
	addi $8, $8, 21076
	addi $22 $8 65536
	li $9, 5
	li $20, 0x03f906
	
moita:
	beq $9, $0, dm
	#line 1
	sw $20, 52($8)
	sw $20, 52($22)
	
	#line 2
	sw $20, 560($8)
	sw $20, 560($22)
	sw $20, 568($8)
	sw $20, 568($22)
	
	#line 3
	sw $20, 1064($8)
	sw $20, 1064($22)
	sw $20, 1080($8)
	sw $20, 1080($22)
	
	#line 4
	sw $20, 1576($8)
	sw $20, 1576($22)
	sw $20, 1596($8)
	sw $20, 1596($22)
	
	#line 5
	sw $20, 2088($8)
	sw $20, 2088($22)
	sw $20, 2108($8)
	sw $20, 2108($22)
	sw $20, 2120($8)
	sw $20, 2120($22)
	
	#line6
	sw $20, 2596($8)
	sw $20, 2596($22)
	sw $20, 2616($8)
	sw $20, 2616($22)
	sw $20, 2632($8)
	sw $20, 2632($22)
	
	#line7
	sw $20, 3104($8)
	sw $20, 3104($22)
	sw $20, 3124($8)
	sw $20, 3124($22)
	sw $20, 3144($8)
	sw $20, 3144($22)
	
	#line 8*
	sw $20, 3604($8)
	sw $20, 3604($22)
	sw $20, 3624($8)
	sw $20, 3624($22)
	sw $20, 3644($8)
	sw $20, 3644($22)
	sw $20, 3660($8)
	sw $20, 3660($22)
	
	#line 9
	sw $20, 4112($8)
	sw $20, 4112($22)
	sw $20, 4132($8)
	sw $20, 4132($22)
	sw $20, 4152($8)
	sw $20, 4152($22)
	sw $20, 4172($8)
	sw $20, 4172($22)
	
	#line 10
	sw $20, 4620($8)
	sw $20, 4620($22)
	sw $20, 4640($8)
	sw $20, 4640($22)
	sw $20, 4660($8)
	sw $20, 4660($22)
	sw $20, 4680($8)
	sw $20, 4680($22)
	sw $20, 4696($8)
	sw $20, 4696($22)
	
	#line 11
	sw $20, 5132($8)
	sw $20, 5132($22)
	sw $20, 5152($8)
	sw $20, 5152($22)
	sw $20, 5172($8)
	sw $20, 5172($22)
	sw $20, 5192($8)
	sw $20, 5192($22)
	sw $20, 5208($8)
	sw $20, 5208($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j moita
dm: 
	lui $8, 0x1001
	addi $8, $8, 21116
	addi $22 $8 98304
	addi $8 $8 32768
	
	sw $20, 1624($8)
	sw $20, 1624($22)
	sw $20, 3688($8)
	sw $20, 3688($22)
	sw $20, 4200($8)
	sw $20, 4200($22)
	sw $20, 4196($8)
	sw $20, 4196($22)
	j tijolo_init
	
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
       	sw $20 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	sw $22 0($29)
       	addi $29 $29 -4
       	
ceu_init_mapa_2:  
	lui $8, 0x1001
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 8192
	li $20, 0x0ec7db
ceu_mapa_2:
	beq $9, $0, nuvem_init_mapa_2
	sw $20, 0($8)
	sw $20, 0($22)
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j ceu_mapa_2
nuvem_init_mapa_2:
	lui $8, 0x1001
	addi $8, $8, 612
	addi $22 $8 98304
	addi $8 $8 32768
	li $21, 1
	li $9, 12
	li $20, 0xfbfdff
	
nuvem_mapa_2:
	beq $9, $0, proxima_nuvem_mapa_2
	#linha 1
	sw $20, 16($8)
	sw $20, 16($22)
	
	# linha 2 e 3
	sw $20, 520($8)
	sw $20, 520($22)
	sw $20, 532($8)
	sw $20, 532($22)
	
	sw $20, 1032($8)
	sw $20, 1032($22)
	sw $20, 1068($8)
	sw $20, 1068($22)
	
	# linha 4
	sw $20, 1532($8)
	sw $20, 1532($22)
	sw $20, 1580($8)
	sw $20, 1580($22)
	sw $20, 1588($8)
	sw $20, 1588($22)
	# linha 5 a 8
	sw $20, 2040($8)
	sw $20, 2040($22)
	sw $20, 2080($8)
	sw $20, 2080($22)
	sw $20, 2104($8)
	sw $20, 2104($22)
	
	sw $20, 2552($8)
	sw $20, 2552($22)
	sw $20, 2568($8)
	sw $20, 2568($22)
	sw $20, 2616($8)
	sw $20, 2616($22)
	
	sw $20, 3064($8)
	sw $20, 3064($22)
	sw $20, 3080($8)
	sw $20, 3080($22)
	sw $20, 3128($8)
	sw $20, 3128($22)
	
	sw $20, 3576($8)
	sw $20, 3576($22)
	sw $20, 3592($8)
	sw $20, 3592($22)
	sw $20, 3640($8)
	sw $20, 3640($22)
	
	# linha 9
	sw $20, 4092($8)
	sw $20, 4092($22)
	sw $20, 4140($8)
	sw $20, 4140($22)
	sw $20, 4148($8)
	sw $20, 4148($22)
	
	# linha 10
	sw $20, 4632($8)
	sw $20, 4632($22)
	
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j nuvem_mapa_2
proxima_nuvem_mapa_2:
	beq $21 $0 solo_init_mapa_2
	addi $21, $21, -1
	addi $8, $8, 3296
	addi $22 $22 3296
	li $9, 12
	j nuvem_mapa_2
	
# chao/piso/solo
	
solo_init_mapa_2:
	li $20, 0xc89858
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 1536
	
solo_mapa_2:
	beq $9, $0, detalhe_solo_init_mapa_2
	sw $20, 0($8)
	sw $20, 0($22)
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j solo_mapa_2
	
	
detalhe_solo_init_mapa_2:
	#li $20, 0xe0c050
	#li $21, 2
	#lui $8, 0x1001
	#addi $8, $8, 26624
	#addi $22 $8 98304
	#addi $8 $8 32768
	#li $9, 4
detalhe_solo_mapa_2:
	#beq $9, $0, npds_mapa_2
	
	#sw $20, 0($8)
	#sw $20, 0($22)
	#sw $20, 4($8)
	#sw $20, 4($22)
	#sw $20, 512($8)
	#sw $20, 512($22)
	#sw $20, 516($8)
	#sw $20, 516($22)
	#sw $20, 1024($8)
	#sw $20, 1024($22)
	#sw $20, 1028($8)
	#sw $20, 1028($22)
	
	#sw $20, 1036($8)
	#sw $20, 1036($22)
	#sw $20, 1548($8)
	#sw $20, 1548($22)
	
	#addi $8, $8, 32
	#addi $22 $22 32
	#addi $9, $9, -1
	#j detalhe_solo_mapa_2
npds_mapa_2:
	#beq $21, $0 grama_init_mapa_2
	#addi $21, $21, -1
	#addi $8, $8, 2604
	#addi $22 $22 2604
	#li $9, 4
	#j detalhe_solo_mapa_2
	
grama_init_mapa_2:
	li $20, 0x00c800
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 128
	
grama_mapa_2:
	beq $9, $0, dg_init_mapa_2
	
	sw $20, 0($8)
	sw $20, 0($22)
	sw $20, 512($8)
	sw $20, 512($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j grama_mapa_2
dg_init_mapa_2:
	li $21, 0x786818
	li $9, 26
	
dg_mapa_2:
	beq $9, $0, moita_init_mapa_2
	
	sw $20, 0($8)
	sw $20, 0($22)
	sw $20, 4($8)
	sw $20, 4($22)
	sw $20, 12($8)
	sw $20, 12($22)
	
	# sombras
	sw $21, 8($8)
	sw $21, 8($22)
	sw $21, 16($8)
	sw $21, 16($22)
	sw $21, 512($8)
	sw $21, 512($22)
	sw $21, 516($8)
	sw $21, 516($22)
	sw $21, 524($8)
	sw $21, 524($22)
	
	addi $8, $8, 20
	addi $22 $22 20
	addi $9, $9, -1
	j dg_mapa_2
moita_init_mapa_2:
	lui $8, 0x1001
	addi $8, $8, 21116
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 5
	li $20, 0x03f906
	
moita_mapa_2:
	beq $9, $0, dm_mapa_2
	#line 1
	sw $20, 52($8)
	sw $20, 52($22)
	
	#line 2
	sw $20, 560($8)
	sw $20, 560($22)
	sw $20, 568($8)
	sw $20, 568($22)
	
	#line 3
	sw $20, 1064($8)
	sw $20, 1064($22)
	sw $20, 1080($8)
	sw $20, 1080($22)
	
	#line 4
	sw $20, 1576($8)
	sw $20, 1576($22)
	sw $20, 1596($8)
	sw $20, 1596($22)
	
	#line 5
	sw $20, 2088($8)
	sw $20, 2088($22)
	sw $20, 2108($8)
	sw $20, 2108($22)
	sw $20, 2120($8)
	sw $20, 2120($22)
	
	#line6
	sw $20, 2596($8)
	sw $20, 2596($22)
	sw $20, 2616($8)
	sw $20, 2616($22)
	sw $20, 2632($8)
	sw $20, 2632($22)
	
	#line7
	sw $20, 3104($8)
	sw $20, 3104($22)
	sw $20, 3124($8)
	sw $20, 3124($22)
	sw $20, 3144($8)
	sw $20, 3144($22)
	
	#line 8*
	sw $20, 3604($8)
	sw $20, 3604($22)
	sw $20, 3624($8)
	sw $20, 3624($22)
	sw $20, 3644($8)
	sw $20, 3644($22)
	sw $20, 3660($8)
	sw $20, 3660($22)
	
	#line 9
	sw $20, 4112($8)
	sw $20, 4112($22)
	sw $20, 4132($8)
	sw $20, 4132($22)
	sw $20, 4152($8)
	sw $20, 4152($22)
	sw $20, 4172($8)
	sw $20, 4172($22)
	
	#line 10
	sw $20, 4620($8)
	sw $20, 4620($22)
	sw $20, 4640($8)
	sw $20, 4640($22)
	sw $20, 4660($8)
	sw $20, 4660($22)
	sw $20, 4680($8)
	sw $20, 4680($22)
	sw $20, 4696($8)
	sw $20, 4696($22)
	
	#line 11
	sw $20, 5132($8)
	sw $20, 5132($22)
	sw $20, 5152($8)
	sw $20, 5152($22)
	sw $20, 5172($8)
	sw $20, 5172($22)
	sw $20, 5192($8)
	sw $20, 5192($22)
	sw $20, 5208($8)
	sw $20, 5208($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j moita_mapa_2
dm_mapa_2: 
	lui $8, 0x1001
	addi $8, $8, 21116
	addi $22 $8 98304
	addi $8 $8 32768
	
	sw $20, 1624($8)
	sw $20, 1624($22)
	sw $20, 3688($8)
	sw $20, 3688($22)
	sw $20, 4200($8)
	sw $20, 4200($22)
	sw $20, 4196($8)
	sw $20, 4196($22)
	j topo_cano_init
	
topo_cano_init:
	lui $8, 0x1001
	addi $8, $8, 19012
	addi $22 $8 98304
	addi $8 $8 32768
	li $20, 0x00ff50
	li $9, 14
	li $10, 4
	li $11, 1
	
topo_cano:
	beq $9, $0 pltc
	
	sw $20, 0($8)
	sw $20, 0($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j topo_cano	

pltc:
	beq $10, $0, borda_tchi
	addi $8, $8, 456
	addi $22 $22 456
	li $9, 14
	subi $10, $10, 1
	j topo_cano
	
borda_tchi:
	subi $8, $8, 2620
	subi $22 $22 2620
	li $20, 0x000000
	li $9, 16
borda_tch:
	beq $9, $0 borda_tcvi
	
	sw $20, 0($8)
	sw $20, 0($22)
	sw $20, 3072($8)
	sw $20, 3072($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	subi $9, $9, 1
	j borda_tch
	
borda_tcvi:
	subi $8, $8, 64
	subi $22 $22 64
	li $9, 6
	
borda_tcv:
	beq $9, $0 prox_tc
	
	sw $20, 0($8)
	sw $20, 0($22)
	sw $20, 60($8)
	sw $20, 60($22)
	
	addi $8, $8, 512
	addi $2 $22 512
	subi $9, $9, 1
	j borda_tcv

prox_tc:
	beq $11, $0 cano_init
	subi $11, $11, 1
	lui $8, 0x1001
	addi $8, $8, 17284
	addi $22 $8 98304
	addi $8 $8 32768
	li $20, 0x00ff50
	li $9, 14
	li $10, 4
	j topo_cano
	
# cano

cano_init:
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

cano:
	beq $9, $0 plc_mapa_2
	
	sw $20, 0($8)
	sw $20, 0($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j cano
plc_mapa_2:
	beq $10, $0, borda_cano_init
	addi $8, $8, 456
	addi $22 $22 456
	li $9, 14
	subi $10, $10, 1
	j cano
	
borda_cano_init:
	sub $8, $8, $21
	sub $22 $22 $21
	li $20, 0x000000
	li $9, 16
borda_ch:
	beq $9, $0 borda_cvi
	
	sw $20, 0($8)
	sw $20, 65536($8)
	
	addi $8, $8, 4
	addi $22 $22 4
	subi $9, $9, 1
	j borda_ch
	
borda_cvi:
	subi $8, $8, 64
	subi $22 $22 64
	move $9, $13
	
borda_cv:
	beq $9, $0 prox_cano
	
	sw $20, 0($8)
	sw $20, 0($22)
	sw $20, 60($8)
	sw $20, 60($22)
	
	addi $8, $8, 512
	addi $22 $22 512
	subi $9, $9, 1
	j borda_cv
	
prox_cano:
	beq $11, $0, fim_mapa_2
	li $11, 0
	
	lui $8, 0x1001
	addi $8, $8, 20868
	addi $22 $8 98304
	addi $8 $8 32768
	
	li $20, 0x00ff50
	
	li $9, 14
	li $10, 11
	li $21, 6204
	li $13, 13
	j cano
	
fim_mapa_2:
	
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
	#li $20, 0xe0c050
	#li $21, 2
	#lui $8, 0x1001
	#addi $8, $8, 26624
	#addi $22 $8 98304
	#addi $8 $8 32768
	#li $9, 16

detalhe_solo_m3:
	#beq $9, $0, npds_m3
	
	#sw $20, 0($8)
	#sw $20, 4($8)
	#sw $20, 512($8)
	#sw $20, 516($8)
	#sw $20, 1024($8)
	#sw $20, 1028($8)
	#sw $20, 0($22)
	#sw $20, 4($22)
	#sw $20, 512($22)
	#sw $20, 516($22)
	#sw $20, 1024($22)
	#sw $20, 1028($22)
	
	#sw $20, 1036($8)
	#sw $20, 1548($8)
	#sw $20, 1036($22)
	#sw $20, 1548($22)

	
	#addi $8, $8, 32
	#addi $22 $22 32
	#addi $9, $9, -1

	#j detalhe_solo_m3
	
npds_m3:
	#beq $21, $0 grama_init_m3
	#addi $21, $21, -1
	#addi $8, $8, 2604
	#addi $22 $22 2604
	#li $9, 16
	#j detalhe_solo_m3
	
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
	#li $20, 0xe0c050
	#li $21, 2
	#lui $8, 0x1001
	#addi $8, $8, 26624
	#addi $22 $8 98304
	#addi $8 $8 32768
	#li $9, 16

detalhe_solo_mapa_4:
	#beq $9, $0, npds_mapa_4
	
	#sw $20, 0($8)
	#sw $20, 4($8)
	#sw $20, 512($8)
	#sw $20, 516($8)
	#sw $20, 1024($8)
	#sw $20, 1028($8)
	#sw $20, 0($22)
	#sw $20, 4($22)
	#sw $20, 512($22)
	#sw $20, 516($22)
	#sw $20, 1024($22)
	#sw $20, 1028($22)
	
	#sw $20, 1036($8)
	#sw $20, 1548($8)
	#sw $20, 1036($22)
	#sw $20, 1548($22)

	
	#addi $8, $8, 32
	#addi $22 $22 32
	#addi $9, $9, -1

	#j detalhe_solo_mapa_4
npds_mapa_4:
	#beq $21, $0 grama_init_mapa_4
	#addi $21, $21, -1
	#addi $8, $8, 2604
	#addi $22 $22 2604
	#li $9, 16
	#j detalhe_solo_mapa_4
	
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
	beq $9, $0, bandeira_init_mapa_4
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
	
bandeira_init_mapa_4:
	li $20, 0xffffff
	lui $8, 0x1001
	addi $8, $8, 10576
	addi $22 $8 98304
	addi $8 $8 32768
	li $9, 12
	move $10, $9 
bandeira_mapa_4:
	beq $9, $0, plb_mapa_4
	sw $20, 0($8)
	sw $20, 0($22)
	
	addi $8, $8, 4
	addi $22 $22 4
	addi $9, $9, -1
	j bandeira_mapa_4
plb_mapa_4:
	beq $10, $0, bloco_init_mapa_4
	addi $9, $10, -1
	move $10, $9
	li $4, 4
	mul $11, $10, $4
	addi $8, $8, 512
	addi $22 $22 512
	sub $8, $8, $11
	sub $22 $22 $11

	j bandeira_mapa_4

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
# - funcao para desenhar a tela de morte

desenhar_mapa_morte:
	sw $31, 0($29)
       	addi $29, $29, -4
       	sw $8, 0($29)
       	addi $29, $29, -4
       	sw $9, 0($29)
       	addi $29, $29, -4
       	sw $10, 0($29)
       	addi $29, $29, -4
       	
	lui $8 0x1001
	addi $9 $0 0xff00ff
	
	addi $10 $0 8192
laco_desenhar_mapa_morte:
	beq $10 $0 fim_laco_desenhar_mapa_morte
	
	sw $9 0($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	j laco_desenhar_mapa_morte
fim_laco_desenhar_mapa_morte:
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
	lw $12 65536($8)
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
cabeça_init:

	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeça:
	beq $9, $0 plc_player
		
	sw $20, 12($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeça
plc_player:
	beq $10, $0 detalhe_cabeça
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeça
detalhe_cabeça:
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
cabeça_init_personagem_esquerda:

	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeça_personagem_esquerda:
	beq $9, $0 plc_player_personagem_esquerda
		
	sw $20, 4($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeça_personagem_esquerda
plc_player_personagem_esquerda:
	beq $10, $0 detalhe_cabeça_personagem_esquerda
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeça_personagem_esquerda
detalhe_cabeça_personagem_esquerda:
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
	
	

cabeça_init_pulando_direita:

	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeça_pulando_direita:
	beq $9, $0 plc_player_pulando_direita
		
	sw $20, 2568($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeça_pulando_direita
plc_player_pulando_direita:
	beq $10, $0 detalhe_cabeça_pulando_direita
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeça_pulando_direita
detalhe_cabeça_pulando_direita:
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
	
	

cabeça_init_pulando_esquerda:

	addi $8, $8, 1024
	li $9, 4
	li $10, 2
	li $20, 0xffd7a4
cabeça_pulando_esquerda:
	beq $9, $0 plc_player_pulando_esquerda
		
	sw $20, 2560($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j cabeça_pulando_esquerda
plc_player_pulando_esquerda:
	beq $10, $0 detalhe_cabeça_pulando_esquerda
	subi $10, $10, 1
	addi $8, $8, 496
	li $9, 4
	j cabeça_pulando_esquerda
detalhe_cabeça_pulando_esquerda:
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
	beq $9, $0, cabeçagr_init
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
cabeçagr_init:
	addi $8, $8, 1000
	li $20, 0xffd7a4
	li $9, 7
	li $10, 5
cabeçagr:
	beqz $9 plcpr
	
	sw $20, 0($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabeçagr
	
plcpr:
	beqz $10 detalhesCabeçagri
	addi $8, $8, 484
	subi $10, $10, 1
	li $9, 7
	j cabeçagr
	
detalhesCabeçagri:
	subi $8, $8, 2588
	li $9, 2
	li $10, 0x784936 # marrom
	li $11, 0xf474a6 # rosa
	li $20, 0xffd7a4
	li $22 0x000001
detalhesCabeçagr:
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
	j detalhesCabeçagr
	
bigasR_init:
	addi $8, $8 512
	li $20, 0x000001
	li $10, 0xffffff
	li $9, 3
bigasR:
	beqz $9 macacãoR_init
	
	sw $20, 12($8)
	sw $20, 16($8)
	sw $10, 528($8)
	addi $8, $8 4
	addi $9, $9 -1
	j bigasR

macacãoR_init:
	addi $8, $8, 1528
	li $20, 0x9a3894 
	li $9, 3
macacão_e_luvaR:
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
	j macacão_e_luvaR

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
	beq $9, $0, cabeçagl_init

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
cabeçagl_init:
	addi $8, $8, 1000
	li $20, 0xffd7a4
	li $9, 7
	li $10, 5
cabeçagl:
	beqz $9 plcgl
	
	sw $20, -4($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabeçagl
	
plcgl:
	beqz $10 detalhesCabeçagli
	addi $8, $8, 484
	subi $10, $10, 1
	li $9, 7
	j cabeçagl
	
detalhesCabeçagli:
	subi $8, $8, 2588
	li $9, 2
	li $10, 0x784936 # marrom
	li $11, 0xf474a6 # rosa
	li $20, 0xffd7a4
	li $21, 0x000001
detalhesCabeçagl:
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
	j detalhesCabeçagl
	
bigasgl_init:
	addi $8, $8 512
	li $20, 0x000001
	li $10, 0xffffff
	li $9, 3
bigasgl:
	beqz $9 macacãogl_init
	sw $20, -4($8)
	sw $20, 0($8)
	sw $10, 508($8)
	addi $8, $8 4
	addi $9, $9 -1
	j bigasgl

macacãogl_init:
	addi $8, $8, 1528
	li $20, 0x9a3894 
	li $9, 3
macacão_e_luvagl:
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
	j macacão_e_luvagl

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
	beq $9, $0, cabeçagjr_init

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
cabeçagjr_init:
	addi $8, $8, 1004
	li $20, 0xffd7a4
	li $9, 7
	li $10, 5
cabeçagjr:
	beqz $9 plcpgjr
	
	sw $20, 0($8)
	
	addi $8, $8, 4
	addi $9, $9 -1
	j cabeçagjr
	
plcpgjr:
	beqz $10 detalhesCabeçagjri
	addi $8, $8, 484
	subi $10, $10, 1
	li $9, 7
	j cabeçagjr
	
detalhesCabeçagjri:
	subi $8, $8, 2592
	li $9, 2
	li $10, 0x784936 # marrom
	li $11, 0xf474a6 # rosa
	li $20, 0xffd7a4
	li $21, 0x000001
detalhesCabeçagjr:
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
	j detalhesCabeçagjr
	
bigasgjr_init:
	addi $8, $8 512
	li $20, 0x000001
	li $10, 0xffffff
	li $9, 3
bigasgjr:
	beqz $9 macacãogjr_init
	sw $20, 16($8)
	sw $20, 20($8)
	sw $10, 532($8)
	addi $8, $8 4
	addi $9, $9 -1
	j bigasgjr

macacãogjr_init:
	addi $8, $8, 1528
	li $20, 0x9a3894 
	li $9, 3
macacão_e_luvagjr:
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
	j macacão_e_luvagjr

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

cabeça_cogumelo:
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
	j cabeça_cogumelo
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
	jal desenhar_personagem_grande_direita
	
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
	jal timer
	
	add $3 $0 $0
	add $18 $0 $0
	
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
	
personagem_grande_andando_baixo:
	addi $8 $4 2048
	
	add $9 $4 $0
	add $2 $8 $0
	
	add $4 $8 $0
	add $13 $10 $0
	beq $13 $19 personagem_grande_andando_esquerda_baixo
	jal desenhar_personagem_grande_pulando_direita
	j continuacao_para_laco_baixo_grande
personagem_grande_andando_esquerda_baixo:
	jal desenhar_personagem_grande_pulando_direita
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
	jal timer
	
	add $3 $0 $0
	add $18 $0 $0
	
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
	jal desenhar_personagem_grande_pulando_direita
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
	addi $8 $0 63
	bne $6 $8 mapa_3_incompleto
	jal desenhar_mapa_4
	addi $5 $5 1

mapa_3_incompleto:
	addi $8 $0 94
	bne $6 $8 mapa_4_incompleto
	addi $5 $5 1
	
mapa_4_incompleto:
	jal andar_mapa
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
	addi $10 $10 30720
	addi $9 $0 128
laco_verificar_saiu_da_tela_2:
	beq $9 $0 fim_laco_verificar_saiu_da_tela_2
	
	beq $8 $10 saiu_da_tela

	addi $10 $10 4
	
	addi $9 $9 -1
	j laco_verificar_saiu_da_tela_2
fim_laco_verificar_saiu_da_tela_2:
	
	add $2 $0 $0
	
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
	jal desenhar_personagem_direita
	
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
	addi $9 $9 -1
	j laco_personagem_morrendo_subindo_1
fim_laco_personagem_morrendo_subindo_1:
	addi $9 $0 10
laco_personagem_morrendo_descendo_1:
	beq $9 $0 fim_laco_personagem_morrendo_descendo_1
	addi $8 $8 2048
	addi $10 $8 -2048
	add $4 $8 $0
	jal desenhar_personagem_direita
	
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
# funcao timer

timer:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	
	addi $8 $0 50000
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
