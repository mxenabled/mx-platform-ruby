=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MxPlatformRuby::InsightsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InsightsApi' do
  before do
    # run before each test
    @api_instance = MxPlatformRuby::InsightsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InsightsApi' do
    it 'should create an instance of InsightsApi' do
      expect(@api_instance).to be_instance_of(MxPlatformRuby::InsightsApi)
    end
  end

  # unit tests for list_accounts_insight
  # List all accounts associated with an insight.
  # Use this endpoint to list all the accounts associated with the insight.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param insight_guid The unique identifier for the insight. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Specify current page.
  # @option opts [Integer] :records_per_page Specify records per page.
  # @return [AccountsResponseBody]
  describe 'list_accounts_insight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_categories_insight
  # List all categories associated with an insight.
  # Use this endpoint to list all the categories associated with the insight.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param insight_guid The unique identifier for the insight. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Specify current page.
  # @option opts [Integer] :records_per_page Specify records per page.
  # @return [CategoriesResponseBody]
  describe 'list_categories_insight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_insights_by_account
  # List insights by account
  # Use this endpoint to list all insights associated with a specified account GUID.
  # @param account_guid The unique id for the &#x60;account&#x60;.
  # @param user_guid The unique id for the &#x60;user&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Specify current page.
  # @option opts [Integer] :records_per_page Specify records per page.
  # @return [InsightsResponseBody]
  describe 'list_insights_by_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_insights_user
  # List all insights for a user.
  # Use this endpoint to list all the insights associated with the user.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Specify current page.
  # @option opts [Integer] :records_per_page Specify records per page.
  # @return [InsightsResponseBody]
  describe 'list_insights_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_merchants_insight
  # List all merchants associated with an insight.
  # Use this endpoint to list all the merchants associated with the insight.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param insight_guid The unique identifier for the insight. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Specify current page.
  # @option opts [Integer] :records_per_page Specify records per page.
  # @return [MerchantsResponseBody]
  describe 'list_merchants_insight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_scheduled_payments_insight
  # List all scheduled payments associated with an insight
  # Use this endpoint to list all the scheduled payments associated with the insight.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param insight_guid The unique identifier for the insight. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Specify current page.
  # @option opts [Integer] :records_per_page Specify records per page.
  # @return [ScheduledPaymentsResponseBody]
  describe 'list_scheduled_payments_insight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_transactions_insight
  # List all transactions associated with an insight.
  # Use this endpoint to list all the transactions associated with the insight.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param insight_guid The unique identifier for the insight. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Specify current page.
  # @option opts [Integer] :records_per_page Specify records per page.
  # @return [TransactionsResponseBody]
  describe 'list_transactions_insight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_insights_user
  # Read a specific insight.
  # Use this endpoint to read the attributes of a specific insight according to its unique GUID.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param insight_guid The unique identifier for the insight. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @return [InsightResponseBody]
  describe 'read_insights_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_insight
  # Update insight
  # Use this endpoint to update the attributes of a particular insight according to its unique GUID.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param insight_guid The unique identifier for the insight. Defined by MX.
  # @param insight_update_request The insight to be updated (None of these parameters are required, but the user object cannot be empty.)
  # @param [Hash] opts the optional parameters
  # @return [InsightResponse]
  describe 'update_insight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end