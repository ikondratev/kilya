# main pont
require 'services/string_builder'

class Kilya
  # It's my first simple gem
  #
  # Example:
  #   >> Kilya.reverse("abcd")
  #   => "dcba"
  #
  # Arguments:
  #   line: (String)
  class << self
    include Services::StringBuilder
  end
end
