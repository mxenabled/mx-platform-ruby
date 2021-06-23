# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Credential do
  let(:credential_attributes) do
    {
      display_order: 1,
      field_name: 'LOGIN',
      field_type: 'TEXT',
      guid: 'CRD-1ec152cd-e628-e81a-e852-d1e7104624da',
      label: 'Username'
    }
  end
  let(:list_institution_required_credentials_options) do
    {
      institution_code: 'chase',
      page: 1,
      records_per_page: 10
    }
  end
  let(:list_member_credentials_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      page: 1,
      records_per_page: 10,
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

  context 'list_institution_required_credentials endpoints' do
    let(:list_institution_required_credentials_response) do
      {
        'credentials' => [credential_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_institution_required_credentials_response) }

    describe 'list_institution_required_credentials_page' do
      it 'returns a list of credentials' do
        response = described_class.list_institution_required_credentials_page

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Credential)
        expect(response.first.display_order).to eq(credential_attributes[:display_order])
        expect(response.first.field_name).to eq(credential_attributes[:field_name])
        expect(response.first.field_type).to eq(credential_attributes[:field_type])
        expect(response.first.guid).to eq(credential_attributes[:guid])
        expect(response.first.label).to eq(credential_attributes[:label])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_institution_required_credentials_each' do
      it 'yields a credential' do
        response = nil

        described_class.list_institution_required_credentials_each do |credential|
          response = credential
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Credential)
        expect(response.display_order).to eq(credential_attributes[:display_order])
        expect(response.field_name).to eq(credential_attributes[:field_name])
        expect(response.field_type).to eq(credential_attributes[:field_type])
        expect(response.guid).to eq(credential_attributes[:guid])
        expect(response.label).to eq(credential_attributes[:label])
      end
    end

    describe 'list_institution_required_credentials_pages_each' do
      it 'yields a page of credentials' do
        response = nil

        described_class.list_institution_required_credentials_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Credential)
        expect(response.first.display_order).to eq(credential_attributes[:display_order])
        expect(response.first.field_name).to eq(credential_attributes[:field_name])
        expect(response.first.field_type).to eq(credential_attributes[:field_type])
        expect(response.first.guid).to eq(credential_attributes[:guid])
        expect(response.first.label).to eq(credential_attributes[:label])
        expect(response.length).to eq(1)
      end
    end
  end

  context 'list_member_credentials endpoints' do
    let(:list_member_credentials_response) do
      {
        'credentials' => [credential_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_member_credentials_response) }

    describe 'list_member_credentials_page' do
      it 'returns a list of credentials' do
        response = described_class.list_member_credentials_page

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Credential)
        expect(response.first.display_order).to eq(credential_attributes[:display_order])
        expect(response.first.field_name).to eq(credential_attributes[:field_name])
        expect(response.first.field_type).to eq(credential_attributes[:field_type])
        expect(response.first.guid).to eq(credential_attributes[:guid])
        expect(response.first.label).to eq(credential_attributes[:label])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_member_credentials_each' do
      it 'yields a credential' do
        response = nil

        described_class.list_member_credentials_each do |credential|
          response = credential
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Credential)
        expect(response.display_order).to eq(credential_attributes[:display_order])
        expect(response.field_name).to eq(credential_attributes[:field_name])
        expect(response.field_type).to eq(credential_attributes[:field_type])
        expect(response.guid).to eq(credential_attributes[:guid])
        expect(response.label).to eq(credential_attributes[:label])
      end
    end

    describe 'list_member_credentials_pages_each' do
      it 'yields a page of credentials' do
        response = nil

        described_class.list_member_credentials_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Credential)
        expect(response.first.display_order).to eq(credential_attributes[:display_order])
        expect(response.first.field_name).to eq(credential_attributes[:field_name])
        expect(response.first.field_type).to eq(credential_attributes[:field_type])
        expect(response.first.guid).to eq(credential_attributes[:guid])
        expect(response.first.label).to eq(credential_attributes[:label])
        expect(response.length).to eq(1)
      end
    end
  end
end
