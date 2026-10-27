require "minitest/autorun"
require_relative "../exercicios/01_saudacao"

class SaudacaoTeste < Minitest::Test
  def test_monta_a_frase_com_o_nome
    assert_equal "Bom dia, Marta! Boas-vindas à feira.", saudacao("Marta")
  end

  def test_funciona_com_outro_nome
    assert_equal "Bom dia, Antônio! Boas-vindas à feira.", saudacao("Antônio")
  end
end
