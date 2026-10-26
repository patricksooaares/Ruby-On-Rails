# Rode com:  ruby aula1/exemplos/03_condicionais.rb

caixas = 12

if caixas > 10
  puts "Vai precisar de duas bancas."
elsif caixas > 5
  puts "Uma banca resolve."
else
  puts "Cabe na mesa pequena."
end

# unless é o "se NÃO". Use com moderação, só quando fica mais legível.
chovendo = false
unless chovendo
  puts "Feira confirmada."
end

# ARMADILHA: = atribui, == compara. Um sinal a menos muda tudo.
idade = 20
puts idade == 20   # true  (comparação)

# No Ruby, só false e nil são falsos. O ZERO É VERDADEIRO.
# Em muitas linguagens 0 é falso. Aqui não. Isso pega gente experiente.
if 0
  puts "zero é verdadeiro no Ruby"
end

if ""
  puts "string vazia também é verdadeira"
end

# Para saber se está vazio, pergunte de verdade:
lista = []
puts lista.empty?           # true
puts lista.any?             # false

# nil é a ausência de valor. Perguntar antes evita erro.
produtor = nil
puts produtor.nil?          # true
# produtor.upcase levantaria NoMethodError
puts produtor&.upcase.inspect  # nil, sem quebrar (& é a navegação segura)
