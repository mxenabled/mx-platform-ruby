# frozen_string_literal: true

module MxPlatformRuby
  class Tag
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :guid
    attribute :name
    attribute :user_guid

    def self.create_tag(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      body = create_tag_body(options)
      endpoint = "/users/#{options[:user_guid]}/tags"
      response = ::MxPlatformRuby.client.make_request(:post, endpoint, body, accept_header)

      tag_params = response['tag']
      ::MxPlatformRuby::Tag.new(tag_params)
    end

    def self.delete_tag(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      endpoint = "/users/#{options[:user_guid]}/tags/#{options[:tag_guid]}"
      ::MxPlatformRuby.client.make_request(:delete, endpoint, nil, accept_header)
    end

    def self.list_tags(options = {})
      options = list_tags_pagination_options(options)
      paginate(options)
    end

    def self.list_tags_each(options = {}, &block)
      options = list_tags_pagination_options(options)
      paginate_each(options, &block)
    end

    def self.list_tags_in_batches(options = {}, &block)
      options = list_tags_pagination_options(options)
      paginate_in_batches(options, &block)
    end

    def self.read_tag(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      endpoint = "/users/#{options[:user_guid]}/tags/#{options[:tag_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, accept_header)

      tag_params = response['tag']
      ::MxPlatformRuby::Tag.new(tag_params)
    end

    def self.update_tag(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      body = update_tag_body(options)
      endpoint = "/users/#{options[:user_guid]}/tags/#{options[:tag_guid]}"
      response = ::MxPlatformRuby.client.make_request(:put, endpoint, body, accept_header)

      tag_params = response['tag']
      ::MxPlatformRuby::Tag.new(tag_params)
    end

    # Private class methods

    def self.create_tag_body(options)
      {
        tag: {
          name: options[:name]
        }
      }
    end
    private_class_method :create_tag_body

    def self.list_tags_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/tags",
        resource: 'tags',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }
      }
    end
    private_class_method :list_tags_pagination_options

    def self.update_tag_body(options)
      {
        tag: {
          name: options[:name]
        }
      }
    end
    private_class_method :update_tag_body
  end
end
