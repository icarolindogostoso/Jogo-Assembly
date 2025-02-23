soco_esquerda_init:
    lui $8, 0x1001
    addi $8, $8, 6192
    li $9, 3
    li $20, 0xfdff0e   # amarelo
    li $10, 0x9A3894   # roxo claro
    li $11, 0x592559   # roxo escuro

# Desenha a roupa do personagem (esquerda)
roupa_personagem_esquerda_soco:
    beq $9, $0, detalhe_roupa_personagem_esquerda_soco

    sw $20, 8($8)
    sw $20, 512($8)
    sw $20, 520($8)
    sw $20, 2572($8)

    sw $10, 2564($8)
    sw $10, 3076($8)
    sw $10, 3084($8)

    addi $8, $8, 4
    subi $9, $9, 1
    j roupa_personagem_esquerda_soco

# Detalhes adicionais da roupa

detalhe_roupa_personagem_esquerda_soco:
    subi $8, $8, 12
    li $9, 0xfcfcfc
    li $20, 0xffffff
    li $10, 0x247C39
    
    sw $20, 4($8)
    sw $20, 3096($8)
    sw $20, 2556($8)
    
    li $20, 0xfdff0e
    sw $20, 2560($8)
    
    # Botões
    sw $9, 2564($8)
    sw $9, 2576($8)

    sw $10, 3588($8)
    sw $10, 3604($8)

# Inicialização da cabeça do personagem

cabeça_init_personagem_esquerda_soco:
    addi $8, $8, 1024
    li $9, 4
    li $10, 2
    li $20, 0xffd7a4

# Desenha a cabeça do personagem

cabeça_personagem_esquerda_soco:
    beq $9, $0, plc_player_personagem_esquerda_soco
    sw $20, 4($8)
    addi $8, $8, 4
    subi $9, $9, 1
    j cabeça_personagem_esquerda_soco

plc_player_personagem_esquerda_soco:
    beq $10, $0, detalhe_cabeça_personagem_esquerda_soco
    subi $10, $10, 1
    addi $8, $8, 496
    li $9, 4
    j cabeça_personagem_esquerda_soco

# Detalhes da cabeça (cabelo, bigodes, olhos e nariz)

detalhe_cabeça_personagem_esquerda_soco:
    subi $8, $8, 1044
    li $9, 0x784936  # Cabelo e bigodes
    li $10, 0x000001  # Olho
    li $20, 0xf474a6  # Nariz

    # Cabelo
    sw $9, 24($8)
    sw $9, 536($8)
    sw $9, 1044($8)
    sw $9, 16($8)
    
    # Bigodes
    sw $9, 520($8)
    sw $9, 524($8)

    # Olho e nariz
    sw $10, 12($8)
    sw $20, 516($8)

# Loop final para evitar término do programa
fim:
    
