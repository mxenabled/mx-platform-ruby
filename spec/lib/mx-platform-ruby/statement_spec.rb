# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Statement do
  let(:statement_attributes) do
    {
      account_guid: 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1',
      content_hash: 'ca53785b812d00ef821c3d94bfd6e5bbc0020504410589b7ea8552169f021981',
      created_at: '2016-10-13T18:08:00+00:00',
      guid: 'STA-737a344b-caae-0f6e-1384-01f52e75dcb1',
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      updated_at: '2016-10-13T18:09:00+00:00',
      uri: 'uri/to/statement',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:download_statement_pdf_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      statement_guid: 'STA-737a344b-caae-0f6e-1384-01f52e75dcb1',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_statements_by_member_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      page: 1,
      records_per_page: 10,
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_statement_by_member_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      statement_guid: 'STA-737a344b-caae-0f6e-1384-01f52e75dcb1',
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

  describe 'download_statement_pdf' do
    let(:statement_file) { ::Tempfile.new('spec/sample.pdf') }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(statement_file) }

    it 'returns statement file' do
      response = described_class.download_statement_pdf

      expect(response).to be(statement_file)
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/statements/STA-737a344b-caae-0f6e-1384-01f52e75dcb1.pdf',
          headers: {
            'Accept': 'application/vnd.mx.api.v1+pdf'
          },
          http_method: :get
        }
      )
      described_class.download_statement_pdf(download_statement_pdf_options)
    end
  end

  context 'list_statements_by_member endpoints' do
    let(:list_statements_by_member_response) do
      {
        'statements' => [statement_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_statements_by_member_response) }

    describe 'list_statements_by_member' do
      it 'returns a list of statements' do
        response = described_class.list_statements_by_member

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Statement)
        expect(response.first.account_guid).to eq(statement_attributes[:account_guid])
        expect(response.first.content_hash).to eq(statement_attributes[:content_hash])
        expect(response.first.created_at).to eq(statement_attributes[:created_at])
        expect(response.first.guid).to eq(statement_attributes[:guid])
        expect(response.first.member_guid).to eq(statement_attributes[:member_guid])
        expect(response.first.updated_at).to eq(statement_attributes[:updated_at])
        expect(response.first.uri).to eq(statement_attributes[:uri])
        expect(response.first.user_guid).to eq(statement_attributes[:user_guid])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_statement_by_member' do
    let(:read_statement_by_member_response) { { 'statement' => statement_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(read_statement_by_member_response) }

    it 'returns statement' do
      response = described_class.read_statement_by_member

      expect(response).to be_kind_of(::MXPlatformRuby::Statement)
      expect(response.account_guid).to eq(statement_attributes[:account_guid])
      expect(response.content_hash).to eq(statement_attributes[:content_hash])
      expect(response.created_at).to eq(statement_attributes[:created_at])
      expect(response.guid).to eq(statement_attributes[:guid])
      expect(response.member_guid).to eq(statement_attributes[:member_guid])
      expect(response.updated_at).to eq(statement_attributes[:updated_at])
      expect(response.uri).to eq(statement_attributes[:uri])
      expect(response.user_guid).to eq(statement_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/statements/STA-737a344b-caae-0f6e-1384-01f52e75dcb1',
          http_method: :get
        }
      )
      described_class.read_statement_by_member(read_statement_by_member_options)
    end
  end
end
