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

    def self.enhance_transactions(options = {})
      enhance_transactions_options = enhance_transactions_options(options)
      response = ::MXPlatformRuby.client.make_request(enhance_transactions_options)

      transactions_params = response['transactions']
      ::MXPlatformRuby::EnhancedTransaction.new(transactions_params)
    end

    # Private class methods

    def self.enhance_transactions_options(options)
      {
        endpoint: '/transactions/enhance',
        http_method: :post,
        request_body: {
          transactions: options[:transactions]
        }.compact
      }
    end
    private_class_method :enhance_transactions_options
  end
end
