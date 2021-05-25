# frozen_string_literal: true

module MxPlatformRuby
  class Category
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :created_at
    attribute :guid
    attribute :is_default
    attribute :is_income
    attribute :metadata
    attribute :name
    attribute :parent_guid
    attribute :updated_at

    def self.create_category(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = create_category_body(options)
      endpoint = "/users/#{options[:user_guid]}/categories"
      response = ::MxPlatformRuby.client.make_request(:post, endpoint, body, headers)

      category_params = response['category']
      ::MxPlatformRuby::Category.new(category_params)
    end

    def self.delete_category(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/categories/#{options[:category_guid]}"
      ::MxPlatformRuby.client.make_request(:delete, endpoint, nil, headers)
    end

    def self.list_categories_page(options = {})
      options = list_categories_pagination_options(options)

      paginate(options)
    end

    def self.list_categories_each(options = {}, &block)
      options = list_categories_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_categories_pages_each(options = {}, &block)
      options = list_categories_pagination_options(options)

      paginate_pages(options, &block)
    end

    def self.list_default_categories_page(options = {})
      options = list_default_categories_pagination_options(options)

      paginate(options)
    end

    def self.list_default_categories_each(options = {}, &block)
      options = list_default_categories_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_default_categories_pages_each(options = {}, &block)
      options = list_default_categories_pagination_options(options)

      paginate_pages(options, &block)
    end

    def self.read_category(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/categories/#{options[:category_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      category_params = response['category']
      ::MxPlatformRuby::Category.new(category_params)
    end

    def self.update_category(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = update_category_body(options)
      endpoint = "/users/#{options[:user_guid]}/categories"
      response = ::MxPlatformRuby.client.make_request(:put, endpoint, body, headers)

      category_params = response['category']
      ::MxPlatformRuby::Category.new(category_params)
    end

    # Private class methods

    def self.create_category_body(options)
      {
        category: {
          metadata: options[:metadata],
          name: options[:name],
          parent_guid: options[:parent_guid]
        }.compact
      }
    end
    private_class_method :create_category_body

    def self.list_categories_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/categories",
        resource: 'categories',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_categories_pagination_options

    def self.list_default_categories_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/categories/default",
        resource: 'categories'
      }
    end
    private_class_method :list_default_categories_pagination_options

    def self.update_category_body(options)
      {
        category: {
          metadata: options[:metadata],
          name: options[:name]
        }.compact
      }
    end
    private_class_method :update_category_body
  end
end
