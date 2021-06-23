# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Widget do
  let(:widget_attributes) do
    {
      type: 'connect_widget',
      url: 'https://int-widgets.moneydesktop.com/md/connect/yxcdk7f1nb99jwApp34lA24m0AZ8rzprgmw17gm8z8h2AzjyAnd1rj42qfv42r3xnn07Amfwlg3j09hwp8bkq8tc5z21j33xjggmp2qtlpkz2v4gywfhfn31l44tx2w91bfc2thc58j4syqp0hgxcyvA4g7754hk7gjc56kt7tc36s45mmkdz2jqqqydspytmtr3dAb9jh6fkb24f3zkfpdjj0v77f0vmrtzvzxkmxz7dklsq8gd0gstkbhlw5bgpgc3m9mAtpAcr2w15gwy5xc4blgxppl42Avnm63291z3cyp0wm3lqgmvgzdAddct423gAdqxdlfx5d4mvc0ck2gt7ktqgks4vxq1pAy5',
      user_id: 'U-jeff-201709221210'
    }
  end
  let(:request_widget_url_options) do
    {
      accept_language: 'en-US',
      color_scheme: 'light',
      current_institution_code: 'chase',
      current_institution_guid: 'INS-f1a3285d-e855-b61f-6aa7-8ae575c0e0e9',
      current_member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      disable_institution_search: false,
      include_transactions: true,
      is_mobile_webview: true,
      mode: 'aggregation',
      ui_message_version: 4,
      ui_message_webview_url_scheme: 'mx',
      update_credentials: false,
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54',
      wait_for_full_aggregation: false,
      widget_type: 'connect_widget'
    }
  end

  describe 'request_widget_url' do
    let(:request_widget_url_response) { { 'widget_url' => widget_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(request_widget_url_response) }

    it 'returns widget' do
      response = described_class.request_widget_url

      expect(response).to be_kind_of(::MXPlatformRuby::Widget)
      expect(response.type).to eq(widget_attributes[:type])
      expect(response.url).to eq(widget_attributes[:url])
      expect(response.user_id).to eq(widget_attributes[:user_id])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/widget_urls',
          headers: {
            'Accept-Language': 'en-US'
          },
          http_method: :post,
          request_body: {
            widget_url: {
              color_scheme: 'light',
              current_institution_code: 'chase',
              current_institution_guid: 'INS-f1a3285d-e855-b61f-6aa7-8ae575c0e0e9',
              current_member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
              disable_institution_search: false,
              include_transactions: true,
              is_mobile_webview: true,
              mode: 'aggregation',
              ui_message_version: 4,
              ui_message_webview_url_scheme: 'mx',
              update_credentials: false,
              wait_for_full_aggregation: false,
              widget_type: 'connect_widget'
            }
          }
        }
      )
      described_class.request_widget_url(request_widget_url_options)
    end
  end
end
