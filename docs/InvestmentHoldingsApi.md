# MxPlatformRuby::InvestmentHoldingsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**deactivate_user**](InvestmentHoldingsApi.md#deactivate_user) | **GET** /users/{user_guid}/investment_holdings_deactivate | Deactivate user from Investment Holdings |
| [**list_holdings**](InvestmentHoldingsApi.md#list_holdings) | **GET** /users/{user_guid}/investment_holdings | List holdings by user |
| [**list_holdings_by_account**](InvestmentHoldingsApi.md#list_holdings_by_account) | **GET** /users/{user_guid}/accounts/{account_guid}/investment_holdings | List holdings by account |
| [**list_holdings_by_member**](InvestmentHoldingsApi.md#list_holdings_by_member) | **GET** /users/{user_guid}/members/{member_guid}/investment_holdings | List holdings by member |
| [**read_holding**](InvestmentHoldingsApi.md#read_holding) | **GET** /users/{user_guid}/investment_holdings/{holding_guid} | Read holding |


## deactivate_user

> <InvestmentHoldingsDeactivation> deactivate_user(user_guid)

Deactivate user from Investment Holdings

This endpoint deactivates the specific user from the `/investment_holdings` product. To reactivate a user, use any of the current `/investment_holding` endpoints.

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

api_instance = MxPlatformRuby::InvestmentHoldingsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Deactivate user from Investment Holdings
  result = api_instance.deactivate_user(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->deactivate_user: #{e}"
end
```

#### Using the deactivate_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvestmentHoldingsDeactivation>, Integer, Hash)> deactivate_user_with_http_info(user_guid)

```ruby
begin
  # Deactivate user from Investment Holdings
  data, status_code, headers = api_instance.deactivate_user_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvestmentHoldingsDeactivation>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->deactivate_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**InvestmentHoldingsDeactivation**](InvestmentHoldingsDeactivation.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_holdings

> <InvestmentHoldingsResponseBody> list_holdings(user_guid, opts)

List holdings by user

This endpoint lists all holdings associated with the user across all accounts.

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

api_instance = MxPlatformRuby::InvestmentHoldingsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List holdings by user
  result = api_instance.list_holdings(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->list_holdings: #{e}"
end
```

#### Using the list_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvestmentHoldingsResponseBody>, Integer, Hash)> list_holdings_with_http_info(user_guid, opts)

```ruby
begin
  # List holdings by user
  data, status_code, headers = api_instance.list_holdings_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvestmentHoldingsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->list_holdings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**InvestmentHoldingsResponseBody**](InvestmentHoldingsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_holdings_by_account

> <InvestmentHoldingsResponseBody> list_holdings_by_account(account_guid, user_guid, opts)

List holdings by account

This endpoint lists all holdings associated with the particular account defined.

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

api_instance = MxPlatformRuby::InvestmentHoldingsApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List holdings by account
  result = api_instance.list_holdings_by_account(account_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->list_holdings_by_account: #{e}"
end
```

#### Using the list_holdings_by_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvestmentHoldingsResponseBody>, Integer, Hash)> list_holdings_by_account_with_http_info(account_guid, user_guid, opts)

```ruby
begin
  # List holdings by account
  data, status_code, headers = api_instance.list_holdings_by_account_with_http_info(account_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvestmentHoldingsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->list_holdings_by_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**InvestmentHoldingsResponseBody**](InvestmentHoldingsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_holdings_by_member

> <InvestmentHoldingsResponseBody> list_holdings_by_member(member_guid, user_guid, opts)

List holdings by member

This endpoint lists all holdings associated with the specified member.

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

api_instance = MxPlatformRuby::InvestmentHoldingsApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List holdings by member
  result = api_instance.list_holdings_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->list_holdings_by_member: #{e}"
end
```

#### Using the list_holdings_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvestmentHoldingsResponseBody>, Integer, Hash)> list_holdings_by_member_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List holdings by member
  data, status_code, headers = api_instance.list_holdings_by_member_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvestmentHoldingsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->list_holdings_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**InvestmentHoldingsResponseBody**](InvestmentHoldingsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_holding

> <InvestmentHoldingResponseBody> read_holding(holding_guid, user_guid)

Read holding

Use this endpoint to read the attributes of a specific `holding`.

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

api_instance = MxPlatformRuby::InvestmentHoldingsApi.new
holding_guid = 'HOL-d65683e8-9eab-26bb-bcfd-ced159c9abe2' # String | The unique id for a `holding`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read holding
  result = api_instance.read_holding(holding_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->read_holding: #{e}"
end
```

#### Using the read_holding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvestmentHoldingResponseBody>, Integer, Hash)> read_holding_with_http_info(holding_guid, user_guid)

```ruby
begin
  # Read holding
  data, status_code, headers = api_instance.read_holding_with_http_info(holding_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvestmentHoldingResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InvestmentHoldingsApi->read_holding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **holding_guid** | **String** | The unique id for a &#x60;holding&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**InvestmentHoldingResponseBody**](InvestmentHoldingResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json

