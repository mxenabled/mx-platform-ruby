# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::AccountNumber do
  let(:account_number_attributes) do
    {
      'account_guid' => 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1',
      'account_number' => '10001',
      'guid' => 'ACN-8899832e-e5b4-42cd-aa25-bbf1dc889a8f',
      'institution_number' => '123',
      'member_guid' => 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      'routing_number' => '68899990000000',
      'transit_number' => '12345',
      'user_guid' => 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:account_numbers_response) do
    {
      'account_numbers' => [account_number_attributes],
      'pagination' => pagination_attributes
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

  before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(account_numbers_response) }

  describe 'list_account_numbers_by_account' do
    it 'returns a list of account_numbers' do
      response = described_class.list_account_numbers_by_account

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::AccountNumber)
      expect(response.first.account_guid).to eq(
        account_number_attributes['account_guid']
      )
      expect(response.first.account_number).to eq(
        account_number_attributes['account_number']
      )
      expect(response.first.guid).to eq(
        account_number_attributes['guid']
      )
      expect(response.first.institution_number).to eq(
        account_number_attributes['institution_number']
      )
      expect(response.first.member_guid).to eq(
        account_number_attributes['member_guid']
      )
      expect(response.first.routing_number).to eq(
        account_number_attributes['routing_number']
      )
      expect(response.first.transit_number).to eq(
        account_number_attributes['transit_number']
      )
      expect(response.first.user_guid).to eq(
        account_number_attributes['user_guid']
      )
      expect(response.length).to eq(1)
    end
  end

  describe 'list_account_numbers_by_account_each' do
    it 'yields a account_number' do
      response = nil

      described_class.list_account_numbers_by_account_each do |account_number|
        response = account_number
      end

      expect(response).to be_kind_of(::MxPlatformRuby::AccountNumber)
      expect(response.account_guid).to eq(account_number_attributes['account_guid'])
      expect(response.account_number).to eq(account_number_attributes['account_number'])
      expect(response.guid).to eq(account_number_attributes['guid'])
      expect(response.institution_number).to eq(account_number_attributes['institution_number'])
      expect(response.member_guid).to eq(account_number_attributes['member_guid'])
      expect(response.routing_number).to eq(account_number_attributes['routing_number'])
      expect(response.transit_number).to eq(account_number_attributes['transit_number'])
      expect(response.user_guid).to eq(account_number_attributes['user_guid'])
    end
  end

  describe 'list_account_numbers_by_account_in_batches' do
    it 'yields a batch of account_numbers' do
      response = nil

      described_class.list_account_numbers_by_account_in_batches do |batch|
        response = batch
      end

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::AccountNumber)
      expect(response.first.account_guid).to eq(
        account_number_attributes['account_guid']
      )
      expect(response.first.account_number).to eq(
        account_number_attributes['account_number']
      )
      expect(response.first.guid).to eq(
        account_number_attributes['guid']
      )
      expect(response.first.institution_number).to eq(
        account_number_attributes['institution_number']
      )
      expect(response.first.member_guid).to eq(
        account_number_attributes['member_guid']
      )
      expect(response.first.routing_number).to eq(
        account_number_attributes['routing_number']
      )
      expect(response.first.transit_number).to eq(
        account_number_attributes['transit_number']
      )
      expect(response.first.user_guid).to eq(
        account_number_attributes['user_guid']
      )
      expect(response.length).to eq(1)
    end
  end

  describe 'list_account_numbers_by_member' do
    it 'returns a list of account_numbers' do
      response = described_class.list_account_numbers_by_member

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::AccountNumber)
      expect(response.first.account_guid).to eq(
        account_number_attributes['account_guid']
      )
      expect(response.first.account_number).to eq(
        account_number_attributes['account_number']
      )
      expect(response.first.guid).to eq(
        account_number_attributes['guid']
      )
      expect(response.first.institution_number).to eq(
        account_number_attributes['institution_number']
      )
      expect(response.first.member_guid).to eq(
        account_number_attributes['member_guid']
      )
      expect(response.first.routing_number).to eq(
        account_number_attributes['routing_number']
      )
      expect(response.first.transit_number).to eq(
        account_number_attributes['transit_number']
      )
      expect(response.first.user_guid).to eq(
        account_number_attributes['user_guid']
      )
      expect(response.length).to eq(1)
    end
  end

  describe 'list_account_numbers_by_member_each' do
    it 'yields a account_number' do
      response = nil

      described_class.list_account_numbers_by_member_each do |account_number|
        response = account_number
      end

      expect(response).to be_kind_of(::MxPlatformRuby::AccountNumber)
      expect(response.account_guid).to eq(account_number_attributes['account_guid'])
      expect(response.account_number).to eq(account_number_attributes['account_number'])
      expect(response.guid).to eq(account_number_attributes['guid'])
      expect(response.institution_number).to eq(account_number_attributes['institution_number'])
      expect(response.member_guid).to eq(account_number_attributes['member_guid'])
      expect(response.routing_number).to eq(account_number_attributes['routing_number'])
      expect(response.transit_number).to eq(account_number_attributes['transit_number'])
      expect(response.user_guid).to eq(account_number_attributes['user_guid'])
    end
  end

  describe 'list_account_numbers_by_member_in_batches' do
    it 'yields a batch of account_numbers' do
      response = nil

      described_class.list_account_numbers_by_member_in_batches do |batch|
        response = batch
      end

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::AccountNumber)
      expect(response.first.account_guid).to eq(
        account_number_attributes['account_guid']
      )
      expect(response.first.account_number).to eq(
        account_number_attributes['account_number']
      )
      expect(response.first.guid).to eq(
        account_number_attributes['guid']
      )
      expect(response.first.institution_number).to eq(
        account_number_attributes['institution_number']
      )
      expect(response.first.member_guid).to eq(
        account_number_attributes['member_guid']
      )
      expect(response.first.routing_number).to eq(
        account_number_attributes['routing_number']
      )
      expect(response.first.transit_number).to eq(
        account_number_attributes['transit_number']
      )
      expect(response.first.user_guid).to eq(
        account_number_attributes['user_guid']
      )
      expect(response.length).to eq(1)
    end
  end
end
