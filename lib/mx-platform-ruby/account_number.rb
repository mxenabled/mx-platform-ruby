# frozen_string_literal: true

module MxPlatformRuby
  class AccountNumber
    extend ::MxPlatformRuby::Pageable
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
      options = list_account_numbers_by_account_pagination_options(options)

      paginate(options)
    end

    def self.list_account_numbers_by_account_each(options = {}, &block)
      options = list_account_numbers_by_account_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_account_numbers_by_account_in_batches(options = {}, &block)
      options = list_account_numbers_by_account_pagination_options(options)

      paginate_in_batches(options, &block)
    end

    def self.list_account_numbers_by_member(options = {})
      options = list_account_numbers_by_member_pagination_options(options)

      paginate(options)
    end

    def self.list_account_numbers_by_member_each(options = {}, &block)
      options = list_account_numbers_by_member_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_account_numbers_by_member_in_batches(options = {}, &block)
      options = list_account_numbers_by_member_pagination_options(options)

      paginate_in_batches(options, &block)
    end

    # Private class methods

    def self.list_account_numbers_by_account_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/accounts/#{options[:account_guid]}/account_numbers",
        resource: 'account_numbers',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }
      }
    end
    private_class_method :list_account_numbers_by_account_pagination_options

    def self.list_account_numbers_by_member_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/account_numbers",
        resource: 'account_numbers',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }
      }
    end
    private_class_method :list_account_numbers_by_member_pagination_options
  end
end
