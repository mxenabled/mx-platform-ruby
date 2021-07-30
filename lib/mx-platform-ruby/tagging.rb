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
      create_tagging_options = create_tagging_options(options)
      response = ::MXPlatformRuby.client.make_request(create_tagging_options)

      tagging_params = response['tagging']
      ::MXPlatformRuby::Tagging.new(tagging_params)
    end

    def self.delete_tagging(options = {})
      delete_tagging_options = delete_tagging_options(options)
      ::MXPlatformRuby.client.make_request(delete_tagging_options)
    end

    def self.list_taggings(options = {})
      options = list_taggings_options(options)

      paginate(options)
    end

    def self.read_tagging(options = {})
      read_tagging_options = read_tagging_options(options)
      response = ::MXPlatformRuby.client.make_request(read_tagging_options)

      tagging_params = response['tagging']
      ::MXPlatformRuby::Tagging.new(tagging_params)
    end

    def self.update_tagging(options = {})
      update_tagging_options = update_tagging_options(options)
      response = ::MXPlatformRuby.client.make_request(update_tagging_options)

      tagging_params = response['tagging']
      ::MXPlatformRuby::Tagging.new(tagging_params)
    end

    # Private class methods

    def self.create_tagging_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/taggings",
        http_method: :post,
        request_body: {
          tagging: {
            tag_guid: options[:tag_guid],
            transaction_guid: options[:transaction_guid]
          }.compact
        }
      }
    end
    private_class_method :create_tagging_options

    def self.delete_tagging_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/taggings/#{options[:tagging_guid]}",
        http_method: :delete
      }
    end
    private_class_method :delete_tagging_options

    def self.list_taggings_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/taggings",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'taggings'
      }
    end
    private_class_method :list_taggings_options

    def self.read_tagging_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/taggings/#{options[:tagging_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_tagging_options

    def self.update_tagging_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/taggings/#{options[:tagging_guid]}",
        http_method: :put,
        request_body: {
          tagging: {
            tag_guid: options[:tag_guid]
          }.compact
        }
      }
    end
    private_class_method :update_tagging_options
  end
end
