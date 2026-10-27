# EXERCÍCIO 4: condicional e nil
#
# `caixas_por_produtor` é um hash: nome do produtor => número de caixas.
#
# 1. `caixas_de(hash, nome)` devolve o número de caixas do produtor.
#    Se o produtor não estiver no hash, devolve 0 (e não nil).
# 2. `precisa_de_banca_extra?(hash, nome)` devolve true se o produtor
#    trouxe MAIS de 10 caixas.
#
# Verifique com:  ruby bin/verificar aula1 04

def caixas_de(caixas_por_produtor, nome)
  caixas = caixas_por_produtor{nome}
  if caixas.nil?
    0
  else
    caixas
  end
end

def precisa_de_banca_extra?(caixas_por_produtor, nome)
  caixas_de(caixas_por_produtor, nome) > 10
end
