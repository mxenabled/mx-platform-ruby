# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::EnhanceTransaction do
  let(:enhance_transaction_attributes) do
    {
      'amount' => 21.33,
      'category' => 'Fast Food',
      'description' => 'IN-N-OUT BURGER',
      'id' => 'ID-123',
      'is_bill_pay' => false,
      'is_direct_deposit' => false,
      'is_expense' => false,
      'is_fee' => false,
      'is_income' => false,
      'is_international' => false,
      'is_overdraft_fee' => false,
      'is_payroll_advance' => false,
      'merchant_category_code' => 5411,
      'merchant_guid' => 'MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b',
      'original_description' => 'IN-N-OUT BURGER',
      'type' => 'DEBIT'
    }
  end
  let(:enhance_transactions_request_body_parameters) do
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
    let(:enhance_transactions_response) { { 'transactions' => enhance_transaction_attributes } }
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(enhance_transactions_response) }

    it 'returns enhance_transaction' do
      response = described_class.enhance_transactions

      expect(response).to be_kind_of(::MxPlatformRuby::EnhanceTransaction)
      expect(response.amount).to eq(enhance_transaction_attributes['amount'])
      expect(response.category).to eq(enhance_transaction_attributes['category'])
      expect(response.description).to eq(enhance_transaction_attributes['description'])
      expect(response.id).to eq(enhance_transaction_attributes['id'])
      expect(response.is_bill_pay).to eq(enhance_transaction_attributes['is_bill_pay'])
      expect(response.is_direct_deposit).to eq(enhance_transaction_attributes['is_direct_deposit'])
      expect(response.is_expense).to eq(enhance_transaction_attributes['is_expense'])
      expect(response.is_fee).to eq(enhance_transaction_attributes['is_fee'])
      expect(response.is_income).to eq(enhance_transaction_attributes['is_income'])
      expect(response.is_international).to eq(enhance_transaction_attributes['is_international'])
      expect(response.is_overdraft_fee).to eq(enhance_transaction_attributes['is_overdraft_fee'])
      expect(response.is_payroll_advance).to eq(enhance_transaction_attributes['is_payroll_advance'])
      expect(response.merchant_category_code).to eq(enhance_transaction_attributes['merchant_category_code'])
      expect(response.merchant_guid).to eq(enhance_transaction_attributes['merchant_guid'])
      expect(response.original_description).to eq(enhance_transaction_attributes['original_description'])
      expect(response.type).to eq(enhance_transaction_attributes['type'])
    end

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :post,
        '/transactions/enhance',
        enhance_transactions_request_body_parameters,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.enhance_transactions(
        enhance_transactions_request_body_parameters
      )
    end
  end
end
