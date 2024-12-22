.text
main:  
	lui $8, 0x1001
       	addi $9, $0, 512
	addi $10 $0 0xff0000
       
desenhar_map_1:  
	beq $9, $0, fim_map_1

       	sw $10, 0($8)
       	sw $10, 4096($8)
       
       	addi $8, $8, 4
       	addi $9, $9, -1
       	
       	j desenhar_map_1
fim_map_1:
	lui $8, 0x1001
       	addi $9, $0, 512
	addi $10 $0 0x00ff00
desenhar_map_2:  
	beq $9, $0, fim_map_2

       	sw $10, 2048($8)
       	sw $10, 6144($8)
       
       	addi $8, $8, 4
       	addi $9, $9, -1
       	
       	j desenhar_map_2
fim_map_2:
      	lui $8, 0x1001
      	ori $20, 0xffffff
      	
      	sw $20, 0($8) 

      	lui $21, 0xffff
      	addi $25, $0, 32
      	addi $11, $0, 'a'
      	addi $12, $0, 'd'
	addi $13, $0, 's'
      	addi $14, $0, 'w'
principal:
      	lw $22, 0($21)
      	beq $22, $0, cont
      	lw $23, 4($21)
      	beq $23, $25, fim
      	beq $23, $11, esq
      	beq $23, $12, dir
      	beq $23, $13, baixo
      	beq $23, $14, cima
     
     
      	j cont
      	
esq:  
	sw $20, 0($8)
	sw $20, -4($8)
      	lw $9, 4096($8)
      	sw $9, 0($8)
      	addi $8, $8, -4
      	jal timer      
      	j cont
     
dir:  	
	
	sw $20, 0($8)
	sw $20, 4($8)
      	lw $9, 4096($8)
      	sw $9, 0($8)
      	add $4 $0 $8
      	jal verificacao
      	bne $2 $0 arroche
      	addi $8, $8, 4
      	jal timer
      	j cont
      	
arroche:
	addi $2 $0 10
	syscall
	j cont
     
baixo:  
	sw $20, 0($8)
      	sw $20, 128($8)
      	lw $9, 4096($8)
      	sw $9, 0($8)
      	addi $8, $8, 128
      	jal timer
      	j cont
     
cima:  	
	sw $20, 0($8)
      	sw $20, -128($8)
      	lw $9, 4096($8)
      	sw $9, 0($8)
      	addi $8, $8, -128
      	jal timer
      	j cont         
     
cont: 
	j principal
fim:  
	addi $2, $0, 10
      	syscall    
#====================================================================
# função Timer

timer: sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 10000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
       
verificacao:
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
       	sw $20, 0($29)
       	addi $29, $29, -4
       	sw $21, 0($29)
       	addi $29, $29, -4
       	sw $22, 0($29)
       	addi $29, $29, -4
       	
	lui $20 0x1001
	addi $8 $0 16
	add $9 $0 $0
	addi $10 $0 64
	addi $11 $0 128
laco_verificacao:
	beq $9 $8 fim_laco_verificacao
	mul $12 $9 $11
	add $12 $12 $10
	add $20 $20 $12
	addi $12 $4 4
	beq $21 $22 colidiu
	addi $9 $9 1
	j laco_verificacao
fim_laco_verificacao:
	add $2 $0 $0
	
	addi $29, $29, 4                                                    
       	lw $22, 0($29)
	addi $29, $29, 4                                                    
       	lw $21, 0($29)
       	addi $29, $29, 4                                                    
       	lw $20, 0($29)
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
colidiu:
	addi $2 $0 1
	
	addi $29, $29, 4                                                    
       	lw $22, 0($29)
	addi $29, $29, 4                                                    
       	lw $21, 0($29)
       	addi $29, $29, 4                                                    
       	lw $20, 0($29)
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
	
