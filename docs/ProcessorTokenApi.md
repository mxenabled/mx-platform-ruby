# MxPlatformRuby::ProcessorTokenApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_real_time_account_balance**](ProcessorTokenApi.md#check_real_time_account_balance) | **POST** /account/check_balance | Check Real Time Account Balance (Processors Only) |
| [**deprecated_request_payment_processor_authorization_code**](ProcessorTokenApi.md#deprecated_request_payment_processor_authorization_code) | **POST** /payment_processor_authorization_code | (Deprecated) Request an authorization code |
| [**get_account_owner_info**](ProcessorTokenApi.md#get_account_owner_info) | **GET** /account/transactions | Get account owner information (Processors Only) |
| [**list_tokens**](ProcessorTokenApi.md#list_tokens) | **GET** /tokens | View a List of Tokens |
| [**read_account_balance**](ProcessorTokenApi.md#read_account_balance) | **GET** /payment_account | Read the account balance (Processors Only) |
| [**request_account_number**](ProcessorTokenApi.md#request_account_number) | **GET** /account/account_numbers | Request an account number (Processors Only) |
| [**request_authorization_code**](ProcessorTokenApi.md#request_authorization_code) | **POST** /authorization_code | Request an authorization code |


## check_real_time_account_balance

> <MemberResponseBody> check_real_time_account_balance

Check Real Time Account Balance (Processors Only)

Check the real-time account balance using your access token.

### Examples

```ruby
require 'time'
require 'mx-platform-ruby'
# setup authorization
MxPlatformRuby.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MxPlatformRuby::ProcessorTokenApi.new

begin
  # Check Real Time Account Balance (Processors Only)
  result = api_instance.check_real_time_account_balance
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->check_real_time_account_balance: #{e}"
end
```

#### Using the check_real_time_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> check_real_time_account_balance_with_http_info

```ruby
begin
  # Check Real Time Account Balance (Processors Only)
  data, status_code, headers = api_instance.check_real_time_account_balance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->check_real_time_account_balance_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## deprecated_request_payment_processor_authorization_code

> <PaymentProcessorAuthorizationCodeResponseBody> deprecated_request_payment_processor_authorization_code(payment_processor_authorization_code_request_body)

(Deprecated) Request an authorization code

(This endpoint is deprecated. Clients should use `/authorization_code`.) Clients use this endpoint to request an authorization_code according to a user, member, and account specified in the request body. Clients then pass this code to processors. Processor access is scoped only to the user/member/account specified in this request. Before requesting an authorization_code, clients must have verified the specified member.

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

api_instance = MxPlatformRuby::ProcessorTokenApi.new
payment_processor_authorization_code_request_body = MxPlatformRuby::PaymentProcessorAuthorizationCodeRequestBody.new # PaymentProcessorAuthorizationCodeRequestBody | The scope for the authorization code.

begin
  # (Deprecated) Request an authorization code
  result = api_instance.deprecated_request_payment_processor_authorization_code(payment_processor_authorization_code_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->deprecated_request_payment_processor_authorization_code: #{e}"
end
```

#### Using the deprecated_request_payment_processor_authorization_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentProcessorAuthorizationCodeResponseBody>, Integer, Hash)> deprecated_request_payment_processor_authorization_code_with_http_info(payment_processor_authorization_code_request_body)

```ruby
begin
  # (Deprecated) Request an authorization code
  data, status_code, headers = api_instance.deprecated_request_payment_processor_authorization_code_with_http_info(payment_processor_authorization_code_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentProcessorAuthorizationCodeResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->deprecated_request_payment_processor_authorization_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_processor_authorization_code_request_body** | [**PaymentProcessorAuthorizationCodeRequestBody**](PaymentProcessorAuthorizationCodeRequestBody.md) | The scope for the authorization code. |  |

### Return type

[**PaymentProcessorAuthorizationCodeResponseBody**](PaymentProcessorAuthorizationCodeResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## get_account_owner_info

> <ProcessorOwnerBody> get_account_owner_info

Get account owner information (Processors Only)

Get account owner information (Processors Only)

### Examples

```ruby
require 'time'
require 'mx-platform-ruby'
# setup authorization
MxPlatformRuby.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MxPlatformRuby::ProcessorTokenApi.new

begin
  # Get account owner information (Processors Only)
  result = api_instance.get_account_owner_info
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->get_account_owner_info: #{e}"
end
```

#### Using the get_account_owner_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcessorOwnerBody>, Integer, Hash)> get_account_owner_info_with_http_info

```ruby
begin
  # Get account owner information (Processors Only)
  data, status_code, headers = api_instance.get_account_owner_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcessorOwnerBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->get_account_owner_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProcessorOwnerBody**](ProcessorOwnerBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tokens

> <TokenResponseBody> list_tokens(opts)

View a List of Tokens

View a list of tokens that exist for a user, member, or account.

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

api_instance = MxPlatformRuby::ProcessorTokenApi.new
opts = {
  token_request_body: MxPlatformRuby::TokenRequestBody.new # TokenRequestBody | 
}

begin
  # View a List of Tokens
  result = api_instance.list_tokens(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->list_tokens: #{e}"
end
```

#### Using the list_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponseBody>, Integer, Hash)> list_tokens_with_http_info(opts)

```ruby
begin
  # View a List of Tokens
  data, status_code, headers = api_instance.list_tokens_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->list_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_request_body** | [**TokenRequestBody**](TokenRequestBody.md) |  | [optional] |

### Return type

[**TokenResponseBody**](TokenResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## read_account_balance

> <PaymentAccountBody> read_account_balance

Read the account balance (Processors Only)

Read the account balance (Processors Only)

### Examples

```ruby
require 'time'
require 'mx-platform-ruby'
# setup authorization
MxPlatformRuby.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MxPlatformRuby::ProcessorTokenApi.new

begin
  # Read the account balance (Processors Only)
  result = api_instance.read_account_balance
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->read_account_balance: #{e}"
end
```

#### Using the read_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentAccountBody>, Integer, Hash)> read_account_balance_with_http_info

```ruby
begin
  # Read the account balance (Processors Only)
  data, status_code, headers = api_instance.read_account_balance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentAccountBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->read_account_balance_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PaymentAccountBody**](PaymentAccountBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## request_account_number

> <ProcessorAccountNumberBody> request_account_number

Request an account number (Processors Only)

Get account information such as routing number and account number, scoped to your access token.

### Examples

```ruby
require 'time'
require 'mx-platform-ruby'
# setup authorization
MxPlatformRuby.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MxPlatformRuby::ProcessorTokenApi.new

begin
  # Request an account number (Processors Only)
  result = api_instance.request_account_number
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->request_account_number: #{e}"
end
```

#### Using the request_account_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcessorAccountNumberBody>, Integer, Hash)> request_account_number_with_http_info

```ruby
begin
  # Request an account number (Processors Only)
  data, status_code, headers = api_instance.request_account_number_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcessorAccountNumberBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->request_account_number_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProcessorAccountNumberBody**](ProcessorAccountNumberBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## request_authorization_code

> <AuthorizationCodeResponseBody> request_authorization_code(authorization_code_request_body)

Request an authorization code

Clients use this endpoint to request an authorization code according to the parameters specified in the scope. Clients then pass this code to processors. Processor access is scoped only to the GUIDs and features specified in this request. Before requesting an authorization code which includes a member in the scope, clients must have verified that member.

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

api_instance = MxPlatformRuby::ProcessorTokenApi.new
authorization_code_request_body = MxPlatformRuby::AuthorizationCodeRequestBody.new # AuthorizationCodeRequestBody | The scope for the authorization code.

begin
  # Request an authorization code
  result = api_instance.request_authorization_code(authorization_code_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->request_authorization_code: #{e}"
end
```

#### Using the request_authorization_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthorizationCodeResponseBody>, Integer, Hash)> request_authorization_code_with_http_info(authorization_code_request_body)

```ruby
begin
  # Request an authorization code
  data, status_code, headers = api_instance.request_authorization_code_with_http_info(authorization_code_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthorizationCodeResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ProcessorTokenApi->request_authorization_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_code_request_body** | [**AuthorizationCodeRequestBody**](AuthorizationCodeRequestBody.md) | The scope for the authorization code. |  |

### Return type

[**AuthorizationCodeResponseBody**](AuthorizationCodeResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

