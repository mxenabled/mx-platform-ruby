# MxPlatformRuby::TransactionsApi

All URIs are relative to *https://api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_user_guid_accounts_account_guid_transactions_post**](TransactionsApi.md#users_user_guid_accounts_account_guid_transactions_post) | **POST** /users/{user_guid}/accounts/{account_guid}/transactions | Create manual transaction |


## users_user_guid_accounts_account_guid_transactions_post

> <TransactionCreateResponseBody> users_user_guid_accounts_account_guid_transactions_post(user_guid, account_guid, transaction_create_request_body)

Create manual transaction

This endpoint can only be used to create manual transactions that are under a manual account. This endpoint accepts the optional MX-Skip-Webhook header and skip_webhook parameter.

### Examples

```ruby
require 'time'
require 'mx-platform-ruby'
# setup authorization
MxPlatformRuby.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MxPlatformRuby::TransactionsApi.new
user_guid = 'user_guid_example' # String | The unique identifier for the user.
account_guid = 'account_guid_example' # String | The unique identifier for the account.
transaction_create_request_body = MxPlatformRuby::TransactionCreateRequestBody.new # TransactionCreateRequestBody | 

begin
  # Create manual transaction
  result = api_instance.users_user_guid_accounts_account_guid_transactions_post(user_guid, account_guid, transaction_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->users_user_guid_accounts_account_guid_transactions_post: #{e}"
end
```

#### Using the users_user_guid_accounts_account_guid_transactions_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionCreateResponseBody>, Integer, Hash)> users_user_guid_accounts_account_guid_transactions_post_with_http_info(user_guid, account_guid, transaction_create_request_body)

```ruby
begin
  # Create manual transaction
  data, status_code, headers = api_instance.users_user_guid_accounts_account_guid_transactions_post_with_http_info(user_guid, account_guid, transaction_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionCreateResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->users_user_guid_accounts_account_guid_transactions_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. |  |
| **account_guid** | **String** | The unique identifier for the account. |  |
| **transaction_create_request_body** | [**TransactionCreateRequestBody**](TransactionCreateRequestBody.md) |  |  |

### Return type

[**TransactionCreateResponseBody**](TransactionCreateResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

