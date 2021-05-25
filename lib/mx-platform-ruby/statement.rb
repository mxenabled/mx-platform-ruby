# frozen_string_literal: true

module MxPlatformRuby
  class Statement
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :account_guid
    attribute :content_hash
    attribute :created_at
    attribute :guid
    attribute :member_guid
    attribute :updated_at
    attribute :uri
    attribute :user_guid

    def self.download_statement_pdf(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+pdf'
      }
      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/statements/#{options[:statement_guid]}.pdf"
      ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)
    end

    def self.list_statements_by_member_page(options = {})
      options = list_statements_by_member_pagination_options(options)

      paginate(options)
    end

    def self.list_statements_by_member_each(options = {}, &block)
      options = list_statements_by_member_pagination_options(options)

      paginate_each(options, &block)
    end

    def self.list_statements_by_member_pages_each(options = {}, &block)
      options = list_statements_by_member_pagination_options(options)
      paginate_pages(options, &block)
    end

    def self.read_statement_by_member(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/statements/#{options[:statement_guid]}"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      statement_params = response['statement']
      ::MxPlatformRuby::Statement.new(statement_params)
    end

    # Private class methods

    def self.list_statements_by_member_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/statements",
        resource: 'statements',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact
      }
    end
    private_class_method :list_statements_by_member_pagination_options
  end
end
