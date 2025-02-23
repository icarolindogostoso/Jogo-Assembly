.text
main:
	add $20 $0 $0 # registrador que vai guardar quantos cenarios ja foram desenhados
	add $22 $0 $0 # registrador que vai guardar quantas vezes o mapa andou
	jal desenhar_mapa_1
	add $23 $2 $0 # vai guardar a posicao inicial do obstaculo
	addi $19 $0 1 # vai dizer qual obstaculo de qual mapa é
	addi $20 $20 1
	
	jal desenhar_mapa_2
	addi $20 $20 1
	
	jal desenhar_personagem
	add $8 $2 $0 # registrador que vai guardar a posicao do personagem
	
	lui $9 0xffff
	addi $10 $0 'a'
	addi $11 $0 'd'
	addi $12 $0 's'
	addi $13 $0 'w'
	
loop_principal:
	lw $21 0($9)
	beq $21 $0 continuacao
	lw $21 4($9)
	beq $21 $10 esquerda
	beq $21 $11 direita
	beq $21 $12 baixo
	beq $21 $13 cima
	
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
	add $7 $23 $0
	add $19 $19 $0
	jal andar_para_direita
	add $8 $2 $0
	add $22 $3 $0
	add $20 $25 $0
	add $23 $24 $0
	add $19 $19 $0
	
	j continuacao
	
baixo:
	add $4 $8 $0
	jal andar_para_baixo
	add $8 $2 $0
	
	j continuacao
	
cima:
	add $4 $8 $0
	jal andar_para_cima
	add $8 $2 $0
	
	j continuacao
	
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
       	
	lui $8 0x1001
	addi $9 $0 512
	addi $10 $0 0xff0000

laco_desenhar_mapa_1:
	beq $9 $0 fim_laco_desenhar_mapa_1
	
	sw $10 0($8)
	sw $10 4096($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	
	j laco_desenhar_mapa_1
fim_laco_desenhar_mapa_1:
	lui $8 0x1001
	addi $8 $8 652
	add $2 $8 $0
	addi $9 $0 3
	addi $11 $0 0xffff00
	
desenhar_quadrado_mapa_1_loop_1:
	beq $9 $0 fim_desenhar_quadrado_mapa_1_loop_1
	addi $10 $0 16
	
desenhar_quadrado_mapa_1_loop_2:
	beq $10 $0 fim_desenhar_quadrado_mapa_1_loop_2
	
	sw $11 0($8)
	sw $11 4096($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	
	j desenhar_quadrado_mapa_1_loop_2
fim_desenhar_quadrado_mapa_1_loop_2:
	
	addi $8 $8 -64
	addi $8 $8 128
	addi $9 $9 -1
	
	j desenhar_quadrado_mapa_1_loop_1
fim_desenhar_quadrado_mapa_1_loop_1:
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
       	
	lui $8 0x1001
	addi $9 $0 512
	addi $10 $0 0x00ff00

laco_desenhar_mapa_2:
	beq $9 $0 fim_laco_desenhar_mapa_2
	
	sw $10 2048($8)
	sw $10 6144($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	
	j laco_desenhar_mapa_2
fim_laco_desenhar_mapa_2:
	
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
	addi $9 $0 512
	addi $10 $0 0x0000ff

laco_desenhar_mapa_3:
	beq $9 $0 fim_laco_desenhar_mapa_3
	
	sw $10 2048($8)
	sw $10 6144($8)
	
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
# funcao para desenhar obstaculos novos
# registradores de entrada:
# registradores de saida: $2

desenhar_obstaculo_novo:
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
	
	lui $8 0x1001
	addi $8 $8 640
	addi $9 $0 640
	addi $10 $0 128
	div $9 $10
	mflo $9
	add $2 $9 $0
	addi $10 $0 16
	sub $9 $10 $9
	addi $11 $0 0xffff00
	addi $10 $0 32
	div $6 $10
	mfhi $12
	addi $10 $0 4
	mul $10 $10 $12
	add $8 $8 $10
	
desenhar_obstaculo_loop_1:
	beq $9 $0 fim_desenhar_obstaculo_loop_1
	addi $10 $0 5
	
desenhar_obstaculo_loop_2:
	beq $10 $0 fim_desenhar_obstaculo_loop_2
	
	sw $11 2048($8)
	sw $11 6144($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	
	j desenhar_obstaculo_loop_2
fim_desenhar_obstaculo_loop_2:
	
	addi $8 $8 -20
	addi $8 $8 128
	addi $9 $9 -1
	
	j desenhar_obstaculo_loop_1
fim_desenhar_obstaculo_loop_1:

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
# - funcao para andar para a esquerda
# - registradores de entrada: $4
# - registradores de saida: $2

andar_para_esquerda:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	
       	bne $0 $19 obstaculo_primeiro_mapa_esquerda
       	
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $6 0($29)
       	addi $29 $29 -4
       	
       	addi $5 $0 16
       	addi $6 $0 5
       	
       	j continuacao_andar_esquerda
       	
obstaculo_primeiro_mapa_esquerda:
	sw $5 0($29)
       	addi $29 $29 -4
       	sw $6 0($29)
       	addi $29 $29 -4
       	
	addi $5 $0 3
       	addi $6 $0 16
       	       	
       	j continuacao_andar_esquerda
       	
       	
continuacao_andar_esquerda:
       	addi $24 $0 -4
       	jal conferir_colisao
       	
       	addi $29 $29 4                                                    
       	lw $6 0($29)
	addi $29 $29 4                                                    
       	lw $5 0($29)
       	
       	bne $2 $0 nao_anda_esquerda
       	
	addi $8 $0 0xffffff
	
	sw $8 0($4)
	sw $8 -4($4)
	
	lw $8 4096($4)
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
# $7 (a distancia do obstaculo do mapa 2 para o inicio do mapa), $19 (qual obstaculo de qual mapa)
# - registradores de saida: $2

andar_para_direita:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	
       	bne $0 $19 obstaculo_primeiro_mapa_direita
       	
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $6 0($29)
       	addi $29 $29 -4
       	
       	addi $5 $0 16
       	addi $6 $0 5
       	
       	j continuacao_andar_direita
       	
obstaculo_primeiro_mapa_direita:
	sw $5 0($29)
       	addi $29 $29 -4
       	sw $6 0($29)
       	addi $29 $29 -4
       	
	addi $5 $0 3
       	addi $6 $0 16
       	       	
       	j continuacao_andar_direita
       	
       	
continuacao_andar_direita:
       	addi $24 $0 4
       	jal conferir_colisao
       	
       	addi $29 $29 4                                                    
       	lw $6 0($29)
	addi $29 $29 4                                                    
       	lw $5 0($29)
       	
       	bne $2 $0 nao_anda_direita
       	
	jal verificar_metade_mapa
	bne $2 $0 mexer_mapa
	
	addi $8 $0 0xffffff
	
	sw $8 0($4)
	sw $8 4($4)
	
	lw $8 4096($4)
	sw $8 0($4)
	
	addi $4 $4 4
	
	jal timer
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $7 $0
	
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
       	
	jr $31
	
mexer_mapa:
	jal conferir_mexer_mapa
	
	lui $8 0x1001
	and $9 $8 $7
	beq $8 $9 obstaculo_identificado
	
	bne $19 $0 obstaculo_mapa_1
	
	jal conferir_obstaculo
	
	add $7 $2 $0
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $7 $0
	
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
obstaculo_identificado:
	bne $19 $0 obstaculo_identificado_mapa_1
	
	sw $6 0($29)
       	addi $29 $29 -4
	
	addi $6 $0 4
	j contiuacao_identificacao_obstaculo

obstaculo_identificado_mapa_1:

	sw $6 0($29)
       	addi $29 $29 -4

	addi $6 $0 16
	j contiuacao_identificacao_obstaculo
	
contiuacao_identificacao_obstaculo:
	add $7 $7 -4
	jal conferir_fim_obstaculo
	
	addi $29 $29 4                                                    
       	lw $6 0($29)
       	
       	bne $2 $0 obstaculo_terminou
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $7 $0
	
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
obstaculo_terminou:
	jal desenhar_obstaculo_novo
	
	add $24 $2 $0
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $19 $0 $0
	
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
	add $24 $7 $0
	
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
      	addi $29 $29 4                                                    
       	lw $31 0($29)
	jr $31
	
obstaculo_mapa_1:
	sw $6 0($29)
       	addi $29 $29 -4
       	sw $5 0($29)
       	addi $29 $29 -4
	
	addi $6 $0 3
	addi $5 $0 16
	jal conferir_obstaculo
	
	add $7 $2 $0
	
	addi $29 $29 4                                                    
       	lw $5 0($29)
	addi $29 $29 4                                                    
       	lw $6 0($29)
	
	add $2 $4 $0
	add $3 $6 $0
	add $25 $5 $0
	add $24 $7 $0
	
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
       	
       	bne $0 $19 obstaculo_primeiro_mapa_baixo
       	
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $6 0($29)
       	addi $29 $29 -4
       	
       	addi $5 $0 16
       	addi $6 $0 5
       	
       	j continuacao_andar_baixo
       	
obstaculo_primeiro_mapa_baixo:
	sw $5 0($29)
       	addi $29 $29 -4
       	sw $6 0($29)
       	addi $29 $29 -4
       	
	addi $5 $0 3
       	addi $6 $0 16
       	       	
       	j continuacao_andar_baixo
       	
       	
continuacao_andar_baixo:
       	addi $24 $0 128
       	jal conferir_colisao
       	
       	addi $29 $29 4                                                    
       	lw $6 0($29)
	addi $29 $29 4                                                    
       	lw $5 0($29)
       	
	bne $2 $0 nao_anda_baixo
       	
	addi $8 $0 0xffffff
	
	sw $8 0($4)
	sw $8 128($4)
	
	lw $8 4096($4)
	sw $8 0($4)
	
	addi $4 $4 128
	
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
       	
       	bne $0 $19 obstaculo_primeiro_mapa_cima
       	
       	sw $5 0($29)
       	addi $29 $29 -4
       	sw $6 0($29)
       	addi $29 $29 -4
       	
       	addi $5 $0 16
       	addi $6 $0 5
       	
       	j continuacao_andar_cima
       	
obstaculo_primeiro_mapa_cima:
	sw $5 0($29)
       	addi $29 $29 -4
       	sw $6 0($29)
       	addi $29 $29 -4
       	
	addi $5 $0 3
       	addi $6 $0 16
       	       	
       	j continuacao_andar_cima
       	
       	
continuacao_andar_cima:
       	addi $24 $0 -128
       	jal conferir_colisao
       	
       	addi $29 $29 4                                                    
       	lw $6 0($29)
	addi $29 $29 4                                                    
       	lw $5 0($29)
       	
	bne $2 $0 nao_anda_cima
       	
	addi $8 $0 0xffffff
	
	sw $8 0($4)
	sw $8 -128($4)
	
	lw $8 4096($4)
	sw $8 0($4)
	
	addi $4 $4 -128
	
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
	
	addi $9 $0 16
	add $10 $0 $0
	
	addi $11 $0 64
	addi $12 $0 128
	
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
	
	lw $14 4100($8)
	sw $14 0($8)
	sw $14 4096($8)
	sw $9 0($4)
	
	addi $8 $8 4
	j continuacao_andar_mapa
	
pega_proximo:
	div $6 $12
	mfhi $16
	lui $15 0x1001
	addi $14 $0 4
	mul $14 $14 $16
	add $15 $15 $14
	
	addi $14 $0 128
	mul $14 $14 $11
	add $15 $15 $14
	
	lw $14 2048($15)
	sw $14 4096($8)
	sw $14 0($8)
	
	addi $8 $8 4
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
# funcao para conferir se o ponto que chegou quando o mapa andou foi um obstaculo
# registradores de entrada: $7
# registradores de saida: $2

conferir_obstaculo:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	
	lui $8 0x1001
	addi $8 $8 124
	addi $9 $0 128
	mul $9 $9 $7
	add $8 $8 $9
	
	addi $9 $0 0xffff00
	lw $10 0($8)
	
	beq $9 $10 chegou_obstaculo
	
	add $2 $0 $7
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
chegou_obstaculo:
	add $2 $0 $8
	
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
# registrador de entrada: $4 (posicao do personagem) , $7 (posicao do obstaculo), $24 (pulo)
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
       	sw $13 0($29)
       	addi $29 $29 -4
       	sw $14 0($29)
       	addi $29 $29 -4
       	sw $15 0($29)
       	addi $29 $29 -4
       	sw $16 0($29)
       	addi $29 $29 -4
       	
	add $13 $7 $0
	add $14 $4 $24
	add $15 $0 $0     	
       
	add $8 $0 $5
	add $9 $0 $0
laco_conferir_colisao_1:
	beq $8 $9 fim_laco_conferir_colisao_1
	
	add $10 $0 $6
	add $11 $0 $0
laco_conferir_colisao_2:
	beq $11 $10 fim_laco_conferir_colisao_2
	
	beq $13 $14 personagem_colidiu_obstaculo
	
	addi $13 $13 4
	addi $11 $11 1
	j laco_conferir_colisao_2
fim_laco_conferir_colisao_2:

	addi $16 $0 4
	mul $16 $16 $6
	sub $13 $13 $16
	
	add $13 $13 128
	addi $9 $9 1
	j laco_conferir_colisao_1
fim_laco_conferir_colisao_1:
	add $2 $0 $0
	
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
	
personagem_colidiu_obstaculo:
	addi $2 $0 1
	
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
# funcao para conferir se o obstaculo acabou
# registradores de entrada: 
# registradores de saida: $2

conferir_fim_obstaculo:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
	
	addi $8 $0 0xffff00
	lw $9 0($7)
	beq $8 $9 fim_laco_conferir_fim_obstaculo
	
	addi $8 $0 4
	mul $8 $8 $6
	add $8 $7 $8
	
	lui $10 0x1001
	
	addi $9 $0 16
laco_conferir_fim_obstaculo:
	beq $9 $0 fim_laco_conferir_fim_obstaculo
	
	beq $8 $10 chegou_no_limite
	
	addi $10 $10 128
	addi $9 $9 -1
	j laco_conferir_fim_obstaculo
fim_laco_conferir_fim_obstaculo:
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	add $2 $0 $0
	jr $31
chegou_no_limite:
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	addi $2 $0 1
	jr $31
	
#=============================================
# funcao timer

timer:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	
	addi $8 $0 10000
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
