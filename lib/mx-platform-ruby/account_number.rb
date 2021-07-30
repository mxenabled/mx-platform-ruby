# frozen_string_literal: true

module MXPlatformRuby
  class AccountNumber
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :account_guid
    attribute :account_number
    attribute :guid
    attribute :institution_number
    attribute :member_guid
    attribute :routing_number
    attribute :transit_number
    attribute :user_guid

    def self.list_account_numbers_by_account(options = {})
      options = list_account_numbers_by_account_options(options)

      paginate(options)
    end

    def self.list_account_numbers_by_member(options = {})
      options = list_account_numbers_by_member_options(options)

      paginate(options)
    end

    # Private class methods

    def self.list_account_numbers_by_account_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/accounts/#{options[:account_guid]}/account_numbers",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'account_numbers'
      }
    end
    private_class_method :list_account_numbers_by_account_options

    def self.list_account_numbers_by_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/account_numbers",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'account_numbers'
      }
    end
    private_class_method :list_account_numbers_by_member_options
  end
end
