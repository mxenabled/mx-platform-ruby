# frozen_string_literal: true

module MXPlatformRuby
  class Category
    extend ::MXPlatformRuby::Pageable
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
      create_category_options = create_category_options(options)
      response = ::MXPlatformRuby.client.make_request(create_category_options)

      category_params = response['category']
      ::MXPlatformRuby::Category.new(category_params)
    end

    def self.delete_category(options = {})
      delete_category_options = delete_category_options(options)
      ::MXPlatformRuby.client.make_request(delete_category_options)
    end

    def self.list_categories_page(options = {})
      options = list_categories_options(options)

      paginate(options)
    end

    def self.list_categories_each(options = {}, &block)
      options = list_categories_options(options)

      paginate_each(options, &block)
    end

    def self.list_categories_pages_each(options = {}, &block)
      options = list_categories_options(options)

      paginate_pages(options, &block)
    end

    def self.list_default_categories_page(options = {})
      options = list_default_categories_options(options)

      paginate(options)
    end

    def self.list_default_categories_each(options = {}, &block)
      options = list_default_categories_options(options)

      paginate_each(options, &block)
    end

    def self.list_default_categories_pages_each(options = {}, &block)
      options = list_default_categories_options(options)

      paginate_pages(options, &block)
    end

    def self.read_category(options = {})
      read_category_options = read_category_options(options)
      response = ::MXPlatformRuby.client.make_request(read_category_options)

      category_params = response['category']
      ::MXPlatformRuby::Category.new(category_params)
    end

    def self.update_category(options = {})
      update_category_options = update_category_options(options)
      response = ::MXPlatformRuby.client.make_request(update_category_options)

      category_params = response['category']
      ::MXPlatformRuby::Category.new(category_params)
    end

    # Private class methods

    def self.create_category_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/categories",
        http_method: :post,
        request_body: {
          category: {
            metadata: options[:metadata],
            name: options[:name],
            parent_guid: options[:parent_guid]
          }.compact
        }
      }
    end
    private_class_method :create_category_options

    def self.delete_category_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/categories/#{options[:category_guid]}",
        http_method: :delete
      }
    end
    private_class_method :delete_category_options

    def self.list_categories_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/categories",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'categories'
      }
    end
    private_class_method :list_categories_options

    def self.list_default_categories_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/categories/default",
        http_method: :get,
        resource: 'categories'
      }
    end
    private_class_method :list_default_categories_options

    def self.read_category_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/categories/#{options[:category_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_category_options

    def self.update_category_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/categories/#{options[:category_guid]}",
        http_method: :put,
        request_body: {
          category: {
            metadata: options[:metadata],
            name: options[:name]
          }.compact
        }
      }
    end
    private_class_method :update_category_options
  end
end
