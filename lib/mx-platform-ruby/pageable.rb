# frozen_string_literal: true

module MxPlatformRuby
  class PaginationBatch < ::Array
    attr_accessor :current_page, :records_per_page, :total_entries, :total_pages
  end

  module Pageable
    def make_get_request(accept_header, endpoint, query_params)
      uri = "#{endpoint}?#{::URI.encode_www_form(query_params.compact)}"

      ::MxPlatformRuby.client.make_request(:get, uri, nil, 'Accept' => accept_header)
    end

    def paginate(options = {})
      paginate_in_batches(options) do |pagination_batch|
        return pagination_batch
      end
    end

    def paginate_each(options = {}, &block)
      paginate_in_batches(options) do |pagination_batch|
        pagination_batch.each(&block)
      end
    end

    def paginate_in_batches(options = {})
      fail ::ArgumentError, 'A block is required' unless block_given?

      accept_header = options.fetch(:accept_header)
      endpoint = options.fetch(:endpoint)
      klass = options.fetch(:klass, self)
      query_params = options.fetch(:query_params, {})
      resource = options.fetch(:resource)

      pagination = pagination_info(accept_header, endpoint, query_params)
      current_page = pagination['current_page']
      records_per_page = pagination['records_per_page']
      total_entries = pagination['total_entries']
      total_pages = pagination['total_pages']

      until current_page > total_pages
        query_params = query_params.merge(page: current_page)
        response = make_get_request(accept_header, endpoint, query_params)

        records = response[resource].map { |attributes| klass.new(attributes) }

        pagination_batch = ::MxPlatformRuby::PaginationBatch.new(records)
        pagination_batch.current_page = current_page
        pagination_batch.records_per_page = records_per_page
        pagination_batch.total_entries = total_entries
        pagination_batch.total_pages = total_pages
        yield pagination_batch

        current_page += 1
      end

      nil
    end

    def pagination_info(accept_header, endpoint, query_params)
      response = make_get_request(accept_header, endpoint, query_params)
      response['pagination']
    end
  end
end
