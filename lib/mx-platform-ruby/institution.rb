# frozen_string_literal: true

module MxPlatformRuby
  class Institution
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :code
    attribute :medium_logo_url
    attribute :name
    attribute :small_logo_url
    attribute :supports_account_identification
    attribute :supports_account_statement
    attribute :supports_account_verification
    attribute :supports_oauth
    attribute :supports_transaction_history
    attribute :url

    def self.list_favorites_page(options = {})
      options = list_favorites_pagination_options(options)

      paginate(options)
    end

    def self.list_favorites_each(options = {}, &block)
      options = list_favorites_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_favorites_pages_each(options = {}, &block)
      options = list_favorites_pagination_options(options)
      paginate_pages(options, &block)
    end

    def self.list_institutions_page(options = {})
      options = list_institutions_pagination_options(options)

      paginate(options)
    end

    def self.list_institutions_each(options = {}, &block)
      options = list_institutions_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_institutions_pages_each(options = {}, &block)
      options = list_institutions_pagination_options(options)
      paginate_pages(options, &block)
    end

    def self.read_institution(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      endpoint = "/institutions/#{options[:institution_code]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      institution_params = response['institution']
      ::MxPlatformRuby::Institution.new(institution_params)
    end

    # Private class methods

    def self.list_favorites_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: '/institutions/favorites',
        resource: 'institutions',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_favorites_pagination_options

    def self.list_institutions_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: '/institutions',
        resource: 'institutions',
        query_params: {
          name: options[:name],
          supports_account_identification: options[:supports_account_identification],
          supports_account_statement: options[:supports_account_statement],
          supports_account_verification: options[:supports_account_verification],
          supports_transaction_history: options[:supports_transaction_history]
        }.compact
      }
    end
    private_class_method :list_institutions_pagination_options
  end
end
