# frozen_string_literal: true

module MXPlatformRuby
  class Widget
    include ::ActiveAttr::Model

    attribute :type
    attribute :url
    attribute :user_id

    def self.request_widget_url(options = {})
      request_widget_url_options = request_widget_url_options(options)
      response = ::MXPlatformRuby.client.make_request(request_widget_url_options)

      widget_url_params = response['widget_url']
      ::MXPlatformRuby::Widget.new(widget_url_params)
    end

    # Private class methods

    def self.request_widget_url_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/widget_urls",
        headers: {
          'Accept-Language': options[:accept_language]
        }.compact,
        http_method: :post,
        request_body: {
          widget_url: {
            color_scheme: options[:color_scheme],
            current_institution_code: options[:current_institution_code],
            current_institution_guid: options[:current_institution_guid],
            current_member_guid: options[:current_member_guid],
            disable_institution_search: options[:disable_institution_search],
            include_transactions: options[:include_transactions],
            is_mobile_webview: options[:is_mobile_webview],
            mode: options[:mode],
            ui_message_version: options[:ui_message_version],
            ui_message_webview_url_scheme: options[:ui_message_webview_url_scheme],
            update_credentials: options[:update_credentials],
            wait_for_full_aggregation: options[:wait_for_full_aggregation],
            widget_type: options[:widget_type]
          }.compact
        }
      }
    end
    private_class_method :request_widget_url_options
  end
end
