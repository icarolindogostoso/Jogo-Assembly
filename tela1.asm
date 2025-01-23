.text
tela_1:
	lui $8 0x1001
	li $9 8192
	li $20 0x20d8ff
ceu:
	beq $9 $0 arvore_clara_init
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j ceu
arvore_clara_init:
   li $20 0x2a8d79
   lui $8 0x1001
   addi $8, $8, 4464
   li $9 42
arvore_clara:
	beqz $9 arvore_escura_init
   	#arvre 1
   	sw $20 13968($8)
   	sw $20 11924($8)
   	sw $20 9368($8)
   	sw $20 6812($8)
   	sw $20 4256($8)
   	sw $20 3236($8)
   	sw $20 3752($8)
	sw $20 4780($8)
	sw $20 6832($8)
	sw $20 7860($8)
	sw $20 8888($8)
	sw $20 10428($8)
   	sw $20 11456($8)
   	sw $20 11972($8)
   	
   	# arvore 2
   	sw $20 11464($8)
   	sw $20 10956($8)
   	sw $20 9936($8)
   	sw $20 8916($8)
   	sw $20 8408($8)
   	sw $20 5852($8)
   	sw $20 1760($8)
   	sw $20 2788($8)
   	sw $20 3816($8)
   	sw $20 4844($8)
   	sw $20 6896($8)
   	sw $20 8436($8)
   	sw $20 9464($8)
   	sw $20 10492($8)
   	sw $20 11008($8)
   	sw $20 11524($8)
   	sw $20 11528($8)
   	sw $20 11532($8)
   	
   	#arvre 3
   	sw $20 11024($8)
   	sw $20 11028($8)
   	sw $20 10520($8)
   	sw $20 10012($8)
   	sw $20 10016($8)
   	sw $20 10532($8)
   	sw $20 11048($8)
   	sw $20 11564($8)
   	sw $20 12080($8)
   	sw $20 12084($8)
   	sw $20 12088($8)
   	
   	sw $20 11580($8)
   	sw $20 11072($8)
   	sw $20 10564($8)
   	sw $20 10056($8)
   	
   	sw $20 10060($8)
   	sw $20 10064($8)
   	sw $20 10068($8)
   	sw $20 10072($8)
   	sw $20 10076($8)
   	sw $20 10080($8)
   	sw $20 10084($8)
   	sw $20 11112($8)
   	sw $20 12140($8)
   	sw $20 13680($8)
   	sw $20 14196($8)
   	sw $20 14712($8)
   	
   	sw $20 14204($8)
   	sw $20 13184($8)
   	sw $20 11652($8)
   	sw $20 10632($8)
   	sw $20 7052($8)
   	sw $20 3984($8)
   	sw $20 1940($8)
   	sw $20 920($8)
   	sw $20 1436($8)
   	sw $20 2464($8)
   	sw $20 4004($8)
   	sw $20 6056($8)
   	sw $20 7596($8)
   	sw $20 9648($8)
   	sw $20 11700($8)
   	sw $20 11704($8)
   	
   	sw $20 11196($8)
   	sw $20 10176($8)
   	sw $20 9668($8)
   	sw $20 9160($8)
   	sw $20 9164($8)
   	sw $20 9168($8)
   	sw $20 9172($8)
   	sw $20 9176($8)
   	sw $20 9180($8)
   	sw $20 9184($8)
   	sw $20 9188($8)
   	sw $20 6632($8)
   	sw $20 4076($8)
   	sw $20 2544($8)
   	sw $20 1012($8)
   	sw $20 -8($8)
   	sw $20 -516($8)
   	sw $20 -512($8)
   	sw $20 516($8)
   	sw $20 1544($8)
   	sw $20 2060($8)
   	sw $20 2576($8)
   	sw $20 3604($8)
   	sw $20 3608($8)
   	sw $20 4636($8)
   	sw $20 5664($8)
   	sw $20 6692($8)
   	sw $20 9768($8)
   	sw $20 9772($8)
   	sw $20 9776($8)
   	sw $20 11316($8)
   	sw $20 11832($8)
   	sw $20 12348($8)
   	
   	sw $20 11840($8)
   	sw $20 11844($8)
   	sw $20 11336($8)
   	sw $20 10828($8)
   	sw $20 9808($8)
   	sw $20 6740($8)
   	sw $20 5720($8)
   	sw $20 4700($8)
   	sw $20 4192($8)
   	sw $20 5732($8)
   	sw $20 8808($8)
   	sw $20 9324($8)
   	sw $20 9840($8)
   	sw $20 9844($8)
   	sw $20 10360($8)
   	sw $20 10876($8)
   	sw $20 10880($8)
   	sw $20 11396($8)
   	sw $20 11912($8)
   	sw $20 11916($8)

   	
   	addi $8 $8 512
	addi $9 $9 -1
   	j arvore_clara
   	
arvore_escura_init:
   li $20 0x146a5f
   lui $8 0x1001
   addi $8, $8, 16904
   li $9 15
arvore_escura:
	beqz $9 nuvem_init
	
	sw $20 8704($8)
	sw $20 6660($8)
	sw $20 4616($8)
	sw $20 2060($8)
	sw $20 2064($8)
	sw $20 4116($8)
	sw $20 6680($8)
	sw $20 8220($8)
	
	sw $20 8752($8)
	sw $20 6708($8)
	sw $20 4152($8)
	sw $20 6204($8)
	sw $20 6720($8)
	sw $20 6724($8)
	sw $20 6728($8)
	
	sw $20 5708($8)
	sw $20 1616($8)
	sw $20 2128($8)
	sw $20 596($8)
	sw $20 2132($8)
	sw $20 1112($8)
	sw $20 2136($8)
	sw $20 2140($8)
	sw $20 4192($8)
	sw $20 5220($8)
	sw $20 5736($8)
	sw $20 6252($8)
	sw $20 6768($8)
	sw $20 6772($8)
	
	sw $20 5240($8)
	sw $20 3708($8)
	sw $20 2176($8)
	sw $20 1668($8)
	sw $20 2180($8)
	sw $20 2184($8)
	sw $20 3212($8)
	sw $20 4752($8)
	sw $20 5780($8)
	sw $20 6808($8)
	sw $20 7836($8)
	sw $20 7840($8)
	sw $20 7844($8)
	
	sw $20 7336($8)
	sw $20 5804($8)
	sw $20 4272($8)
	sw $20 3252($8)
	sw $20 2232($8)
	sw $20 2748($8)
	sw $20 3776($8)
	sw $20 4804($8)
	sw $20 6344($8)
	sw $20 7372($8)
	sw $20 8912($8)
	sw $20 9428($8)
	
	sw $20 8408($8)
	sw $20 7900($8)
	sw $20 7392($8)
	sw $20 6884($8)
	sw $20 7912($8)
	sw $20 9964($8)
	sw $20 9968($8)
	sw $20 10996($8)
	sw $20 11512($8)
	sw $20 11004($8)
	
	sw $20 9984($8)
	sw $20 8964($8)
	sw $20 7432($8)
	sw $20 8460($8)
	sw $20 9488($8)
	sw $20 9492($8)
	sw $20 10008($8)
	sw $20 10012($8)
	sw $20 10016($8)
	
	sw $20 10024($8)
	sw $20 10028($8)
	sw $20 10032($8)
	sw $20 10036($8)
	sw $20 7972($8)
	sw $20 6952($8)
	sw $20 5932($8)
	sw $20 5936($8)
	sw $20 5428($8)
	sw $20 2872($8)
	sw $20 828($8)
	sw $20 2876($8)
	sw $20 1344($8)
	sw $20 1860($8)
	sw $20 2888($8)
	
	sw $20 1868($8)
	sw $20 1360($8)
	sw $20 852($8)
	sw $20 -680($8)
	sw $20 -1700($8)
	sw $20 -2208($8)
	sw $20 -2204($8)
	sw $20 -2200($8)
	sw $20 -1696($8)
	sw $20 -1692($8)
	sw $20 -1688($8)
	sw $20 -1684($8)
	sw $20 -2196($8)
	sw $20 -1168($8)
	sw $20 884($8)
	sw $20 2936($8)
	sw $20 3964($8)
	sw $20 4992($8)
	sw $20 4996($8)
	sw $20 5000($8)
	sw $20 5004($8)
	
	sw $20 3984($8)
	sw $20 3988($8)
	sw $20 3480($8)
	sw $20 2972($8)
	sw $20 4000($8)
	sw $20 5540($8)
	
	sw $20 5048($8)
	sw $20 4028($8)
	sw $20 3008($8)
	sw $20 2500($8)
	sw $20 1992($8)
	sw $20 1996($8)
	sw $20 2512($8)
	sw $20 2516($8)
	sw $20 2520($8)
	sw $20 3036($8)
	sw $20 3040($8)
	sw $20 3556($8)
	sw $20 3560($8)
	sw $20 4076($8)
	sw $20 4080($8)
	sw $20 4596($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j arvore_escura
	
nuvem_init:
	li $20 0xa8f0fe
   	lui $8 0x1001
   	addi $8, $8, 96
   	li $9 9
   	
nuvem:
	beqz $9 parte_la_debaixo_init
	
	sw $20 0($8)
	sw $20 36($8)
	sw $20 72($8)#
	sw $20 536($8)
	sw $20 572($8)
	sw $20 580($8)#
	sw $20 1036($8)
	sw $20 1072($8)
	sw $20 1084($8)#
	sw $20 1452($8)
	sw $20 1488($8)
	sw $20 1524($8)
	sw $20 1560($8)
	sw $20 1576($8)#
	sw $20 1964($8)
	sw $20 2000($8)
	sw $20 2036($8)
	sw $20 2068($8)#
	sw $20 2476($8)
	sw $20 2512($8)
	sw $20 2548($8)
	sw $20 2580($8)
	sw $20 2588($8)#
	sw $20 2996($8)
	sw $20 3032($8)
	sw $20 3068($8)
	sw $20 3104($8)
	sw $20 3140($8)
	sw $20 3168($8)#
	sw $20 3508($8)
	sw $20 3584($8)
	sw $20 3620($8)
	sw $20 3656($8)
	sw $20 3680($8)#
	sw $20 4108($8)
	sw $20 4144($8)
	sw $20 4180($8)
	sw $20 4188($8)#
	sw $20 4624($8)
	sw $20 4660($8)
	sw $20 4696($8)#
	sw $20 5148($8)
	sw $20 5184($8)
	sw $20 5196($8)#
	sw $20 5672($8)
	sw $20 5692($8)
	
	sw $20 9372($8)
	sw $20 9408($8)
	sw $20 9428($8)#
	sw $20 9888($8)
	sw $20 9924($8)
	sw $20 9932($8)#
	sw $20 10408($8)
	sw $20 10432($8)
	
	
	addi $8 $8 4
	addi $9 $9 -1
	j nuvem
	
parte_la_debaixo_init:
	lui $8 0x1001
	addi $8 $8 31744
	li $9 256
	li $20 0x0c5454
parte_la_debaixo:
	beq $9 $0 bloco_chao_1_init
	
	sw $20 0($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j parte_la_debaixo

bloco_chao_1_init:
	lui $8 0x1001
	addi $8 $8 26624
	li $10 14
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1:
	li $9 4
bloco_chao_1:
	beq $9 $0 final_bloco_chao_1
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1
final_bloco_chao_1:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1
	
bloco_chao_1_init_part_2:
	addi $8 $8 -3984
	li $10 11
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_1_part_2:
	li $9 4
bloco_chao_1_part_2:
	beq $9 $0 final_bloco_chao_1_part_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_1_part_2
final_bloco_chao_1_part_2:
	addi $8 $8 1520
	
	sw $12 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $12 12($8)
	
	addi $8 $8 -1520
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_1_part_2
	
bloco_chao_2_init:
	lui $8 0x1001
	addi $8 $8 26848
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_2:
	beq $9 $0 final_bloco_chao_2
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_2
final_bloco_chao_2:
	
	sw $20 508($8)
	sw $20 1020($8)
	sw $20 1532($8)
	sw $12 1520($8)
	
bloco_chao_3_init:
	lui $8 0x1001
	addi $8 $8 22848
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
	li $9 4
bloco_chao_3:
	beq $9 $0 final_bloco_chao_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_3
final_bloco_chao_3:
	
	sw $20 496($8)
	sw $20 1008($8)
	sw $20 1520($8)
	sw $12 1532($8)
	
bloco_chao_4_init:
	lui $8 0x1001
	addi $8 $8 28896
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_4:
	li $9 4
bloco_chao_4:
	beq $9 $0 final_bloco_chao_4
	
	sw $11 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $20 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_4
final_bloco_chao_4:
	
	sw $12 -2048($8)
	sw $12 -512($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_4
	
bloco_chao_5_init:
	lui $8 0x1001
	addi $8 $8 24896
	li $10 4
	li $20 0x000000 #detalhe
	li $11 0x30c92e
	li $12 0x16a546
laco_bloco_chao_5:
	li $9 4
bloco_chao_5:
	beq $9 $0 final_bloco_chao_5
	
	sw $20 0($8)
	sw $11 4($8)
	sw $11 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_5
final_bloco_chao_5:
	
	sw $12 -2036($8)
	sw $12 -500($8)
	
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_5
	
bloco_chao_6_init:
	lui $8 0x1001
	addi $8 $8 28672
	li $10 13
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6:
	li $9 4
bloco_chao_6:
	beq $9 $0 final_bloco_chao_6
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6
final_bloco_chao_6:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6
	
bloco_chao_6_init_parte_2:
	addi $8 $8 -3952
	li $10 10
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
laco_bloco_chao_6_parte_2:
	li $9 4
bloco_chao_6_parte_2:
	beq $9 $0 final_bloco_chao_6_parte_2
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_6_parte_2
final_bloco_chao_6_parte_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 12($8)
	sw $20 516($8)
	sw $20 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_6_parte_2
	
bloco_chao_7_init:
	lui $8 0x1001
	addi $8 $8 28880
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_7:
	beq $9 $0 final_bloco_chao_7
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_7
final_bloco_chao_7:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 520($8)
	sw $11 524($8)
	sw $20 1032($8)
	sw $11 1036($8)
	sw $20 1548($8)
	
bloco_chao_8_init:
	lui $8 0x1001
	addi $8 $8 24912
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $9 4
bloco_chao_8:
	beq $9 $0 final_bloco_chao_8
	
	sw $11 0($8)
	sw $12 512($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_8
final_bloco_chao_8:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 520($8)
	sw $20 516($8)
	sw $11 512($8)
	sw $20 1028($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
bloco_chao_9_init:
	lui $8 0x1001
	addi $8 $8 30928
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_9:
	beq $9 $0 final_bloco_chao_9
	
	sw $12 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $11 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_9
final_bloco_chao_9:
	addi $8 $8 -2048
	
	sw $20 12($8)
	sw $20 520($8)
	sw $13 516($8)
	sw $20 1032($8)
	sw $13 1024($8)
	sw $20 1548($8)
	sw $13 1536($8)
	sw $13 1540($8)
	sw $13 1544($8)
	
bloco_chao_10_init:
	lui $8 0x1001
	addi $8 $8 26960
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x817235
	li $13 0x6b5727
	li $9 4
bloco_chao_10:
	beq $9 $0 final_bloco_chao_10
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_10
final_bloco_chao_10:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $13 520($8)
	sw $20 1028($8)
	sw $13 1036($8)
	sw $20 1536($8)
	sw $13 1540($8)
	sw $13 1544($8)
	sw $13 1548($8)
	
bloco_chao_11_init:
	lui $8 0x1001
	addi $8 $8 29008
	li $10 2
	li $20 0x000000 #detalhe
	li $11 0x16a546
	li $12 0x6b5727
laco_bloco_chao_11:
	li $9 4
bloco_chao_11:
	beq $9 $0 final_bloco_chao_11
	
	sw $11 0($8)
	sw $12 4($8)
	sw $12 8($8)
	sw $12 12($8)
	
	addi $8 $8 512
	addi $9 $9 -1
	j bloco_chao_11
final_bloco_chao_11:
	addi $8 $8 -2048
	
	sw $20 0($8)
	sw $20 516($8)
	sw $20 1028($8)
	sw $20 1536($8)
	
	addi $8 $8 2048
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_11
	
bloco_chao_12_init:
	lui $8 0x1001
	addi $8 $8 30720
	li $10 13
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12:
	li $9 4
bloco_chao_12:
	beq $9 $0 final_bloco_chao_12
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12
final_bloco_chao_12:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12
	
bloco_chao_12_init_parte_2:
	addi $8 $8 -3952
	li $10 10
	li $11 0x817235
	li $12 0x6b5727
laco_bloco_chao_12_parte_2:
	li $9 4
bloco_chao_12_parte_2:
	beq $9 $0 final_bloco_chao_12_parte_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_12_parte_2
final_bloco_chao_12_parte_2:
	addi $8 $8 -16
	
	sw $12 1024($8)
	sw $12 1036($8)
	sw $12 516($8)
	sw $12 520($8)
	
	addi $8 $8 16
	addi $10 $10 -1
	bne $10 $0 laco_bloco_chao_12_parte_2
	
bloco_chao_13_init:
	lui $8 0x1001
	addi $8 $8 29016
	li $11 0x6b5727
laco_bloco_chao_13:
	li $9 42
bloco_chao_13:
	beq $9 $0 bloco_obstaculo_1_init
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	sw $11 2048($8)
	sw $11 2560($8)
	sw $11 3072($8)
	sw $11 3584($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_chao_13
	
bloco_obstaculo_1_init:
	lui $8 0x1001
	addi $8 $8 10368
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_1:
	beq $9 $0 final_bloco_obstaculo_1
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_1
final_bloco_obstaculo_1:
	addi $8 $8 -16
	
	sw $20 512($8)
	sw $12 516($8)
	sw $20 1024($8)
	sw $20 1536($8)
	
bloco_obstaculo_2_init:
	lui $8 0x1001
	addi $8 $8 12416
	li $20 0x000000 #detalhe
	li $11 0x4f1808
	li $12 0x340d02
	
	li $9 4
bloco_obstaculo_2:
	beq $9 $0 final_bloco_obstaculo_2
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_2
final_bloco_obstaculo_2:
	addi $8 $8 -16
	
	sw $20 0($8)
	sw $20 512($8)
	sw $20 1024($8)
	sw $12 1028($8)
	
bloco_obstaculo_3_init:
	lui $8 0x1001
	addi $8 $8 10384
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_3:
	li $9 4
bloco_obstaculo_3:
	beq $9 $0 final_bloco_obstaculo_3
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_3
final_bloco_obstaculo_3:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $12 524($8)
	sw $12 1036($8)
	sw $12 1548($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_3
	
bloco_obstaculo_4_init:
	lui $8 0x1001
	addi $8 $8 12432
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_4:
	li $9 4
bloco_obstaculo_4:
	beq $9 $0 final_bloco_obstaculo_4
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_4
final_bloco_obstaculo_4:
	addi $8 $8 -16
	
	sw $12 12($8)
	sw $12 524($8)
	sw $12 1032($8)
	sw $12 1036($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_4
	
bloco_obstaculo_5_init:
	lui $8 0x1001
	addi $8 $8 10400
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_5:
	li $9 4
bloco_obstaculo_5:
	beq $9 $0 final_bloco_obstaculo_5
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_5
final_bloco_obstaculo_5:
	addi $8 $8 -16
	
	sw $12 512($8)
	sw $12 516($8)
	sw $12 1024($8)
	sw $12 1536($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_5
	
bloco_obstaculo_6_init:
	lui $8 0x1001
	addi $8 $8 12448
	li $10 2
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_6:
	li $9 4
bloco_obstaculo_6:
	beq $9 $0 final_bloco_obstaculo_6
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_6
final_bloco_obstaculo_6:
	addi $8 $8 -16
	
	sw $12 0($8)
	sw $12 512($8)
	sw $12 1028($8)
	sw $12 1024($8)
	
	addi $8 $8 32
	addi $10 $10 -1
	bne $10 $0 laco_bloco_obstaculo_6
	
bloco_obstaculo_7_init:
	lui $8 0x1001
	addi $8 $8 12496
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_7:
	li $9 4
bloco_obstaculo_7:
	beq $9 $0 final_bloco_obstaculo_7
	
	sw $11 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $20 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_7
final_bloco_obstaculo_7:
	addi $8 $8 -16
	
	sw $20 12($8)
	sw $20 524($8)
	sw $12 1032($8)
	sw $20 1036($8)
	
bloco_obstaculo_8_init:
	lui $8 0x1001
	addi $8 $8 10448
	li $20 0x000000
	li $11 0x4f1808
	li $12 0x340d02
laco_bloco_obstaculo_8:
	li $9 4
bloco_obstaculo_8:
	beq $9 $0 final_bloco_obstaculo_8
	
	sw $20 0($8)
	sw $11 512($8)
	sw $11 1024($8)
	sw $11 1536($8)
	
	addi $8 $8 4
	addi $9 $9 -1
	j bloco_obstaculo_8
final_bloco_obstaculo_8:
	addi $8 $8 -16
	
	sw $12 520($8)
	sw $20 524($8)
	sw $20 1036($8)
	sw $20 1548($8)
	
	addi $2 $0 10
	syscall
