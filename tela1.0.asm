.text
tela_1:
	lui $8 0x1001
	addi $22 $8 65536
	li $9 8192
	li $20 0x20d8ff
ceu_tela_1:
	
	sw $20 0($8)
	sw $20 0($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	bnez $9 ceu_tela_1
	
montanha_init:
	li $9 10
	lui $8 0x1001
	addi $8 $8 18520
	li $20 0x38a0e6
	
montanha:
	beqz $9 moita_init
	
	sw $20 0($8)#
	sw $20 504($8)
	sw $20 528($8)#
	sw $20 1000($8)
	sw $20 1060($8)
	sw $20 1040($8)#
	sw $20 1504($8)
	sw $20 1580($8)
	sw $20 1540($8)#
	sw $20 2008($8)
	sw $20 2048($8)
	sw $20 2088($8)
	sw $20 2100($8)#
	sw $20 2512($8)
	sw $20 2552($8)
	sw $20 2592($8)
	sw $20 2616($8)#
	sw $20 3016($8)
	sw $20 3056($8)
	sw $20 3096($8)
	sw $20 3132($8)#
	sw $20 3520($8)
	sw $20 3560($8)
	sw $20 3600($8)
	sw $20 3640($8)
	sw $20 3648($8)#
	sw $20 4028($8)
	sw $20 4068($8)
	sw $20 4108($8)
	sw $20 4148($8)
	sw $20 4168($8)#
	sw $20 4536($8)
	sw $20 4576($8)
	sw $20 4616($8)
	sw $20 4656($8)
	sw $20 4684($8)#
	sw $20 5044($8)
	sw $20 5084($8)
	sw $20 5124($8)
	sw $20 5164($8)
	sw $20 5196($8)#
	sw $20 5544($8)
	sw $20 5580($8)
	sw $20 5620($8)
	sw $20 5660($8)
	sw $20 5700($8)
	sw $20 5708($8)#
	sw $20 6056($8)
	sw $20 6092($8)
	sw $20 6132($8)
	sw $20 6172($8)
	sw $20 6212($8)
	sw $20 6220($8)#
	sw $20 6568($8)
	sw $20 6604($8)  
	sw $20 6644($8)  
	sw $20 6684($8)  
	sw $20 6724($8)  
	sw $20 6732($8) # 
	sw $20 7080($8)
	sw $20 7116($8)  
	sw $20 7156($8)  
	sw $20 7196($8)  
	sw $20 7236($8) 
	sw $20 7244($8) #
	sw $20 7592($8)
	sw $20 7628($8)  
	sw $20 7668($8)  
	sw $20 7708($8)  
	sw $20 7748($8)  
	sw $20 7756($8)#

	# montanha_2
	sw $20 2220($8)#
	sw $20 2724($8)
	sw $20 2744($8)#
	sw $20 3224($8)
	sw $20 3264($8)#
	sw $20 3724($8)
	sw $20 3764($8)
	sw $20 3784($8)#
	sw $20 4232($8)
	sw $20 4272($8)
	sw $20 4296($8)#
	sw $20 4736($8)
	sw $20 4776($8)
	sw $20 4808($8)#
	sw $20 5244($8)
	sw $20 5284($8)
	sw $20 5320($8)#
	
	sw $20 5748($8)
	sw $20 5788($8)
	sw $20 5828($8)
	sw $20 6260($8)
	sw $20 6300($8)
	sw $20 6340($8)
	sw $20 6772($8)
	sw $20 6812($8)
	sw $20 6852($8)
	sw $20 7284($8)
	sw $20 7324($8)
	sw $20 7364($8)
	sw $20 7796($8)
	sw $20 7836($8)
	sw $20 7876($8)

	
	
	addi $8 $8 4
	addi $9 $9 -1
	j montanha
	
moita_init:
	li $9 4
	lui $8 0x1001
	addi $8 $8 21584
	li $20 0x57d73c
	
moita:
	beqz $9 base_moita_init
	
	sw $20 0($8)
	sw $20 4($8)#
	sw $20 508($8)
	sw $20 520($8)#
	sw $20 1016($8)
	sw $20 1032($8)#
	sw $20 1528($8)
	sw $20 1544($8)
	sw $20 1548($8)#
	sw $20 2040($8)
	sw $20 2056($8)
	sw $20 2060($8)
	sw $20 2596($8)
	sw $20 2012($8)#
	
	#moita 2
	sw $20 -252($8)#
	sw $20 252($8)
	sw $20 264($8)#
	sw $20 760($8)
	sw $20 772($8)
	sw $20 780($8)#
	sw $20 1264($8)
	sw $20 1280($8)
	sw $20 1292($8)#
	sw $20 1772($8)
	sw $20 1788($8)
	sw $20 1804($8)#
	sw $20 2284($8)
	sw $20 2300($8)
	sw $20 2316($8)#
	sw $20 2792($8)
	sw $20 2808($8)
	sw $20 2812($8)
	sw $20 2828($8)#
	sw $20 3304($8)
	sw $20 3320($8)
	sw $20 3336($8)
	sw $20 3340($8)#
	
	sw $20 2764($8)#
	sw $20 3272($8)
	sw $20 3280($8)#
	
	sw $20 2352($8)
	sw $20 2360($8)#
	sw $20 2856($8)
	sw $20 2872($8)
	sw $20 2876($8)#
	sw $20 3364($8)
	sw $20 3380($8)
	sw $20 3388($8)
	
	
	addi $8 $8 4
	addi $9 $9 -1
	j moita
base_moita_init:
	li $9 17
	li $10 2
	addi $8 $8 2504
base_moita:
	beqz $9 prox_base_moita
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 540($8)
	sw $20 1024($8)
	sw $20 1048($8)
	
	
	sw $20 1264($8)
	sw $20 1332($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j base_moita
	
prox_base_moita:
	beqz $10 bloco_chao_1_init_tela_2
	subi $10 $10 1
	addi $8 $8 444
	li $9 17
	j base_moita
	
bloco_chao_1_init_tela_2:
	lui $8 0x1001
	addi $8 $8 26624
	addi $22 $8 65536
	li $10 32
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_tela_1:
	li $9 4
bloco_chao_1_tela_1:
	beq $9 $0 final_bloco_chao_1_tela_1
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_1_tela_1
final_bloco_chao_1_tela_1:
	addi $8 $8 1520
	addi $22 $22 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	sw $12 0($22)
	sw $11 4($22)
	sw $11 8($22)
	sw $12 12($22)
	
	addi $8 $8 -1520
	addi $22 $22 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_tela_1
	
bloco_chao_2_init_tela_1:
	lui $8 0x1001
	addi $8 $8 28672
	addi $22 $8 65536
	li $10 32
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_2_tela_1:
	li $9 4
bloco_chao_2_tela_1:
	beq $9 $0 final_bloco_chao_2_tela_1
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $12 512($22)
	sw $12 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_2_tela_1
final_bloco_chao_2_tela_1:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $20 0($22)
	sw $20 12($22)
	sw $20 516($22)
	sw $20 520($22)
	
	addi $8 $8 16
	addi $22 $22 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_2_tela_1
	
bloco_chao_3_init_tela_1:
	lui $8 0x1001
	addi $8 $8 30720
	addi $22 $8 65536
	li $10 32
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_3_tela_1:
	li $9 4
bloco_chao_3_tela_1:
	beq $9 $0 final_bloco_chao_3_tela_1
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	sw $11 0($22)
	sw $11 512($22)
	sw $11 1024($22)
	sw $12 1536($22)
	
	addi $8 $8 4
	addi $22 $22 4
	addi $9 $9 -1
	j bloco_chao_3_tela_1
final_bloco_chao_3_tela_1:
	addi $8 $8 -16
	addi $22 $22 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	sw $12 1024($22)
	sw $12 1036($22)
	sw $12 516($22)
	sw $12 520($22)
	
	addi $8 $8 16
	addi $22 $22 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_3_tela_1
	
tijolo_init:
	lui $8, 0x1001
	addi $8, $8, 10432
	li $20, 0xed6408
	li $9, 11
	li $10, 11
	li $11, 1
	
tijolo:
	beq $9, $0, plt
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j tijolo
	
plt:
	beq $10, $0, dtvi
	addi $10, $10, -1
	addi $8, $8, 468
	li $9, 11
	j tijolo
	
dtvi:
	addi $8, $8, -5680
	li $20, 0x000000
	li $9, 3
	
detalhe_tijoloV:
	beq $9, $0 dthi
	
	sw $20 24($8)
	sw $20, 44($8)
	sw $20 65560($8)
	sw $20 65580($8)
	
	sw $20, 2060($8)
	sw $20, 2084($8)
	sw $20 67596($8)
	sw $20 67620($8)
	
	sw $20, 4120($8)
	sw $20, 4140($8)
	sw $20 69656($8)
	sw $20 69676($8)
	
	addi $8, $8, 512
	addi $9, $9, -1
	j detalhe_tijoloV
	
dthi:
	addi $8, $8, -1536
	li $20, 0x000000
	li $9, 11
	
detalhe_tijoloH:
	beq $9, $0 , prox_t
	
	sw $20 1540($8)
	sw $20 3588($8)
	sw $20 5636($8)
	sw $20 67076($8)
	sw $20 69124($8)
	sw $20 71172($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	j detalhe_tijoloH
	
prox_t:
	beq $11, $0, caixa_init
	addi $8, $8, 60
	li $20, 0xed6408
	li $9, 11
	li $10, 11
	addi $11, $11, -1
	j tijolo
	
caixa_init:
	lui $8, 0x1001
	addi $8, $8, 10476
	li $20, 0xfbbe2e
	li $9, 14
	li $10, 11

caixa:
	beq $9, $0, plc
	sw $20, 0($8)
	sw $20, 65536($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j caixa
	
plc:
	beq $10, $0, lci
	addi $10, $10, -1
	addi $8, $8, 456
	li $9, 14
	j caixa
lci:
	li $20, 0xfbbe2d
	li $9, 6
	addi $8, $8, -4
lc:
	beq $9, $0, interro_init
	sw $20, 0($8)
	sw $20 65536($8)
	sw $20 -32($8)
	sw $20 65504($8)
	
	addi $8, $8, -4
	addi $9, $9, -1
	j lc
 
interro_init:
	addi $8, $8, 44
	lui $8, 0x1001
	addi $8, $8, 11004
	li $20, 0xffffff
	li $9, 2

interro:
	beq $9, $0 fim
	
	sw $20, 0($8)
	sw $20, 8($8)
	sw $20, 12($8)
	sw $20, 65536($8)
	sw $20, 65544($8)
	sw $20, 65548($8)
	
	sw $20, 508($8)
	sw $20, 1020($8)
	sw $20, 1532($8)
	sw $20, 66044($8)
	sw $20, 66556($8)
	sw $20, 67068($8)
	
	sw $20, 528($8)
	sw $20, 1040($8)
	sw $20, 1552($8)
	sw $20, 2064($8)
	sw $20, 66064($8)
	sw $20, 66576($8)
	sw $20, 67088($8)
	sw $20, 67600($8)
	
	sw $20, 2060($8)
	sw $20, 67596($8)
	
	sw $20, 2568($8)
	sw $20, 3080($8)
	sw $20, 68104($8)
	sw $20, 68616($8)
	
	sw $20, 4104($8)
	sw $20, 4616($8)
	sw $20, 69640($8)
	sw $20, 70152($8)
	
	addi $8, $8, 4
	addi $9, $9, -1
	
	j interro
	
fim:
	
