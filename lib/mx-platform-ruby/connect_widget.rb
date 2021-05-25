# frozen_string_literal: true

module MxPlatformRuby
  class ConnectWidget
    include ::ActiveAttr::Model

    attribute :connect_widget_url
    attribute :guid

    def self.request_connect_widget_url(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = request_connect_widget_url_body(options)
      endpoint = "/users/#{options[:user_guid]}/connect_widget_url"
      response = ::MxPlatformRuby.client.make_request(:post, endpoint, body, headers)

      user_params = response['user']
      ::MxPlatformRuby::ConnectWidget.new(user_params)
    end

    # Private class methods

    def self.request_connect_widget_url_body(options)
      {
        config: {
          color_scheme: options[:color_scheme],
          current_institution_code: options[:current_institution_code],
          current_member_guid: options[:current_member_guid],
          disable_institution_search: options[:disable_institution_search],
          include_transactions: options[:include_transactions],
          is_mobile_webview: options[:is_mobile_webview],
          mode: options[:mode],
          ui_message_version: options[:ui_message_version],
          ui_message_webview_url_scheme: options[:ui_message_webview_url_scheme],
          update_credentials: options[:update_credentials],
          wait_for_full_aggregation: options[:wait_for_full_aggregation]
        }.compact
      }
    end
    private_class_method :request_connect_widget_url_body
  end
end
