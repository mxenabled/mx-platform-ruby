# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Institution do
  let(:institution_attributes) do
    {
      'code' => 'chase',
      'medium_logo_url' => 'https://content.moneydesktop.com/storage/MD_Assets/Ipad%20Logos/100x100/default_100x100.png',
      'name' => 'Chase Bank',
      'small_logo_url' => 'https://content.moneydesktop.com/storage/MD_Assets/Ipad%20Logos/50x50/default_50x50.png',
      'supports_account_identification' => true,
      'supports_account_statement' => true,
      'supports_account_verification' => true,
      'supports_oauth' => true,
      'supports_transaction_history' => true,
      'url' => 'https://www.chase.com'
    }
  end
  let(:read_institution_path_parameters) do
    {
      institution_code: 'chase'
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

  context 'list_favorites endpoints' do
    let(:list_favorites_response) do
      {
        'institutions' => [institution_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_favorites_response) }

    describe 'list_favorites_page' do
      it 'returns a list of institutions' do
        response = described_class.list_favorites_page

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Institution)
        expect(response.first.code).to eq(institution_attributes['code'])
        expect(response.first.medium_logo_url).to eq(institution_attributes['medium_logo_url'])
        expect(response.first.name).to eq(institution_attributes['name'])
        expect(response.first.small_logo_url).to eq(institution_attributes['small_logo_url'])
        expect(response.first.supports_account_identification).to eq(institution_attributes['supports_account_identification'])
        expect(response.first.supports_account_statement).to eq(institution_attributes['supports_account_statement'])
        expect(response.first.supports_account_verification).to eq(institution_attributes['supports_account_verification'])
        expect(response.first.supports_oauth).to eq(institution_attributes['supports_oauth'])
        expect(response.first.supports_transaction_history).to eq(institution_attributes['supports_transaction_history'])
        expect(response.first.url).to eq(institution_attributes['url'])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_favorites_each' do
      it 'yields a institution' do
        response = nil

        described_class.list_favorites_each do |institution|
          response = institution
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Institution)
        expect(response.code).to eq(institution_attributes['code'])
        expect(response.medium_logo_url).to eq(institution_attributes['medium_logo_url'])
        expect(response.name).to eq(institution_attributes['name'])
        expect(response.small_logo_url).to eq(institution_attributes['small_logo_url'])
        expect(response.supports_account_identification).to eq(institution_attributes['supports_account_identification'])
        expect(response.supports_account_statement).to eq(institution_attributes['supports_account_statement'])
        expect(response.supports_account_verification).to eq(institution_attributes['supports_account_verification'])
        expect(response.supports_oauth).to eq(institution_attributes['supports_oauth'])
        expect(response.supports_transaction_history).to eq(institution_attributes['supports_transaction_history'])
        expect(response.url).to eq(institution_attributes['url'])
      end
    end

    describe 'list_favorites_pages_each' do
      it 'yields a page of institutions' do
        response = nil

        described_class.list_favorites_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Institution)
        expect(response.first.code).to eq(institution_attributes['code'])
        expect(response.first.medium_logo_url).to eq(institution_attributes['medium_logo_url'])
        expect(response.first.name).to eq(institution_attributes['name'])
        expect(response.first.small_logo_url).to eq(institution_attributes['small_logo_url'])
        expect(response.first.supports_account_identification).to eq(institution_attributes['supports_account_identification'])
        expect(response.first.supports_account_statement).to eq(institution_attributes['supports_account_statement'])
        expect(response.first.supports_account_verification).to eq(institution_attributes['supports_account_verification'])
        expect(response.first.supports_oauth).to eq(institution_attributes['supports_oauth'])
        expect(response.first.supports_transaction_history).to eq(institution_attributes['supports_transaction_history'])
        expect(response.first.url).to eq(institution_attributes['url'])
        expect(response.length).to eq(1)
      end
    end
  end

  context 'list_institutions endpoints' do
    let(:list_institutions_response) do
      {
        'institutions' => [institution_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_institutions_response) }

    describe 'list_institutions_page' do
      it 'returns a list of institutions' do
        response = described_class.list_institutions_page

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Institution)
        expect(response.first.code).to eq(institution_attributes['code'])
        expect(response.first.medium_logo_url).to eq(institution_attributes['medium_logo_url'])
        expect(response.first.name).to eq(institution_attributes['name'])
        expect(response.first.small_logo_url).to eq(institution_attributes['small_logo_url'])
        expect(response.first.supports_account_identification).to eq(institution_attributes['supports_account_identification'])
        expect(response.first.supports_account_statement).to eq(institution_attributes['supports_account_statement'])
        expect(response.first.supports_account_verification).to eq(institution_attributes['supports_account_verification'])
        expect(response.first.supports_oauth).to eq(institution_attributes['supports_oauth'])
        expect(response.first.supports_transaction_history).to eq(institution_attributes['supports_transaction_history'])
        expect(response.first.url).to eq(institution_attributes['url'])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_institutions_each' do
      it 'yields a institution' do
        response = nil

        described_class.list_institutions_each do |institution|
          response = institution
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Institution)
        expect(response.code).to eq(institution_attributes['code'])
        expect(response.medium_logo_url).to eq(institution_attributes['medium_logo_url'])
        expect(response.name).to eq(institution_attributes['name'])
        expect(response.small_logo_url).to eq(institution_attributes['small_logo_url'])
        expect(response.supports_account_identification).to eq(institution_attributes['supports_account_identification'])
        expect(response.supports_account_statement).to eq(institution_attributes['supports_account_statement'])
        expect(response.supports_account_verification).to eq(institution_attributes['supports_account_verification'])
        expect(response.supports_oauth).to eq(institution_attributes['supports_oauth'])
        expect(response.supports_transaction_history).to eq(institution_attributes['supports_transaction_history'])
        expect(response.url).to eq(institution_attributes['url'])
      end
    end

    describe 'list_institutions_pages_each' do
      it 'yields a page of institutions' do
        response = nil

        described_class.list_institutions_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Institution)
        expect(response.first.code).to eq(institution_attributes['code'])
        expect(response.first.medium_logo_url).to eq(institution_attributes['medium_logo_url'])
        expect(response.first.name).to eq(institution_attributes['name'])
        expect(response.first.small_logo_url).to eq(institution_attributes['small_logo_url'])
        expect(response.first.supports_account_identification).to eq(institution_attributes['supports_account_identification'])
        expect(response.first.supports_account_statement).to eq(institution_attributes['supports_account_statement'])
        expect(response.first.supports_account_verification).to eq(institution_attributes['supports_account_verification'])
        expect(response.first.supports_oauth).to eq(institution_attributes['supports_oauth'])
        expect(response.first.supports_transaction_history).to eq(institution_attributes['supports_transaction_history'])
        expect(response.first.url).to eq(institution_attributes['url'])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_institution' do
    let(:read_institution_response) { { 'institution' => institution_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(read_institution_response) }

    it 'returns institution' do
      response = described_class.read_institution

      expect(response).to be_kind_of(::MXPlatformRuby::Institution)
      expect(response.code).to eq(institution_attributes['code'])
      expect(response.medium_logo_url).to eq(institution_attributes['medium_logo_url'])
      expect(response.name).to eq(institution_attributes['name'])
      expect(response.small_logo_url).to eq(institution_attributes['small_logo_url'])
      expect(response.supports_account_identification).to eq(institution_attributes['supports_account_identification'])
      expect(response.supports_account_statement).to eq(institution_attributes['supports_account_statement'])
      expect(response.supports_account_verification).to eq(institution_attributes['supports_account_verification'])
      expect(response.supports_oauth).to eq(institution_attributes['supports_oauth'])
      expect(response.supports_transaction_history).to eq(institution_attributes['supports_transaction_history'])
      expect(response.url).to eq(institution_attributes['url'])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        :get,
        '/institutions/chase',
        nil,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.read_institution(
        read_institution_path_parameters
      )
    end
  end
end
