# frozen_string_literal: true

module MXPlatformRuby
  class Page < ::Array
    attr_accessor :current_page, :per_page, :total_entries, :total_pages
  end

  module Pageable
    def make_get_request(options)
      ::MXPlatformRuby.client.make_request(options)
    end

    def paginate(options = {})
      paginate_pages(options) do |page|
        return page
      end
    end

    def paginate_each(options = {}, &block)
      paginate_pages(options) do |page|
        page.each(&block)
      end
    end

    def paginate_pages(options = {})
      fail ::ArgumentError, 'A block is required' unless block_given?

      klass = options.fetch(:klass, self)
      resource = options.fetch(:resource)

      pagination = pagination_info(options)
      return nil unless pagination

      current_page = pagination['current_page']
      per_page = pagination['per_page']
      total_entries = pagination['total_entries']
      total_pages = pagination['total_pages']

      until current_page > total_pages
        options.deep_merge!(query_params: { page: current_page })
        response = make_get_request(options)

        records = response[resource].map { |attributes| klass.new(attributes) }

        page = ::MXPlatformRuby::Page.new(records)
        page.current_page = current_page
        page.per_page = per_page
        page.total_entries = total_entries
        page.total_pages = total_pages
        yield page

        current_page += 1
      end

      nil
    end

    def pagination_info(options)
      response = make_get_request(options)
      return nil unless response

      response['pagination']
    end
  end
end
