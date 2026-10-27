# Rode com:  ruby aula1/exemplos/02_numeros_e_armadilhas.rb

# Contas comuns
puts 10 + 3
puts 10 - 3
puts 10 * 3

# ARMADILHA 1: divisão entre inteiros joga a parte decimal fora.
puts 10 / 3     # 3, e não 3.333...
puts 7 / 2      # 3, e não 3.5

# Para ter decimal, um dos lados precisa ser Float.
puts 10 / 3.0   # 3.3333333333333335
puts 10.fdiv(3) # 3.3333333333333335

# Isso importa: média de notas com divisão inteira sai errada e ninguém percebe.
notas = [7, 8, 10]
puts notas.sum / notas.size          # 8   (parece certo)
puts notas.sum.fdiv(notas.size)      # 8.333333333333334  (o correto)

# ARMADILHA 2: Float tem erro de precisão. Não é bug do Ruby, é como o
# computador guarda decimais em binário.
puts 0.1 + 0.2            # 0.30000000000000004
puts 0.1 + 0.2 == 0.3     # false

# Por isso dinheiro se guarda em centavos, com Integer.
preco_em_centavos = 450
puts "R$ #{preco_em_centavos / 100.0}"

# ARMADILHA 3: to_i não reclama quando o texto não é número. Ele devolve 0.
puts "12".to_i     # 12
puts "abc".to_i    # 0     <- silencioso, e vira média errada lá na frente
puts "12kg".to_i   # 12
puts Integer("12") # 12
# Integer("abc") levantaria erro, que é melhor do que fingir que deu certo.
