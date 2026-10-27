require "minitest/autorun"
require_relative "../exercicios/03_lista_de_precos"

class ListaDePrecosTeste < Minitest::Test
  def produtos
    [
      { nome: "alface",  preco_em_centavos: 450 },
      { nome: "tomate",  preco_em_centavos: 990 },
      { nome: "cenoura", preco_em_centavos: 620 }
    ]
  end

  def test_nomes
    assert_equal ["alface", "tomate", "cenoura"], nomes(produtos)
  end

  def test_mais_caro
    assert_equal({ nome: "tomate", preco_em_centavos: 990 }, mais_caro(produtos))
  end

  def test_total_em_reais
    assert_in_delta 20.60, total_em_reais(produtos), 0.001
  end
end
