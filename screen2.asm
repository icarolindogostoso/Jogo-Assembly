.text
ceu_init:  
	lui $8, 0x1001
	li $9, 32768
	li $20, 0x0ec7db
ceu:
	beq $9, $0, nuvem_init
	sw $20, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j ceu

nuvem_init:
	lui $8, 0x1001
	addi $8, $8, 2060
	li $21, 1
	li $9, 12
	li $20, 0xfbfdff
	
nuvem:
	beq $9, $0, proxima_nuvem
	#linha 1
	sw $20, 16($8)
	
	# linha 2 e 3
	sw $20, 520($8)
	sw $20, 532($8)
	
	sw $20, 1032($8)
	sw $20, 1068($8)
	
	# linha 4
	sw $20, 1532($8)
	sw $20, 1580($8)
	sw $20, 1588($8)

	# linha 5 a 8
	sw $20, 2040($8)
	sw $20, 2080($8)
	sw $20, 2104($8)
	
	sw $20, 2552($8)
	sw $20, 2568($8)
	sw $20, 2616($8)
	
	sw $20, 3064($8)
	sw $20, 3080($8)
	sw $20, 3128($8)
	
	sw $20, 3576($8)
	sw $20, 3592($8)
	sw $20, 3640($8)
	
	# linha 9
	sw $20, 4092($8)
	sw $20, 4140($8)
	sw $20, 4148($8)
	
	# linha 10
	sw $20, 4632($8)
	
	
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
	
	sw $20, 1036($8)
	sw $20, 1548($8)

	
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
	
	addi $8, $8, 4
	addi $9, $9, -1
	j grama
	
dg_init:
	li $21, 0x786818
	li $9, 26
	
dg:
	beq $9, $0, moita_init
	
	sw $20, 0($8)
	sw $20, 4($8)
	sw $20, 12($8)
	
	# sombras
	sw $21, 8($8)
	sw $21, 16($8)
	sw $21, 512($8)
	sw $21, 516($8)
	sw $21, 524($8)
	
	addi $8, $8, 20
	addi $9, $9, -1
	j dg

moita_init:
	lui $8, 0x1001
	addi $8, $8, 21116
	li $9, 5
	li $20, 0x03f906
	
moita:
	beq $9, $0, dm
	#line 1
	sw $20, 52($8)
	
	#line 2
	sw $20, 560($8)
	sw $20, 568($8)
	
	#line 3
	sw $20, 1064($8)
	sw $20, 1080($8)
	
	#line 4
	sw $20, 1576($8)
	sw $20, 1596($8)
	
	#line 5
	sw $20, 2088($8)
	sw $20, 2108($8)
	sw $20, 2120($8)
	
	#line6
	sw $20, 2596($8)
	sw $20, 2616($8)
	sw $20, 2632($8)
	
	#line7
	sw $20, 3104($8)
	sw $20, 3124($8)
	sw $20, 3144($8)
	
	#line 8*
	sw $20, 3604($8)
	sw $20, 3624($8)
	sw $20, 3644($8)
	sw $20, 3660($8)
	
	#line 9
	sw $20, 4112($8)
	sw $20, 4132($8)
	sw $20, 4152($8)
	sw $20, 4172($8)
	
	#line 10
	sw $20, 4620($8)
	sw $20, 4640($8)
	sw $20, 4660($8)
	sw $20, 4680($8)
	sw $20, 4696($8)
	
	#line 11
	sw $20, 5132($8)
	sw $20, 5152($8)
	sw $20, 5172($8)
	sw $20, 5192($8)
	sw $20, 5208($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j moita
dm: 
	lui $8, 0x1001
	addi $8, $8, 21116
	
	sw $20, 1624($8)
	sw $20, 3688($8)
	sw $20, 4200($8)
	sw $20, 4196($8)
	
fim:
	li $2, 10
	syscall
	

       