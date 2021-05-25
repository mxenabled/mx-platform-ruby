# frozen_string_literal: true

module MxPlatformRuby
  class TransactionRule
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :category_guid
    attribute :created_at
    attribute :description
    attribute :guid
    attribute :match_description
    attribute :updated_at
    attribute :user_guid

    def self.create_transaction_rule(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      body = create_transaction_rule_body(options)
      endpoint = "/users/#{options[:user_guid]}/transaction_rules"
      response = ::MxPlatformRuby.client.make_request(:post, endpoint, body, headers)

      transaction_rule_params = response['transaction_rule']
      ::MxPlatformRuby::TransactionRule.new(transaction_rule_params)
    end

    def self.delete_transaction_rule(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      endpoint = "/users/#{options[:user_guid]}/transaction_rule/#{options[:transaction_rule_guid]}"
      ::MxPlatformRuby.client.make_request(:delete, endpoint, nil, headers)
    end

    def self.list_transaction_rules_by_user_page(options = {})
      options = list_transaction_rules_by_user_pagination_options(options)

      paginate(options)
    end

    def self.list_transaction_rules_by_user_each(options = {}, &block)
      options = list_transaction_rules_by_user_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_transaction_rules_by_user_pages_each(options = {}, &block)
      options = list_transaction_rules_by_user_pagination_options(options)
      paginate_pages(options, &block)
    end

    def self.read_transaction_rule(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      endpoint = "/users/#{options[:user_guid]}/transaction_rule/#{options[:transaction_rule_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      transaction_rule_params = response['transaction_rule']
      ::MxPlatformRuby::TransactionRule.new(transaction_rule_params)
    end

    def self.update_transaction_rule(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      body = update_transaction_rule_body(options)
      endpoint = "/users/#{options[:user_guid]}/transaction_rule/#{options[:transaction_rule_guid]}"
      response = ::MxPlatformRuby.client.make_request(:put, endpoint, body, headers)

      transaction_rule_params = response['transaction_rule']
      ::MxPlatformRuby::TransactionRule.new(transaction_rule_params)
    end

    # Private class methods

    def self.create_transaction_rule_body(options)
      {
        member: {
          category_guid: options[:category_guid],
          description: options[:description],
          match_description: options[:match_description]
        }.compact
      }
    end
    private_class_method :create_transaction_rule_body

    def self.list_transaction_rules_by_user_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/transaction_rules",
        resource: 'transaction_rules',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_transaction_rules_by_user_pagination_options

    def self.update_transaction_rule_body(options)
      {
        transaction_rule: {
          category_guid: options[:category_guid],
          description: options[:description],
          match_description: options[:match_description]
        }.compact
      }
    end
    private_class_method :update_transaction_rule_body
  end
end
