require 'faraday'

module Services
  class Requester
    # @param [String] method: default get
    # @param [String] url: example: "http://example.com"
    # @return [String] response
    def request(method: :get, url:)
      Faraday.send(method, url)
    end
  end
end