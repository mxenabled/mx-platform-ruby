# MxPlatformRuby::VerifiableCredentialsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_accounts_data**](VerifiableCredentialsApi.md#get_accounts_data) | **GET** /vc/users/{user_guid}/members/{member_guid}/accounts | Get Accounts Data |
| [**get_identity_data**](VerifiableCredentialsApi.md#get_identity_data) | **GET** /vc/users/{user_guid}/members/{member_guid}/customers | Get Identity Data |
| [**get_transactions_data**](VerifiableCredentialsApi.md#get_transactions_data) | **GET** /vc/users/{user_guid}/accounts/{account_guid}/transactions | Get Transactions Data |


## get_accounts_data

> <VCResponse> get_accounts_data(user_guid, member_guid)

Get Accounts Data

Get an MX-issued verifiable credential of a user's accounts data.

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

api_instance = MxPlatformRuby::VerifiableCredentialsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.

begin
  # Get Accounts Data
  result = api_instance.get_accounts_data(user_guid, member_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling VerifiableCredentialsApi->get_accounts_data: #{e}"
end
```

#### Using the get_accounts_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VCResponse>, Integer, Hash)> get_accounts_data_with_http_info(user_guid, member_guid)

```ruby
begin
  # Get Accounts Data
  data, status_code, headers = api_instance.get_accounts_data_with_http_info(user_guid, member_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VCResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling VerifiableCredentialsApi->get_accounts_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |

### Return type

[**VCResponse**](VCResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v2beta+json


## get_identity_data

> <VCResponse> get_identity_data(user_guid, member_guid)

Get Identity Data

Get an MX-issued verifiable credential of a user's identity data.

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

api_instance = MxPlatformRuby::VerifiableCredentialsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.

begin
  # Get Identity Data
  result = api_instance.get_identity_data(user_guid, member_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling VerifiableCredentialsApi->get_identity_data: #{e}"
end
```

#### Using the get_identity_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VCResponse>, Integer, Hash)> get_identity_data_with_http_info(user_guid, member_guid)

```ruby
begin
  # Get Identity Data
  data, status_code, headers = api_instance.get_identity_data_with_http_info(user_guid, member_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VCResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling VerifiableCredentialsApi->get_identity_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |

### Return type

[**VCResponse**](VCResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v2beta+json


## get_transactions_data

> <VCResponse> get_transactions_data(user_guid, account_guid, opts)

Get Transactions Data

Get an MX-issued verifiable credential of a user's transaction data.

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

api_instance = MxPlatformRuby::VerifiableCredentialsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
opts = {
  start_time: '2015-09-20', # String | Filter transactions from this date. Must be in the format YYYY-MM-DD. The range is limited to 1 year.
  end_time: '2015-09-20' # String | Filter transactions to this date. Must be in the format YYYY-MM-DD. The range is limited to 1 year.
}

begin
  # Get Transactions Data
  result = api_instance.get_transactions_data(user_guid, account_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling VerifiableCredentialsApi->get_transactions_data: #{e}"
end
```

#### Using the get_transactions_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VCResponse>, Integer, Hash)> get_transactions_data_with_http_info(user_guid, account_guid, opts)

```ruby
begin
  # Get Transactions Data
  data, status_code, headers = api_instance.get_transactions_data_with_http_info(user_guid, account_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VCResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling VerifiableCredentialsApi->get_transactions_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **start_time** | **String** | Filter transactions from this date. Must be in the format YYYY-MM-DD. The range is limited to 1 year. | [optional] |
| **end_time** | **String** | Filter transactions to this date. Must be in the format YYYY-MM-DD. The range is limited to 1 year. | [optional] |

### Return type

[**VCResponse**](VCResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v2beta+json

