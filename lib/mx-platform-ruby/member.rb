# frozen_string_literal: true

module MXPlatformRuby
  class Member
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :aggregated_at
    attribute :connection_status
    attribute :guid
    attribute :id
    attribute :institution_code
    attribute :is_being_aggregated
    attribute :is_oauth
    attribute :metadata
    attribute :name
    attribute :oauth_window_uri
    attribute :successfully_aggregated_at
    attribute :user_guid

    def self.aggregate_member(options = {})
      aggregate_member_options = aggregate_member_options(options)
      response = ::MXPlatformRuby.client.make_request(aggregate_member_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.check_balances(options = {})
      check_balances_options = check_balances_options(options)
      response = ::MXPlatformRuby.client.make_request(check_balances_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.create_member(options = {})
      create_member_options = create_member_options(options)
      response = ::MXPlatformRuby.client.make_request(create_member_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.delete_member(options = {})
      delete_member_options = delete_member_options(options)
      ::MXPlatformRuby.client.make_request(delete_member_options)
    end

    def self.extend_history(options = {})
      extend_history_options = extend_history_options(options)
      response = ::MXPlatformRuby.client.make_request(extend_history_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.fetch_statements_by_member(options = {})
      fetch_statements_by_member_options = fetch_statements_by_member_options(options)
      response = ::MXPlatformRuby.client.make_request(fetch_statements_by_member_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.identify_member(options = {})
      identify_member_options = identify_member_options(options)
      response = ::MXPlatformRuby.client.make_request(identify_member_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.list_members(options = {})
      options = list_members_options(options)

      paginate(options)
    end

    def self.read_member(options = {})
      read_member_options = read_member_options(options)
      response = ::MXPlatformRuby.client.make_request(read_member_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.resume_aggregation(options = {})
      resume_aggregation_options = resume_aggregation_options(options)
      response = ::MXPlatformRuby.client.make_request(resume_aggregation_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.update_member(options = {})
      update_member_options = update_member_options(options)
      response = ::MXPlatformRuby.client.make_request(update_member_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.verify_member(options = {})
      verify_member_options = verify_member_options(options)
      response = ::MXPlatformRuby.client.make_request(verify_member_options)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    # Private class methods

    def self.aggregate_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/aggregate",
        http_method: :post
      }
    end
    private_class_method :aggregate_member_options

    def self.check_balances_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/check_balance",
        http_method: :post
      }
    end
    private_class_method :check_balances_options

    def self.create_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members",
        http_method: :post,
        request_body: {
          member: {
            background_aggregation_is_disabled: options[:background_aggregation_is_disabled],
            credentials: options[:credentials],
            id: options[:id],
            institution_code: options[:institution_code],
            is_oauth: options[:is_oauth],
            metadata: options[:metadata],
            skip_aggregation: options[:skip_aggregation]
          }.compact,
          referral_source: options[:referral_source],
          ui_message_webview_url_scheme: options[:ui_message_webview_url_scheme]
        }.compact
      }
    end
    private_class_method :create_member_options

    def self.delete_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}",
        http_method: :delete
      }
    end
    private_class_method :delete_member_options

    def self.extend_history_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/extend_history",
        http_method: :post
      }
    end
    private_class_method :extend_history_options

    def self.fetch_statements_by_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/fetch_statements",
        http_method: :post
      }
    end
    private_class_method :fetch_statements_by_member_options

    def self.identify_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/identify",
        http_method: :post
      }
    end
    private_class_method :identify_member_options

    def self.list_members_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'members'
      }
    end
    private_class_method :list_members_options

    def self.read_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_member_options

    def self.resume_aggregation_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/resume",
        http_method: :put,
        request_body: {
          member: {
            challenges: options[:challenges]
          }.compact
        }
      }
    end
    private_class_method :resume_aggregation_options

    def self.update_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}",
        http_method: :put,
        request_body: {
          member: {
            background_aggregation_is_disabled: options[:background_aggregation_is_disabled],
            credentials: options[:credentials],
            id: options[:id],
            metadata: options[:metadata],
            skip_aggregation: options[:skip_aggregation]
          }.compact
        }
      }
    end
    private_class_method :update_member_options

    def self.verify_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/verify",
        http_method: :post
      }
    end
    private_class_method :verify_member_options
  end
end
