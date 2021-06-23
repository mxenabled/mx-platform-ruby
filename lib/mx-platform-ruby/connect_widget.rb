# frozen_string_literal: true

module MXPlatformRuby
  class ConnectWidget
    include ::ActiveAttr::Model

    attribute :connect_widget_url
    attribute :guid

    def self.request_connect_widget_url(options = {})
      request_connect_widget_url_options = request_connect_widget_url_options(options)
      response = ::MXPlatformRuby.client.make_request(request_connect_widget_url_options)

      user_params = response['user']
      ::MXPlatformRuby::ConnectWidget.new(user_params)
    end

    # Private class methods

    def self.request_connect_widget_url_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/connect_widget_url",
        http_method: :post,
        request_body: {
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
      }
    end
    private_class_method :request_connect_widget_url_options
  end
end
