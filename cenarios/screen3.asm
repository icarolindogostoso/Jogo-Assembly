.text
ceu_init_m3:  
	lui $8, 0x1001
	addi $8, $8, 65536 # converte para proxima tela
	li $9, 8192
	li $20, 0x0ec7db
ceu_m3:
	beq $9, $0, nuvem_init_m3
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j ceu_m3

nuvem_init_m3:
	lui $8, 0x1001
	addi $8, $8, 5212
	addi $8, $8, 65536 # converte para proxima tela
	li $21, 1
	li $9, 12
	li $20, 0xfbfdff
	
nuvem_m3:
	beq $9, $0, proxima_nuvem_m3
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
	j nuvem_m3

proxima_nuvem_m3:
	beq $21 $0 solo_init_m3
	addi $21, $21, -1
	addi $8, $8, -2872
	li $9, 12
	j nuvem_m3
	
# chao/piso/solo
	
solo_init_m3:
	li $20, 0xc89858
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $8, $8, 65536 # converte para proxima tela
	li $9, 6554
	
solo_m3:
	beq $9, $0, detalhe_solo_init_m3
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j solo_m3
	
	
detalhe_solo_init_m3:
	li $20, 0xe0c050
	li $21, 2
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $8, $8, 65536
	li $9, 16

detalhe_solo_m3:
	beq $9, $0, npds_m3
	
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

	j detalhe_solo_m3
	
npds_m3:
	beq $21, $0 grama_init_m3
	addi $21, $21, -1
	addi $8, $8, 2604
	li $9, 16
	j detalhe_solo_m3
	
grama_init_m3:
	li $20, 0x00c800
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $8, $8, 65536 # converte para proxima tela
	li $9, 128
	
grama_m3:
	beq $9, $0, dg_init_m3
	
	sw $20, 0($8)
	sw $20, 512($8)
	sw $20, 65536($8)
	sw $20, 66048($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j grama_m3
	
dg_init_m3:
	li $21, 0x786818
	li $9, 26
	
dg_m3:
	beq $9, $0, moita_init_m3
	
	
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
	j dg_m3

moita_init_m3:
	lui $8, 0x1001
	addi $8, $8, 21324
	addi $8, $8, 65536 # converte para proxima tela
	li $9, 5
	li $20, 0x03f906
	
moita_m3:
	beq $9, $0, dm_m3
	#line 1
	sw $20, 52($8)
	sw $20, 65588($8)
	
	#line 2
	sw $20, 560($8)
	sw $20, 568($8)
	sw $20, 66096($8)
	sw $20, 66104($8)
	
	#line 3
	sw $20, 1064($8)
	sw $20, 1080($8)
	sw $20, 66600($8)
	sw $20, 66616($8)
	
	#line 4
	sw $20, 1576($8)
	sw $20, 1596($8)
	sw $20, 67112($8)
	sw $20, 67132($8)
	
	#line 5
	sw $20, 2088($8)
	sw $20, 2108($8)
	sw $20, 2120($8)
	sw $20, 67624($8)
	sw $20, 67644($8)
	sw $20, 67656($8)
	
	#line6
	sw $20, 2596($8)
	sw $20, 2616($8)
	sw $20, 2632($8)
	sw $20, 68132($8)
	sw $20, 68152($8)
	sw $20, 68168($8)
	
	#line7
	sw $20, 3104($8)
	sw $20, 3124($8)
	sw $20, 3144($8)
	sw $20, 68640($8)
	sw $20, 68660($8)
	sw $20, 68680($8)
	
	#line 8*
	sw $20, 3604($8)
	sw $20, 3624($8)
	sw $20, 3644($8)
	sw $20, 3660($8)
	sw $20, 69140($8)
	sw $20, 69160($8)
	sw $20, 69180($8)
	sw $20, 69196($8)
	
	#line 9
	sw $20, 4112($8)
	sw $20, 4132($8)
	sw $20, 4152($8)
	sw $20, 4172($8)
	sw $20, 69648($8)
	sw $20, 69668($8)
	sw $20, 69688($8)
	sw $20, 69708($8)
	
	#line 10
	sw $20, 4620($8)
	sw $20, 4640($8)
	sw $20, 4660($8)
	sw $20, 4680($8)
	sw $20, 4696($8)
	sw $20, 70156($8)
	sw $20, 70176($8)
	sw $20, 70196($8)
	sw $20, 70216($8)
	sw $20, 70232($8)
	
	#line 11
	sw $20, 5132($8)
	sw $20, 5152($8)
	sw $20, 5172($8)
	sw $20, 5192($8)
	sw $20, 5208($8)
	sw $20, 70668($8)
	sw $20, 70688($8)
	sw $20, 70708($8)
	sw $20, 70728($8)
	sw $20, 70744($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j moita_m3
dm_m3: 
	lui $8, 0x1001
	addi $8, $8, 21324
	addi $8, $8, 32768 # converte para proxima tela
	
	sw $20, 1624($8)
	sw $20, 3688($8)
	sw $20, 4200($8)
	sw $20, 4196($8)
	
	sw $20, 67160($8)
	sw $20, 69224($8)
	sw $20, 69736($8)
	sw $20, 69732($8)
	j topo_cano_init_m3
	
# parte de cima do cano
	
topo_cano_init_m3:
	lui $8, 0x1001
	addi $8, $8, 19004
	addi $8, $8, 65536 # converte para proxima tela
	li $20, 0x00ff50
	li $9, 16
	li $10, 4
	li $11, 1
	
topo_cano_m3:
	beq $9, $0 pltc_m3
	
	sw $20, 0($8)
	sw $20, 65536($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j topo_cano_m3

pltc_m3:
	beq $10, $0, borda_tchi_m3
	addi $8, $8, 448
	li $9, 16
	subi $10, $10, 1
	j topo_cano_m3
	
borda_tchi_m3:
	subi $8, $8, 2628
	li $20, 0x000000
	li $9, 18
borda_tch_m3:
	beq $9, $0 borda_tcvi_m3
	
	sw $20, 0($8)
	sw $20, 65536($8)
	sw $20, 3072($8)
	sw $20, 68608($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j borda_tch_m3
	
borda_tcvi_m3:
	subi $8, $8, 72
	li $9, 6
	
borda_tcv_m3:
	beq $9, $0 cano_init_m3
	
	sw $20, 0($8)
	sw $20, 65536($8)
	sw $20, 68($8)
	sw $20, 65604($8)
	
	addi $8, $8, 512
	subi $9, $9, 1
	j borda_tcv_m3


# parte de baixo cano

cano_init_m3:
	lui $8, 0x1001
	addi $8, $8, 22592
	addi $8, $8, 65536 # converte para proxima tela
	li $20, 0x00ff50
	li $9, 14
	li $10, 7
	li $11, 1
	li $21, 4156
	li $13, 9

cano_m3:
	beq $9, $0 plc_m3
	
	sw $20, 0($8)
	sw $20, 65536($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j cano_m3
plc_m3:
	beq $10, $0, borda_cano_init_m3
	addi $8, $8, 456
	li $9, 14
	subi $10, $10, 1
	j cano_m3
	
borda_cano_init_m3:
	sub $8, $8, $21
	li $20, 0x000000
	li $9, 16
borda_ch_m3:
	beq $9, $0 borda_cvi_m3
	
	sw $20, 0($8)
	sw $20, 65536($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j borda_ch_m3
	
borda_cvi_m3:
	subi $8, $8, 64
	move $9, $13
	
borda_cv_m3:
	beq $9, $0 buraco_init
	
	sw $20, 0($8)
	sw $20, 65536($8)
	sw $20, 60($8)
	sw $20, 65596($8)
	
	addi $8, $8, 512
	subi $9, $9, 1
	j borda_cv_m3

buraco_init:
	lui $8, 0x1001
	addi $8, $8, 26800
	addi $8, $8, 65536 # converte para proxima tela
	li $20, 0x0ec7db
	li $9, 18
	li $10, 10
	
buraco:
	beq $9, $0 plb_m3
	
	sw $20, 0($8)
	sw $20, 65536($8)

	
	addi $8, $8, 4
	subi $9, $9, 1
	j buraco
plb_m3:
	beq $10, $0 dead_line_init
	subi $10, $10, 1
	
	addi $8, $8, 440
	li $9, 18
	j buraco

dead_line_init:
	li $20, 0x0ec7da
	addi $8, $8, 440
	li $9, 18
dead_line:	
	beq $9, $0 tijolo_init_m3
	
	sw $20, 0($8)
	sw $20, 65536($8)

	
	addi $8, $8, 4
	subi $9, $9, 1
	j dead_line	
	
tijolo_init_m3:
	lui $8, 0x1001
	addi $8, $8, 11572
	addi $8, $8, 65536 # converte para proxima tela
	li $20, 0xed6408
	li $9, 11
	li $10, 11
	li $11, 2
	
tijolo_m3:
	beq $9, $0, plt_m3
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j tijolo_m3
	
plt_m3:
	beq $10, $0, dtvi_m3
	addi $10, $10, -1
	addi $8, $8, 468
	li $9, 11
	j tijolo_m3
	
dtvi_m3:
	subi $8, $8, 5680
	
	li $20, 0x000000
	li $9, 3
	
detalhe_tijoloV_m3:
	beq $9, $0 dthi_m3
	
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
	j detalhe_tijoloV_m3
	
dthi_m3:
	subi $8, $8, 1536
	li $20, 0x000000
	li $9, 11
	
detalhe_tijoloH_m3:
	beq $9, $0 , prox_tijolo
	
	sw $20 1540($8)
	sw $20 3588($8)
	sw $20 5636($8)
	sw $20 67076($8)
	sw $20 69124($8)
	sw $20 71172($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j detalhe_tijoloH_m3
	
prox_tijolo:
	beq $11, $0, fim
	addi $8, $8, 4
	li $20, 0xed6408
	li $9, 11
	li $10, 11
	addi $11, $11, -1
	j tijolo_m3
	
fim:
	li $2, 10
	syscall
	
       
