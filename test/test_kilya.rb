require 'minitest/autorun'
require 'kilya'

class TestKilya < Minitest::Test
  def test_reverse_string
    assert_equal("aaasss", Kilya.reverse("sssaaa"))
  end

  def test_not_empty_reverse
    assert_equal("nothing to reverse", Kilya.reverse(nil))
  end

  def test_fatrady_request
    assert_equal(301, Kilya.request("http://google.com").status)
  end
end