# Rode com:  ruby aula1/exemplos/05_repeticao.rb

produtos = ["alface", "tomate", "cenoura"]

# each: faz algo para cada item. É o laço mais usado em Ruby.
produtos.each do |produto|
  puts "Produto: #{produto}"
end

# Versão de uma linha, com chaves.
produtos.each { |produto| puts produto.upcase }

# times: repete N vezes.
3.times do |i|
  puts "volta #{i}"    # 0, 1, 2
end

# Faixas (ranges)
(1..3).each { |n| puts n }    # 1, 2, 3   (dois pontos: inclui o 3)
(1...3).each { |n| puts n }   # 1, 2      (três pontos: NÃO inclui o 3)

# while: repete enquanto a condição for verdadeira.
caixas = 3
while caixas > 0
  puts "descarregando... faltam #{caixas}"
  caixas = caixas - 1
end

# ARMADILHA: mudar a lista enquanto percorre ela pula elementos.
lista = ["a", "b", "c", "d"]
lista.each do |item|
  lista.delete(item) if item == "b"
end
p lista   # ["a", "c", "d"]  -> parece certo aqui, mas o "c" foi pulado na volta.
          # O jeito seguro é criar uma lista nova:
p ["a", "b", "c", "d"].reject { |item| item == "b" }
