# Rode com:  ruby aula1/exemplos/06_metodos.rb

# Método é um pedaço de código com nome, que você chama quando quiser.
def saudacao(nome)
  "Bom dia, #{nome}!"
end

puts saudacao("Marta")

# O Ruby DEVOLVE a última linha do método, mesmo sem escrever return.
def dobro(numero)
  numero * 2
end

puts dobro(21)   # 42

# ARMADILHA: puts mostra na tela e devolve nil. Não confunda mostrar com devolver.
def mostra_dobro(numero)
  puts numero * 2      # mostra
end

resultado = mostra_dobro(21)   # imprime 42
p resultado                    # nil  <- o método não devolveu o número!

# Argumento com valor padrão
def preco_com_desconto(preco, desconto = 0)
  preco - desconto
end

puts preco_com_desconto(1000)
puts preco_com_desconto(1000, 150)

# Método que pergunta termina com ?  (convenção)
def caro?(preco_em_centavos)
  preco_em_centavos > 2000
end

puts caro?(2400)   # true
puts caro?(450)    # false
