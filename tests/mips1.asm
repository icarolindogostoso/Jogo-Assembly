.text
main:
	lui $8 0x1001 # aqui vai ficar a locaizacao do personagem no mapa
	jal cenario # desenhar o cenario verde ai do fundo
	add $4 $8 $0 # endereco do personagem no $4 pra usar dentro da funcao
	jal personagem # vai desenhar o personagem em uma matriz 4x4
	add $4 $8 $0
	jal apagarP # vai tirar os pontos da matriz que nao faz parte do personagem
	addi $9 $0 256
lacoprincipal:
	beq $9 $0 fimprincipal
	add $4 $8 $0
	jal andar # andar
	add $8 $4 $0 # vai retornar a nova posicao do personagem
	jal sleep # esperar
	addi $9 $9 -1
	j lacoprincipal
fimprincipal:
	addi $2 $0 10
	syscall
	
	

cenario:
	sw $8, 0($29)		# toda essa parte aqui é so pra salvar os registradores que eu usei
       	addi $29, $29, -4	# dentro do codigo porque tava dando problema, vou usar isso em todas
       	sw $9, 0($29)		# as funcoes, beijos
       	addi $29, $29, -4
       	sw $10, 0($29)
       	addi $29, $29, -4
       	
	lui $8 0x1001
	ori $9 0x00ff00
	addi $10 $0 512
lacoc:
	beq $10 $0 fimC
	sw $9 0($8)
	sw $9 2048($8)
	addi $8 $8 4
	addi $10 $10 -1
	j lacoc
fimC:
	addi $29, $29, 4        # botando de volta os valores que tavam nos registradores que                                          
       	lw $10, 0($29)		# eu usei
       	addi $29, $29, 4                                                    
       	lw $9, 0($29)
       	addi $29, $29, 4                                                    
       	lw $8, 0($29)
	jr $31
	
	
personagem:
	sw $8, 0($29)
       	addi $29, $29, -4
       	sw $10, 0($29)
       	addi $29, $29, -4
       	sw $11, 0($29)
       	addi $29, $29, -4
       	
	add $8 $4 $0
	ori $10 $0 0xffffff	# o boneco vai ser branco
	ori $11 $0 0xff0000	# vermelho vai ser a cor que vamos trocar depois
	
	sw $11 0($8)		# aqui eu to desenhando cada linha da matriz 4x4 do personagem
	addi $8 $8 4		# eu ate queria usar laço mas nao sabia como eu ia fazer pra deixar
	sw $10 0($8)		# os pontos especificos que eu queria com a cor diferente
	addi $8 $8 4
	sw $10 0($8)
	addi $8 $8 4
	sw $11 0($8)
	addi $8 $8 4
	
	addi $8 $8 -16
	addi $8 $8 128
	sw $10 0($8)
	addi $8 $8 4
	sw $10 0($8)
	addi $8 $8 4
	sw $10 0($8)
	addi $8 $8 4
	sw $10 0($8)
	addi $8 $8 4
	
	addi $8 $8 -16
	addi $8 $8 128
	sw $10 0($8)
	addi $8 $8 4
	sw $10 0($8)
	addi $8 $8 4
	sw $10 0($8)
	addi $8 $8 4
	sw $10 0($8)
	addi $8 $8 4
	
	addi $8 $8 -16
	addi $8 $8 128
	sw $11 0($8)
	addi $8 $8 4
	sw $10 0($8)
	addi $8 $8 4
	sw $10 0($8)
	addi $8 $8 4
	sw $11 0($8)
	addi $8 $8 4
	
	addi $29, $29, 4                                                    
       	lw $11, 0($29)
       	addi $29, $29, 4                                                    
       	lw $10, 0($29)
       	addi $29, $29, 4                                                    
       	lw $8, 0($29)
	jr $31
	
	
	
apagarP:
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
	addi $10 $0 4
lacoP1:
	beq $10 $0 fimp1
	addi $11 $0 4
lacoP2:
	beq $11 $0 fimp2	# laco dentro de laco pra andar por toda a matriz

	lw $13 0($8)		# vai colocar a cor do ponto que tamo no $13
	jal pintar		# lets go pintar
	addi $8 $8 4
	addi $11 $11 -1
	j lacoP2
fimp2:
	addi $8 $8 -16
	addi $8 $8 128
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
	

pintar:
	ori $9 $0 0xff0000	# vai colocar o vermelho
	beq $9 $13 pint		# se a cor que a gente ta $13 for igual ao vermelho vai trocar
	jr $31			# se nao so vai embora
pint:
	lw $12 2048($8)		# aqui ele vai substituir o ponto que a gente ta pelo que ta na copia
	sw $12 0($8)
	jr $31
	

sleep:
	sw $16 0($29)		# zZz
       	addi $29 $29 -4
       	addi $16 $0 10000
forT:  	
	beq $16 $0 fimT
       	addi $16 $16 -1      
       	j forT                  
fimT:  
	addi $29 $29 4                                                    
       	lw $16 0($29)          
       	jr $31
       	
       	
       	
andar:
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
       	
	add $8 $4 $0		# o $8 vai ficar a nova posicao do personagem
	add $10 $4 $0		# o $10 vai guardar a posicao que ele tava pra gente mudar
	addi $8 $8 4
	add $4 $8 $0
	jal personagem
	add $4 $8 $0
	jal apagarP		# tudo isso aqui é pra fazer o personagem andar uma casa pra frente
	addi $9 $0 4
lacoA:
	beq $9 $0 fimA
	lw $11 2048($10)	# vai pegar o ponto que ele tava antes e vai mudar pelo que ta na copia
	sw $11 0($10)
	addi $10 $10 128	# vai andar na vertical
	addi $9 $9 -1
	j lacoA
fimA:
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