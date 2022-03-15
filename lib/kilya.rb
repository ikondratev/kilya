# main point
require 'services/string_builder'
require 'services/requester'

class Kilya
  # It's my first simple gem
  #
  # Example:
  #   >> Kilya.reverse("abcd")
  #   => "dcba"
  #   >> Kilya.request("http://example.com")
  #   =><HTML><HEAD><meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\"> ...
  # Arguments:
  #   line: (String)
  class << self
    include Services::StringBuilder

    def request(url)
      requester = Services::Requester.new
      requester.request(url: url)
    end
  end
end
