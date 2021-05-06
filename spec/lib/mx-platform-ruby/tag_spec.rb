# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::Tag do
  let(:tag_attributes) do
    {
      'guid' => 'TAG-aef36e72-6294-4c38-844d-e573e80aed52',
      'name' => 'MY TAG',
      'user_guid' => 'USR-11141024-90b3-1bce-cac9-c06ced52ab4c'
    }
  end
  let(:tag_response) { { 'tag' => tag_attributes } }
  let(:create_tag_request_body_parameters) do
    {
      name: 'MY TAG'
    }
  end
  let(:create_tag_request_body) do
    {
      tag:
      {
        name: 'MY TAG'
      }
    }
  end
  let(:create_tag_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:delete_tag_path_parameters) do
    {
      tag_guid: 'TAG-aef36e72-6294-4c38-844d-e573e80aed52',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_tags_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_tag_path_parameters) do
    {
      tag_guid: 'TAG-aef36e72-6294-4c38-844d-e573e80aed52',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_tag_request_body_parameters) do
    {
      name: 'MY TAG'
    }
  end
  let(:update_tag_request_body) do
    {
      tag:
      {
        name: 'MY TAG'
      }
    }
  end
  let(:update_tag_path_parameters) do
    {
      tag_guid: 'TAG-aef36e72-6294-4c38-844d-e573e80aed52',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:tags_response) do
    {
      'tags' => [tag_attributes],
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

  before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(tags_response) }

  describe 'create_tag' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(tag_response) }

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :post,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/tags',
        create_tag_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.create_tag(
        create_tag_request_body_parameters.merge(create_tag_path_parameters)
      )
    end

    it 'returns tag' do
      response = described_class.create_tag

      expect(response).to be_kind_of(::MxPlatformRuby::Tag)
      expect(response.guid).to eq(tag_attributes['guid'])
      expect(response.name).to eq(tag_attributes['name'])
      expect(response.user_guid).to eq(tag_attributes['user_guid'])
    end
  end

  describe 'delete_tag' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(nil) }

    it 'returns nil' do
      response = described_class.delete_tag

      expect(response).to be(nil)
    end
  end

  describe 'list_tags_page' do
    it 'returns a list of tags' do
      response = described_class.list_tags_page

      expect(response).to be_kind_of(::MxPlatformRuby::Page)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Tag)
      expect(response.first.guid).to eq(tag_attributes['guid'])
      expect(response.first.name).to eq(tag_attributes['name'])
      expect(response.first.user_guid).to eq(tag_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end

  describe 'list_tags_each' do
    it 'yields a tag' do
      response = nil

      described_class.list_tags_each do |tag|
        response = tag
      end

      expect(response).to be_kind_of(::MxPlatformRuby::Tag)
      expect(response.guid).to eq(tag_attributes['guid'])
      expect(response.name).to eq(tag_attributes['name'])
      expect(response.user_guid).to eq(tag_attributes['user_guid'])
    end
  end

  describe 'list_tags_pages_each' do
    it 'yields a page of tags' do
      response = nil

      described_class.list_tags_pages_each do |page|
        response = page
      end

      expect(response).to be_kind_of(::MxPlatformRuby::Page)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Tag)
      expect(response.first.guid).to eq(tag_attributes['guid'])
      expect(response.first.name).to eq(tag_attributes['name'])
      expect(response.first.user_guid).to eq(tag_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end

  describe 'read_tag' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(tag_response) }

    it 'returns tag' do
      response = described_class.read_tag

      expect(response).to be_kind_of(::MxPlatformRuby::Tag)
      expect(response.guid).to eq(tag_attributes['guid'])
      expect(response.name).to eq(tag_attributes['name'])
      expect(response.user_guid).to eq(tag_attributes['user_guid'])
    end
  end

  describe 'update_tag' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(tag_response) }

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :put,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/tags/TAG-aef36e72-6294-4c38-844d-e573e80aed52',
        update_tag_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.update_tag(
        update_tag_request_body_parameters.merge(update_tag_path_parameters)
      )
    end

    it 'returns tag' do
      response = described_class.update_tag

      expect(response).to be_kind_of(::MxPlatformRuby::Tag)
      expect(response.guid).to eq(tag_attributes['guid'])
      expect(response.name).to eq(tag_attributes['name'])
      expect(response.user_guid).to eq(tag_attributes['user_guid'])
    end
  end
end
