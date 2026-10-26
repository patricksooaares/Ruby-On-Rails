# Rode com:  ruby aula1/exemplos/04_colecoes.rb

# ARRAY: lista ordenada, começa no índice 0.
produtos = ["alface", "tomate", "cenoura"]

puts produtos[0]        # alface
puts produtos[2]        # cenoura
puts produtos[-1]       # cenoura  (último)
p    produtos[10]       # nil      (não existe: devolve nil, não quebra)
puts produtos.size      # 3
puts produtos.first
puts produtos.last

produtos << "beterraba" # adiciona no fim
p produtos
puts produtos.include?("tomate")   # true

# HASH: pares de chave e valor. Como um dicionário.
preco = { "alface" => 450, "tomate" => 990 }
puts preco["alface"]    # 450
p    preco["mel"]       # nil (chave que não existe)

# Com símbolos (:nome) é o mais comum em Ruby.
produtor = { nome: "Sítio Boa Terra", cidade: "Piracicaba", caixas: 12 }
puts produtor[:nome]
puts produtor[:cidade]

# ARMADILHA: símbolo e string são chaves DIFERENTES.
p produtor["nome"]      # nil  <- não é o mesmo que :nome

produtor[:email] = "contato@boaterra.example"  # adiciona
p produtor.keys
p produtor.values
