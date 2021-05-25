# frozen_string_literal: true

module MxPlatformRuby
  class Credential
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :display_order
    attribute :field_name
    attribute :field_type
    attribute :guid
    attribute :label

    def self.list_institution_required_credentials_page(options = {})
      options = list_institution_required_credentials_pagination_options(options)

      paginate(options)
    end

    def self.list_institution_required_credentials_each(options = {}, &block)
      options = list_institution_required_credentials_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_institution_required_credentials_pages_each(options = {}, &block)
      options = list_institution_required_credentials_pagination_options(options)
      paginate_pages(options, &block)
    end

    def self.list_member_credentials_page(options = {})
      options = list_member_credentials_pagination_options(options)

      paginate(options)
    end

    def self.list_member_credentials_each(options = {}, &block)
      options = list_member_credentials_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_member_credentials_pages_each(options = {}, &block)
      options = list_member_credentials_pagination_options(options)
      paginate_pages(options, &block)
    end

    # Private class methods

    def self.list_institution_required_credentials_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/institutions/#{options[:institution_code]}/credentials",
        resource: 'credentials',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_institution_required_credentials_pagination_options

    def self.list_member_credentials_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/credentials",
        resource: 'credentials',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_member_credentials_pagination_options
  end
end
