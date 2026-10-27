# EXERCÍCIO 2: a armadilha da divisão inteira
#
# Escreva o método `media` que recebe uma lista de notas (números inteiros)
# e devolve a média com casas decimais.
#
# Atenção: notas = [7, 8, 10] tem média 8.333..., não 8.
#
# Verifique com:  ruby bin/verificar aula1 02

def media(notas)
  puts notas.sum.fdiv(notas.size)
  return puts notas.sum.fdiv(notas.size)
end
