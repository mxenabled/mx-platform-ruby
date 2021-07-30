# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Merchant do
  let(:merchant_attributes) do
    {
      created_at: '2017-04-20T19:30:12.000Z',
      guid: 'MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b',
      logo_url: 'https://s3.amazonaws.com/MD_Assets/merchant_logos/comcast.png',
      name: 'Comcast',
      updated_at: '2018-09-28T21:13:53.000Z',
      website_url: 'https://www.xfinity.com'
    }
  end
  let(:list_merchants_options) do
    {
      page: 1,
      records_per_page: 10
    }
  end
  let(:read_merchant_options) do
    {
      merchant_guid: 'MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b'
    }
  end
  let(:pagination_attributes) do
    {
      'current_page' => 1,
      'per_page' => 25,
      'total_pages' => 1,
      'total_entries' => 1
    }
  end

  context 'list_merchants endpoints' do
    let(:list_merchants_response) do
      {
        'merchants' => [merchant_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_merchants_response) }

    describe 'list_merchants' do
      it 'returns a list of merchants' do
        response = described_class.list_merchants

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Merchant)
        expect(response.first.created_at).to eq(merchant_attributes[:created_at])
        expect(response.first.guid).to eq(merchant_attributes[:guid])
        expect(response.first.logo_url).to eq(merchant_attributes[:logo_url])
        expect(response.first.name).to eq(merchant_attributes[:name])
        expect(response.first.updated_at).to eq(merchant_attributes[:updated_at])
        expect(response.first.website_url).to eq(merchant_attributes[:website_url])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_merchant' do
    let(:read_merchant_response) { { 'merchant' => merchant_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(read_merchant_response) }

    it 'returns merchant' do
      response = described_class.read_merchant

      expect(response).to be_kind_of(::MXPlatformRuby::Merchant)
      expect(response.created_at).to eq(merchant_attributes[:created_at])
      expect(response.guid).to eq(merchant_attributes[:guid])
      expect(response.logo_url).to eq(merchant_attributes[:logo_url])
      expect(response.name).to eq(merchant_attributes[:name])
      expect(response.updated_at).to eq(merchant_attributes[:updated_at])
      expect(response.website_url).to eq(merchant_attributes[:website_url])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/merchants/MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b',
          http_method: :get
        }
      )
      described_class.read_merchant(read_merchant_options)
    end
  end
end
