# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::Account do
  let(:account_attributes) do
    {
      'account_number' => '5366',
      'apr' => 1.0,
      'apy' => 1.0,
      'available_balance' => 1000.0,
      'available_credit' => 1000.0,
      'balance' => 1000.0,
      'cash_balance' => 1000.0,
      'cash_surrender_value' => 1000.0,
      'created_at' => '2016-10-13T17:57:37.000Z',
      'credit_limit' => 100.0,
      'currency_code' => 'USD',
      'day_payment_is_due' => 20,
      'death_benefit' => 1000,
      'guid' => 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1',
      'holdings_value' => 1000.0,
      'id' => '1040434698',
      'institution_code' => 'chase',
      'insured_name' => 'Frodo Baggins',
      'interest_rate' => 1.0,
      'is_closed' => false,
      'is_hidden' => false,
      'last_payment' => 100.0,
      'last_payment_at' => '2015-10-13T17:57:37.000Z',
      'loan_amount' => 1000.0,
      'matures_on' => '2015-10-13T17:57:37.000Z',
      'member_guid' => 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      'minimum_balance' => 100.0,
      'minimum_payment' => 10.0,
      'name' => 'Test account 2',
      'original_balance' => 10.0,
      'pay_out_amount' => 10.0,
      'payment_due_at' => '2015-10-13T17:57:37.000Z',
      'payoff_balance' => 10.0,
      'premium_amount' => 1.0,
      'started_on' => '2015-10-13T17:57:37.000Z',
      'subtype' => 'NONE',
      'total_account_value' => 1.0,
      'type' => 'SAVINGS',
      'updated_at' => '2016-10-13T18:08:00.000Z',
      'user_guid' => 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:account_response) { { 'account' => account_attributes } }
  let(:list_user_accounts_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_account_path_parameters) do
    {
      account_guid: 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_account_request_body_parameters) do
    {
      is_hidden: false
    }
  end
  let(:update_account_request_body) do
    {
      account:
      {
        is_hidden: false
      }
    }
  end
  let(:update_account_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54',
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      account_guid: 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1'
    }
  end
  let(:accounts_response) do
    {
      'accounts' => [account_attributes],
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

  before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(accounts_response) }

  describe 'list_user_accounts_page' do
    it 'returns a list of accounts' do
      response = described_class.list_user_accounts_page

      expect(response).to be_kind_of(::MxPlatformRuby::Page)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Account)
      expect(response.first.account_number).to eq(account_attributes['account_number'])
      expect(response.first.apr).to eq(account_attributes['apr'])
      expect(response.first.apy).to eq(account_attributes['apy'])
      expect(response.first.available_balance).to eq(account_attributes['available_balance'])
      expect(response.first.available_credit).to eq(account_attributes['available_credit'])
      expect(response.first.balance).to eq(account_attributes['balance'])
      expect(response.first.cash_balance).to eq(account_attributes['cash_balance'])
      expect(response.first.cash_surrender_value).to eq(account_attributes['cash_surrender_value'])
      expect(response.first.created_at).to eq(account_attributes['created_at'])
      expect(response.first.credit_limit).to eq(account_attributes['credit_limit'])
      expect(response.first.currency_code).to eq(account_attributes['currency_code'])
      expect(response.first.day_payment_is_due).to eq(account_attributes['day_payment_is_due'])
      expect(response.first.death_benefit).to eq(account_attributes['death_benefit'])
      expect(response.first.guid).to eq(account_attributes['guid'])
      expect(response.first.holdings_value).to eq(account_attributes['holdings_value'])
      expect(response.first.id).to eq(account_attributes['id'])
      expect(response.first.institution_code).to eq(account_attributes['institution_code'])
      expect(response.first.insured_name).to eq(account_attributes['insured_name'])
      expect(response.first.interest_rate).to eq(account_attributes['interest_rate'])
      expect(response.first.is_closed).to eq(account_attributes['is_closed'])
      expect(response.first.is_hidden).to eq(account_attributes['is_hidden'])
      expect(response.first.last_payment).to eq(account_attributes['last_payment'])
      expect(response.first.last_payment_at).to eq(account_attributes['last_payment_at'])
      expect(response.first.loan_amount).to eq(account_attributes['loan_amount'])
      expect(response.first.matures_on).to eq(account_attributes['matures_on'])
      expect(response.first.member_guid).to eq(account_attributes['member_guid'])
      expect(response.first.minimum_balance).to eq(account_attributes['minimum_balance'])
      expect(response.first.minimum_payment).to eq(account_attributes['minimum_payment'])
      expect(response.first.name).to eq(account_attributes['name'])
      expect(response.first.original_balance).to eq(account_attributes['original_balance'])
      expect(response.first.pay_out_amount).to eq(account_attributes['pay_out_amount'])
      expect(response.first.payment_due_at).to eq(account_attributes['payment_due_at'])
      expect(response.first.payoff_balance).to eq(account_attributes['payoff_balance'])
      expect(response.first.premium_amount).to eq(account_attributes['premium_amount'])
      expect(response.first.started_on).to eq(account_attributes['started_on'])
      expect(response.first.subtype).to eq(account_attributes['subtype'])
      expect(response.first.total_account_value).to eq(account_attributes['total_account_value'])
      expect(response.first.type).to eq(account_attributes['type'])
      expect(response.first.updated_at).to eq(account_attributes['updated_at'])
      expect(response.first.user_guid).to eq(account_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end

  describe 'list_user_accounts_each' do
    it 'yields a account' do
      response = nil

      described_class.list_user_accounts_each do |account|
        response = account
      end

      expect(response).to be_kind_of(::MxPlatformRuby::Account)
      expect(response.account_number).to eq(account_attributes['account_number'])
      expect(response.apr).to eq(account_attributes['apr'])
      expect(response.apy).to eq(account_attributes['apy'])
      expect(response.available_balance).to eq(account_attributes['available_balance'])
      expect(response.available_credit).to eq(account_attributes['available_credit'])
      expect(response.balance).to eq(account_attributes['balance'])
      expect(response.cash_balance).to eq(account_attributes['cash_balance'])
      expect(response.cash_surrender_value).to eq(account_attributes['cash_surrender_value'])
      expect(response.created_at).to eq(account_attributes['created_at'])
      expect(response.credit_limit).to eq(account_attributes['credit_limit'])
      expect(response.currency_code).to eq(account_attributes['currency_code'])
      expect(response.day_payment_is_due).to eq(account_attributes['day_payment_is_due'])
      expect(response.death_benefit).to eq(account_attributes['death_benefit'])
      expect(response.guid).to eq(account_attributes['guid'])
      expect(response.holdings_value).to eq(account_attributes['holdings_value'])
      expect(response.id).to eq(account_attributes['id'])
      expect(response.institution_code).to eq(account_attributes['institution_code'])
      expect(response.insured_name).to eq(account_attributes['insured_name'])
      expect(response.interest_rate).to eq(account_attributes['interest_rate'])
      expect(response.is_closed).to eq(account_attributes['is_closed'])
      expect(response.is_hidden).to eq(account_attributes['is_hidden'])
      expect(response.last_payment).to eq(account_attributes['last_payment'])
      expect(response.last_payment_at).to eq(account_attributes['last_payment_at'])
      expect(response.loan_amount).to eq(account_attributes['loan_amount'])
      expect(response.matures_on).to eq(account_attributes['matures_on'])
      expect(response.member_guid).to eq(account_attributes['member_guid'])
      expect(response.minimum_balance).to eq(account_attributes['minimum_balance'])
      expect(response.minimum_payment).to eq(account_attributes['minimum_payment'])
      expect(response.name).to eq(account_attributes['name'])
      expect(response.original_balance).to eq(account_attributes['original_balance'])
      expect(response.pay_out_amount).to eq(account_attributes['pay_out_amount'])
      expect(response.payment_due_at).to eq(account_attributes['payment_due_at'])
      expect(response.payoff_balance).to eq(account_attributes['payoff_balance'])
      expect(response.premium_amount).to eq(account_attributes['premium_amount'])
      expect(response.started_on).to eq(account_attributes['started_on'])
      expect(response.subtype).to eq(account_attributes['subtype'])
      expect(response.total_account_value).to eq(account_attributes['total_account_value'])
      expect(response.type).to eq(account_attributes['type'])
      expect(response.updated_at).to eq(account_attributes['updated_at'])
      expect(response.user_guid).to eq(account_attributes['user_guid'])
    end
  end

  describe 'list_user_accounts_pages_each' do
    it 'yields a page of accounts' do
      response = nil

      described_class.list_user_accounts_pages_each do |page|
        response = page
      end

      expect(response).to be_kind_of(::MxPlatformRuby::Page)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Account)
      expect(response.first.account_number).to eq(account_attributes['account_number'])
      expect(response.first.apr).to eq(account_attributes['apr'])
      expect(response.first.apy).to eq(account_attributes['apy'])
      expect(response.first.available_balance).to eq(account_attributes['available_balance'])
      expect(response.first.available_credit).to eq(account_attributes['available_credit'])
      expect(response.first.balance).to eq(account_attributes['balance'])
      expect(response.first.cash_balance).to eq(account_attributes['cash_balance'])
      expect(response.first.cash_surrender_value).to eq(account_attributes['cash_surrender_value'])
      expect(response.first.created_at).to eq(account_attributes['created_at'])
      expect(response.first.credit_limit).to eq(account_attributes['credit_limit'])
      expect(response.first.currency_code).to eq(account_attributes['currency_code'])
      expect(response.first.day_payment_is_due).to eq(account_attributes['day_payment_is_due'])
      expect(response.first.death_benefit).to eq(account_attributes['death_benefit'])
      expect(response.first.guid).to eq(account_attributes['guid'])
      expect(response.first.holdings_value).to eq(account_attributes['holdings_value'])
      expect(response.first.id).to eq(account_attributes['id'])
      expect(response.first.institution_code).to eq(account_attributes['institution_code'])
      expect(response.first.insured_name).to eq(account_attributes['insured_name'])
      expect(response.first.interest_rate).to eq(account_attributes['interest_rate'])
      expect(response.first.is_closed).to eq(account_attributes['is_closed'])
      expect(response.first.is_hidden).to eq(account_attributes['is_hidden'])
      expect(response.first.last_payment).to eq(account_attributes['last_payment'])
      expect(response.first.last_payment_at).to eq(account_attributes['last_payment_at'])
      expect(response.first.loan_amount).to eq(account_attributes['loan_amount'])
      expect(response.first.matures_on).to eq(account_attributes['matures_on'])
      expect(response.first.member_guid).to eq(account_attributes['member_guid'])
      expect(response.first.minimum_balance).to eq(account_attributes['minimum_balance'])
      expect(response.first.minimum_payment).to eq(account_attributes['minimum_payment'])
      expect(response.first.name).to eq(account_attributes['name'])
      expect(response.first.original_balance).to eq(account_attributes['original_balance'])
      expect(response.first.pay_out_amount).to eq(account_attributes['pay_out_amount'])
      expect(response.first.payment_due_at).to eq(account_attributes['payment_due_at'])
      expect(response.first.payoff_balance).to eq(account_attributes['payoff_balance'])
      expect(response.first.premium_amount).to eq(account_attributes['premium_amount'])
      expect(response.first.started_on).to eq(account_attributes['started_on'])
      expect(response.first.subtype).to eq(account_attributes['subtype'])
      expect(response.first.total_account_value).to eq(account_attributes['total_account_value'])
      expect(response.first.type).to eq(account_attributes['type'])
      expect(response.first.updated_at).to eq(account_attributes['updated_at'])
      expect(response.first.user_guid).to eq(account_attributes['user_guid'])
      expect(response.length).to eq(1)
    end
  end

  describe 'read_account' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(account_response) }

    it 'returns account' do
      response = described_class.read_account

      expect(response).to be_kind_of(::MxPlatformRuby::Account)
      expect(response.account_number).to eq(account_attributes['account_number'])
      expect(response.apr).to eq(account_attributes['apr'])
      expect(response.apy).to eq(account_attributes['apy'])
      expect(response.available_balance).to eq(account_attributes['available_balance'])
      expect(response.available_credit).to eq(account_attributes['available_credit'])
      expect(response.balance).to eq(account_attributes['balance'])
      expect(response.cash_balance).to eq(account_attributes['cash_balance'])
      expect(response.cash_surrender_value).to eq(account_attributes['cash_surrender_value'])
      expect(response.created_at).to eq(account_attributes['created_at'])
      expect(response.credit_limit).to eq(account_attributes['credit_limit'])
      expect(response.currency_code).to eq(account_attributes['currency_code'])
      expect(response.day_payment_is_due).to eq(account_attributes['day_payment_is_due'])
      expect(response.death_benefit).to eq(account_attributes['death_benefit'])
      expect(response.guid).to eq(account_attributes['guid'])
      expect(response.holdings_value).to eq(account_attributes['holdings_value'])
      expect(response.id).to eq(account_attributes['id'])
      expect(response.institution_code).to eq(account_attributes['institution_code'])
      expect(response.insured_name).to eq(account_attributes['insured_name'])
      expect(response.interest_rate).to eq(account_attributes['interest_rate'])
      expect(response.is_closed).to eq(account_attributes['is_closed'])
      expect(response.is_hidden).to eq(account_attributes['is_hidden'])
      expect(response.last_payment).to eq(account_attributes['last_payment'])
      expect(response.last_payment_at).to eq(account_attributes['last_payment_at'])
      expect(response.loan_amount).to eq(account_attributes['loan_amount'])
      expect(response.matures_on).to eq(account_attributes['matures_on'])
      expect(response.member_guid).to eq(account_attributes['member_guid'])
      expect(response.minimum_balance).to eq(account_attributes['minimum_balance'])
      expect(response.minimum_payment).to eq(account_attributes['minimum_payment'])
      expect(response.name).to eq(account_attributes['name'])
      expect(response.original_balance).to eq(account_attributes['original_balance'])
      expect(response.pay_out_amount).to eq(account_attributes['pay_out_amount'])
      expect(response.payment_due_at).to eq(account_attributes['payment_due_at'])
      expect(response.payoff_balance).to eq(account_attributes['payoff_balance'])
      expect(response.premium_amount).to eq(account_attributes['premium_amount'])
      expect(response.started_on).to eq(account_attributes['started_on'])
      expect(response.subtype).to eq(account_attributes['subtype'])
      expect(response.total_account_value).to eq(account_attributes['total_account_value'])
      expect(response.type).to eq(account_attributes['type'])
      expect(response.updated_at).to eq(account_attributes['updated_at'])
      expect(response.user_guid).to eq(account_attributes['user_guid'])
    end
  end

  describe 'update_account' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(account_response) }

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :put,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/accounts/ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1',
        update_account_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.update_account(
        update_account_request_body_parameters.merge(update_account_path_parameters)
      )
    end

    it 'returns account' do
      response = described_class.update_account

      expect(response).to be_kind_of(::MxPlatformRuby::Account)
      expect(response.account_number).to eq(account_attributes['account_number'])
      expect(response.apr).to eq(account_attributes['apr'])
      expect(response.apy).to eq(account_attributes['apy'])
      expect(response.available_balance).to eq(account_attributes['available_balance'])
      expect(response.available_credit).to eq(account_attributes['available_credit'])
      expect(response.balance).to eq(account_attributes['balance'])
      expect(response.cash_balance).to eq(account_attributes['cash_balance'])
      expect(response.cash_surrender_value).to eq(account_attributes['cash_surrender_value'])
      expect(response.created_at).to eq(account_attributes['created_at'])
      expect(response.credit_limit).to eq(account_attributes['credit_limit'])
      expect(response.currency_code).to eq(account_attributes['currency_code'])
      expect(response.day_payment_is_due).to eq(account_attributes['day_payment_is_due'])
      expect(response.death_benefit).to eq(account_attributes['death_benefit'])
      expect(response.guid).to eq(account_attributes['guid'])
      expect(response.holdings_value).to eq(account_attributes['holdings_value'])
      expect(response.id).to eq(account_attributes['id'])
      expect(response.institution_code).to eq(account_attributes['institution_code'])
      expect(response.insured_name).to eq(account_attributes['insured_name'])
      expect(response.interest_rate).to eq(account_attributes['interest_rate'])
      expect(response.is_closed).to eq(account_attributes['is_closed'])
      expect(response.is_hidden).to eq(account_attributes['is_hidden'])
      expect(response.last_payment).to eq(account_attributes['last_payment'])
      expect(response.last_payment_at).to eq(account_attributes['last_payment_at'])
      expect(response.loan_amount).to eq(account_attributes['loan_amount'])
      expect(response.matures_on).to eq(account_attributes['matures_on'])
      expect(response.member_guid).to eq(account_attributes['member_guid'])
      expect(response.minimum_balance).to eq(account_attributes['minimum_balance'])
      expect(response.minimum_payment).to eq(account_attributes['minimum_payment'])
      expect(response.name).to eq(account_attributes['name'])
      expect(response.original_balance).to eq(account_attributes['original_balance'])
      expect(response.pay_out_amount).to eq(account_attributes['pay_out_amount'])
      expect(response.payment_due_at).to eq(account_attributes['payment_due_at'])
      expect(response.payoff_balance).to eq(account_attributes['payoff_balance'])
      expect(response.premium_amount).to eq(account_attributes['premium_amount'])
      expect(response.started_on).to eq(account_attributes['started_on'])
      expect(response.subtype).to eq(account_attributes['subtype'])
      expect(response.total_account_value).to eq(account_attributes['total_account_value'])
      expect(response.type).to eq(account_attributes['type'])
      expect(response.updated_at).to eq(account_attributes['updated_at'])
      expect(response.user_guid).to eq(account_attributes['user_guid'])
    end
  end
end
