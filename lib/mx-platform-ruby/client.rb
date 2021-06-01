# frozen_string_literal: true

module MXPlatformRuby
  class Client
    BASE_URL = 'https://int-api.mx.com'

    attr_accessor :base_url, :password, :username

    def initialize(base_url = BASE_URL, password = nil, username = nil)
      @base_url = base_url
      @password = password
      @username = username
    end

    def make_request(method, endpoint, body = nil, headers = {})
      body    = ::JSON.dump(body) if body
      headers = default_headers.merge(headers)
      url     = "#{base_url}#{endpoint}"

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
        'Authorization' => "Basic #{::Base64.urlsafe_encode64("#{username}:#{password}")}",
        'Content-Type' => 'application/json'
      }
    end

    def format_response_body(body)
      ::JSON.parse(body)
    rescue JSON::ParserError
      file = ::Tempfile.new
      file.write(body)
      file.close
      file
    end

    def handle_response(response)
      # Handle 200-206 responses as acceptable
      raise ::MXPlatformRuby::Error, "#{response.status}: #{response.body}" unless response.status.between?(200, 206)

      return if response.body.empty?

      format_response_body(response.body)
    end
  end
end
