require "minitest/autorun"
require_relative "../exercicios/04_conta_caixas"

class ContaCaixasTeste < Minitest::Test
  def caixas
    { "Sítio Boa Terra" => 12, "Horta da Vila" => 4 }
  end

  def test_caixas_de_produtor_conhecido
    assert_equal 12, caixas_de(caixas, "Sítio Boa Terra")
  end

  def test_produtor_desconhecido_devolve_zero
    assert_equal 0, caixas_de(caixas, "Roça do Zé")
  end

  def test_precisa_de_banca_extra
    assert_equal true,  precisa_de_banca_extra?(caixas, "Sítio Boa Terra")
    assert_equal false, precisa_de_banca_extra?(caixas, "Horta da Vila")
  end

  def test_exatamente_dez_nao_precisa
    assert_equal false, precisa_de_banca_extra?({ "X" => 10 }, "X")
  end
end
