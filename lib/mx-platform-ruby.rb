=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

# Common files
require 'mx-platform-ruby/api_client'
require 'mx-platform-ruby/api_error'
require 'mx-platform-ruby/version'
require 'mx-platform-ruby/configuration'

# Models
require 'mx-platform-ruby/models/account_create_request'
require 'mx-platform-ruby/models/account_create_request_body'
require 'mx-platform-ruby/models/account_number_response'
require 'mx-platform-ruby/models/account_numbers_response_body'
require 'mx-platform-ruby/models/account_owner_response'
require 'mx-platform-ruby/models/account_owners_response_body'
require 'mx-platform-ruby/models/account_response'
require 'mx-platform-ruby/models/account_response_body'
require 'mx-platform-ruby/models/account_update_request'
require 'mx-platform-ruby/models/account_update_request_body'
require 'mx-platform-ruby/models/accounts_response_body'
require 'mx-platform-ruby/models/authorization_code_request'
require 'mx-platform-ruby/models/authorization_code_request_body'
require 'mx-platform-ruby/models/authorization_code_response'
require 'mx-platform-ruby/models/authorization_code_response_body'
require 'mx-platform-ruby/models/categories_response_body'
require 'mx-platform-ruby/models/category_create_request'
require 'mx-platform-ruby/models/category_create_request_body'
require 'mx-platform-ruby/models/category_response'
require 'mx-platform-ruby/models/category_response_body'
require 'mx-platform-ruby/models/category_update_request'
require 'mx-platform-ruby/models/category_update_request_body'
require 'mx-platform-ruby/models/challenge_response'
require 'mx-platform-ruby/models/challenges_response_body'
require 'mx-platform-ruby/models/connect_widget_request'
require 'mx-platform-ruby/models/connect_widget_request_body'
require 'mx-platform-ruby/models/connect_widget_response'
require 'mx-platform-ruby/models/connect_widget_response_body'
require 'mx-platform-ruby/models/credential_request'
require 'mx-platform-ruby/models/credential_response'
require 'mx-platform-ruby/models/credentials_response_body'
require 'mx-platform-ruby/models/enhance_transaction_response'
require 'mx-platform-ruby/models/enhance_transactions_request'
require 'mx-platform-ruby/models/enhance_transactions_request_body'
require 'mx-platform-ruby/models/enhance_transactions_response_body'
require 'mx-platform-ruby/models/holding_response'
require 'mx-platform-ruby/models/holding_response_body'
require 'mx-platform-ruby/models/holdings_response_body'
require 'mx-platform-ruby/models/image_option_response'
require 'mx-platform-ruby/models/institution_response'
require 'mx-platform-ruby/models/institution_response_body'
require 'mx-platform-ruby/models/institutions_response_body'
require 'mx-platform-ruby/models/managed_account_create_request'
require 'mx-platform-ruby/models/managed_account_create_request_body'
require 'mx-platform-ruby/models/managed_account_update_request'
require 'mx-platform-ruby/models/managed_account_update_request_body'
require 'mx-platform-ruby/models/managed_member_create_request'
require 'mx-platform-ruby/models/managed_member_create_request_body'
require 'mx-platform-ruby/models/managed_member_update_request'
require 'mx-platform-ruby/models/managed_member_update_request_body'
require 'mx-platform-ruby/models/managed_transaction_create_request'
require 'mx-platform-ruby/models/managed_transaction_create_request_body'
require 'mx-platform-ruby/models/managed_transaction_update_request'
require 'mx-platform-ruby/models/managed_transaction_update_request_body'
require 'mx-platform-ruby/models/member_create_request'
require 'mx-platform-ruby/models/member_create_request_body'
require 'mx-platform-ruby/models/member_response'
require 'mx-platform-ruby/models/member_response_body'
require 'mx-platform-ruby/models/member_resume_request'
require 'mx-platform-ruby/models/member_resume_request_body'
require 'mx-platform-ruby/models/member_status_response'
require 'mx-platform-ruby/models/member_status_response_body'
require 'mx-platform-ruby/models/member_update_request'
require 'mx-platform-ruby/models/member_update_request_body'
require 'mx-platform-ruby/models/members_response_body'
require 'mx-platform-ruby/models/merchant_location_response'
require 'mx-platform-ruby/models/merchant_location_response_body'
require 'mx-platform-ruby/models/merchant_response'
require 'mx-platform-ruby/models/merchant_response_body'
require 'mx-platform-ruby/models/merchants_response_body'
require 'mx-platform-ruby/models/o_auth_window_response'
require 'mx-platform-ruby/models/o_auth_window_response_body'
require 'mx-platform-ruby/models/option_response'
require 'mx-platform-ruby/models/pagination_response'
require 'mx-platform-ruby/models/payment_processor_authorization_code_request'
require 'mx-platform-ruby/models/payment_processor_authorization_code_request_body'
require 'mx-platform-ruby/models/payment_processor_authorization_code_response'
require 'mx-platform-ruby/models/payment_processor_authorization_code_response_body'
require 'mx-platform-ruby/models/spending_plan_account_response'
require 'mx-platform-ruby/models/spending_plan_accounts_response'
require 'mx-platform-ruby/models/spending_plan_iteration_item_create_request_body'
require 'mx-platform-ruby/models/spending_plan_iteration_item_response'
require 'mx-platform-ruby/models/spending_plan_iteration_items_response_body'
require 'mx-platform-ruby/models/spending_plan_iteration_response'
require 'mx-platform-ruby/models/spending_plan_iterations_response'
require 'mx-platform-ruby/models/spending_plan_response'
require 'mx-platform-ruby/models/spending_plans_response_body'
require 'mx-platform-ruby/models/statement_response'
require 'mx-platform-ruby/models/statement_response_body'
require 'mx-platform-ruby/models/statements_response_body'
require 'mx-platform-ruby/models/tag_create_request'
require 'mx-platform-ruby/models/tag_create_request_body'
require 'mx-platform-ruby/models/tag_response'
require 'mx-platform-ruby/models/tag_response_body'
require 'mx-platform-ruby/models/tag_update_request'
require 'mx-platform-ruby/models/tag_update_request_body'
require 'mx-platform-ruby/models/tagging_create_request'
require 'mx-platform-ruby/models/tagging_create_request_body'
require 'mx-platform-ruby/models/tagging_response'
require 'mx-platform-ruby/models/tagging_response_body'
require 'mx-platform-ruby/models/tagging_update_request'
require 'mx-platform-ruby/models/tagging_update_request_body'
require 'mx-platform-ruby/models/taggings_response_body'
require 'mx-platform-ruby/models/tags_response_body'
require 'mx-platform-ruby/models/tax_document_response'
require 'mx-platform-ruby/models/tax_document_response_body'
require 'mx-platform-ruby/models/tax_documents_response_body'
require 'mx-platform-ruby/models/transaction_response'
require 'mx-platform-ruby/models/transaction_response_body'
require 'mx-platform-ruby/models/transaction_rule_create_request'
require 'mx-platform-ruby/models/transaction_rule_create_request_body'
require 'mx-platform-ruby/models/transaction_rule_response'
require 'mx-platform-ruby/models/transaction_rule_response_body'
require 'mx-platform-ruby/models/transaction_rule_update_request'
require 'mx-platform-ruby/models/transaction_rule_update_request_body'
require 'mx-platform-ruby/models/transaction_rules_response_body'
require 'mx-platform-ruby/models/transaction_update_request'
require 'mx-platform-ruby/models/transaction_update_request_body'
require 'mx-platform-ruby/models/transactions_response_body'
require 'mx-platform-ruby/models/user_create_request'
require 'mx-platform-ruby/models/user_create_request_body'
require 'mx-platform-ruby/models/user_response'
require 'mx-platform-ruby/models/user_response_body'
require 'mx-platform-ruby/models/user_update_request'
require 'mx-platform-ruby/models/user_update_request_body'
require 'mx-platform-ruby/models/users_response_body'
require 'mx-platform-ruby/models/widget_request'
require 'mx-platform-ruby/models/widget_request_body'
require 'mx-platform-ruby/models/widget_response'
require 'mx-platform-ruby/models/widget_response_body'

# APIs
require 'mx-platform-ruby/api/mx_platform_api'
require 'mx-platform-ruby/api/spending_plan_api'

module MxPlatformRuby
  class << self
    # Customize default settings for the SDK using block.
    #   MxPlatformRuby.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
