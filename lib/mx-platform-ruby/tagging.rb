# frozen_string_literal: true

module MxPlatformRuby
  class Tagging
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :guid
    attribute :member_is_managed_by_user
    attribute :tag_guid
    attribute :transaction_guid
    attribute :user_guid

    def self.create_tagging(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      body = create_tagging_body(options)
      endpoint = "/users/#{options[:user_guid]}/taggings"
      response = ::MxPlatformRuby.client.make_request(:post, endpoint, body, accept_header)

      tagging_params = response['tagging']
      ::MxPlatformRuby::Tagging.new(tagging_params)
    end

    def self.delete_tagging(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      endpoint = "/users/#{options[:user_guid]}/taggings/#{options[:tagging_guid]}"
      ::MxPlatformRuby.client.make_request(:delete, endpoint, nil, accept_header)
    end

    def self.list_taggings(options = {})
      options = list_taggings_pagination_options(options)

      paginate(options)
    end

    def self.list_taggings_each(options = {}, &block)
      options = list_taggings_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_taggings_in_batches(options = {}, &block)
      options = list_taggings_pagination_options(options)

      paginate_in_batches(options, &block)
    end

    def self.read_tagging(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      endpoint = "/users/#{options[:user_guid]}/taggings/#{options[:tagging_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, accept_header)

      tagging_params = response['tagging']
      ::MxPlatformRuby::Tagging.new(tagging_params)
    end

    def self.update_tagging(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      body = update_tagging_body(options)
      endpoint = "/users/#{options[:user_guid]}/taggings/#{options[:tagging_guid]}"
      response = ::MxPlatformRuby.client.make_request(:put, endpoint, body, accept_header)

      tagging_params = response['tagging']
      ::MxPlatformRuby::Tagging.new(tagging_params)
    end

    # Private class methods

    def self.create_tagging_body(options)
      {
        tagging: {
          tag_guid: options[:tag_guid],
          transaction_guid: options[:transaction_guid]
        }
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
        }
      }
    end
    private_class_method :list_taggings_pagination_options

    def self.update_tagging_body(options)
      {
        tagging: {
          tag_guid: options[:tag_guid]
        }
      }
    end
    private_class_method :update_tagging_body
  end
end
