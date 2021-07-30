# frozen_string_literal: true

require 'spec_helper'

class Record
  extend ::MXPlatformRuby::Pageable
  include ::ActiveAttr::Model
  attribute :record_attribute
end

RSpec.describe ::MXPlatformRuby::Pageable do
  subject { ::Record }

  let(:accept_header) { { 'Accept' => 'application/json' } }
  let(:empty_response) do
    {
      'records' => [],
      'pagination' => {
        'current_page' => 1,
        'per_page' => per_page,
        'total_entries' => 0,
        'total_pages' => 1
      }
    }
  end
  let(:first) { 1 }
  let(:first_page) { ::MXPlatformRuby::Page.new(2, record) }
  let(:first_page_response) do
    {
      'records' => ::Array.new(2, record_response),
      'pagination' => {
        'current_page' => first,
        'per_page' => per_page,
        'total_entries' => total_entries,
        'total_pages' => total_pages
      }
    }
  end
  let(:options) do
    {
      accept_header: 'application/json',
      endpoint: '/records',
      resource: 'records'
    }
  end
  let(:record) { ::Record.new('record_attribute' => 'record_value') }
  let(:record_response) { { 'record_attribute' => 'record_value' } }
  let(:per_page) { 2 }
  let(:total_entries) { 3 }
  let(:total_pages) { 2 }

  before do
    allow(::MXPlatformRuby.client).to receive(:make_request).with({ accept_header: 'application/json', endpoint: '/records', resource: 'records' })
                                                            .and_return(first_page_response)
  end

  describe '.paginate' do
    it 'returns the first Page' do
      page = subject.paginate(options)
      expect(page).to eq(first_page)
      expect(page.current_page).to eq(first)
      expect(page.per_page).to eq(per_page)
      expect(page.total_entries).to eq(total_entries)
      expect(page.total_pages).to eq(total_pages)
    end

    context 'with no results' do
      it 'returns an empty Page' do
        allow(::MXPlatformRuby.client).to receive(:make_request).and_return(empty_response)
        page = subject.paginate(options)
        expect(page).to eq(::MXPlatformRuby::Page.new)
      end
    end
  end
end
