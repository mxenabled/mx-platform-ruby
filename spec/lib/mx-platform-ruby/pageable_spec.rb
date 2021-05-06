# frozen_string_literal: true

require 'spec_helper'

class Record
  extend ::MxPlatformRuby::Pageable
  include ::ActiveAttr::Model
  attribute :record_attribute
end

RSpec.describe ::MxPlatformRuby::Pageable do
  subject { ::Record }

  let(:accept_header) { { 'Accept' => 'application/json' } }
  let(:empty_response) do
    {
      'records' => [],
      'pagination' => {
        'current_page' => 1,
        'records_per_page' => records_per_page,
        'total_entries' => 0,
        'total_pages' => 1
      }
    }
  end
  let(:first) { 1 }
  let(:first_page) { ::MxPlatformRuby::Page.new(2, record) }
  let(:first_page_response) do
    {
      'records' => ::Array.new(2, record_response),
      'pagination' => {
        'current_page' => first,
        'records_per_page' => records_per_page,
        'total_entries' => total_entries,
        'total_pages' => total_pages
      }
    }
  end
  let(:last) { 2 }
  let(:last_page) { ::MxPlatformRuby::Page.new(1, record) }
  let(:last_page_response) do
    {
      'records' => ::Array.new(1, record_response),
      'pagination' => {
        'current_page' => last,
        'records_per_page' => records_per_page,
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
  let(:query_params) { { query_params: { from_date: ::Date.new(2000, 1, 1) } } }
  let(:record) { ::Record.new('record_attribute' => 'record_value') }
  let(:record_response) { { 'record_attribute' => 'record_value' } }
  let(:records_per_page) { 2 }
  let(:total_entries) { 3 }
  let(:total_pages) { 2 }

  before do
    allow(::MxPlatformRuby.client).to receive(:make_request).with(:get, '/records?', nil, accept_header)
                                                            .and_return(first_page_response)
    allow(::MxPlatformRuby.client).to receive(:make_request).with(:get, '/records?page=1', nil, accept_header)
                                                            .and_return(first_page_response)
    allow(::MxPlatformRuby.client).to receive(:make_request).with(:get, '/records?page=2', nil, accept_header)
                                                            .and_return(last_page_response)
  end

  describe '.paginate' do
    it 'returns the first Page' do
      page = subject.paginate(options)
      expect(page).to eq(first_page)
      expect(page.current_page).to eq(first)
      expect(page.records_per_page).to eq(records_per_page)
      expect(page.total_entries).to eq(total_entries)
      expect(page.total_pages).to eq(total_pages)
    end

    context 'with no results' do
      it 'returns an empty Page' do
        allow(::MxPlatformRuby.client).to receive(:make_request).and_return(empty_response)
        page = subject.paginate(options)
        expect(page).to eq(::MxPlatformRuby::Page.new)
      end
    end
  end

  describe '.paginate_each' do
    it 'yields every record' do
      records_yielded = 0
      subject.paginate_each(options) { records_yielded += 1 }
      expect(records_yielded).to eq(total_entries)
    end
  end

  describe '.paginate_pages' do
    it 'fails unless a block is given' do
      expect { subject.paginate_pages }.to raise_error(::ArgumentError)
    end

    context 'with a single page response' do
      let(:total_entries) { 2 }
      let(:total_pages) { 1 }

      it 'yields one Page' do
        pages = []
        subject.paginate_pages(options) { |page| pages << page }
        expect(pages.first).to eq(first_page)
        expect(pages.first.current_page).to eq(first)
        expect(pages.first.records_per_page).to eq(records_per_page)
        expect(pages.first.total_entries).to eq(total_entries)
        expect(pages.first.total_pages).to eq(total_pages)
        expect(pages.size).to eq(1)
      end
    end

    context 'with multiple pages' do
      it 'yields two Pages' do
        pages = []
        subject.paginate_pages(options) { |page| pages << page }
        expect(pages.first).to eq(first_page)
        expect(pages.first.current_page).to eq(first)
        expect(pages.first.records_per_page).to eq(records_per_page)
        expect(pages.first.total_entries).to eq(total_entries)
        expect(pages.first.total_pages).to eq(total_pages)
        expect(pages.last).to eq(last_page)
        expect(pages.last.current_page).to eq(last)
        expect(pages.last.records_per_page).to eq(records_per_page)
        expect(pages.last.total_entries).to eq(total_entries)
        expect(pages.last.total_pages).to eq(total_pages)
        expect(pages.size).to eq(2)
      end
    end

    context 'when query params are included' do
      let(:total_entries) { 2 }
      let(:total_pages) { 1 }

      it 'uses the query params' do
        expect(::MxPlatformRuby.client).to receive(:make_request).with(
          :get,
          '/records?from_date=2000-01-01',
          nil,
          accept_header
        ).and_return(first_page_response)
        expect(::MxPlatformRuby.client).to receive(:make_request).with(
          :get,
          '/records?from_date=2000-01-01&page=1',
          nil,
          accept_header
        ).and_return(first_page_response)
        subject.paginate_pages(options.merge(query_params)) {}
      end
    end
  end
end
