# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::Holding do
  let(:holding_attributes) do
    {
      'account_guid' => 'HOL-d65683e8-9eab-26bb-bcfd-ced159c9abe2',
      'cost_basis' => 827.0,
      'created_at' => '2015-04-13T18:01:23.000Z',
      'currency_code' => 'USD',
      'cusip' => '18383M878',
      'daily_change' => 2.5,
      'description' => 'Guggenheim Defensive Equity ETF',
      'guid' => 'HOL-d65683e8-9eab-26bb-bcfd-ced159c9abe2',
      'holding_type' => 'MONEY_MARKET',
      'id' => 'ID-123',
      'market_value' => 989.5,
      'member_guid' => 'MBR-d65683e8-9eab-26bb-bcfd-ced159c9abe',
      'metadata' => 'metadata',
      'purchase_price' => 26.3,
      'shares' => 6.0,
      'symbol' => 'DEF',
      'updated_at' => '2015-04-13T18:01:23.000Z',
      'user_guid' => 'USR-743e5d7f-1116-28fa-5de1-d3ba02e41d8d'
    }
  end
  let(:list_holdings_by_member_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_holdings_by_user_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_holding_path_parameters) do
    {
      holding_guid: 'HOL-d65683e8-9eab-26bb-bcfd-ced159c9abe2',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
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

  context 'list_holdings_by_member endpoints' do
    let(:list_holdings_by_member_response) do
      {
        'holdings' => [holding_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(list_holdings_by_member_response) }

    describe 'list_holdings_by_member_page' do
      it 'returns a list of holdings' do
        response = described_class.list_holdings_by_member_page

        expect(response).to be_kind_of(::MxPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MxPlatformRuby::Holding)
        expect(response.first.account_guid).to eq(holding_attributes['account_guid'])
        expect(response.first.cost_basis).to eq(holding_attributes['cost_basis'])
        expect(response.first.created_at).to eq(holding_attributes['created_at'])
        expect(response.first.currency_code).to eq(holding_attributes['currency_code'])
        expect(response.first.cusip).to eq(holding_attributes['cusip'])
        expect(response.first.daily_change).to eq(holding_attributes['daily_change'])
        expect(response.first.description).to eq(holding_attributes['description'])
        expect(response.first.guid).to eq(holding_attributes['guid'])
        expect(response.first.holding_type).to eq(holding_attributes['holding_type'])
        expect(response.first.id).to eq(holding_attributes['id'])
        expect(response.first.market_value).to eq(holding_attributes['market_value'])
        expect(response.first.member_guid).to eq(holding_attributes['member_guid'])
        expect(response.first.metadata).to eq(holding_attributes['metadata'])
        expect(response.first.purchase_price).to eq(holding_attributes['purchase_price'])
        expect(response.first.shares).to eq(holding_attributes['shares'])
        expect(response.first.symbol).to eq(holding_attributes['symbol'])
        expect(response.first.updated_at).to eq(holding_attributes['updated_at'])
        expect(response.first.user_guid).to eq(holding_attributes['user_guid'])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_holdings_by_member_each' do
      it 'yields a holding' do
        response = nil

        described_class.list_holdings_by_member_each do |holding|
          response = holding
        end

        expect(response).to be_kind_of(::MxPlatformRuby::Holding)
        expect(response.account_guid).to eq(holding_attributes['account_guid'])
        expect(response.cost_basis).to eq(holding_attributes['cost_basis'])
        expect(response.created_at).to eq(holding_attributes['created_at'])
        expect(response.currency_code).to eq(holding_attributes['currency_code'])
        expect(response.cusip).to eq(holding_attributes['cusip'])
        expect(response.daily_change).to eq(holding_attributes['daily_change'])
        expect(response.description).to eq(holding_attributes['description'])
        expect(response.guid).to eq(holding_attributes['guid'])
        expect(response.holding_type).to eq(holding_attributes['holding_type'])
        expect(response.id).to eq(holding_attributes['id'])
        expect(response.market_value).to eq(holding_attributes['market_value'])
        expect(response.member_guid).to eq(holding_attributes['member_guid'])
        expect(response.metadata).to eq(holding_attributes['metadata'])
        expect(response.purchase_price).to eq(holding_attributes['purchase_price'])
        expect(response.shares).to eq(holding_attributes['shares'])
        expect(response.symbol).to eq(holding_attributes['symbol'])
        expect(response.updated_at).to eq(holding_attributes['updated_at'])
        expect(response.user_guid).to eq(holding_attributes['user_guid'])
      end
    end

    describe 'list_holdings_by_member_pages_each' do
      it 'yields a page of holdings' do
        response = nil

        described_class.list_holdings_by_member_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MxPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MxPlatformRuby::Holding)
        expect(response.first.account_guid).to eq(holding_attributes['account_guid'])
        expect(response.first.cost_basis).to eq(holding_attributes['cost_basis'])
        expect(response.first.created_at).to eq(holding_attributes['created_at'])
        expect(response.first.currency_code).to eq(holding_attributes['currency_code'])
        expect(response.first.cusip).to eq(holding_attributes['cusip'])
        expect(response.first.daily_change).to eq(holding_attributes['daily_change'])
        expect(response.first.description).to eq(holding_attributes['description'])
        expect(response.first.guid).to eq(holding_attributes['guid'])
        expect(response.first.holding_type).to eq(holding_attributes['holding_type'])
        expect(response.first.id).to eq(holding_attributes['id'])
        expect(response.first.market_value).to eq(holding_attributes['market_value'])
        expect(response.first.member_guid).to eq(holding_attributes['member_guid'])
        expect(response.first.metadata).to eq(holding_attributes['metadata'])
        expect(response.first.purchase_price).to eq(holding_attributes['purchase_price'])
        expect(response.first.shares).to eq(holding_attributes['shares'])
        expect(response.first.symbol).to eq(holding_attributes['symbol'])
        expect(response.first.updated_at).to eq(holding_attributes['updated_at'])
        expect(response.first.user_guid).to eq(holding_attributes['user_guid'])
        expect(response.length).to eq(1)
      end
    end
  end

  context 'list_holdings_by_user endpoints' do
    let(:list_holdings_by_user_response) do
      {
        'holdings' => [holding_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(list_holdings_by_user_response) }

    describe 'list_holdings_by_user_page' do
      it 'returns a list of holdings' do
        response = described_class.list_holdings_by_user_page

        expect(response).to be_kind_of(::MxPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MxPlatformRuby::Holding)
        expect(response.first.account_guid).to eq(holding_attributes['account_guid'])
        expect(response.first.cost_basis).to eq(holding_attributes['cost_basis'])
        expect(response.first.created_at).to eq(holding_attributes['created_at'])
        expect(response.first.currency_code).to eq(holding_attributes['currency_code'])
        expect(response.first.cusip).to eq(holding_attributes['cusip'])
        expect(response.first.daily_change).to eq(holding_attributes['daily_change'])
        expect(response.first.description).to eq(holding_attributes['description'])
        expect(response.first.guid).to eq(holding_attributes['guid'])
        expect(response.first.holding_type).to eq(holding_attributes['holding_type'])
        expect(response.first.id).to eq(holding_attributes['id'])
        expect(response.first.market_value).to eq(holding_attributes['market_value'])
        expect(response.first.member_guid).to eq(holding_attributes['member_guid'])
        expect(response.first.metadata).to eq(holding_attributes['metadata'])
        expect(response.first.purchase_price).to eq(holding_attributes['purchase_price'])
        expect(response.first.shares).to eq(holding_attributes['shares'])
        expect(response.first.symbol).to eq(holding_attributes['symbol'])
        expect(response.first.updated_at).to eq(holding_attributes['updated_at'])
        expect(response.first.user_guid).to eq(holding_attributes['user_guid'])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_holdings_by_user_each' do
      it 'yields a holding' do
        response = nil

        described_class.list_holdings_by_user_each do |holding|
          response = holding
        end

        expect(response).to be_kind_of(::MxPlatformRuby::Holding)
        expect(response.account_guid).to eq(holding_attributes['account_guid'])
        expect(response.cost_basis).to eq(holding_attributes['cost_basis'])
        expect(response.created_at).to eq(holding_attributes['created_at'])
        expect(response.currency_code).to eq(holding_attributes['currency_code'])
        expect(response.cusip).to eq(holding_attributes['cusip'])
        expect(response.daily_change).to eq(holding_attributes['daily_change'])
        expect(response.description).to eq(holding_attributes['description'])
        expect(response.guid).to eq(holding_attributes['guid'])
        expect(response.holding_type).to eq(holding_attributes['holding_type'])
        expect(response.id).to eq(holding_attributes['id'])
        expect(response.market_value).to eq(holding_attributes['market_value'])
        expect(response.member_guid).to eq(holding_attributes['member_guid'])
        expect(response.metadata).to eq(holding_attributes['metadata'])
        expect(response.purchase_price).to eq(holding_attributes['purchase_price'])
        expect(response.shares).to eq(holding_attributes['shares'])
        expect(response.symbol).to eq(holding_attributes['symbol'])
        expect(response.updated_at).to eq(holding_attributes['updated_at'])
        expect(response.user_guid).to eq(holding_attributes['user_guid'])
      end
    end

    describe 'list_holdings_by_user_pages_each' do
      it 'yields a page of holdings' do
        response = nil

        described_class.list_holdings_by_user_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MxPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MxPlatformRuby::Holding)
        expect(response.first.account_guid).to eq(holding_attributes['account_guid'])
        expect(response.first.cost_basis).to eq(holding_attributes['cost_basis'])
        expect(response.first.created_at).to eq(holding_attributes['created_at'])
        expect(response.first.currency_code).to eq(holding_attributes['currency_code'])
        expect(response.first.cusip).to eq(holding_attributes['cusip'])
        expect(response.first.daily_change).to eq(holding_attributes['daily_change'])
        expect(response.first.description).to eq(holding_attributes['description'])
        expect(response.first.guid).to eq(holding_attributes['guid'])
        expect(response.first.holding_type).to eq(holding_attributes['holding_type'])
        expect(response.first.id).to eq(holding_attributes['id'])
        expect(response.first.market_value).to eq(holding_attributes['market_value'])
        expect(response.first.member_guid).to eq(holding_attributes['member_guid'])
        expect(response.first.metadata).to eq(holding_attributes['metadata'])
        expect(response.first.purchase_price).to eq(holding_attributes['purchase_price'])
        expect(response.first.shares).to eq(holding_attributes['shares'])
        expect(response.first.symbol).to eq(holding_attributes['symbol'])
        expect(response.first.updated_at).to eq(holding_attributes['updated_at'])
        expect(response.first.user_guid).to eq(holding_attributes['user_guid'])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_holding' do
    let(:read_holding_response) { { 'holding' => holding_attributes } }
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(read_holding_response) }

    it 'returns holding' do
      response = described_class.read_holding

      expect(response).to be_kind_of(::MxPlatformRuby::Holding)
      expect(response.account_guid).to eq(holding_attributes['account_guid'])
      expect(response.cost_basis).to eq(holding_attributes['cost_basis'])
      expect(response.created_at).to eq(holding_attributes['created_at'])
      expect(response.currency_code).to eq(holding_attributes['currency_code'])
      expect(response.cusip).to eq(holding_attributes['cusip'])
      expect(response.daily_change).to eq(holding_attributes['daily_change'])
      expect(response.description).to eq(holding_attributes['description'])
      expect(response.guid).to eq(holding_attributes['guid'])
      expect(response.holding_type).to eq(holding_attributes['holding_type'])
      expect(response.id).to eq(holding_attributes['id'])
      expect(response.market_value).to eq(holding_attributes['market_value'])
      expect(response.member_guid).to eq(holding_attributes['member_guid'])
      expect(response.metadata).to eq(holding_attributes['metadata'])
      expect(response.purchase_price).to eq(holding_attributes['purchase_price'])
      expect(response.shares).to eq(holding_attributes['shares'])
      expect(response.symbol).to eq(holding_attributes['symbol'])
      expect(response.updated_at).to eq(holding_attributes['updated_at'])
      expect(response.user_guid).to eq(holding_attributes['user_guid'])
    end

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :get,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/holdings/HOL-d65683e8-9eab-26bb-bcfd-ced159c9abe2',
        nil,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.read_holding(
        read_holding_path_parameters
      )
    end
  end
end
