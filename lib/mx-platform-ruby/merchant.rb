# frozen_string_literal: true

module MXPlatformRuby
  class Merchant
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :created_at
    attribute :guid
    attribute :logo_url
    attribute :name
    attribute :updated_at
    attribute :website_url

    def self.list_merchants_page(options = {})
      options = list_merchants_options(options)

      paginate(options)
    end

    def self.list_merchants_each(options = {}, &block)
      options = list_merchants_options(options)

      paginate_each(options, &block)
    end

    def self.list_merchants_pages_each(options = {}, &block)
      options = list_merchants_options(options)

      paginate_pages(options, &block)
    end

    def self.read_merchant(options = {})
      read_merchant_options = read_merchant_options(options)
      response = ::MXPlatformRuby.client.make_request(read_merchant_options)

      merchant_params = response['merchant']
      ::MXPlatformRuby::Merchant.new(merchant_params)
    end

    # Private class methods

    def self.list_merchants_options(options)
      {
        endpoint: '/merchants',
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'merchants'
      }
    end
    private_class_method :list_merchants_options

    def self.read_merchant_options(options)
      {
        endpoint: "/merchants/#{options[:merchant_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_merchant_options
  end
end
