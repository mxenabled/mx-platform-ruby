=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MxPlatformRuby::BudgetsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BudgetsApi' do
  before do
    # run before each test
    @api_instance = MxPlatformRuby::BudgetsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BudgetsApi' do
    it 'should create an instance of BudgetsApi' do
      expect(@api_instance).to be_instance_of(MxPlatformRuby::BudgetsApi)
    end
  end

  # unit tests for users_user_guid_budgets_budget_guid_delete
  # Delete a budget
  # Delete a budget.
  # @param user_guid The unique identifier for the budget. Defined by MX.
  # @param budget_guid The unique identifier for the budget. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'users_user_guid_budgets_budget_guid_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_user_guid_budgets_budget_guid_get
  # Read a specific budget
  # Read a specific budget.
  # @param budget_guid The unique identifier for the budget. Defined by MX.
  # @param user_guid The unique identifier for the budget. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @return [BudgetResponseBody]
  describe 'users_user_guid_budgets_budget_guid_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_user_guid_budgets_budget_guid_put
  # Update a specific budget
  # Update a specific budget.
  # @param user_guid The unique identifier for the budget. Defined by MX.
  # @param budget_guid The unique identifier for the budget. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @option opts [BudgetUpdateRequestBody] :budget_update_request_body 
  # @return [BudgetResponseBody]
  describe 'users_user_guid_budgets_budget_guid_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_user_guid_budgets_generate_post
  # Auto-generate budgets
  # This endpoint will automatically create budgets for several categories based on existing transactions; these budgets are returned as an array. Specifically, budgets will only be generated if the &#x60;user&#x60; has at least one &#x60;transaction&#x60; in a given category during each of the two previous calendar months. For example, if the request is made on March 6, and there is at least one \&quot;Bills &amp; Utilities\&quot; &#x60;transaction&#x60; in both January and February, a budget will be generated for \&quot;Bills &amp; Utilities.\&quot; If there are two \&quot;Bills &amp; Utilities\&quot; transactions in February but none in January, no budget will be generated for that category. If budgets already exist for particular categories, new budgets will be generated and returned based on the available transactions. If one or more budgets remain unchanged, they will nevertheless be returned in the response. If no transaction data for the &#x60;user&#x60; meet the above criteria, a &#x60;422 Unprocessable Entity&#x60; error will be returned with status code 4221 along with the message, &#x60;There aren&#39;t enough transactions to automatically create any budgets&#x60;.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @return [BudgetResponseBody]
  describe 'users_user_guid_budgets_generate_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_user_guid_budgets_get
  # List all budgets
  # List all budgets
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @return [BudgetResponseBody]
  describe 'users_user_guid_budgets_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_user_guid_budgets_post
  # Create a budget
  # Create a budget. This endpoint accepts the optional &#x60;MX-Skip-Webhook&#x60; header and &#x60;skip_webhook&#x60; parameter. You cannot create a duplicate budget. For example, if you attempt to create a budget for \&quot;Gas\&quot;, but that budget already exist, the request will fail. You can retrieve a list of all existing categories by using the List Categories endpoint.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param budget_create_request_body 
  # @param [Hash] opts the optional parameters
  # @return [BudgetResponseBody]
  describe 'users_user_guid_budgets_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
