require "minitest/autorun"
require_relative "../exercicios/02_media"

class MediaTeste < Minitest::Test
  def test_media_com_decimal
    assert_in_delta 8.333333, media([7, 8, 10]), 0.0001
  end

  def test_media_exata
    assert_in_delta 5.0, media([4, 6]), 0.0001
  end

  def test_nao_arredonda_para_baixo
    refute_equal 3, media([7, 2]), "cuidado: 7/2 com inteiros dá 3, e a média é 4.5"
    assert_in_delta 4.5, media([7, 2]), 0.0001
  end
end
