# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Category do
  let(:category_attributes) do
    {
      created_at: '2015-04-13T18:01:23.000Z',
      guid: 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874',
      is_default: true,
      is_income: false,
      metadata: 'some metadata',
      name: 'Auto Insurance',
      parent_guid: 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874',
      updated_at: '2015-05-13T18:01:23.000Z'
    }
  end
  let(:create_category_options) do
    {
      metadata: 'some metadata',
      name: 'Online Shopping',
      parent_guid: 'CAT-aad51b46-d6f7-3da5-fd6e-492328b3023f',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:delete_category_options) do
    {
      category_guid: 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_categories_options) do
    {
      page: 1,
      records_per_page: 10,
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_default_categories_options) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_category_options) do
    {
      category_guid: 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_category_options) do
    {
      category_guid: 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874',
      metadata: 'some metadata',
      name: 'Web shopping',
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

  describe 'create_category' do
    let(:create_category_response) { { 'category' => category_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(create_category_response) }

    it 'returns category' do
      response = described_class.create_category

      expect(response).to be_kind_of(::MXPlatformRuby::Category)
      expect(response.created_at).to eq(category_attributes[:created_at])
      expect(response.guid).to eq(category_attributes[:guid])
      expect(response.is_default).to eq(category_attributes[:is_default])
      expect(response.is_income).to eq(category_attributes[:is_income])
      expect(response.metadata).to eq(category_attributes[:metadata])
      expect(response.name).to eq(category_attributes[:name])
      expect(response.parent_guid).to eq(category_attributes[:parent_guid])
      expect(response.updated_at).to eq(category_attributes[:updated_at])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/categories',
          http_method: :post,
          request_body: {
            category: {
              metadata: 'some metadata',
              name: 'Online Shopping',
              parent_guid: 'CAT-aad51b46-d6f7-3da5-fd6e-492328b3023f'
            }
          }
        }
      )
      described_class.create_category(create_category_options)
    end
  end

  describe 'delete_category' do
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(nil) }

    it 'returns nil' do
      response = described_class.delete_category

      expect(response).to be(nil)
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/categories/CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874',
          http_method: :delete
        }
      )
      described_class.delete_category(delete_category_options)
    end
  end

  context 'list_categories endpoints' do
    let(:list_categories_response) do
      {
        'categories' => [category_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_categories_response) }

    describe 'list_categories_page' do
      it 'returns a list of categorys' do
        response = described_class.list_categories_page

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Category)
        expect(response.first.created_at).to eq(category_attributes[:created_at])
        expect(response.first.guid).to eq(category_attributes[:guid])
        expect(response.first.is_default).to eq(category_attributes[:is_default])
        expect(response.first.is_income).to eq(category_attributes[:is_income])
        expect(response.first.metadata).to eq(category_attributes[:metadata])
        expect(response.first.name).to eq(category_attributes[:name])
        expect(response.first.parent_guid).to eq(category_attributes[:parent_guid])
        expect(response.first.updated_at).to eq(category_attributes[:updated_at])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_categories_each' do
      it 'yields a category' do
        response = nil

        described_class.list_categories_each do |category|
          response = category
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Category)
        expect(response.created_at).to eq(category_attributes[:created_at])
        expect(response.guid).to eq(category_attributes[:guid])
        expect(response.is_default).to eq(category_attributes[:is_default])
        expect(response.is_income).to eq(category_attributes[:is_income])
        expect(response.metadata).to eq(category_attributes[:metadata])
        expect(response.name).to eq(category_attributes[:name])
        expect(response.parent_guid).to eq(category_attributes[:parent_guid])
        expect(response.updated_at).to eq(category_attributes[:updated_at])
      end
    end

    describe 'list_categories_pages_each' do
      it 'yields a page of categorys' do
        response = nil

        described_class.list_categories_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Category)
        expect(response.first.created_at).to eq(category_attributes[:created_at])
        expect(response.first.guid).to eq(category_attributes[:guid])
        expect(response.first.is_default).to eq(category_attributes[:is_default])
        expect(response.first.is_income).to eq(category_attributes[:is_income])
        expect(response.first.metadata).to eq(category_attributes[:metadata])
        expect(response.first.name).to eq(category_attributes[:name])
        expect(response.first.parent_guid).to eq(category_attributes[:parent_guid])
        expect(response.first.updated_at).to eq(category_attributes[:updated_at])
        expect(response.length).to eq(1)
      end
    end
  end

  context 'list_default_categories endpoints' do
    let(:list_default_categories_response) do
      {
        'categories' => [category_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_default_categories_response) }

    describe 'list_default_categories_page' do
      it 'returns a list of categorys' do
        response = described_class.list_default_categories_page

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Category)
        expect(response.first.created_at).to eq(category_attributes[:created_at])
        expect(response.first.guid).to eq(category_attributes[:guid])
        expect(response.first.is_default).to eq(category_attributes[:is_default])
        expect(response.first.is_income).to eq(category_attributes[:is_income])
        expect(response.first.metadata).to eq(category_attributes[:metadata])
        expect(response.first.name).to eq(category_attributes[:name])
        expect(response.first.parent_guid).to eq(category_attributes[:parent_guid])
        expect(response.first.updated_at).to eq(category_attributes[:updated_at])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_default_categories_each' do
      it 'yields a category' do
        response = nil

        described_class.list_default_categories_each do |category|
          response = category
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Category)
        expect(response.created_at).to eq(category_attributes[:created_at])
        expect(response.guid).to eq(category_attributes[:guid])
        expect(response.is_default).to eq(category_attributes[:is_default])
        expect(response.is_income).to eq(category_attributes[:is_income])
        expect(response.metadata).to eq(category_attributes[:metadata])
        expect(response.name).to eq(category_attributes[:name])
        expect(response.parent_guid).to eq(category_attributes[:parent_guid])
        expect(response.updated_at).to eq(category_attributes[:updated_at])
      end
    end

    describe 'list_default_categories_pages_each' do
      it 'yields a page of categorys' do
        response = nil

        described_class.list_default_categories_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Category)
        expect(response.first.created_at).to eq(category_attributes[:created_at])
        expect(response.first.guid).to eq(category_attributes[:guid])
        expect(response.first.is_default).to eq(category_attributes[:is_default])
        expect(response.first.is_income).to eq(category_attributes[:is_income])
        expect(response.first.metadata).to eq(category_attributes[:metadata])
        expect(response.first.name).to eq(category_attributes[:name])
        expect(response.first.parent_guid).to eq(category_attributes[:parent_guid])
        expect(response.first.updated_at).to eq(category_attributes[:updated_at])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_category' do
    let(:read_category_response) { { 'category' => category_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(read_category_response) }

    it 'returns category' do
      response = described_class.read_category

      expect(response).to be_kind_of(::MXPlatformRuby::Category)
      expect(response.created_at).to eq(category_attributes[:created_at])
      expect(response.guid).to eq(category_attributes[:guid])
      expect(response.is_default).to eq(category_attributes[:is_default])
      expect(response.is_income).to eq(category_attributes[:is_income])
      expect(response.metadata).to eq(category_attributes[:metadata])
      expect(response.name).to eq(category_attributes[:name])
      expect(response.parent_guid).to eq(category_attributes[:parent_guid])
      expect(response.updated_at).to eq(category_attributes[:updated_at])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/categories/CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874',
          http_method: :get
        }
      )
      described_class.read_category(read_category_options)
    end
  end

  describe 'update_category' do
    let(:update_category_response) { { 'category' => category_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(update_category_response) }

    it 'returns category' do
      response = described_class.update_category

      expect(response).to be_kind_of(::MXPlatformRuby::Category)
      expect(response.created_at).to eq(category_attributes[:created_at])
      expect(response.guid).to eq(category_attributes[:guid])
      expect(response.is_default).to eq(category_attributes[:is_default])
      expect(response.is_income).to eq(category_attributes[:is_income])
      expect(response.metadata).to eq(category_attributes[:metadata])
      expect(response.name).to eq(category_attributes[:name])
      expect(response.parent_guid).to eq(category_attributes[:parent_guid])
      expect(response.updated_at).to eq(category_attributes[:updated_at])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/categories/CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874',
          http_method: :put,
          request_body: {
            category: {
              metadata: 'some metadata',
              name: 'Web shopping'
            }
          }
        }
      )
      described_class.update_category(update_category_options)
    end
  end
end
