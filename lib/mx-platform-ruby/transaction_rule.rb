# frozen_string_literal: true

module MXPlatformRuby
  class TransactionRule
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :category_guid
    attribute :created_at
    attribute :description
    attribute :guid
    attribute :match_description
    attribute :updated_at
    attribute :user_guid

    def self.create_transaction_rule(options = {})
      create_transaction_rule_options = create_transaction_rule_options(options)
      response = ::MXPlatformRuby.client.make_request(create_transaction_rule_options)

      transaction_rule_params = response['transaction_rule']
      ::MXPlatformRuby::TransactionRule.new(transaction_rule_params)
    end

    def self.delete_transaction_rule(options = {})
      delete_transaction_rule_options = delete_transaction_rule_options(options)
      ::MXPlatformRuby.client.make_request(delete_transaction_rule_options)
    end

    def self.list_transaction_rules_by_user(options = {})
      options = list_transaction_rules_by_user_options(options)

      paginate(options)
    end

    def self.read_transaction_rule(options = {})
      read_transaction_rule_options = read_transaction_rule_options(options)
      response = ::MXPlatformRuby.client.make_request(read_transaction_rule_options)

      transaction_rule_params = response['transaction_rule']
      ::MXPlatformRuby::TransactionRule.new(transaction_rule_params)
    end

    def self.update_transaction_rule(options = {})
      update_transaction_rule_options = update_transaction_rule_options(options)
      response = ::MXPlatformRuby.client.make_request(update_transaction_rule_options)

      transaction_rule_params = response['transaction_rule']
      ::MXPlatformRuby::TransactionRule.new(transaction_rule_params)
    end

    # Private class methods

    def self.create_transaction_rule_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/transaction_rules",
        http_method: :post,
        request_body: {
          transaction_rule: {
            category_guid: options[:category_guid],
            description: options[:description],
            match_description: options[:match_description]
          }.compact
        }
      }
    end
    private_class_method :create_transaction_rule_options

    def self.delete_transaction_rule_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/transaction_rules/#{options[:transaction_rule_guid]}",
        http_method: :delete
      }
    end
    private_class_method :delete_transaction_rule_options

    def self.list_transaction_rules_by_user_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/transaction_rules",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'transaction_rules'
      }
    end
    private_class_method :list_transaction_rules_by_user_options

    def self.read_transaction_rule_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/transaction_rules/#{options[:transaction_rule_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_transaction_rule_options

    def self.update_transaction_rule_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/transaction_rules/#{options[:transaction_rule_guid]}",
        http_method: :put,
        request_body: {
          transaction_rule: {
            category_guid: options[:category_guid],
            description: options[:description],
            match_description: options[:match_description]
          }.compact
        }
      }
    end
    private_class_method :update_transaction_rule_options
  end
end
