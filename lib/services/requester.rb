require 'faraday'

module Services
  class Requester
    # @param [String] method: default get
    # @param [String] url: example: "http://example.com"
    # @return [Hash] response
    def request(method: :get, url:)
      result = Faraday.send(method, url)
      parse_response(result)
    rescue StandardError
      parse_response(error_response)
    end

    private

    def parse_response(result)
      {
        status: result.status,
        body:   result.body
      }
    end

    def error_response
      OpenStruct.new(
        status: 500,
        body: "Backend Error"
      )
    end
  end
end