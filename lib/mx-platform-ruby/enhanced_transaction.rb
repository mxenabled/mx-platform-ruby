# frozen_string_literal: true

module MXPlatformRuby
  class EnhancedTransaction
    include ::ActiveAttr::Model

    attribute :amount
    attribute :category
    attribute :description
    attribute :id
    attribute :is_bill_pay
    attribute :is_direct_deposit
    attribute :is_expense
    attribute :is_fee
    attribute :is_income
    attribute :is_international
    attribute :is_overdraft_fee
    attribute :is_payroll_advance
    attribute :merchant_category_code
    attribute :merchant_guid
    attribute :original_description
    attribute :type

    def self.enhanced_transactions(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }

      body = enhanced_transactions_body(options)
      endpoint = '/transactions/enhance'
      response = ::MXPlatformRuby.client.make_request(:post, endpoint, body, headers)

      transactions_params = response['transactions']
      ::MXPlatformRuby::EnhancedTransaction.new(transactions_params)
    end

    # Private class methods

    def self.enhanced_transactions_body(options)
      {
        transactions: options[:transactions]
      }
    end
    private_class_method :enhanced_transactions_body
  end
end
