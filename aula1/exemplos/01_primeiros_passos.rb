# Rode com:  ruby aula1/exemplos/01_primeiros_passos.rb

# puts mostra na tela. p mostra "cru", útil para enxergar o tipo.
puts "Bom dia, feira!"
p "Bom dia, feira!"

# Variável é um nome para um valor. Não precisa declarar tipo.
nome = "Sítio Boa Terra"
caixas = 12
preco = 4.50
aberta = true
vazio = nil

# p mostra o tipo com clareza. Repare nas aspas e no nil.
p nome
p caixas
p preco
p aberta
p vazio

# .class responde "que tipo é isso?". Use quando estiver na dúvida.
puts nome.class    # String
puts caixas.class  # Integer
puts preco.class   # Float
puts aberta.class  # TrueClass
puts vazio.class   # NilClass

# Interpolação: coloca o valor da variável dentro do texto.
# Só funciona com aspas duplas.
puts "O #{nome} trouxe #{caixas} caixas hoje."
puts 'O #{nome} nao interpola com aspas simples.'
