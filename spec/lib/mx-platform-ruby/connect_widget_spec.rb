# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::ConnectWidget do
  let(:connect_widget_attributes) do
    {
      'connect_widget_url' => 'https://int-widgets.moneydesktop.com/md/connect/jb1rA14m85tw2lyvpgfx4gc6d3Z8z8Ayb8',
      'guid' => 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:request_connect_widget_url_request_body) { { config: request_connect_widget_url_request_body_parameters } }
  let(:request_connect_widget_url_request_body_parameters) do
    {
      color_scheme: 'light',
      current_institution_code: 'chase',
      current_member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      disable_institution_search: false,
      include_transactions: true,
      is_mobile_webview: true,
      mode: 'aggregation',
      ui_message_version: 4,
      ui_message_webview_url_scheme: 'mx',
      update_credentials: false,
      wait_for_full_aggregation: false
    }
  end
  let(:request_connect_widget_url_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end

  describe 'request_connect_widget_url' do
    let(:request_connect_widget_url_response) { { 'user' => connect_widget_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(request_connect_widget_url_response) }

    it 'returns connect_widget' do
      response = described_class.request_connect_widget_url

      expect(response).to be_kind_of(::MXPlatformRuby::ConnectWidget)
      expect(response.connect_widget_url).to eq(connect_widget_attributes['connect_widget_url'])
      expect(response.guid).to eq(connect_widget_attributes['guid'])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        :post,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/connect_widget_url',
        request_connect_widget_url_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.request_connect_widget_url(
        request_connect_widget_url_request_body_parameters.merge(request_connect_widget_url_path_parameters)
      )
    end
  end
end
