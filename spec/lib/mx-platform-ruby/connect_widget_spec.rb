# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::ConnectWidget do
  let(:connect_widget_attributes) do
    {
      'connect_widget_url' => 'https://int-widgets.moneydesktop.com/md/connect/jb1rA14m85tw2lyvpgfx4gc6d3Z8z8Ayb8',
      'guid' => 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:connect_widget_response) { { 'user' => connect_widget_attributes } }
  let(:get_connect_widget_request_body_parameters) do
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
  let(:get_connect_widget_request_body) do
    {
      config:
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
    }
  end
  let(:get_connect_widget_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end

  describe 'get_connect_widget' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(connect_widget_response) }

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :post,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/connect_widget_url',
        get_connect_widget_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.get_connect_widget(
        get_connect_widget_request_body_parameters.merge(get_connect_widget_path_parameters)
      )
    end

    it 'returns connect_widget' do
      response = described_class.get_connect_widget

      expect(response).to be_kind_of(::MxPlatformRuby::ConnectWidget)
      expect(response.connect_widget_url).to eq(connect_widget_attributes['connect_widget_url'])
      expect(response.guid).to eq(connect_widget_attributes['guid'])
    end
  end
end
