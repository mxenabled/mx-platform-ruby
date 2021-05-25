# frozen_string_literal: true

module MxPlatformRuby
  class OAuthWindow
    include ::ActiveAttr::Model

    attribute :guid
    attribute :oauth_window_uri

    def self.request_o_auth_window(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/oauth_window_uri"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      member_params = response['member']
      ::MxPlatformRuby::OAuthWindow.new(member_params)
    end
  end
end
