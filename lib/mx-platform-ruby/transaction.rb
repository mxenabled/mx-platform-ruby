# frozen_string_literal: true

module MxPlatformRuby
  class Transaction
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :account_guid
    attribute :amount
    attribute :category
    attribute :check_number_string
    attribute :created_at
    attribute :currency_code
    attribute :date
    attribute :description
    attribute :guid
    attribute :id
    attribute :is_bill_pay
    attribute :is_direct_deposit
    attribute :is_expense
    attribute :is_fee
    attribute :is_income
    attribute :is_international
    attribute :is_overdraft_fee
    attribute :is_payroll_advance
    attribute :is_recurring
    attribute :is_subscription
    attribute :latitude
    attribute :localized_description
    attribute :localized_memo
    attribute :longitude
    attribute :member_guid
    attribute :memo
    attribute :merchant_category_code
    attribute :merchant_guid
    attribute :original_description
    attribute :posted_at
    attribute :status
    attribute :top_level_category
    attribute :transacted_at
    attribute :type
    attribute :updated_at
    attribute :user_guid

    def self.list_transactions_by_account_page(options = {})
      options = list_transactions_by_account_pagination_options(options)

      paginate(options)
    end

    def self.list_transactions_by_account_each(options = {}, &block)
      options = list_transactions_by_account_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_transactions_by_account_pages_each(options = {}, &block)
      options = list_transactions_by_account_pagination_options(options)

      paginate_pages(options, &block)
    end

    def self.list_transactions_by_member_page(options = {})
      options = list_transactions_by_member_pagination_options(options)

      paginate(options)
    end

    def self.list_transactions_by_member_each(options = {}, &block)
      options = list_transactions_by_member_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_transactions_by_member_pages_each(options = {}, &block)
      options = list_transactions_by_member_pagination_options(options)

      paginate_pages(options, &block)
    end

    def self.list_transactions_by_tag_page(options = {})
      options = list_transactions_by_tag_pagination_options(options)

      paginate(options)
    end

    def self.list_transactions_by_tag_each(options = {}, &block)
      options = list_transactions_by_tag_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_transactions_by_tag_pages_each(options = {}, &block)
      options = list_transactions_by_tag_pagination_options(options)

      paginate_pages(options, &block)
    end

    def self.list_transactions_by_user_page(options = {})
      options = list_transactions_by_user_pagination_options(options)

      paginate(options)
    end

    def self.list_transactions_by_user_each(options = {}, &block)
      options = list_transactions_by_user_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_transactions_by_user_pages_each(options = {}, &block)
      options = list_transactions_by_user_pagination_options(options)

      paginate_pages(options, &block)
    end

    def self.read_transaction(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      endpoint = "/users/#{options[:user_guid]}/transactions/#{options[:transaction_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      transaction_params = response['transaction']
      ::MxPlatformRuby::Transaction.new(transaction_params)
    end

    def self.update_transaction(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = update_transaction_body(options)
      endpoint = "/users/#{options[:user_guid]}/transactions/#{options[:transaction_guid]}"
      response = ::MxPlatformRuby.client.make_request(:put, endpoint, body, headers)

      transaction_params = response['transaction']
      ::MxPlatformRuby::Transaction.new(transaction_params)
    end

    # Private class methods

    def self.list_transactions_by_account_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/accounts/#{options[:account_guid]}/transactions",
        resource: 'transactions',
        query_params: {
          from_date: options[:from_date],
          page: options[:page],
          records_per_page: options[:records_per_page],
          to_date: options[:to_date]
        }.compact
      }
    end
    private_class_method :list_transactions_by_account_pagination_options

    def self.list_transactions_by_member_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/transactions",
        resource: 'transactions',
        query_params: {
          from_date: options[:from_date],
          page: options[:page],
          records_per_page: options[:records_per_page],
          to_date: options[:to_date]
        }.compact
      }
    end
    private_class_method :list_transactions_by_member_pagination_options

    def self.list_transactions_by_tag_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/tags/#{options[:tag_guid]}/transactions",
        resource: 'transactions'
      }
    end
    private_class_method :list_transactions_by_tag_pagination_options

    def self.list_transactions_by_user_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/transactions",
        resource: 'transactions',
        query_params: {
          from_date: options[:from_date],
          page: options[:page],
          records_per_page: options[:records_per_page],
          to_date: options[:to_date]
        }.compact
      }
    end
    private_class_method :list_transactions_by_user_pagination_options

    def self.update_transaction_body(options)
      {
        transaction: {
          description: options[:description]
        }.compact
      }
    end
    private_class_method :update_transaction_body
  end
end
