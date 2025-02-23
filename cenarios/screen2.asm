.text
ceu_init_m2:  
	lui $8, 0x1001
	addi $8, $8, 32768 # converte para proxima tela
	li $9, 8192
	li $20, 0x0ec7db
ceu_m2:
	beq $9, $0, nuvem_init_m2
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j ceu_m2

nuvem_init_m2:
	lui $8, 0x1001
	addi $8, $8, 3204
	addi $8, $8, 32768 # converte para proxima tela
	li $21, 1
	li $9, 12
	li $20, 0xfbfdff
	
nuvem_m2:
	beq $9, $0, proxima_nuvem_m2
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
	j nuvem_m2

proxima_nuvem_m2:
	beq $21 $0 solo_init_m2
	addi $21, $21, -1
	addi $8, $8, 3296
	li $9, 12
	j nuvem_m2
	
# chao/piso/solo
	
solo_init_m2:
	li $20, 0xc89858
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $8, $8, 32768 # converte para proxima tela
	li $9, 6554
	
solo_m2:
	beq $9, $0, detalhe_solo_init_m2
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j solo_m2
	
	
detalhe_solo_init_m2:
	li $20, 0xe0c050
	li $21, 2
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $8, $8, 32768
	li $9, 16

detalhe_solo_m2:
	beq $9, $0, npds_m2
	
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

	j detalhe_solo_m2
npds_m2:
	beq $21, $0 grama_init_m2
	addi $21, $21, -1
	addi $8, $8, 2604
	li $9, 16
	j detalhe_solo_m2
	
grama_init_m2:
	li $20, 0x00c800
	lui $8, 0x1001
	addi $8, $8, 26624
	addi $8, $8, 32768 # converte para proxima tela
	li $9, 128
	
grama_m2:
	beq $9, $0, dg_init_m2
	
	sw $20, 0($8)
	sw $20, 512($8)
	sw $20, 65536($8)
	sw $20, 66048($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j grama_m2
	
dg_init_m2:
	li $21, 0x786818
	li $9, 26
	
dg_m2:
	beq $9, $0, moita_init_m2
	
	
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
	j dg_m2

moita_init_m2:
	lui $8, 0x1001
	addi $8, $8, 21156
	addi $8, $8, 32768 # converte para proxima tela
	li $9, 5
	li $20, 0x03f906
	
moita_m2:
	beq $9, $0, dm_m2
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
	j moita_m2
dm_m2: 
	lui $8, 0x1001
	addi $8, $8, 21156
	addi $8, $8, 32768 # converte para proxima tela
	
	sw $20, 1624($8)
	sw $20, 3688($8)
	sw $20, 4200($8)
	sw $20, 4196($8)
	
	sw $20, 67160($8)
	sw $20, 69224($8)
	sw $20, 69736($8)
	sw $20, 69732($8)
	j topo_cano_init
	
topo_cano_init:
	lui $8, 0x1001
	addi $8, $8, 19004
	addi $8, $8, 32768 # converte para proxima tela
	li $20, 0x00ff50
	li $9, 16
	li $10, 4
	li $11, 1
	
topo_cano:
	beq $9, $0 pltc
	
	sw $20, 0($8)
	sw $20, 65536($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j topo_cano	

pltc:
	beq $10, $0, borda_tchi
	addi $8, $8, 448
	li $9, 16
	subi $10, $10, 1
	j topo_cano
	
borda_tchi:
	subi $8, $8, 2628
	li $20, 0x000000
	li $9, 18
borda_tch:
	beq $9, $0 borda_tcvi
	
	sw $20, 0($8)
	sw $20, 65536($8)
	sw $20, 3072($8)
	sw $20, 68608($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j borda_tch
	
borda_tcvi:
	subi $8, $8, 72
	li $9, 6
	
borda_tcv:
	beq $9, $0 prox_tc
	
	sw $20, 0($8)
	sw $20, 65536($8)
	sw $20, 68($8)
	sw $20, 65604($8)
	
	addi $8, $8, 512
	subi $9, $9, 1
	j borda_tcv

prox_tc:
	beq $11, $0 cano_init
	subi $11, $11, 1
	lui $8, 0x1001
	addi $8, $8, 17292
	addi $8, $8, 32768 # converte para proxima tela
	li $20, 0x00ff50
	li $9, 16
	li $10, 4
	j topo_cano
	
# cano

cano_init:
	lui $8, 0x1001
	addi $8, $8, 22592
	addi $8, $8, 32768 # converte para proxima tela
	li $20, 0x00ff50
	li $9, 14
	li $10, 7
	li $11, 1
	li $21, 4156
	li $13, 9

cano:
	beq $9, $0 plc
	
	sw $20, 0($8)
	sw $20, 65536($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j cano
plc:
	beq $10, $0, borda_cano_init
	addi $8, $8, 456
	li $9, 14
	subi $10, $10, 1
	j cano
	
borda_cano_init:
	sub $8, $8, $21
	li $20, 0x000000
	li $9, 16
borda_ch:
	beq $9, $0 borda_cvi
	
	sw $20, 0($8)
	sw $20, 65536($8)
	
	addi $8, $8, 4
	subi $9, $9, 1
	j borda_ch
	
borda_cvi:
	subi $8, $8, 64
	move $9, $13
	
borda_cv:
	beq $9, $0 prox_cano
	
	sw $20, 0($8)
	sw $20, 65536($8)
	sw $20, 60($8)
	sw $20, 65596($8)
	
	addi $8, $8, 512
	subi $9, $9, 1
	j borda_cv
	
prox_cano:
	beq $11, $0, fim
	li $11, 0
	
	lui $8, 0x1001
	addi $8, $8, 20880
	addi $8, $8, 32768 # converte para proxima tela
	
	li $20, 0x00ff50
	
	li $9, 14
	li $10, 11
	li $21, 6204
	li $13, 13
	j cano
	
fim:
	li $2, 10
	syscall
	
       
