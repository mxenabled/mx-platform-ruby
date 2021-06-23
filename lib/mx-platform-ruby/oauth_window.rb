# frozen_string_literal: true

module MXPlatformRuby
  class OAuthWindow
    include ::ActiveAttr::Model

    attribute :guid
    attribute :oauth_window_uri

    def self.request_oauth_window(options = {})
      request_oauth_window_options = request_oauth_window_options(options)
      response = ::MXPlatformRuby.client.make_request(request_oauth_window_options)

      member_params = response['member']
      ::MXPlatformRuby::OAuthWindow.new(member_params)
    end

    # Private class methods

    def self.request_oauth_window_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/oauth_window_uri",
        http_method: :get,
        query_params: {
          referral_source: options[:referral_source],
          ui_message_webview_url_scheme: options[:ui_message_webview_url_scheme]
        }.compact
      }
    end
    private_class_method :request_oauth_window_options
  end
end
