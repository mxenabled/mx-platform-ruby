# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::User do
  let(:user_attributes) do
    {
      'email' => 'email@provider.com',
      'guid' => 'USR-d74cb14f-fd0a-449f-991b-e0362a63d9c6',
      'id' => 'My-Unique-ID',
      'is_disabled' => false,
      'metadata' => '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}'
    }
  end
  let(:user_response) { { 'user' => user_attributes } }
  let(:create_user_request_body_parameters) do
    {
      email: 'email@provider.com',
      id: 'My-Unique-ID',
      is_disabled: false,
      metadata: '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}'
    }
  end
  let(:create_user_request_body) do
    {
      user:
      {
        email: 'email@provider.com',
        id: 'My-Unique-ID',
        is_disabled: false,
        metadata: '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}'
      }
    }
  end
  let(:delete_user_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_user_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_user_request_body_parameters) do
    {
      email: 'email@provider.com',
      id: 'My-Unique-ID',
      is_disabled: false,
      metadata: '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}'
    }
  end
  let(:update_user_request_body) do
    {
      user:
      {
        email: 'email@provider.com',
        id: 'My-Unique-ID',
        is_disabled: false,
        metadata: '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}'
      }
    }
  end
  let(:update_user_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:users_response) do
    {
      'users' => [user_attributes],
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

  before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(users_response) }

  describe 'create_user' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(user_response) }

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :post,
        '/users',
        create_user_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.create_user(
        create_user_request_body_parameters
      )
    end

    it 'returns user' do
      response = described_class.create_user

      expect(response).to be_kind_of(::MxPlatformRuby::User)
      expect(response.email).to eq(user_attributes['email'])
      expect(response.guid).to eq(user_attributes['guid'])
      expect(response.id).to eq(user_attributes['id'])
      expect(response.is_disabled).to eq(user_attributes['is_disabled'])
      expect(response.metadata).to eq(user_attributes['metadata'])
    end
  end

  describe 'delete_user' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(nil) }

    it 'returns nil' do
      response = described_class.delete_user

      expect(response).to be(nil)
    end
  end

  describe 'list_users_page' do
    it 'returns a list of users' do
      response = described_class.list_users_page

      expect(response).to be_kind_of(::MxPlatformRuby::Page)
      expect(response.first).to be_kind_of(::MxPlatformRuby::User)
      expect(response.first.email).to eq(user_attributes['email'])
      expect(response.first.guid).to eq(user_attributes['guid'])
      expect(response.first.id).to eq(user_attributes['id'])
      expect(response.first.is_disabled).to eq(user_attributes['is_disabled'])
      expect(response.first.metadata).to eq(user_attributes['metadata'])
      expect(response.length).to eq(1)
    end
  end

  describe 'list_users_each' do
    it 'yields a user' do
      response = nil

      described_class.list_users_each do |user|
        response = user
      end

      expect(response).to be_kind_of(::MxPlatformRuby::User)
      expect(response.email).to eq(user_attributes['email'])
      expect(response.guid).to eq(user_attributes['guid'])
      expect(response.id).to eq(user_attributes['id'])
      expect(response.is_disabled).to eq(user_attributes['is_disabled'])
      expect(response.metadata).to eq(user_attributes['metadata'])
    end
  end

  describe 'list_users_pages_each' do
    it 'yields a page of users' do
      response = nil

      described_class.list_users_pages_each do |page|
        response = page
      end

      expect(response).to be_kind_of(::MxPlatformRuby::Page)
      expect(response.first).to be_kind_of(::MxPlatformRuby::User)
      expect(response.first.email).to eq(user_attributes['email'])
      expect(response.first.guid).to eq(user_attributes['guid'])
      expect(response.first.id).to eq(user_attributes['id'])
      expect(response.first.is_disabled).to eq(user_attributes['is_disabled'])
      expect(response.first.metadata).to eq(user_attributes['metadata'])
      expect(response.length).to eq(1)
    end
  end

  describe 'read_user' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(user_response) }

    it 'returns user' do
      response = described_class.read_user

      expect(response).to be_kind_of(::MxPlatformRuby::User)
      expect(response.email).to eq(user_attributes['email'])
      expect(response.guid).to eq(user_attributes['guid'])
      expect(response.id).to eq(user_attributes['id'])
      expect(response.is_disabled).to eq(user_attributes['is_disabled'])
      expect(response.metadata).to eq(user_attributes['metadata'])
    end
  end

  describe 'update_user' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(user_response) }

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :put,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54',
        update_user_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.update_user(
        update_user_request_body_parameters.merge(update_user_path_parameters)
      )
    end

    it 'returns user' do
      response = described_class.update_user

      expect(response).to be_kind_of(::MxPlatformRuby::User)
      expect(response.email).to eq(user_attributes['email'])
      expect(response.guid).to eq(user_attributes['guid'])
      expect(response.id).to eq(user_attributes['id'])
      expect(response.is_disabled).to eq(user_attributes['is_disabled'])
      expect(response.metadata).to eq(user_attributes['metadata'])
    end
  end
end
