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
# - registrador de saida: -

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
	
	lui $8 0x1001
	addi $8 $8 704
	addi $9 $0 6
	addi $11 $0 0xffff00
	
desenhar_quadrado_loop_1:
	beq $9 $0 fim_desenhar_quadrado_loop_1
	addi $10 $0 5
	
desenhar_quadrado_loop_2:
	beq $10 $0 fim_desenhar_quadrado_loop_2
	
	sw $11 2048($8)
	sw $11 6144($8)
	
	addi $8 $8 4
	addi $10 $10 -1
	
	j desenhar_quadrado_loop_2
fim_desenhar_quadrado_loop_2:
	
	addi $8 $8 -20
	addi $8 $8 128
	addi $9 $9 -1
	
	j desenhar_quadrado_loop_1
fim_desenhar_quadrado_loop_1:
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
# - funcao para andar para a esquerda
# - registradores de entrada: $4
# - registradores de saida: $2

andar_para_esquerda:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	
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
	
#===================================================
# - funcao para andar para a direita
# - registradores de entrada: $4 (onde o personagem ta), $5 (quantos mapas foram desenhados), $6 (quantas vezes o mapa andou)
# - registradores de saida: $2

andar_para_direita:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	
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
	
#===================================================
# - funcao para andar para cima
# - registradores de entrada: $4
# - registradores de saida: $2

andar_para_cima:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
       	
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
