# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::User do
  let(:user_attributes) do
    {
      email: 'email@provider.com',
      guid: 'USR-d74cb14f-fd0a-449f-991b-e0362a63d9c6',
      id: 'My-Unique-ID',
      is_disabled: false,
      metadata: '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}'
    }
  end
  let(:create_user_options) do
    {
      email: 'email@provider.com',
      id: 'My-Unique-ID',
      is_disabled: false,
      metadata: '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}'
    }
  end
  let(:delete_user_options) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_users_options) do
    {
      page: 1,
      records_per_page: 10
    }
  end
  let(:read_user_options) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_user_options) do
    {
      email: 'email@provider.com',
      id: 'My-Unique-ID',
      is_disabled: false,
      metadata: '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}',
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

  describe 'create_user' do
    let(:create_user_response) { { 'user' => user_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(create_user_response) }

    it 'returns user' do
      response = described_class.create_user

      expect(response).to be_kind_of(::MXPlatformRuby::User)
      expect(response.email).to eq(user_attributes[:email])
      expect(response.guid).to eq(user_attributes[:guid])
      expect(response.id).to eq(user_attributes[:id])
      expect(response.is_disabled).to eq(user_attributes[:is_disabled])
      expect(response.metadata).to eq(user_attributes[:metadata])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users',
          http_method: :post,
          request_body: {
            user: {
              email: 'email@provider.com',
              id: 'My-Unique-ID',
              is_disabled: false,
              metadata: '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}'
            }
          }
        }
      )
      described_class.create_user(create_user_options)
    end
  end

  describe 'delete_user' do
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(nil) }

    it 'returns nil' do
      response = described_class.delete_user

      expect(response).to be(nil)
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54',
          http_method: :delete
        }
      )
      described_class.delete_user(delete_user_options)
    end
  end

  context 'list_users endpoints' do
    let(:list_users_response) do
      {
        'users' => [user_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_users_response) }

    describe 'list_users_page' do
      it 'returns a list of users' do
        response = described_class.list_users_page

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::User)
        expect(response.first.email).to eq(user_attributes[:email])
        expect(response.first.guid).to eq(user_attributes[:guid])
        expect(response.first.id).to eq(user_attributes[:id])
        expect(response.first.is_disabled).to eq(user_attributes[:is_disabled])
        expect(response.first.metadata).to eq(user_attributes[:metadata])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_users_each' do
      it 'yields a user' do
        response = nil

        described_class.list_users_each do |user|
          response = user
        end

        expect(response).to be_kind_of(::MXPlatformRuby::User)
        expect(response.email).to eq(user_attributes[:email])
        expect(response.guid).to eq(user_attributes[:guid])
        expect(response.id).to eq(user_attributes[:id])
        expect(response.is_disabled).to eq(user_attributes[:is_disabled])
        expect(response.metadata).to eq(user_attributes[:metadata])
      end
    end

    describe 'list_users_pages_each' do
      it 'yields a page of users' do
        response = nil

        described_class.list_users_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::User)
        expect(response.first.email).to eq(user_attributes[:email])
        expect(response.first.guid).to eq(user_attributes[:guid])
        expect(response.first.id).to eq(user_attributes[:id])
        expect(response.first.is_disabled).to eq(user_attributes[:is_disabled])
        expect(response.first.metadata).to eq(user_attributes[:metadata])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_user' do
    let(:read_user_response) { { 'user' => user_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(read_user_response) }

    it 'returns user' do
      response = described_class.read_user

      expect(response).to be_kind_of(::MXPlatformRuby::User)
      expect(response.email).to eq(user_attributes[:email])
      expect(response.guid).to eq(user_attributes[:guid])
      expect(response.id).to eq(user_attributes[:id])
      expect(response.is_disabled).to eq(user_attributes[:is_disabled])
      expect(response.metadata).to eq(user_attributes[:metadata])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54',
          http_method: :get
        }
      )
      described_class.read_user(read_user_options)
    end
  end

  describe 'update_user' do
    let(:update_user_response) { { 'user' => user_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(update_user_response) }

    it 'returns user' do
      response = described_class.update_user

      expect(response).to be_kind_of(::MXPlatformRuby::User)
      expect(response.email).to eq(user_attributes[:email])
      expect(response.guid).to eq(user_attributes[:guid])
      expect(response.id).to eq(user_attributes[:id])
      expect(response.is_disabled).to eq(user_attributes[:is_disabled])
      expect(response.metadata).to eq(user_attributes[:metadata])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54',
          http_method: :put,
          request_body: {
            user: {
              email: 'email@provider.com',
              id: 'My-Unique-ID',
              is_disabled: false,
              metadata: '{\"first_name\": \"Steven\", \"last_name\": \"Universe\"}'
            }
          }
        }
      )
      described_class.update_user(update_user_options)
    end
  end
end
