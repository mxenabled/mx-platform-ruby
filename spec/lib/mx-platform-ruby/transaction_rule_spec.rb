# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::TransactionRule do
  let(:transaction_rule_attributes) do
    {
      'category_guid' => 'CAT-b1de2a04-db08-b6ed-f6fe-ca2f5b11c2d0',
      'created_at' => '2018-10-02T22:00:50+00:00',
      'description' => 'Wal-mart food storage',
      'guid' => 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3',
      'match_description' => 'Wal-mart',
      'updated_at' => '2018-10-02T23:54:40+00:00',
      'user_guid' => 'USR-22fc3203-b3e6-8340-43db-8e50b2f56995'
    }
  end
  let(:create_transaction_rule_request_body) { { member: create_transaction_rule_request_body_parameters } }
  let(:create_transaction_rule_request_body_parameters) do
    {
      category_guid: 'CAT-b1de2a04-db08-b6ed-f6fe-ca2f5b11c2d0',
      description: 'Wal-mart food storage',
      match_description: 'Wal-mart'
    }
  end
  let(:create_transaction_rule_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:delete_transaction_rule_path_parameters) do
    {
      transaction_rule_guid: 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_transaction_rules_by_user_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_transaction_rule_path_parameters) do
    {
      transaction_rule_guid: 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_transaction_rule_request_body) { { transaction_rule: update_transaction_rule_request_body_parameters } }
  let(:update_transaction_rule_request_body_parameters) do
    {
      category_guid: 'CAT-b1de2a04-db08-b6ed-f6fe-ca2f5b11c2d0',
      description: 'Wal-mart food storage',
      match_description: 'Wal-mart'
    }
  end
  let(:update_transaction_rule_path_parameters) do
    {
      transaction_rule_guid: 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3',
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

  describe 'create_transaction_rule' do
    let(:create_transaction_rule_response) { { 'transaction_rule' => transaction_rule_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(create_transaction_rule_response) }

    it 'returns transaction_rule' do
      response = described_class.create_transaction_rule

      expect(response).to be_kind_of(::MXPlatformRuby::TransactionRule)
      expect(response.category_guid).to eq(transaction_rule_attributes['category_guid'])
      expect(response.created_at).to eq(transaction_rule_attributes['created_at'])
      expect(response.description).to eq(transaction_rule_attributes['description'])
      expect(response.guid).to eq(transaction_rule_attributes['guid'])
      expect(response.match_description).to eq(transaction_rule_attributes['match_description'])
      expect(response.updated_at).to eq(transaction_rule_attributes['updated_at'])
      expect(response.user_guid).to eq(transaction_rule_attributes['user_guid'])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        :post,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/transaction_rules',
        create_transaction_rule_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.create_transaction_rule(
        create_transaction_rule_request_body_parameters.merge(create_transaction_rule_path_parameters)
      )
    end
  end

  describe 'delete_transaction_rule' do
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(nil) }

    it 'returns nil' do
      response = described_class.delete_transaction_rule

      expect(response).to be(nil)
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        :delete,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/transaction_rule/TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3',
        nil,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.delete_transaction_rule(
        delete_transaction_rule_path_parameters
      )
    end
  end

  context 'list_transaction_rules_by_user endpoints' do
    let(:list_transaction_rules_by_user_response) do
      {
        'transaction_rules' => [transaction_rule_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_transaction_rules_by_user_response) }

    describe 'list_transaction_rules_by_user_page' do
      it 'returns a list of transaction_rules' do
        response = described_class.list_transaction_rules_by_user_page

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::TransactionRule)
        expect(response.first.category_guid).to eq(transaction_rule_attributes['category_guid'])
        expect(response.first.created_at).to eq(transaction_rule_attributes['created_at'])
        expect(response.first.description).to eq(transaction_rule_attributes['description'])
        expect(response.first.guid).to eq(transaction_rule_attributes['guid'])
        expect(response.first.match_description).to eq(transaction_rule_attributes['match_description'])
        expect(response.first.updated_at).to eq(transaction_rule_attributes['updated_at'])
        expect(response.first.user_guid).to eq(transaction_rule_attributes['user_guid'])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_transaction_rules_by_user_each' do
      it 'yields a transaction_rule' do
        response = nil

        described_class.list_transaction_rules_by_user_each do |transaction_rule|
          response = transaction_rule
        end

        expect(response).to be_kind_of(::MXPlatformRuby::TransactionRule)
        expect(response.category_guid).to eq(transaction_rule_attributes['category_guid'])
        expect(response.created_at).to eq(transaction_rule_attributes['created_at'])
        expect(response.description).to eq(transaction_rule_attributes['description'])
        expect(response.guid).to eq(transaction_rule_attributes['guid'])
        expect(response.match_description).to eq(transaction_rule_attributes['match_description'])
        expect(response.updated_at).to eq(transaction_rule_attributes['updated_at'])
        expect(response.user_guid).to eq(transaction_rule_attributes['user_guid'])
      end
    end

    describe 'list_transaction_rules_by_user_pages_each' do
      it 'yields a page of transaction_rules' do
        response = nil

        described_class.list_transaction_rules_by_user_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::TransactionRule)
        expect(response.first.category_guid).to eq(transaction_rule_attributes['category_guid'])
        expect(response.first.created_at).to eq(transaction_rule_attributes['created_at'])
        expect(response.first.description).to eq(transaction_rule_attributes['description'])
        expect(response.first.guid).to eq(transaction_rule_attributes['guid'])
        expect(response.first.match_description).to eq(transaction_rule_attributes['match_description'])
        expect(response.first.updated_at).to eq(transaction_rule_attributes['updated_at'])
        expect(response.first.user_guid).to eq(transaction_rule_attributes['user_guid'])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_transaction_rule' do
    let(:read_transaction_rule_response) { { 'transaction_rule' => transaction_rule_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(read_transaction_rule_response) }

    it 'returns transaction_rule' do
      response = described_class.read_transaction_rule

      expect(response).to be_kind_of(::MXPlatformRuby::TransactionRule)
      expect(response.category_guid).to eq(transaction_rule_attributes['category_guid'])
      expect(response.created_at).to eq(transaction_rule_attributes['created_at'])
      expect(response.description).to eq(transaction_rule_attributes['description'])
      expect(response.guid).to eq(transaction_rule_attributes['guid'])
      expect(response.match_description).to eq(transaction_rule_attributes['match_description'])
      expect(response.updated_at).to eq(transaction_rule_attributes['updated_at'])
      expect(response.user_guid).to eq(transaction_rule_attributes['user_guid'])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        :get,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/transaction_rule/TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3',
        nil,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.read_transaction_rule(
        read_transaction_rule_path_parameters
      )
    end
  end

  describe 'update_transaction_rule' do
    let(:update_transaction_rule_response) { { 'transaction_rule' => transaction_rule_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(update_transaction_rule_response) }

    it 'returns transaction_rule' do
      response = described_class.update_transaction_rule

      expect(response).to be_kind_of(::MXPlatformRuby::TransactionRule)
      expect(response.category_guid).to eq(transaction_rule_attributes['category_guid'])
      expect(response.created_at).to eq(transaction_rule_attributes['created_at'])
      expect(response.description).to eq(transaction_rule_attributes['description'])
      expect(response.guid).to eq(transaction_rule_attributes['guid'])
      expect(response.match_description).to eq(transaction_rule_attributes['match_description'])
      expect(response.updated_at).to eq(transaction_rule_attributes['updated_at'])
      expect(response.user_guid).to eq(transaction_rule_attributes['user_guid'])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        :put,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/transaction_rule/TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3',
        update_transaction_rule_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.update_transaction_rule(
        update_transaction_rule_request_body_parameters.merge(update_transaction_rule_path_parameters)
      )
    end
  end
end
