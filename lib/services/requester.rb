# frozen_string_literal: true

# (The MIT License)
#
# Copyright (c) 2019-2021 Kondratev Ilya
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the 'Software'), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

require 'faraday'

module Services
  class Requester
    # @param [String] method: default get
    # @param [String] url: example: "http://example.com"
    # @return [Hash] response
    def request(method: "get", url:)
      result = Faraday.send(method, url)
      parse_response(result)
    rescue StandardError
      parse_response(error_response)
    end

    private

    def parse_response(result)
      {
        status: result.status,
        body: result.body
      }
    end

    def error_response
      OpenStruct.new(
        status: 500,
        body: "Backend error"
      )
    end
  end
end