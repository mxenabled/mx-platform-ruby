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
  let(:first_pagination_batch) { ::MxPlatformRuby::PaginationBatch.new(2, record) }
  let(:first_page) { 1 }
  let(:first_page_response) do
    {
      'records' => ::Array.new(2, record_response),
      'pagination' => {
        'current_page' => first_page,
        'records_per_page' => records_per_page,
        'total_entries' => total_entries,
        'total_pages' => total_pages
      }
    }
  end
  let(:last_page) { 2 }
  let(:last_pagination_batch) { ::MxPlatformRuby::PaginationBatch.new(1, record) }
  let(:last_page_response) do
    {
      'records' => ::Array.new(1, record_response),
      'pagination' => {
        'current_page' => last_page,
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
    it 'returns the first PaginationBatch' do
      pagination_batch = subject.paginate(options)
      expect(pagination_batch).to eq(first_pagination_batch)
      expect(pagination_batch.current_page).to eq(first_page)
      expect(pagination_batch.records_per_page).to eq(records_per_page)
      expect(pagination_batch.total_entries).to eq(total_entries)
      expect(pagination_batch.total_pages).to eq(total_pages)
    end

    context 'with no results' do
      it 'returns an empty PaginationBatch' do
        allow(::MxPlatformRuby.client).to receive(:make_request).and_return(empty_response)
        pagination_batch = subject.paginate(options)
        expect(pagination_batch).to eq(::MxPlatformRuby::PaginationBatch.new)
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

  describe '.paginate_in_batches' do
    it 'fails unless a block is given' do
      expect { subject.paginate_in_batches }.to raise_error(::ArgumentError)
    end

    context 'with a single page response' do
      let(:total_entries) { 2 }
      let(:total_pages) { 1 }

      it 'yields one PaginationBatch' do
        pagination_batch = []
        subject.paginate_in_batches(options) { |batch| pagination_batch << batch }
        expect(pagination_batch.first).to eq(first_pagination_batch)
        expect(pagination_batch.first.current_page).to eq(first_page)
        expect(pagination_batch.first.records_per_page).to eq(records_per_page)
        expect(pagination_batch.first.total_entries).to eq(total_entries)
        expect(pagination_batch.first.total_pages).to eq(total_pages)
        expect(pagination_batch.size).to eq(1)
      end
    end

    context 'with multiple pages' do
      it 'yields two PaginationBatches' do
        pagination_batches = []
        subject.paginate_in_batches(options) { |batch| pagination_batches << batch }
        expect(pagination_batches.first).to eq(first_pagination_batch)
        expect(pagination_batches.first.current_page).to eq(first_page)
        expect(pagination_batches.first.records_per_page).to eq(records_per_page)
        expect(pagination_batches.first.total_entries).to eq(total_entries)
        expect(pagination_batches.first.total_pages).to eq(total_pages)
        expect(pagination_batches.last).to eq(last_pagination_batch)
        expect(pagination_batches.last.current_page).to eq(last_page)
        expect(pagination_batches.last.records_per_page).to eq(records_per_page)
        expect(pagination_batches.last.total_entries).to eq(total_entries)
        expect(pagination_batches.last.total_pages).to eq(total_pages)
        expect(pagination_batches.size).to eq(2)
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
        subject.paginate_in_batches(options.merge(query_params)) {}
      end
    end
  end
end
