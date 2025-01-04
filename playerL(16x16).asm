
playergl_init:
	lui $8, 0x1001
	addi $8, $8, 11300
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
	
	sw $0, 4($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j detalhesCabeçagl
	
bigasgl_init:
	addi $8, $8 512
	li $20, 0
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
	li $9, 2
bordashgl:
	beqz $9 bordasvgl_init
	
	sw $0, -8($8)
	sw $0, 0($8)
	sw $0, 8($8)
	sw $0, 496($8)
	
	sw $0, 1520($8)
	sw $0, 1524($8)
	
	sw $0, 3088($8)
	
	sw $0, 3568($8) #abaixo do nariz
	sw $0, 4108($8) #pescoço
	sw $0, 4112($8)
	
	sw $0, 4632($8)#cima luva
	sw $0, 6156($8)#baixo braço
	sw $0, 6676($8)#pe direita
	sw $0, 7172($8)#pe exquerda

	

	addi $8, $8, 4
	addi $9, $9, -1
	j bordashgl
	
bordasvgl_init:
	li $9, 2
bordasvgl:
	beqz $9 detalhes_finais_playergl
	
	sw $0, 1036($8)#bone
	
	sw $0, 2064($8) #orelha
	sw $0, 2020($8)# nariz
	sw $0, 2532($8)#nariz tbm
	sw $0, 3592($8)#parte da orelha
	sw $0, 3564($8)# parte do nariz
	
	sw $0, 5144($8)#braço esquerda
	sw $0, 5600($8) #braço direita
	sw $0, 6628($8)# pe direito
	sw $0, 7188($8)# outro pe
	
	addi $8, $8, 512
	addi $9, $9, -1
	j bordasvgl

detalhes_finais_playergl:
	subi $8, $8 524
	li $20, 0xffffff
	li $21, 0x9a3894
	
	sw $0, 20($8)
	sw $20, -4($8)

	sw $0, 496($8)
	#macacao
	sw $21, 4092($8)
	sw $21, 4108($8)#direita
	sw $21, 4612($8)
	
	sw $20, 5636($8)#botoes
	sw $20, 5624($8)
	
	sw $0, 4084($8)#pescoço frente
	sw $0, 4592($8)
	
	sw $0, 5132($8)#braço
	sw $0, 5664($8)
	
	sw $0, 6656($8)
	sw $0, 6676($8)
	sw $0, 6140($8)
	
	sw $0, 7184($8)
	sw $0, 7172($8)
	sw $0, 7156($8)
	
	

fim:
	li $2, 10
	syscall
