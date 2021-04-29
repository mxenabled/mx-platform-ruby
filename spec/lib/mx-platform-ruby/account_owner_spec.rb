# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::AccountOwner do
  let(:account_owner_attributes) do
    {
      'account_guid' => 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1',
      'address' => '123 This Way',
      'city' => 'Middlesex',
      'country' => 'US',
      'email' => 'donnie@darko.co',
      'guid' => 'ACO-63dc7714-6fc0-4aa2-a069-c06cdccd1af9',
      'member_guid' => 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      'owner_name' => 'Donnie Darko',
      'phone' => '555-555-5555',
      'postal_code' => '00000-0000',
      'state' => 'VA',
      'user_guid' => 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:account_owners_response) do
    {
      'account_owners' => [account_owner_attributes],
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

  before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(account_owners_response) }

  describe 'list_account_owners' do
    it 'returns a list of account_owners' do
      response = described_class.list_account_owners

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::AccountOwner)
      expect(response.first.account_guid).to eq(account_owner_attributes['account_guid'])
      expect(response.first.address).to eq(account_owner_attributes['address'])
      expect(response.first.city).to eq(account_owner_attributes['city'])
      expect(response.first.country).to eq(account_owner_attributes['country'])
      expect(response.first.email).to eq(account_owner_attributes['email'])
      expect(response.first.guid).to eq(account_owner_attributes['guid'])
      expect(response.first.member_guid).to eq(account_owner_attributes['member_guid'])
      expect(response.first.owner_name).to eq(account_owner_attributes['owner_name'])
      expect(response.first.phone).to eq(account_owner_attributes['phone'])
      expect(response.first.postal_code).to eq(account_owner_attributes['postal_code'])
      expect(response.first.state).to eq(account_owner_attributes['state'])
      expect(response.first.user_guid).to eq(account_owner_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end

  describe 'list_account_owners_each' do
    it 'yields a account_owner' do
      response = nil

      described_class.list_account_owners_each do |account_owner|
        response = account_owner
      end

      expect(response).to be_kind_of(::MxPlatformRuby::AccountOwner)
      expect(response.account_guid).to eq(account_owner_attributes['account_guid'])
      expect(response.address).to eq(account_owner_attributes['address'])
      expect(response.city).to eq(account_owner_attributes['city'])
      expect(response.country).to eq(account_owner_attributes['country'])
      expect(response.email).to eq(account_owner_attributes['email'])
      expect(response.guid).to eq(account_owner_attributes['guid'])
      expect(response.member_guid).to eq(account_owner_attributes['member_guid'])
      expect(response.owner_name).to eq(account_owner_attributes['owner_name'])
      expect(response.phone).to eq(account_owner_attributes['phone'])
      expect(response.postal_code).to eq(account_owner_attributes['postal_code'])
      expect(response.state).to eq(account_owner_attributes['state'])
      expect(response.user_guid).to eq(account_owner_attributes['user_guid'])
    end
  end

  describe 'list_account_owners_in_batches' do
    it 'yields a batch of account_owners' do
      response = nil

      described_class.list_account_owners_in_batches do |batch|
        response = batch
      end

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::AccountOwner)
      expect(response.first.account_guid).to eq(account_owner_attributes['account_guid'])
      expect(response.first.address).to eq(account_owner_attributes['address'])
      expect(response.first.city).to eq(account_owner_attributes['city'])
      expect(response.first.country).to eq(account_owner_attributes['country'])
      expect(response.first.email).to eq(account_owner_attributes['email'])
      expect(response.first.guid).to eq(account_owner_attributes['guid'])
      expect(response.first.member_guid).to eq(account_owner_attributes['member_guid'])
      expect(response.first.owner_name).to eq(account_owner_attributes['owner_name'])
      expect(response.first.phone).to eq(account_owner_attributes['phone'])
      expect(response.first.postal_code).to eq(account_owner_attributes['postal_code'])
      expect(response.first.state).to eq(account_owner_attributes['state'])
      expect(response.first.user_guid).to eq(account_owner_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end
end
