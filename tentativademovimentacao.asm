.text
main:
	add $20 $0 $0 # registrador que vai guardar quantos cenarios ja foram desenhados
	add $22 $0 $0 # registrador que vai guardar quantas vezes o mapa andou
	jal desenhar_mapa_1
	addi $20 $20 1
	
	jal desenhar_mapa_2
	addi $20 $20 1
	
	jal desenhar_personagem
	add $8 $2 $0 # registrador que vai guardar a posicao do personagem
	
	lui $9 0xffff
	addi $10 $0 'a'
	addi $11 $0 'd'
	addi $12 $0 'w'
	
loop_principal:
	lw $21 0($9)
	beq $21 $0 baixo
	lw $21 4($9)
	beq $21 $10 esquerda
	beq $21 $11 direita
	beq $21 $12 cima
	
	j continuacao
	
esquerda:
	add $4 $8 $0
	jal andar_para_esquerda
	add $8 $2 $0
	
	j continuacao
	
direita:
	add $4 $8 $0
	add $5 $20 $0
	add $6 $22 $0
	jal andar_para_direita
	add $8 $2 $0
	add $22 $3 $0
	add $20 $25 $0
	
	j continuacao
	
baixo:
	add $4 $8 $0
	jal andar_para_baixo
	add $8 $2 $0
	
	j continuacao
	
cima:
	addi $15 $0 15
laco_andar_cima:
	beq $15 $0 fim_laco_andar_cima
	
	lw $21 0($9)
	beq $21 $0 continuacao_cima
	lw $21 4($9)
	beq $21 $10 esquerda_cima
	beq $21 $11 direita_cima

continuacao_cima: 
	add $4 $8 $0
	jal andar_para_cima
	add $8 $2 $0
	addi $15 $15 -1
	j laco_andar_cima
fim_laco_andar_cima:
	
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
	addi $8, $8, 11452
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
	beq $11, $0, dtvipc
	lui $8, 0x1001
	addi $8, $8, 11448
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
	beq $11, $0, dthipc
	lui $8, 0x1001
	addi $8, $8, 11448
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
	
dtvipc:
	lui $8, 0x1001
	addi $8, $8, 11536
	li $20, 0x000000
	li $9, 3
	j detalhe_tijoloV

dthipc:
	lui $8, 0x1001
	addi $8, $8, 11536
	li $20, 0x000000
	li $9, 11
	j detalhe_tijoloH
	
prox_t:
	beq $11, $0, caixa_init
	lui $8, 0x1001
	addi $8, $8, 11536
	li $20, 0xed6408
	li $9, 11
	li $10, 11
	addi $11, $11, -1
	j tijolo
	
caixa_init:
	lui $8, 0x1001
	addi $8, $8, 11496
	li $20, 0xfbbe2e
	li $9, 11
	li $10, 11

caixa:
	beq $9, $0, plc
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j caixa
	
plc:
	beq $10, $0, interro_init
	addi $10, $10, -1
	addi $8, $8, 468
	li $9, 11
	j caixa
	
	
interro_init:
	lui $8, 0x1001
	addi $8, $8, 12020
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
	j fim_mapa_2
	
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
       	
	lui $8 0x1001
	addi $9 $0 8192
	addi $10 $0 0x0000ff

laco_desenhar_mapa_3:
	beq $9 $0 fim_laco_desenhar_mapa_3
	
	sw $10 32768($8)
	sw $10 98304($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	
	j laco_desenhar_mapa_3
fim_laco_desenhar_mapa_3:
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
# - funcao para desenhar personagem
# - registrador de entrada: -
# - registrador de saida: $2

desenhar_personagem:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	
	lui $8 0x1001
	addi $9 $0 0xffffff
	
	sw $9 0($8)
	add $2 $8 $0
	
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
       	
       	bne $8 $0 nao_anda_esquerda
       	
	addi $8 $0 0xffffff
	
	sw $8 0($4)
	sw $8 -4($4)
	
	lw $8 65536($4)
	sw $8 0($4)
	
	addi $4 $4 -4
	
	jal timer
	
	add $2 $4 $0
	
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
nao_anda_esquerda:
	add $2 $4 $0
	
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
       	
       	bne $8 $0 nao_anda_direita
       	
	jal verificar_metade_mapa
	bne $2 $0 mexer_mapa
	
	addi $8 $0 0xffffff
	
	sw $8 0($4)
	sw $8 4($4)
	
	lw $8 65536($4)
	sw $8 0($4)
	
	addi $4 $4 4
	
	jal timer
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	
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
       	
       	bne $8 $0 nao_anda_baixo
       	
	addi $8 $0 0xffffff
	
	sw $8 0($4)
	sw $8 512($4)
	
	lw $8 65536($4)
	sw $8 0($4)
	
	addi $4 $4 512
	
	jal timer
	
	add $2 $4 $0
	
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
nao_anda_baixo:
	add $2 $4 $0
	
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
       	
       	bne $8 $0 nao_anda_cima
       	
	addi $8 $0 0xffffff
	
	sw $8 0($4)
	sw $8 -512($4)
	
	lw $8 65536($4)
	sw $8 0($4)
	
	addi $4 $4 -512
	
	jal timer
	
	add $2 $4 $0
	
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
nao_anda_cima:
	add $2 $4 $0
	
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
       	
	addi $8 $0 3
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
	
	addi $14 $4 4
	
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

nao_desenhar_mapa_3:
	addi $8 $0 63
	bne $6 $8 mapa_3_incompleto
	addi $5 $5 1

mapa_3_incompleto:
	jal andar_mapa
	jal timer
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
	
	lw $14 65556($8)
	sw $14 4($8)
	sw $14 65540($8)
	
	lw $14 65560($8)
	sw $14 8($8)
	sw $14 65544($8)
	
	lw $14 65564($8)
	sw $14 12($8)
	sw $14 65548($8)
	
	
	lw $14 66064($8)
	sw $14 512($8)
	sw $14 66048($8)
	
	lw $14 66068($8)
	sw $14 516($8)
	sw $14 66052($8)
	
	lw $14 66072($8)
	sw $14 520($8)
	sw $14 66056($8)
	
	lw $14 66076($8)
	sw $14 524($8)
	sw $14 66060($8)
	
	
	lw $14 66576($8)
	sw $14 1024($8)
	sw $14 66560($8)
	
	lw $14 66580($8)
	sw $14 1028($8)
	sw $14 66564($8)
	
	lw $14 66584($8)
	sw $14 1032($8)
	sw $14 66568($8)
	
	lw $14 66588($8)
	sw $14 1036($8)
	sw $14 66572($8)
	
	
	
	lw $14 67088($8)
	sw $14 1536($8)
	sw $14 67072($8)
	
	lw $14 67092($8)
	sw $14 1540($8)
	sw $14 67076($8)
	
	lw $14 67096($8)
	sw $14 1544($8)
	sw $14 67080($8)
	
	lw $14 67100($8)
	sw $14 1548($8)
	sw $14 67084($8)
	
	sw $9 0($4)
	
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
	
	lw $14 32772($15)
	sw $14 4($8)
	sw $14 65540($8)
	
	lw $14 32776($15)
	sw $14 8($8)
	sw $14 65544($8)
	
	lw $14 32780($15)
	sw $14 12($8)
	sw $14 65548($8)
	
	
	lw $14 33280($15)
	sw $14 512($8)
	sw $14 66048($8)
	
	lw $14 33284($15)
	sw $14 516($8)
	sw $14 66052($8)
	
	lw $14 33288($15)
	sw $14 520($8)
	sw $14 66056($8)
	
	lw $14 33292($15)
	sw $14 524($8)
	sw $14 66060($8)
	
	
	lw $14 33792($15)
	sw $14 1024($8)
	sw $14 66560($8)
	
	lw $14 33796($15)
	sw $14 1028($8)
	sw $14 66564($8)
	
	lw $14 33800($15)
	sw $14 1032($8)
	sw $14 66568($8)
	
	lw $14 33804($15)
	sw $14 1036($8)
	sw $14 66572($8)
	
	
	
	lw $14 34304($15)
	sw $14 1536($8)
	sw $14 67072($8)
	
	lw $14 34308($15)
	sw $14 1540($8)
	sw $14 67076($8)
	
	lw $14 34312($15)
	sw $14 1544($8)
	sw $14 67080($8)
	
	lw $14 34316($15)
	sw $14 1548($8)
	sw $14 67084($8)
	
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
       	
	add $8 $4 $24
	lw $8 0($8)
	
	beq $8 $23 houve_colisao
	
	add $2 $0 $0
	
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
houve_colisao:
	addi $2 $0 1
	
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
