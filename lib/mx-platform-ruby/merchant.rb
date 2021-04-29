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

    def self.list_merchants(options = {})
      options = list_merchants_pagination_options(options)

      paginate(options)
    end

    def self.list_merchants_each(options = {}, &block)
      options = list_merchants_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_merchants_in_batches(options = {}, &block)
      options = list_merchants_pagination_options(options)

      paginate_in_batches(options, &block)
    end

    def self.read_merchant(options = {})
      accept_header = { 'Accept' => 'application/vnd.mx.api.v1+json' }
      endpoint = "/merchants/#{options[:merchant_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, accept_header)

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
        }
      }
    end
    private_class_method :list_merchants_pagination_options
  end
end
