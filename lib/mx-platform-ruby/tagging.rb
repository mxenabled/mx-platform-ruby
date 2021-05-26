# frozen_string_literal: true

module MXPlatformRuby
  class Tagging
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :guid
    attribute :member_is_managed_by_user
    attribute :tag_guid
    attribute :transaction_guid
    attribute :user_guid

    def self.create_tagging(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = create_tagging_body(options)
      endpoint = "/users/#{options[:user_guid]}/taggings"
      response = ::MXPlatformRuby.client.make_request(:post, endpoint, body, headers)

      tagging_params = response['tagging']
      ::MXPlatformRuby::Tagging.new(tagging_params)
    end

    def self.delete_tagging(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/taggings/#{options[:tagging_guid]}"
      ::MXPlatformRuby.client.make_request(:delete, endpoint, nil, headers)
    end

    def self.list_taggings_page(options = {})
      options = list_taggings_pagination_options(options)

      paginate(options)
    end

    def self.list_taggings_each(options = {}, &block)
      options = list_taggings_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_taggings_pages_each(options = {}, &block)
      options = list_taggings_pagination_options(options)

      paginate_pages(options, &block)
    end

    def self.read_tagging(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/taggings/#{options[:tagging_guid]}"
      response = ::MXPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      tagging_params = response['tagging']
      ::MXPlatformRuby::Tagging.new(tagging_params)
    end

    def self.update_tagging(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = update_tagging_body(options)
      endpoint = "/users/#{options[:user_guid]}/taggings/#{options[:tagging_guid]}"
      response = ::MXPlatformRuby.client.make_request(:put, endpoint, body, headers)

      tagging_params = response['tagging']
      ::MXPlatformRuby::Tagging.new(tagging_params)
    end

    # Private class methods

    def self.create_tagging_body(options)
      {
        tagging: {
          tag_guid: options[:tag_guid],
          transaction_guid: options[:transaction_guid]
        }.compact
      }
    end
    private_class_method :create_tagging_body

    def self.list_taggings_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/taggings",
        resource: 'taggings',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_taggings_pagination_options

    def self.update_tagging_body(options)
      {
        tagging: {
          tag_guid: options[:tag_guid]
        }.compact
      }
    end
    private_class_method :update_tagging_body
  end
end
