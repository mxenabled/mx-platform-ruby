# frozen_string_literal: true

module MxPlatformRuby
  class Widget
    include ::ActiveAttr::Model

    attribute :type
    attribute :url
    attribute :user_id

    def self.request_widget_url(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      body = request_widget_url_body(options)
      endpoint = "/users/#{options[:user_guid]}/widget_urls"
      response = ::MxPlatformRuby.client.make_request(:post, endpoint, body, accept_header)

      widget_url_params = response['widget_url']
      ::MxPlatformRuby::Widget.new(widget_url_params)
    end

    # Private class methods

    def self.request_widget_url_body(options)
      {
        widget_url: {
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
          wait_for_full_aggregation: options[:wait_for_full_aggregation],
          widget_type: options[:widget_type]
        }
      }
    end
    private_class_method :request_widget_url_body
  end
end
