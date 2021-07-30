# frozen_string_literal: true

module MXPlatformRuby
  class Tag
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :guid
    attribute :name
    attribute :user_guid

    def self.create_tag(options = {})
      create_tag_options = create_tag_options(options)
      response = ::MXPlatformRuby.client.make_request(create_tag_options)

      tag_params = response['tag']
      ::MXPlatformRuby::Tag.new(tag_params)
    end

    def self.delete_tag(options = {})
      delete_tag_options = delete_tag_options(options)
      ::MXPlatformRuby.client.make_request(delete_tag_options)
    end

    def self.list_tags(options = {})
      options = list_tags_options(options)

      paginate(options)
    end

    def self.read_tag(options = {})
      read_tag_options = read_tag_options(options)
      response = ::MXPlatformRuby.client.make_request(read_tag_options)

      tag_params = response['tag']
      ::MXPlatformRuby::Tag.new(tag_params)
    end

    def self.update_tag(options = {})
      update_tag_options = update_tag_options(options)
      response = ::MXPlatformRuby.client.make_request(update_tag_options)

      tag_params = response['tag']
      ::MXPlatformRuby::Tag.new(tag_params)
    end

    # Private class methods

    def self.create_tag_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/tags",
        http_method: :post,
        request_body: {
          tag: {
            name: options[:name]
          }.compact
        }
      }
    end
    private_class_method :create_tag_options

    def self.delete_tag_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/tags/#{options[:tag_guid]}",
        http_method: :delete
      }
    end
    private_class_method :delete_tag_options

    def self.list_tags_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/tags",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'tags'
      }
    end
    private_class_method :list_tags_options

    def self.read_tag_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/tags/#{options[:tag_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_tag_options

    def self.update_tag_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/tags/#{options[:tag_guid]}",
        http_method: :put,
        request_body: {
          tag: {
            name: options[:name]
          }.compact
        }
      }
    end
    private_class_method :update_tag_options
  end
end
