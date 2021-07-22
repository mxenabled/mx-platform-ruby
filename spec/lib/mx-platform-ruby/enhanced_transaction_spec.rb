# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::EnhancedTransaction do
  let(:enhanced_transaction_attributes) do
    {
      amount: 21.33,
      category: 'Fast Food',
      description: 'IN-N-OUT BURGER',
      id: 'ID-123',
      is_bill_pay: false,
      is_direct_deposit: false,
      is_expense: false,
      is_fee: false,
      is_income: false,
      is_international: false,
      is_overdraft_fee: false,
      is_payroll_advance: false,
      merchant_category_code: 5411,
      merchant_guid: 'MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b',
      original_description: 'IN-N-OUT BURGER',
      type: 'DEBIT'
    }
  end
  let(:enhance_transactions_options) do
    {
      transactions: [
        {
          amount: 21.33,
          description: 'IN-N-OUT BURGER',
          id: 'ID-123',
          merchant_category_code: 123,
          type: 'DEBIT'
        }
      ]
    }
  end

  describe 'enhance_transactions' do
    let(:enhance_transactions_response) { { 'transactions' => [enhanced_transaction_attributes] } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(enhance_transactions_response) }

    it 'returns an array of enhanced_transactions' do
      response = described_class.enhance_transactions

      expect(response).to be_kind_of(::Array)
      expect(response.first).to be_kind_of(::MXPlatformRuby::EnhancedTransaction)
      expect(response.first.amount).to eq(enhanced_transaction_attributes[:amount])
      expect(response.first.category).to eq(enhanced_transaction_attributes[:category])
      expect(response.first.description).to eq(enhanced_transaction_attributes[:description])
      expect(response.first.id).to eq(enhanced_transaction_attributes[:id])
      expect(response.first.is_bill_pay).to eq(enhanced_transaction_attributes[:is_bill_pay])
      expect(response.first.is_direct_deposit).to eq(enhanced_transaction_attributes[:is_direct_deposit])
      expect(response.first.is_expense).to eq(enhanced_transaction_attributes[:is_expense])
      expect(response.first.is_fee).to eq(enhanced_transaction_attributes[:is_fee])
      expect(response.first.is_income).to eq(enhanced_transaction_attributes[:is_income])
      expect(response.first.is_international).to eq(enhanced_transaction_attributes[:is_international])
      expect(response.first.is_overdraft_fee).to eq(enhanced_transaction_attributes[:is_overdraft_fee])
      expect(response.first.is_payroll_advance).to eq(enhanced_transaction_attributes[:is_payroll_advance])
      expect(response.first.merchant_category_code).to eq(enhanced_transaction_attributes[:merchant_category_code])
      expect(response.first.merchant_guid).to eq(enhanced_transaction_attributes[:merchant_guid])
      expect(response.first.original_description).to eq(enhanced_transaction_attributes[:original_description])
      expect(response.first.type).to eq(enhanced_transaction_attributes[:type])
      expect(response.length).to eq(1)
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/transactions/enhance',
          http_method: :post,
          request_body: {
            transactions: [
              {
                amount: 21.33,
                description: 'IN-N-OUT BURGER',
                id: 'ID-123',
                merchant_category_code: 123,
                type: 'DEBIT'
              }
            ]
          }
        }
      )
      described_class.enhance_transactions(enhance_transactions_options)
    end
  end
end
