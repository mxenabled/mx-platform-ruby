# frozen_string_literal: true

module MXPlatformRuby
  class Statement
    extend ::MXPlatformRuby::Pageable
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
      download_statement_pdf_options = download_statement_pdf_options(options)
      ::MXPlatformRuby.client.make_request(download_statement_pdf_options)
    end

    def self.list_statements_by_member_page(options = {})
      options = list_statements_by_member_options(options)

      paginate(options)
    end

    def self.list_statements_by_member_each(options = {}, &block)
      options = list_statements_by_member_options(options)

      paginate_each(options, &block)
    end

    def self.list_statements_by_member_pages_each(options = {}, &block)
      options = list_statements_by_member_options(options)

      paginate_pages(options, &block)
    end

    def self.read_statement_by_member(options = {})
      read_statement_by_member_options = read_statement_by_member_options(options)
      response = ::MXPlatformRuby.client.make_request(read_statement_by_member_options)

      statement_params = response['statement']
      ::MXPlatformRuby::Statement.new(statement_params)
    end

    # Private class methods

    def self.download_statement_pdf_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/statements/#{options[:statement_guid]}.pdf",
        headers: {
          'Accept': 'application/vnd.mx.api.v1+pdf'
        },
        http_method: :get
      }
    end
    private_class_method :download_statement_pdf_options

    def self.list_statements_by_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/statements",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'statements'
      }
    end
    private_class_method :list_statements_by_member_options

    def self.read_statement_by_member_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/statements/#{options[:statement_guid]}",
        http_method: :get
      }
    end
    private_class_method :read_statement_by_member_options
  end
end
