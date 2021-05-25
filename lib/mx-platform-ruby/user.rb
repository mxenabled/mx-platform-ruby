# frozen_string_literal: true

module MxPlatformRuby
  class User
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :email
    attribute :guid
    attribute :id
    attribute :is_disabled
    attribute :metadata

    def self.create_user(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      body = create_user_body(options)
      endpoint = '/users'
      response = ::MxPlatformRuby.client.make_request(:post, endpoint, body, headers)

      user_params = response['user']
      ::MxPlatformRuby::User.new(user_params)
    end

    def self.delete_user(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      endpoint = "/users/#{options[:user_guid]}"
      ::MxPlatformRuby.client.make_request(:delete, endpoint, nil, headers)
    end

    def self.list_users_page(options = {})
      options = list_users_pagination_options(options)

      paginate(options)
    end

    def self.list_users_each(options = {}, &block)
      options = list_users_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_users_pages_each(options = {}, &block)
      options = list_users_pagination_options(options)
      paginate_pages(options, &block)
    end

    def self.read_user(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      endpoint = "/users/#{options[:user_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      user_params = response['user']
      ::MxPlatformRuby::User.new(user_params)
    end

    def self.update_user(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      body = update_user_body(options)
      endpoint = "/users/#{options[:user_guid]}"
      response = ::MxPlatformRuby.client.make_request(:put, endpoint, body, headers)

      user_params = response['user']
      ::MxPlatformRuby::User.new(user_params)
    end

    # Private class methods

    def self.create_user_body(options)
      {
        user: {
          email: options[:email],
          id: options[:id],
          is_disabled: options[:is_disabled],
          metadata: options[:metadata]
        }.compact
      }
    end
    private_class_method :create_user_body

    def self.list_users_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: '/users',
        resource: 'users',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_users_pagination_options

    def self.update_user_body(options)
      {
        user: {
          email: options[:email],
          id: options[:id],
          is_disabled: options[:is_disabled],
          metadata: options[:metadata]
        }.compact
      }
    end
    private_class_method :update_user_body
  end
end
