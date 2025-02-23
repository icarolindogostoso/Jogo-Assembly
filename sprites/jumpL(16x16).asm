
playergjr_init:
	lui $8, 0x1001
	addi $8, $8, 11300
	li $20, 0xfdff0e
	li $9, 5

amarelosgjr:
	beq $9, $0, cabeçagjr_init

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
	j amarelosgjr
cabeçagjr_init:
	addi $8, $8, 1004
	li $20, 0xffd7a4
	li $9, 7
	li $10, 5
cabeçagjr:
	beqz $9 plcpgjr
	
	sw $20, 4($8)
	
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
	j detalhesCabeçagjr
	
bigasgjr_init:
	addi $8, $8 512
	li $20, 0x000001
	li $10, 0xffffff
	li $9, 3
bigasgjr:
	beqz $9 macacãogjr_init
	sw $20, 8($8)
	sw $20, 12($8)
	sw $10, 520($8)
	
	addi $8, $8 4
	addi $9, $9 -1
	j bigasgjr

macacãogjr_init:
	addi $8, $8, 1528
	li $20, 0x9a3894 
	li $9, 3
macacão_e_luvagjr:
	beqz $9 sapatosgjr_init

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
	j macacão_e_luvagjr

sapatosgjr_init:
	addi $8, $8, 516
	li $9, 3
	li $20, 0x2b7741
sapatosgjr:
	beqz $9 bordashgjr_init
	
	sw $20, -1044($8)
	sw $20, -528($8)
	sw $20, -16($8)
	sw $20, 500($8)
	sw $20, 28($8)
	sw $20, 540($8)
	sw $20, 1052($8)
	

	addi $8, $8, 4
	addi $9, $9, -1
	j sapatosgjr
bordashgjr_init:
	subi $8, $8, 6672
	li $10, 0x000001
	li $9, 2
bordashgjr:
	beqz $9 bordasvgjr_init
	
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
	j bordashgjr
	
bordasvgjr_init:
	li $9, 2
bordasvgjr:
	beqz $9 detalhes_finais_playergjr
	
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
	j bordasvgjr

detalhes_finais_playergjr:
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
	


fim:
	li $2, 10
	syscall
