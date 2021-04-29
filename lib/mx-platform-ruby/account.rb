# frozen_string_literal: true

module MxPlatformRuby
  class Account
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :account_number
    attribute :apr
    attribute :apy
    attribute :available_balance
    attribute :available_credit
    attribute :balance
    attribute :cash_balance
    attribute :cash_surrender_value
    attribute :created_at
    attribute :credit_limit
    attribute :currency_code
    attribute :day_payment_is_due
    attribute :death_benefit
    attribute :guid
    attribute :holdings_value
    attribute :id
    attribute :institution_code
    attribute :insured_name
    attribute :interest_rate
    attribute :is_closed
    attribute :is_hidden
    attribute :last_payment
    attribute :last_payment_at
    attribute :loan_amount
    attribute :matures_on
    attribute :member_guid
    attribute :minimum_balance
    attribute :minimum_payment
    attribute :name
    attribute :original_balance
    attribute :pay_out_amount
    attribute :payment_due_at
    attribute :payoff_balance
    attribute :premium_amount
    attribute :started_on
    attribute :subtype
    attribute :total_account_value
    attribute :type
    attribute :updated_at
    attribute :user_guid

    def self.list_user_accounts(options = {})
      options = list_user_accounts_pagination_options(options)

      paginate(options)
    end

    def self.list_user_accounts_each(options = {}, &block)
      options = list_user_accounts_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_user_accounts_in_batches(options = {}, &block)
      options = list_user_accounts_pagination_options(options)

      paginate_in_batches(options, &block)
    end

    def self.read_account(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      endpoint = "/users/#{options[:user_guid]}/accounts/#{options[:account_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, accept_header)

      account_params = response['account']
      ::MxPlatformRuby::Account.new(account_params)
    end

    def self.update_account(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      body = update_account_body(options)
      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/accounts/#{options[:account_guid]}"
      response = ::MxPlatformRuby.client.make_request(:put, endpoint, body, accept_header)

      account_params = response['account']
      ::MxPlatformRuby::Account.new(account_params)
    end

    # Private class methods

    def self.list_user_accounts_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/accounts",
        resource: 'accounts',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }
      }
    end
    private_class_method :list_user_accounts_pagination_options

    def self.update_account_body(options)
      {
        account: {
          is_hidden: options[:is_hidden]
        }
      }
    end
    private_class_method :update_account_body
  end
end
