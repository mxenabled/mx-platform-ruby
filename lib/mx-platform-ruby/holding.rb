# frozen_string_literal: true

module MXPlatformRuby
  class Holding
    extend ::MXPlatformRuby::Pageable
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
      options = list_holdings_by_member_options(options)

      paginate(options)
    end

    def self.list_holdings_by_user(options = {})
      options = list_holdings_by_user_options(options)

      paginate(options)
    end

    def self.read_holding(options = {})
      read_holding_options = read_holding_options(options)
      response = ::MXPlatformRuby.client.make_request(read_holding_options)

      holding_params = response['holding']
      ::MXPlatformRuby::Holding.new(holding_params)
    end

    # Private class methods

    def self.list_holdings_by_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/holdings",
        http_method: :get,
        query_params: {
          from_date: options[:from_date],
          page: options[:page],
          records_per_page: options[:records_per_page],
          to_date: options[:to_date]
        }.compact,
        resource: 'holdings'
      }
    end
    private_class_method :list_holdings_by_member_options

    def self.list_holdings_by_user_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/holdings",
        http_method: :get,
        query_params: {
          from_date: options[:from_date],
          page: options[:page],
          records_per_page: options[:records_per_page],
          to_date: options[:to_date]
        }.compact,
        resource: 'holdings'
      }
    end
    private_class_method :list_holdings_by_user_options

    def self.read_holding_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/holdings/#{options[:holding_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_holding_options
  end
end
