require 'minitest/autorun'
require 'kilya'

class TestKilya < Minitest::Test
  def test_reverse_string
    assert_equal("aaasss", Kilya.reverse("ssssaa"))
  end
end