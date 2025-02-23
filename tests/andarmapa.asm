.text
# registradores de entrada: $4 e $5
# $4 -> vai guardar o endereço que o personagem está
# $5 -> vai guardar quantas vezes foi apertado para andar para a direita (movimentacao do mapa)

# registradores usados: $8 -> $15
andar_mapa:
	lui $8 0x1001 # vai guardar a posicao que vai andar o mapa a ser mostrado (mapa 1)
	addi $9 $0 0xffffff # cor do persoangem
	
	addi $10 $0 16 # laço para percorrer as 16 unidades graficas da coluna
	add $11 $0 $0
	
laco_1:
	beq $10 $11 fim_laco_1
	
	addi $12 $0 32 # laço para percorrer as 32 unidades graficas da linhas
	addi $13 $0 $0
	
laco_2:
	beq $12 $13 fim_laco_2
	
	addi $14 $0 31
	beq $13 $14 pega_proximo # se o laço estiver na ultima repeticao, vai para pega_proximo
	
	lw $14 4100($8) # pega o proximo da copia do mapa 1 e coloca no $14
	sw $14 0($8) # coloca o $14 no mapa 1
	sw $14 4096($8) # coloca o $14 na copia do mapa 1
	sw $9 0($4) # coloca o personagem na posicao que ele ta
	
	addi $8 $8 4
	j continuacao
	
pega_proximo:
	lui $15 0x1001 # guarda uma nova posicao que vai sobrepor o mapa 2 no mapa 1
	addi $14 $0 4
	mul $14 $14 $5
	add $15 $15 $14 # confere em qual coluna do mapa 2 estamos
	
	addi $14 $0 128
	mul $14 $14 $11
	addi $15 $15 $14 # confere em qual linha do mapa 2 estamos
	
	lw $14 2048($23)
	sw $14 4096($8)
	sw $14 0($20) # coloca o mapa 2 no mapa 1
	
	addi $8 $8 4
	j continuacao
	
continuacao:
	addi $13 $13 1
	j laco_2

fim_laco_2:
	addi $11 $11 1
	j laco_1
fim_laco_1:
	addi $2 $0 10
	syscall
	
# ideia do codigo:
# - quando a funcao for chamada, ela vai fazer toda coluna do mapa 1 andar uma casa para a esquerda
# - quando chegar na ultima coluna ela vai substituir pela coluna respectiva do mapa 2 para dar a sensacao de movimento