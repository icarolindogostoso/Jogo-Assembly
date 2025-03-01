playergr_init:
	lui $8, 0x1001
	addi $8, $8, 11300
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
	
	sw $0, 16($8)
	
	sw $20, 508($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j detalhesCabeçagr
	
bigasR_init:
	addi $8, $8 512
	li $20, 0
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
bordash:
	beqz $9 bordasv_init
	
	sw $0, 0($8)
	sw $0, 8($8)
	sw $0, 16($8)
	sw $0, 536($8)
	
	sw $0, 1556($8)
	sw $0, 1560($8)
	
	sw $0, 3608($8)
	sw $0, 4088($8)
	sw $0, 4092($8)
	sw $0, 3064($8)
	
	sw $0, 6140($8)
	sw $0, 6644($8)
	sw $0, 7172($8)
	
	sw $0, 4592($8)
	

	addi $8, $8, 4
	addi $9, $9, -1
	j bordash
	
bordasv_init:
	li $9, 2
bordasv:
	beqz $9 detalhes_finais_player
	
	sw $0, 1008($8)
	sw $0, 2028($8)
	sw $0, 2072($8)
	sw $0, 2584($8)
	sw $0, 3600($8)
	sw $0, 3572($8)
	
	sw $0, 5092($8)#braço esquerda
	sw $0, 5660($8) #braço direita
	sw $0, 6680($8)# pe direito
	sw $0, 7144($8)# outro pe
	
	addi $8, $8, 512
	addi $9, $9, -1
	j bordasv

detalhes_finais_player:
	subi $8, $8 524
	li $20, 0xffffff
	li $21, 0x9a3894
	
	sw $0, 0($8)
	sw $20, 24($8)
	sw $0, 548($8)
	#macacao
	sw $21, 4104($8)
	sw $21, 4120($8)
	sw $21, 4636($8)
	
	sw $0, 4128($8)#pescoço frente
	sw $0, 4644($8)
	
	sw $0, 5128($8)

	sw $0, 6656($8)
	sw $0, 6676($8)
	sw $0, 6168($8)
	sw $0, 7184($8)
	sw $0, 7172($8)
	sw $0, 7200($8)
	
	sw $0, 5620($8)
	sw $20, 5648($8)
	sw $20, 5660($8)

fim:
	li $2, 10
	syscall
