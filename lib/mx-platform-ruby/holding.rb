# frozen_string_literal: true

module MxPlatformRuby
  class Holding
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :account_guid
    attribute :cost_basis
    attribute :created_at
    attribute :currency_code
    attribute :cusip
    attribute :daily_change
    attribute :description
    attribute :guid
    attribute :holding_type
    attribute :id
    attribute :market_value
    attribute :member_guid
    attribute :metadata
    attribute :purchase_price
    attribute :shares
    attribute :symbol
    attribute :updated_at
    attribute :user_guid

    def self.list_holdings_by_member(options = {})
      options = list_holdings_by_member_pagination_options(options)
      paginate(options)
    end

    def self.list_holdings_by_member_each(options = {}, &block)
      options = list_holdings_by_member_pagination_options(options)
      paginate_each(options, &block)
    end

    def self.list_holdings_by_member_in_batches(options = {}, &block)
      options = list_holdings_by_member_pagination_options(options)
      paginate_in_batches(options, &block)
    end

    def self.list_holdings_by_user(options = {})
      options = list_holdings_by_user_pagination_options(options)
      paginate(options)
    end

    def self.list_holdings_by_user_each(options = {}, &block)
      options = list_holdings_by_user_pagination_options(options)
      paginate_each(options, &block)
    end

    def self.list_holdings_by_user_in_batches(options = {}, &block)
      options = list_holdings_by_user_pagination_options(options)
      paginate_in_batches(options, &block)
    end

    def self.read_holding(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      endpoint = "/users/#{options[:user_guid]}/holdings/#{options[:holding_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, accept_header)

      holding_params = response['holding']
      ::MxPlatformRuby::Holding.new(holding_params)
    end

    # Private class methods

    def self.list_holdings_by_member_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/holdings",
        resource: 'holdings',
        query_params: {
          from_date: options[:from_date],
          page: options[:page],
          records_per_page: options[:records_per_page],
          to_date: options[:to_date]
        }
      }
    end
    private_class_method :list_holdings_by_member_pagination_options

    def self.list_holdings_by_user_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/holdings",
        resource: 'holdings',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }
      }
    end
    private_class_method :list_holdings_by_user_pagination_options
  end
end
