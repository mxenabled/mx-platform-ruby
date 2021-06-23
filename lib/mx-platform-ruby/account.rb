# frozen_string_literal: true

module MXPlatformRuby
  class Account
    extend ::MXPlatformRuby::Pageable
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

    def self.list_user_accounts_page(options = {})
      options = list_user_accounts_options(options)

      paginate(options)
    end

    def self.list_user_accounts_each(options = {}, &block)
      options = list_user_accounts_options(options)

      paginate_each(options, &block)
    end

    def self.list_user_accounts_pages_each(options = {}, &block)
      options = list_user_accounts_options(options)

      paginate_pages(options, &block)
    end

    def self.read_account(options = {})
      read_account_options = read_account_options(options)
      response = ::MXPlatformRuby.client.make_request(read_account_options)

      account_params = response['account']
      ::MXPlatformRuby::Account.new(account_params)
    end

    def self.update_account(options = {})
      update_account_options = update_account_options(options)
      response = ::MXPlatformRuby.client.make_request(update_account_options)

      account_params = response['account']
      ::MXPlatformRuby::Account.new(account_params)
    end

    # Private class methods

    def self.list_user_accounts_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/accounts",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'accounts'
      }
    end
    private_class_method :list_user_accounts_options

    def self.read_account_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/accounts/#{options[:account_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_account_options

    def self.update_account_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/accounts/#{options[:account_guid]}",
        http_method: :put,
        request_body: {
          account: {
            is_hidden: options[:is_hidden]
          }.compact
        }
      }
    end
    private_class_method :update_account_options
  end
end
