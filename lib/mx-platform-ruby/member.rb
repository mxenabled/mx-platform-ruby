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
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/aggregate"
      response = ::MXPlatformRuby.client.make_request(:post, endpoint, nil, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.check_balances(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/check_balance"
      response = ::MXPlatformRuby.client.make_request(:post, endpoint, nil, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.create_member(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = create_member_body(options)
      endpoint = "/users/#{options[:user_guid]}/members"
      response = ::MXPlatformRuby.client.make_request(:post, endpoint, body, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.delete_member(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}"
      ::MXPlatformRuby.client.make_request(:delete, endpoint, nil, headers)
    end

    def self.extend_history(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/extend_history"
      response = ::MXPlatformRuby.client.make_request(:post, endpoint, nil, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.fetch_statements_by_member(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/fetch_statements"
      response = ::MXPlatformRuby.client.make_request(:post, endpoint, nil, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.identify_member(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/identify"
      response = ::MXPlatformRuby.client.make_request(:post, endpoint, nil, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.list_members_page(options = {})
      options = list_members_pagination_options(options)

      paginate(options)
    end

    def self.list_members_each(options = {}, &block)
      options = list_members_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_members_pages_each(options = {}, &block)
      options = list_members_pagination_options(options)

      paginate_pages(options, &block)
    end

    def self.read_member(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}"
      response = ::MXPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.resume_aggregation(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = resume_aggregation_body(options)
      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/resume"
      response = ::MXPlatformRuby.client.make_request(:put, endpoint, body, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.update_member(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = update_member_body(options)
      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}"
      response = ::MXPlatformRuby.client.make_request(:put, endpoint, body, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    def self.verify_member(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/verify"
      response = ::MXPlatformRuby.client.make_request(:post, endpoint, nil, headers)

      member_params = response['member']
      ::MXPlatformRuby::Member.new(member_params)
    end

    # Private class methods

    def self.create_member_body(options)
      {
        member: {
          background_aggregation_is_disabled: options[:background_aggregation_is_disabled],
          credentials: options[:credentials],
          id: options[:id],
          institution_code: options[:institution_code],
          is_oauth: options[:is_oauth],
          metadata: options[:metadata],
          referral_source: options[:referral_source],
          skip_aggregation: options[:skip_aggregation],
          ui_message_webview_url_scheme: options[:ui_message_webview_url_scheme]
        }.compact
      }
    end
    private_class_method :create_member_body

    def self.list_members_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/members",
        resource: 'members',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_members_pagination_options

    def self.resume_aggregation_body(options)
      {
        member: {
          challenges: options[:challenges]
        }.compact
      }
    end
    private_class_method :resume_aggregation_body

    def self.update_member_body(options)
      {
        member: {
          background_aggregation_is_disabled: options[:background_aggregation_is_disabled],
          credentials: options[:credentials],
          id: options[:id],
          institution_code: options[:institution_code],
          is_oauth: options[:is_oauth],
          metadata: options[:metadata],
          skip_aggregation: options[:skip_aggregation]
        }.compact
      }
    end
    private_class_method :update_member_body
  end
end
