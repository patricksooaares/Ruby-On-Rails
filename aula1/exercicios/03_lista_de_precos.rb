# EXERCÍCIO 3: array, hash e laço
#
# `produtos` é uma lista de hashes, cada um com :nome e :preco_em_centavos.
#
# 1. `nomes(produtos)` devolve uma lista só com os nomes.
# 2. `mais_caro(produtos)` devolve o hash do produto mais caro.
# 3. `total_em_reais(produtos)` devolve a soma dos preços, em reais (Float).
#
# Verifique com:  ruby bin/verificar aula1 03

def nomes(produtos)
  resultado = []

  produtos.each do |produto|
    resultado << produto[:nome]
  end

  resultado
end

def mais_caro(produtos)
  mais_caro = produtos[0]

  produtos.each do |produto|
    if produto[:preco_em_centavos] > mais_caro[:preco_em_centavos]
      mais_caro = produto
    end
  end

  mais_caro
end

def total_em_reais(produtos)
  total = 0

  produtos.each do |produto|
    total += produto[:preco_em_centavos]
  end

  total / 100.0
end
