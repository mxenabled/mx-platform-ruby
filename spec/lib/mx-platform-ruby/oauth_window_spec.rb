# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::OAuthWindow do
  let(:oauth_window_attributes) do
    {
      guid: 'MBR-df96fd60-7122-4464-b3c2-ff11d8c74f6f',
      oauth_window_uri: 'int-widgets.moneydesktop.com/oauth/predirect_to/MBR-df96fd60-7122-4464-b3c2-ff11d8c74f6f/zgknnw5k7dmztn2njmwlgz574mZlnft6vdrv7kzn9ptj325th6c5p0w6c7j83Ap1bqg01mhsr1bqjgf2fry3ly9wff497c6fcczbyrfgj7s39cygw95Akl7vlpmcAy2kmvh1mlkytg7jA1z3vnw1w3zx2r1wt65s6f6r3ryqqrysl9qA1kr6cAj6vhr1zl325Azz6hx52j1ll3vwbvvbv5xzy7d6csplyw25brA7147vAfq29ArjjAj4qmc6r6h457hkcj2946m0kjp2xzpkz6hz55lsp3Avmdb8dsq4xzqmzzqk68s6bp5tj9jsskw4wvcb95vm4fwh9w8phgp67hfj2flrtwcy5bxbtk74?skip_aggregation=false'
    }
  end
  let(:request_oauth_window_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      referral_source: 'APP',
      ui_message_webview_url_scheme: 'mx',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end

  describe 'request_oauth_window' do
    let(:request_oauth_window_response) { { 'member' => oauth_window_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(request_oauth_window_response) }

    it 'returns oauth_window' do
      response = described_class.request_oauth_window

      expect(response).to be_kind_of(::MXPlatformRuby::OAuthWindow)
      expect(response.guid).to eq(oauth_window_attributes[:guid])
      expect(response.oauth_window_uri).to eq(oauth_window_attributes[:oauth_window_uri])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/oauth_window_uri',
          http_method: :get,
          query_params: {
            referral_source: 'APP',
            ui_message_webview_url_scheme: 'mx'
          }.compact
        }
      )
      described_class.request_oauth_window(request_oauth_window_options)
    end
  end
end
