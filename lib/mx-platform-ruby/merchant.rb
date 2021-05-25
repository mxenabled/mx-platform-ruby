# frozen_string_literal: true

module MxPlatformRuby
  class Merchant
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :created_at
    attribute :guid
    attribute :logo_url
    attribute :name
    attribute :updated_at
    attribute :website_url

    def self.list_merchants_page(options = {})
      options = list_merchants_pagination_options(options)

      paginate(options)
    end

    def self.list_merchants_each(options = {}, &block)
      options = list_merchants_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_merchants_pages_each(options = {}, &block)
      options = list_merchants_pagination_options(options)
      paginate_pages(options, &block)
    end

    def self.read_merchant(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      endpoint = "/merchants/#{options[:merchant_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      merchant_params = response['merchant']
      ::MxPlatformRuby::Merchant.new(merchant_params)
    end

    # Private class methods

    def self.list_merchants_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: '/merchants',
        resource: 'merchants',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_merchants_pagination_options
  end
end
