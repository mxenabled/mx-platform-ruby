# frozen_string_literal: true

module MXPlatformRuby
  class Credential
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :display_order
    attribute :field_name
    attribute :field_type
    attribute :guid
    attribute :label

    def self.list_institution_required_credentials(options = {})
      options = list_institution_required_credentials_options(options)

      paginate(options)
    end

    def self.list_member_credentials(options = {})
      options = list_member_credentials_options(options)

      paginate(options)
    end

    # Private class methods

    def self.list_institution_required_credentials_options(options)
      {
        endpoint: "/institutions/#{options[:institution_code]}/credentials",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'credentials'
      }
    end
    private_class_method :list_institution_required_credentials_options

    def self.list_member_credentials_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/credentials",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'credentials'
      }
    end
    private_class_method :list_member_credentials_options
  end
end
