# frozen_string_literal: true

module MXPlatformRuby
  class Page < ::Array
    attr_accessor :current_page, :per_page, :total_entries, :total_pages
  end

  module Pageable
    def paginate(options = {})
      klass = options.fetch(:klass, self)
      resource = options.fetch(:resource)

      response = ::MXPlatformRuby.client.make_request(options)
      return nil if response.nil?

      pagination = response['pagination']

      records = response[resource].map { |attributes| klass.new(attributes) }

      page = ::MXPlatformRuby::Page.new(records)
      page.current_page = pagination['current_page']
      page.per_page = pagination['per_page']
      page.total_entries = pagination['total_entries']
      page.total_pages = pagination['total_pages']

      page
    end
  end
end
