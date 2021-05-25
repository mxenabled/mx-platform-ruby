# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::Tagging do
  let(:tagging_attributes) do
    {
      'guid' => 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe',
      'member_is_managed_by_user' => false,
      'tag_guid' => 'TAG-40faf068-abb4-405c-8f6a-e883ed541fff',
      'transaction_guid' => 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4',
      'user_guid' => 'USR-11141024-90b3-1bce-cac9-c06ced52ab4c'
    }
  end
  let(:create_tagging_request_body) { { tagging: create_tagging_request_body_parameters } }
  let(:create_tagging_request_body_parameters) do
    {
      tag_guid: 'TAG-40faf068-abb4-405c-8f6a-e883ed541fff',
      transaction_guid: 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4'
    }
  end
  let(:create_tagging_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:delete_tagging_path_parameters) do
    {
      tagging_guid: 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_taggings_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_tagging_path_parameters) do
    {
      tagging_guid: 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_tagging_request_body) { { tagging: update_tagging_request_body_parameters } }
  let(:update_tagging_request_body_parameters) do
    {
      tag_guid: 'TAG-40faf068-abb4-405c-8f6a-e883ed541fff'
    }
  end
  let(:update_tagging_path_parameters) do
    {
      tagging_guid: 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe',
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

  describe 'create_tagging' do
    let(:create_tagging_response) { { 'tagging' => tagging_attributes } }
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(create_tagging_response) }

    it 'returns tagging' do
      response = described_class.create_tagging

      expect(response).to be_kind_of(::MxPlatformRuby::Tagging)
      expect(response.guid).to eq(tagging_attributes['guid'])
      expect(response.member_is_managed_by_user).to eq(tagging_attributes['member_is_managed_by_user'])
      expect(response.tag_guid).to eq(tagging_attributes['tag_guid'])
      expect(response.transaction_guid).to eq(tagging_attributes['transaction_guid'])
      expect(response.user_guid).to eq(tagging_attributes['user_guid'])
    end

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :post,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/taggings',
        create_tagging_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.create_tagging(
        create_tagging_request_body_parameters.merge(create_tagging_path_parameters)
      )
    end
  end

  describe 'delete_tagging' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(nil) }

    it 'returns nil' do
      response = described_class.delete_tagging

      expect(response).to be(nil)
    end

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :delete,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/taggings/TGN-007f5486-17e1-45fc-8b87-8f03984430fe',
        nil,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.delete_tagging(
        delete_tagging_path_parameters
      )
    end
  end

  context 'list_taggings endpoints' do
    let(:list_taggings_response) do
      {
        'taggings' => [tagging_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(list_taggings_response) }

    describe 'list_taggings_page' do
      it 'returns a list of taggings' do
        response = described_class.list_taggings_page

        expect(response).to be_kind_of(::MxPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MxPlatformRuby::Tagging)
        expect(response.first.guid).to eq(tagging_attributes['guid'])
        expect(response.first.member_is_managed_by_user).to eq(tagging_attributes['member_is_managed_by_user'])
        expect(response.first.tag_guid).to eq(tagging_attributes['tag_guid'])
        expect(response.first.transaction_guid).to eq(tagging_attributes['transaction_guid'])
        expect(response.first.user_guid).to eq(tagging_attributes['user_guid'])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_taggings_each' do
      it 'yields a tagging' do
        response = nil

        described_class.list_taggings_each do |tagging|
          response = tagging
        end

        expect(response).to be_kind_of(::MxPlatformRuby::Tagging)
        expect(response.guid).to eq(tagging_attributes['guid'])
        expect(response.member_is_managed_by_user).to eq(tagging_attributes['member_is_managed_by_user'])
        expect(response.tag_guid).to eq(tagging_attributes['tag_guid'])
        expect(response.transaction_guid).to eq(tagging_attributes['transaction_guid'])
        expect(response.user_guid).to eq(tagging_attributes['user_guid'])
      end
    end

    describe 'list_taggings_pages_each' do
      it 'yields a page of taggings' do
        response = nil

        described_class.list_taggings_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MxPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MxPlatformRuby::Tagging)
        expect(response.first.guid).to eq(tagging_attributes['guid'])
        expect(response.first.member_is_managed_by_user).to eq(tagging_attributes['member_is_managed_by_user'])
        expect(response.first.tag_guid).to eq(tagging_attributes['tag_guid'])
        expect(response.first.transaction_guid).to eq(tagging_attributes['transaction_guid'])
        expect(response.first.user_guid).to eq(tagging_attributes['user_guid'])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_tagging' do
    let(:read_tagging_response) { { 'tagging' => tagging_attributes } }
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(read_tagging_response) }

    it 'returns tagging' do
      response = described_class.read_tagging

      expect(response).to be_kind_of(::MxPlatformRuby::Tagging)
      expect(response.guid).to eq(tagging_attributes['guid'])
      expect(response.member_is_managed_by_user).to eq(tagging_attributes['member_is_managed_by_user'])
      expect(response.tag_guid).to eq(tagging_attributes['tag_guid'])
      expect(response.transaction_guid).to eq(tagging_attributes['transaction_guid'])
      expect(response.user_guid).to eq(tagging_attributes['user_guid'])
    end

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :get,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/taggings/TGN-007f5486-17e1-45fc-8b87-8f03984430fe',
        nil,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.read_tagging(
        read_tagging_path_parameters
      )
    end
  end

  describe 'update_tagging' do
    let(:update_tagging_response) { { 'tagging' => tagging_attributes } }
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(update_tagging_response) }

    it 'returns tagging' do
      response = described_class.update_tagging

      expect(response).to be_kind_of(::MxPlatformRuby::Tagging)
      expect(response.guid).to eq(tagging_attributes['guid'])
      expect(response.member_is_managed_by_user).to eq(tagging_attributes['member_is_managed_by_user'])
      expect(response.tag_guid).to eq(tagging_attributes['tag_guid'])
      expect(response.transaction_guid).to eq(tagging_attributes['transaction_guid'])
      expect(response.user_guid).to eq(tagging_attributes['user_guid'])
    end

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :put,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/taggings/TGN-007f5486-17e1-45fc-8b87-8f03984430fe',
        update_tagging_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.update_tagging(
        update_tagging_request_body_parameters.merge(update_tagging_path_parameters)
      )
    end
  end
end
