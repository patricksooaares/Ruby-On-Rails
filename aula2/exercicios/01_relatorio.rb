# EXERCÍCIO 1: map, select, sum e group_by
#
# `vendas` é uma lista de hashes com :produtor, :produto e :valor_em_centavos.
#
# 1. `produtos_vendidos(vendas)` devolve a lista de nomes de produto, sem repetir.
# 2. `total_do_produtor(vendas, produtor)` soma, EM CENTAVOS, as vendas daquele produtor.
# 3. `total_por_produtor(vendas)` devolve um hash: produtor => total em centavos.
# 4. `ticket_medio_em_reais(vendas)` devolve a média por venda, em reais.
#    Se a lista estiver vazia, devolva 0.0 (e não NaN).
#
# Verifique com:  ruby bin/verificar aula2 01

def produtos_vendidos(vendas)
  nomes = []
  vendas.each do |venda| 
    unless nomes.include?(venda[:produto])
      nomes << venda[:produto]
    end
  end
  nomes
end

def total_do_produtor(vendas, produtor)
  de_produtor = vendas.select { |venda| venda[produtor] = produtor }
  de_produtor.sum{ |venda| venda[:valor_em_centavos] }
end

def total_por_produtor(vendas)
  por_produtor = vendas.group_by { |venda| venda[:produtor] }
  totais = {}
  por_produtor.keys.esch do |produtor|
    totais[produtor] = por_produtor[produtor].sum do |venda|
      venda[:valor_em_centavos]
    end
  end
  p totais
end

def vendas
    [
      { produtor: "Horta da Vila",   produto: "cenoura", valor_em_centavos: 1200 },
      { produtor: "Sítio Boa Terra", produto: "alface",  valor_em_centavos: 800 },
      { produtor: "Horta da Vila",   produto: "cenoura", valor_em_centavos: 450 }
    ]
end

def ticket_medio_em_reais(vendas)
  if vendas.empty?
    0.0
  else
    total = vendas.sum { |venda| venda[:valor_em_centavos] }
    total.fdiv(vendas.size) / 100.0
end
