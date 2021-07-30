# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Tag do
  let(:tag_attributes) do
    {
      guid: 'TAG-aef36e72-6294-4c38-844d-e573e80aed52',
      name: 'MY TAG',
      user_guid: 'USR-11141024-90b3-1bce-cac9-c06ced52ab4c'
    }
  end
  let(:create_tag_options) do
    {
      name: 'MY TAG',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:delete_tag_options) do
    {
      tag_guid: 'TAG-aef36e72-6294-4c38-844d-e573e80aed52',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_tags_options) do
    {
      page: 1,
      records_per_page: 10,
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_tag_options) do
    {
      tag_guid: 'TAG-aef36e72-6294-4c38-844d-e573e80aed52',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_tag_options) do
    {
      name: 'MY TAG',
      tag_guid: 'TAG-aef36e72-6294-4c38-844d-e573e80aed52',
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

  describe 'create_tag' do
    let(:create_tag_response) { { 'tag' => tag_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(create_tag_response) }

    it 'returns tag' do
      response = described_class.create_tag

      expect(response).to be_kind_of(::MXPlatformRuby::Tag)
      expect(response.guid).to eq(tag_attributes[:guid])
      expect(response.name).to eq(tag_attributes[:name])
      expect(response.user_guid).to eq(tag_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/tags',
          http_method: :post,
          request_body: {
            tag: {
              name: 'MY TAG'
            }
          }
        }
      )
      described_class.create_tag(create_tag_options)
    end
  end

  describe 'delete_tag' do
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(nil) }

    it 'returns nil' do
      response = described_class.delete_tag

      expect(response).to be(nil)
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/tags/TAG-aef36e72-6294-4c38-844d-e573e80aed52',
          http_method: :delete
        }
      )
      described_class.delete_tag(delete_tag_options)
    end
  end

  context 'list_tags endpoints' do
    let(:list_tags_response) do
      {
        'tags' => [tag_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_tags_response) }

    describe 'list_tags' do
      it 'returns a list of tags' do
        response = described_class.list_tags

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Tag)
        expect(response.first.guid).to eq(tag_attributes[:guid])
        expect(response.first.name).to eq(tag_attributes[:name])
        expect(response.first.user_guid).to eq(tag_attributes[:user_guid])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_tag' do
    let(:read_tag_response) { { 'tag' => tag_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(read_tag_response) }

    it 'returns tag' do
      response = described_class.read_tag

      expect(response).to be_kind_of(::MXPlatformRuby::Tag)
      expect(response.guid).to eq(tag_attributes[:guid])
      expect(response.name).to eq(tag_attributes[:name])
      expect(response.user_guid).to eq(tag_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/tags/TAG-aef36e72-6294-4c38-844d-e573e80aed52',
          http_method: :get
        }
      )
      described_class.read_tag(read_tag_options)
    end
  end

  describe 'update_tag' do
    let(:update_tag_response) { { 'tag' => tag_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(update_tag_response) }

    it 'returns tag' do
      response = described_class.update_tag

      expect(response).to be_kind_of(::MXPlatformRuby::Tag)
      expect(response.guid).to eq(tag_attributes[:guid])
      expect(response.name).to eq(tag_attributes[:name])
      expect(response.user_guid).to eq(tag_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/tags/TAG-aef36e72-6294-4c38-844d-e573e80aed52',
          http_method: :put,
          request_body: {
            tag: {
              name: 'MY TAG'
            }
          }
        }
      )
      described_class.update_tag(update_tag_options)
    end
  end
end
