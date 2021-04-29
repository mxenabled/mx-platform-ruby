# frozen_string_literal: true

module MxPlatformRuby
  class Client
    BASE_URL = 'https://int-api.mx.com'

    attr_accessor :base_url, :password, :username

    def initialize(base_url = BASE_URL, password = nil, username = nil)
      @base_url = base_url
      @password = password
      @username = username
    end

    def make_request(method, endpoint, body = nil, headers = {})
      headers = default_headers.merge(headers)
      url     = "#{base_url}#{endpoint}"
      body    = ::JSON.dump(body) if body

      response = http_client.public_send(method, url, body, headers)

      handle_response(response)
    end

    def http_client
      @http_client ||= ::HTTPClient.new
    end

    private

    def default_headers
      {
        'Accept' => 'application/json',
        'Content-Type' => 'application/json',
        'Authorization' => "Basic #{::Base64.urlsafe_encode64("#{username}:#{password}")}"
      }
    end

    def handle_response(response)
      # Handle 200-206 responses as acceptable
      raise ::MxPlatformRuby::Error, "#{response.status}: #{response.body}" unless response.status.between?(200, 206)

      ::JSON.parse(response.body) unless response.body.empty?
    end
  end
end
