# frozen_string_literal: true

module MXPlatformRuby
  class User
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :email
    attribute :guid
    attribute :id
    attribute :is_disabled
    attribute :metadata

    def self.create_user(options = {})
      create_user_options = create_user_options(options)
      response = ::MXPlatformRuby.client.make_request(create_user_options)

      user_params = response['user']
      ::MXPlatformRuby::User.new(user_params)
    end

    def self.delete_user(options = {})
      delete_user_options = delete_user_options(options)
      ::MXPlatformRuby.client.make_request(delete_user_options)
    end

    def self.list_users(options = {})
      options = list_users_options(options)

      paginate(options)
    end

    def self.read_user(options = {})
      read_user_options = read_user_options(options)
      response = ::MXPlatformRuby.client.make_request(read_user_options)

      user_params = response['user']
      ::MXPlatformRuby::User.new(user_params)
    end

    def self.update_user(options = {})
      update_user_options = update_user_options(options)
      response = ::MXPlatformRuby.client.make_request(update_user_options)

      user_params = response['user']
      ::MXPlatformRuby::User.new(user_params)
    end

    # Private class methods

    def self.create_user_options(options)
      {
        endpoint: '/users',
        http_method: :post,
        request_body: {
          user: {
            email: options[:email],
            id: options[:id],
            is_disabled: options[:is_disabled],
            metadata: options[:metadata]
          }.compact
        }
      }
    end
    private_class_method :create_user_options

    def self.delete_user_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}",
        http_method: :delete
      }
    end
    private_class_method :delete_user_options

    def self.list_users_options(options)
      {
        endpoint: '/users',
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'users'
      }
    end
    private_class_method :list_users_options

    def self.read_user_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_user_options

    def self.update_user_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}",
        http_method: :put,
        request_body: {
          user: {
            email: options[:email],
            id: options[:id],
            is_disabled: options[:is_disabled],
            metadata: options[:metadata]
          }.compact
        }
      }
    end
    private_class_method :update_user_options
  end
end
