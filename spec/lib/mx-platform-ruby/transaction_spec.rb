# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::Transaction do
  let(:transaction_attributes) do
    {
      'account_guid' => 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1',
      'amount' => 61.11,
      'category' => 'Groceries',
      'check_number_string' => '6812',
      'created_at' => '2016-10-06T09:43:42.000Z',
      'currency_code' => 'USD',
      'date' => '2013-09-23T00:00:00.000Z',
      'description' => 'Whole foods',
      'guid' => 'TRN-265abee9-889b-af6a-c69b-25157db2bdd9',
      'id' => 'transaction-265abee9-889b-af6a-c69b-25157db2bdd9',
      'is_bill_pay' => false,
      'is_direct_deposit' => false,
      'is_expense' => true,
      'is_fee' => false,
      'is_income' => false,
      'is_international' => false,
      'is_overdraft_fee' => false,
      'is_payroll_advance' => false,
      'latitude' => -43.2075,
      'localized_description' => 'This is a localized_description',
      'localized_memo' => 'This is a localized_memo',
      'longitude' => 139.691706,
      'member_guid' => 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      'memo' => 'This is a memo',
      'merchant_category_code' => 5411,
      'merchant_guid' => 'MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b',
      'original_description' => 'WHOLEFDS TSQ 102',
      'posted_at' => '2016-10-07T06:00:00.000Z',
      'status' => 'POSTED',
      'top_level_category' => 'Food & Dining',
      'transacted_at' => '2016-10-06T13:00:00.000Z',
      'type' => 'DEBIT',
      'updated_at' => '2016-10-07T05:49:12.000Z',
      'user_guid' => 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:transaction_response) { { 'transaction' => transaction_attributes } }
  let(:list_transactions_by_member_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_transactions_by_user_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_transaction_path_parameters) do
    {
      transaction_guid: 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:transactions_response) do
    {
      'transactions' => [transaction_attributes],
      'pagination' => pagination_attributes
    }
  end
  let(:pagination_attributes) do
    {
      'current_page' => 1,
      'per_page' => 25,
      'total_pages' => 1,
      'total_entries' => 1
    }
  end

  before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(transactions_response) }

  describe 'list_transactions_by_member' do
    it 'returns a list of transactions' do
      response = described_class.list_transactions_by_member

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Transaction)
      expect(response.first.account_guid).to eq(transaction_attributes['account_guid'])
      expect(response.first.amount).to eq(transaction_attributes['amount'])
      expect(response.first.category).to eq(transaction_attributes['category'])
      expect(response.first.check_number_string).to eq(transaction_attributes['check_number_string'])
      expect(response.first.created_at).to eq(transaction_attributes['created_at'])
      expect(response.first.currency_code).to eq(transaction_attributes['currency_code'])
      expect(response.first.date).to eq(transaction_attributes['date'])
      expect(response.first.description).to eq(transaction_attributes['description'])
      expect(response.first.guid).to eq(transaction_attributes['guid'])
      expect(response.first.id).to eq(transaction_attributes['id'])
      expect(response.first.is_bill_pay).to eq(transaction_attributes['is_bill_pay'])
      expect(response.first.is_direct_deposit).to eq(transaction_attributes['is_direct_deposit'])
      expect(response.first.is_expense).to eq(transaction_attributes['is_expense'])
      expect(response.first.is_fee).to eq(transaction_attributes['is_fee'])
      expect(response.first.is_income).to eq(transaction_attributes['is_income'])
      expect(response.first.is_international).to eq(transaction_attributes['is_international'])
      expect(response.first.is_overdraft_fee).to eq(transaction_attributes['is_overdraft_fee'])
      expect(response.first.is_payroll_advance).to eq(transaction_attributes['is_payroll_advance'])
      expect(response.first.latitude).to eq(transaction_attributes['latitude'])
      expect(response.first.localized_description).to eq(transaction_attributes['localized_description'])
      expect(response.first.localized_memo).to eq(transaction_attributes['localized_memo'])
      expect(response.first.longitude).to eq(transaction_attributes['longitude'])
      expect(response.first.member_guid).to eq(transaction_attributes['member_guid'])
      expect(response.first.memo).to eq(transaction_attributes['memo'])
      expect(response.first.merchant_category_code).to eq(transaction_attributes['merchant_category_code'])
      expect(response.first.merchant_guid).to eq(transaction_attributes['merchant_guid'])
      expect(response.first.original_description).to eq(transaction_attributes['original_description'])
      expect(response.first.posted_at).to eq(transaction_attributes['posted_at'])
      expect(response.first.status).to eq(transaction_attributes['status'])
      expect(response.first.top_level_category).to eq(transaction_attributes['top_level_category'])
      expect(response.first.transacted_at).to eq(transaction_attributes['transacted_at'])
      expect(response.first.type).to eq(transaction_attributes['type'])
      expect(response.first.updated_at).to eq(transaction_attributes['updated_at'])
      expect(response.first.user_guid).to eq(transaction_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end

  describe 'list_transactions_by_member_each' do
    it 'yields a transaction' do
      response = nil

      described_class.list_transactions_by_member_each do |transaction|
        response = transaction
      end

      expect(response).to be_kind_of(::MxPlatformRuby::Transaction)
      expect(response.account_guid).to eq(transaction_attributes['account_guid'])
      expect(response.amount).to eq(transaction_attributes['amount'])
      expect(response.category).to eq(transaction_attributes['category'])
      expect(response.check_number_string).to eq(transaction_attributes['check_number_string'])
      expect(response.created_at).to eq(transaction_attributes['created_at'])
      expect(response.currency_code).to eq(transaction_attributes['currency_code'])
      expect(response.date).to eq(transaction_attributes['date'])
      expect(response.description).to eq(transaction_attributes['description'])
      expect(response.guid).to eq(transaction_attributes['guid'])
      expect(response.id).to eq(transaction_attributes['id'])
      expect(response.is_bill_pay).to eq(transaction_attributes['is_bill_pay'])
      expect(response.is_direct_deposit).to eq(transaction_attributes['is_direct_deposit'])
      expect(response.is_expense).to eq(transaction_attributes['is_expense'])
      expect(response.is_fee).to eq(transaction_attributes['is_fee'])
      expect(response.is_income).to eq(transaction_attributes['is_income'])
      expect(response.is_international).to eq(transaction_attributes['is_international'])
      expect(response.is_overdraft_fee).to eq(transaction_attributes['is_overdraft_fee'])
      expect(response.is_payroll_advance).to eq(transaction_attributes['is_payroll_advance'])
      expect(response.latitude).to eq(transaction_attributes['latitude'])
      expect(response.localized_description).to eq(transaction_attributes['localized_description'])
      expect(response.localized_memo).to eq(transaction_attributes['localized_memo'])
      expect(response.longitude).to eq(transaction_attributes['longitude'])
      expect(response.member_guid).to eq(transaction_attributes['member_guid'])
      expect(response.memo).to eq(transaction_attributes['memo'])
      expect(response.merchant_category_code).to eq(transaction_attributes['merchant_category_code'])
      expect(response.merchant_guid).to eq(transaction_attributes['merchant_guid'])
      expect(response.original_description).to eq(transaction_attributes['original_description'])
      expect(response.posted_at).to eq(transaction_attributes['posted_at'])
      expect(response.status).to eq(transaction_attributes['status'])
      expect(response.top_level_category).to eq(transaction_attributes['top_level_category'])
      expect(response.transacted_at).to eq(transaction_attributes['transacted_at'])
      expect(response.type).to eq(transaction_attributes['type'])
      expect(response.updated_at).to eq(transaction_attributes['updated_at'])
      expect(response.user_guid).to eq(transaction_attributes['user_guid'])
    end
  end

  describe 'list_transactions_by_member_in_batches' do
    it 'yields a batch of transactions' do
      response = nil

      described_class.list_transactions_by_member_in_batches do |batch|
        response = batch
      end

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Transaction)
      expect(response.first.account_guid).to eq(transaction_attributes['account_guid'])
      expect(response.first.amount).to eq(transaction_attributes['amount'])
      expect(response.first.category).to eq(transaction_attributes['category'])
      expect(response.first.check_number_string).to eq(transaction_attributes['check_number_string'])
      expect(response.first.created_at).to eq(transaction_attributes['created_at'])
      expect(response.first.currency_code).to eq(transaction_attributes['currency_code'])
      expect(response.first.date).to eq(transaction_attributes['date'])
      expect(response.first.description).to eq(transaction_attributes['description'])
      expect(response.first.guid).to eq(transaction_attributes['guid'])
      expect(response.first.id).to eq(transaction_attributes['id'])
      expect(response.first.is_bill_pay).to eq(transaction_attributes['is_bill_pay'])
      expect(response.first.is_direct_deposit).to eq(transaction_attributes['is_direct_deposit'])
      expect(response.first.is_expense).to eq(transaction_attributes['is_expense'])
      expect(response.first.is_fee).to eq(transaction_attributes['is_fee'])
      expect(response.first.is_income).to eq(transaction_attributes['is_income'])
      expect(response.first.is_international).to eq(transaction_attributes['is_international'])
      expect(response.first.is_overdraft_fee).to eq(transaction_attributes['is_overdraft_fee'])
      expect(response.first.is_payroll_advance).to eq(transaction_attributes['is_payroll_advance'])
      expect(response.first.latitude).to eq(transaction_attributes['latitude'])
      expect(response.first.localized_description).to eq(transaction_attributes['localized_description'])
      expect(response.first.localized_memo).to eq(transaction_attributes['localized_memo'])
      expect(response.first.longitude).to eq(transaction_attributes['longitude'])
      expect(response.first.member_guid).to eq(transaction_attributes['member_guid'])
      expect(response.first.memo).to eq(transaction_attributes['memo'])
      expect(response.first.merchant_category_code).to eq(transaction_attributes['merchant_category_code'])
      expect(response.first.merchant_guid).to eq(transaction_attributes['merchant_guid'])
      expect(response.first.original_description).to eq(transaction_attributes['original_description'])
      expect(response.first.posted_at).to eq(transaction_attributes['posted_at'])
      expect(response.first.status).to eq(transaction_attributes['status'])
      expect(response.first.top_level_category).to eq(transaction_attributes['top_level_category'])
      expect(response.first.transacted_at).to eq(transaction_attributes['transacted_at'])
      expect(response.first.type).to eq(transaction_attributes['type'])
      expect(response.first.updated_at).to eq(transaction_attributes['updated_at'])
      expect(response.first.user_guid).to eq(transaction_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end

  describe 'list_transactions_by_user' do
    it 'returns a list of transactions' do
      response = described_class.list_transactions_by_user

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Transaction)
      expect(response.first.account_guid).to eq(transaction_attributes['account_guid'])
      expect(response.first.amount).to eq(transaction_attributes['amount'])
      expect(response.first.category).to eq(transaction_attributes['category'])
      expect(response.first.check_number_string).to eq(transaction_attributes['check_number_string'])
      expect(response.first.created_at).to eq(transaction_attributes['created_at'])
      expect(response.first.currency_code).to eq(transaction_attributes['currency_code'])
      expect(response.first.date).to eq(transaction_attributes['date'])
      expect(response.first.description).to eq(transaction_attributes['description'])
      expect(response.first.guid).to eq(transaction_attributes['guid'])
      expect(response.first.id).to eq(transaction_attributes['id'])
      expect(response.first.is_bill_pay).to eq(transaction_attributes['is_bill_pay'])
      expect(response.first.is_direct_deposit).to eq(transaction_attributes['is_direct_deposit'])
      expect(response.first.is_expense).to eq(transaction_attributes['is_expense'])
      expect(response.first.is_fee).to eq(transaction_attributes['is_fee'])
      expect(response.first.is_income).to eq(transaction_attributes['is_income'])
      expect(response.first.is_international).to eq(transaction_attributes['is_international'])
      expect(response.first.is_overdraft_fee).to eq(transaction_attributes['is_overdraft_fee'])
      expect(response.first.is_payroll_advance).to eq(transaction_attributes['is_payroll_advance'])
      expect(response.first.latitude).to eq(transaction_attributes['latitude'])
      expect(response.first.localized_description).to eq(transaction_attributes['localized_description'])
      expect(response.first.localized_memo).to eq(transaction_attributes['localized_memo'])
      expect(response.first.longitude).to eq(transaction_attributes['longitude'])
      expect(response.first.member_guid).to eq(transaction_attributes['member_guid'])
      expect(response.first.memo).to eq(transaction_attributes['memo'])
      expect(response.first.merchant_category_code).to eq(transaction_attributes['merchant_category_code'])
      expect(response.first.merchant_guid).to eq(transaction_attributes['merchant_guid'])
      expect(response.first.original_description).to eq(transaction_attributes['original_description'])
      expect(response.first.posted_at).to eq(transaction_attributes['posted_at'])
      expect(response.first.status).to eq(transaction_attributes['status'])
      expect(response.first.top_level_category).to eq(transaction_attributes['top_level_category'])
      expect(response.first.transacted_at).to eq(transaction_attributes['transacted_at'])
      expect(response.first.type).to eq(transaction_attributes['type'])
      expect(response.first.updated_at).to eq(transaction_attributes['updated_at'])
      expect(response.first.user_guid).to eq(transaction_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end

  describe 'list_transactions_by_user_each' do
    it 'yields a transaction' do
      response = nil

      described_class.list_transactions_by_user_each do |transaction|
        response = transaction
      end

      expect(response).to be_kind_of(::MxPlatformRuby::Transaction)
      expect(response.account_guid).to eq(transaction_attributes['account_guid'])
      expect(response.amount).to eq(transaction_attributes['amount'])
      expect(response.category).to eq(transaction_attributes['category'])
      expect(response.check_number_string).to eq(transaction_attributes['check_number_string'])
      expect(response.created_at).to eq(transaction_attributes['created_at'])
      expect(response.currency_code).to eq(transaction_attributes['currency_code'])
      expect(response.date).to eq(transaction_attributes['date'])
      expect(response.description).to eq(transaction_attributes['description'])
      expect(response.guid).to eq(transaction_attributes['guid'])
      expect(response.id).to eq(transaction_attributes['id'])
      expect(response.is_bill_pay).to eq(transaction_attributes['is_bill_pay'])
      expect(response.is_direct_deposit).to eq(transaction_attributes['is_direct_deposit'])
      expect(response.is_expense).to eq(transaction_attributes['is_expense'])
      expect(response.is_fee).to eq(transaction_attributes['is_fee'])
      expect(response.is_income).to eq(transaction_attributes['is_income'])
      expect(response.is_international).to eq(transaction_attributes['is_international'])
      expect(response.is_overdraft_fee).to eq(transaction_attributes['is_overdraft_fee'])
      expect(response.is_payroll_advance).to eq(transaction_attributes['is_payroll_advance'])
      expect(response.latitude).to eq(transaction_attributes['latitude'])
      expect(response.localized_description).to eq(transaction_attributes['localized_description'])
      expect(response.localized_memo).to eq(transaction_attributes['localized_memo'])
      expect(response.longitude).to eq(transaction_attributes['longitude'])
      expect(response.member_guid).to eq(transaction_attributes['member_guid'])
      expect(response.memo).to eq(transaction_attributes['memo'])
      expect(response.merchant_category_code).to eq(transaction_attributes['merchant_category_code'])
      expect(response.merchant_guid).to eq(transaction_attributes['merchant_guid'])
      expect(response.original_description).to eq(transaction_attributes['original_description'])
      expect(response.posted_at).to eq(transaction_attributes['posted_at'])
      expect(response.status).to eq(transaction_attributes['status'])
      expect(response.top_level_category).to eq(transaction_attributes['top_level_category'])
      expect(response.transacted_at).to eq(transaction_attributes['transacted_at'])
      expect(response.type).to eq(transaction_attributes['type'])
      expect(response.updated_at).to eq(transaction_attributes['updated_at'])
      expect(response.user_guid).to eq(transaction_attributes['user_guid'])
    end
  end

  describe 'list_transactions_by_user_in_batches' do
    it 'yields a batch of transactions' do
      response = nil

      described_class.list_transactions_by_user_in_batches do |batch|
        response = batch
      end

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Transaction)
      expect(response.first.account_guid).to eq(transaction_attributes['account_guid'])
      expect(response.first.amount).to eq(transaction_attributes['amount'])
      expect(response.first.category).to eq(transaction_attributes['category'])
      expect(response.first.check_number_string).to eq(transaction_attributes['check_number_string'])
      expect(response.first.created_at).to eq(transaction_attributes['created_at'])
      expect(response.first.currency_code).to eq(transaction_attributes['currency_code'])
      expect(response.first.date).to eq(transaction_attributes['date'])
      expect(response.first.description).to eq(transaction_attributes['description'])
      expect(response.first.guid).to eq(transaction_attributes['guid'])
      expect(response.first.id).to eq(transaction_attributes['id'])
      expect(response.first.is_bill_pay).to eq(transaction_attributes['is_bill_pay'])
      expect(response.first.is_direct_deposit).to eq(transaction_attributes['is_direct_deposit'])
      expect(response.first.is_expense).to eq(transaction_attributes['is_expense'])
      expect(response.first.is_fee).to eq(transaction_attributes['is_fee'])
      expect(response.first.is_income).to eq(transaction_attributes['is_income'])
      expect(response.first.is_international).to eq(transaction_attributes['is_international'])
      expect(response.first.is_overdraft_fee).to eq(transaction_attributes['is_overdraft_fee'])
      expect(response.first.is_payroll_advance).to eq(transaction_attributes['is_payroll_advance'])
      expect(response.first.latitude).to eq(transaction_attributes['latitude'])
      expect(response.first.localized_description).to eq(transaction_attributes['localized_description'])
      expect(response.first.localized_memo).to eq(transaction_attributes['localized_memo'])
      expect(response.first.longitude).to eq(transaction_attributes['longitude'])
      expect(response.first.member_guid).to eq(transaction_attributes['member_guid'])
      expect(response.first.memo).to eq(transaction_attributes['memo'])
      expect(response.first.merchant_category_code).to eq(transaction_attributes['merchant_category_code'])
      expect(response.first.merchant_guid).to eq(transaction_attributes['merchant_guid'])
      expect(response.first.original_description).to eq(transaction_attributes['original_description'])
      expect(response.first.posted_at).to eq(transaction_attributes['posted_at'])
      expect(response.first.status).to eq(transaction_attributes['status'])
      expect(response.first.top_level_category).to eq(transaction_attributes['top_level_category'])
      expect(response.first.transacted_at).to eq(transaction_attributes['transacted_at'])
      expect(response.first.type).to eq(transaction_attributes['type'])
      expect(response.first.updated_at).to eq(transaction_attributes['updated_at'])
      expect(response.first.user_guid).to eq(transaction_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end

  describe 'read_transaction' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(transaction_response) }

    it 'returns transaction' do
      response = described_class.read_transaction

      expect(response).to be_kind_of(::MxPlatformRuby::Transaction)
      expect(response.account_guid).to eq(transaction_attributes['account_guid'])
      expect(response.amount).to eq(transaction_attributes['amount'])
      expect(response.category).to eq(transaction_attributes['category'])
      expect(response.check_number_string).to eq(transaction_attributes['check_number_string'])
      expect(response.created_at).to eq(transaction_attributes['created_at'])
      expect(response.currency_code).to eq(transaction_attributes['currency_code'])
      expect(response.date).to eq(transaction_attributes['date'])
      expect(response.description).to eq(transaction_attributes['description'])
      expect(response.guid).to eq(transaction_attributes['guid'])
      expect(response.id).to eq(transaction_attributes['id'])
      expect(response.is_bill_pay).to eq(transaction_attributes['is_bill_pay'])
      expect(response.is_direct_deposit).to eq(transaction_attributes['is_direct_deposit'])
      expect(response.is_expense).to eq(transaction_attributes['is_expense'])
      expect(response.is_fee).to eq(transaction_attributes['is_fee'])
      expect(response.is_income).to eq(transaction_attributes['is_income'])
      expect(response.is_international).to eq(transaction_attributes['is_international'])
      expect(response.is_overdraft_fee).to eq(transaction_attributes['is_overdraft_fee'])
      expect(response.is_payroll_advance).to eq(transaction_attributes['is_payroll_advance'])
      expect(response.latitude).to eq(transaction_attributes['latitude'])
      expect(response.localized_description).to eq(transaction_attributes['localized_description'])
      expect(response.localized_memo).to eq(transaction_attributes['localized_memo'])
      expect(response.longitude).to eq(transaction_attributes['longitude'])
      expect(response.member_guid).to eq(transaction_attributes['member_guid'])
      expect(response.memo).to eq(transaction_attributes['memo'])
      expect(response.merchant_category_code).to eq(transaction_attributes['merchant_category_code'])
      expect(response.merchant_guid).to eq(transaction_attributes['merchant_guid'])
      expect(response.original_description).to eq(transaction_attributes['original_description'])
      expect(response.posted_at).to eq(transaction_attributes['posted_at'])
      expect(response.status).to eq(transaction_attributes['status'])
      expect(response.top_level_category).to eq(transaction_attributes['top_level_category'])
      expect(response.transacted_at).to eq(transaction_attributes['transacted_at'])
      expect(response.type).to eq(transaction_attributes['type'])
      expect(response.updated_at).to eq(transaction_attributes['updated_at'])
      expect(response.user_guid).to eq(transaction_attributes['user_guid'])
    end
  end
end
