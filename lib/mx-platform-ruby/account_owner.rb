# frozen_string_literal: true

module MXPlatformRuby
  class AccountOwner
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :account_guid
    attribute :address
    attribute :city
    attribute :country
    attribute :email
    attribute :guid
    attribute :member_guid
    attribute :owner_name
    attribute :phone
    attribute :postal_code
    attribute :state
    attribute :user_guid

    def self.list_account_owners_page(options = {})
      options = list_account_owners_options(options)

      paginate(options)
    end

    def self.list_account_owners_each(options = {}, &block)
      options = list_account_owners_options(options)

      paginate_each(options, &block)
    end

    def self.list_account_owners_pages_each(options = {}, &block)
      options = list_account_owners_options(options)

      paginate_pages(options, &block)
    end

    # Private class methods

    def self.list_account_owners_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/account_owners",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'account_owners'
      }
    end
    private_class_method :list_account_owners_options
  end
end
