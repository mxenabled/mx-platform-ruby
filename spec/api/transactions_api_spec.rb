=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MxPlatformRuby::TransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionsApi' do
  before do
    # run before each test
    @api_instance = MxPlatformRuby::TransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsApi' do
    it 'should create an instance of TransactionsApi' do
      expect(@api_instance).to be_instance_of(MxPlatformRuby::TransactionsApi)
    end
  end

  # unit tests for users_user_guid_accounts_account_guid_transactions_post
  # Create manual transaction
  # This endpoint can only be used to create manual transactions that are under a manual account. This endpoint accepts the optional MX-Skip-Webhook header and skip_webhook parameter.
  # @param user_guid The unique identifier for the user.
  # @param account_guid The unique identifier for the account.
  # @param transaction_create_request_body 
  # @param [Hash] opts the optional parameters
  # @return [TransactionCreateResponseBody]
  describe 'users_user_guid_accounts_account_guid_transactions_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
