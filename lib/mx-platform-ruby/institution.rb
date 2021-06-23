# frozen_string_literal: true

module MXPlatformRuby
  class Institution
    extend ::MXPlatformRuby::Pageable
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
      options = list_favorites_options(options)

      paginate(options)
    end

    def self.list_favorites_each(options = {}, &block)
      options = list_favorites_options(options)

      paginate_each(options, &block)
    end

    def self.list_favorites_pages_each(options = {}, &block)
      options = list_favorites_options(options)

      paginate_pages(options, &block)
    end

    def self.list_institutions_page(options = {})
      options = list_institutions_options(options)

      paginate(options)
    end

    def self.list_institutions_each(options = {}, &block)
      options = list_institutions_options(options)

      paginate_each(options, &block)
    end

    def self.list_institutions_pages_each(options = {}, &block)
      options = list_institutions_options(options)

      paginate_pages(options, &block)
    end

    def self.read_institution(options = {})
      read_institution_options = read_institution_options(options)
      response = ::MXPlatformRuby.client.make_request(read_institution_options)

      institution_params = response['institution']
      ::MXPlatformRuby::Institution.new(institution_params)
    end

    # Private class methods

    def self.list_favorites_options(options)
      {
        endpoint: '/institutions/favorites',
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'institutions'
      }
    end
    private_class_method :list_favorites_options

    def self.list_institutions_options(options)
      {
        endpoint: '/institutions',
        http_method: :get,
        query_params: {
          name: options[:name],
          supports_account_identification: options[:supports_account_identification],
          supports_account_statement: options[:supports_account_statement],
          supports_account_verification: options[:supports_account_verification],
          supports_transaction_history: options[:supports_transaction_history]
        }.compact,
        resource: 'institutions'
      }
    end
    private_class_method :list_institutions_options

    def self.read_institution_options(options)
      {
        endpoint: "/institutions/#{options[:institution_code]}",
        http_method: :get
      }
    end
    private_class_method :read_institution_options
  end
end
