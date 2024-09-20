=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MxPlatformRuby::MicrodepositsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MicrodepositsApi' do
  before do
    # run before each test
    @api_instance = MxPlatformRuby::MicrodepositsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MicrodepositsApi' do
    it 'should create an instance of MicrodepositsApi' do
      expect(@api_instance).to be_instance_of(MxPlatformRuby::MicrodepositsApi)
    end
  end

  # unit tests for micro_deposits_microdeposit_guid_verify_put
  # Verify a Microdeposit
  # Use this endpoint to verify the amounts deposited into the account during a microdeposit verification. The verification has not successfully completed until the &#x60;status&#x60; is &#x60;VERIFIED&#x60;. Poll the &#x60;/users/{user_guid}/micro_deposits/{micro_deposit_guid}&#x60; (read microdeposit) endpoint until you see this status or an error state.
  # @param microdeposit_guid The unique identifier for the microdeposit. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @option opts [MicrodepositVerifyRequestBody] :microdeposit_verify_request_body 
  # @return [MicrodepositResponseBody]
  describe 'micro_deposits_microdeposit_guid_verify_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_user_guid_micro_deposits_get
  # List all microdeposits for a user
  # Use this endpoint to read the attributes of a specific microdeposit according to its unique GUID.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @return [MicrodepositsResponseBody]
  describe 'users_user_guid_micro_deposits_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_user_guid_micro_deposits_micro_deposit_guid_delete
  # Delete a microdeposit
  # Use this endpoint to delete the specified microdeposit.
  # @param micro_deposit_guid The unique identifier for the microdeposit. Defined by MX.
  # @param user_guid The unique id for a &#x60;user&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'users_user_guid_micro_deposits_micro_deposit_guid_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_user_guid_micro_deposits_micro_deposit_guid_get
  # Read a microdeposit for a user
  # Use this endpoint to read the attributes of a specific microdeposit according to its unique GUID. &lt;br&gt;&lt;/br&gt; Webhooks for microdeposit status changes are triggered when a status changes. The actual status of the microdeposit guid updates every minute. You may force a status update by calling the read microdeposit endpoint.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param micro_deposit_guid The unique identifier for the microdeposit. Defined by MX.
  # @param [Hash] opts the optional parameters
  # @return [MicrodepositResponseBody]
  describe 'users_user_guid_micro_deposits_micro_deposit_guid_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for users_user_guid_micro_deposits_post
  # Create a microdeposit
  # Use this endpoint to create a microdeposit. The response will include the new microdeposit record with a status of INITIATED.
  # @param user_guid The unique identifier for the user. Defined by MX.
  # @param microdeposit_request_body 
  # @param [Hash] opts the optional parameters
  # @return [MicrodepositResponseBody]
  describe 'users_user_guid_micro_deposits_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
