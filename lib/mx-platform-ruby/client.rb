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

    def make_request(options = {})
      body    = ::JSON.dump(options[:request_body]) if options[:request_body]
      headers = default_headers.merge(options[:headers] || {})
      url     = "#{base_url}#{options[:endpoint]}"
      url     = "#{url}?#{::URI.encode_www_form(options[:query_params])}" if options[:query_params]
      method  = options[:http_method]

      response = http_client.public_send(method, url, body, headers)

      handle_response(response)
    end

    def http_client
      @http_client ||= ::HTTPClient.new
    end

    private

    def default_headers
      {
        'Accept' => 'application/vnd.mx.api.v1+json',
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
