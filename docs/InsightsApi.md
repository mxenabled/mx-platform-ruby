# MxPlatformRuby::InsightsApi

All URIs are relative to *https://api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_accounts_insight**](InsightsApi.md#list_accounts_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/accounts | List all accounts associated with an insight. |
| [**list_categories_insight**](InsightsApi.md#list_categories_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/categories | List all categories associated with an insight. |
| [**list_insights_by_account**](InsightsApi.md#list_insights_by_account) | **GET** /users/{user_guid}/accounts/{account_guid}/insights | List insights by account |
| [**list_insights_user**](InsightsApi.md#list_insights_user) | **GET** /users/{user_guid}/insights | List all insights for a user. |
| [**list_merchants_insight**](InsightsApi.md#list_merchants_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/merchants | List all merchants associated with an insight. |
| [**list_scheduled_payments_insight**](InsightsApi.md#list_scheduled_payments_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/scheduled_payments | List all scheduled payments associated with an insight |
| [**list_transactions_insight**](InsightsApi.md#list_transactions_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/transactions | List all transactions associated with an insight. |
| [**read_insights_user**](InsightsApi.md#read_insights_user) | **GET** /users/{user_guid}/insights{insight_guid} | Read a specific insight. |
| [**update_insight**](InsightsApi.md#update_insight) | **PUT** /users/{user_guid}/insights{insight_guid} | Update insight |


## list_accounts_insight

> <AccountsResponseBody> list_accounts_insight(user_guid, insight_guid, opts)

List all accounts associated with an insight.

Use this endpoint to list all the accounts associated with the insight.

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

api_instance = MxPlatformRuby::InsightsApi.new
user_guid = 'USR-1234-abcd' # String | The unique identifier for the user. Defined by MX.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List all accounts associated with an insight.
  result = api_instance.list_accounts_insight(user_guid, insight_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_accounts_insight: #{e}"
end
```

#### Using the list_accounts_insight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountsResponseBody>, Integer, Hash)> list_accounts_insight_with_http_info(user_guid, insight_guid, opts)

```ruby
begin
  # List all accounts associated with an insight.
  data, status_code, headers = api_instance.list_accounts_insight_with_http_info(user_guid, insight_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_accounts_insight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**AccountsResponseBody**](AccountsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_categories_insight

> <CategoriesResponseBody> list_categories_insight(user_guid, insight_guid, opts)

List all categories associated with an insight.

Use this endpoint to list all the categories associated with the insight.

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

api_instance = MxPlatformRuby::InsightsApi.new
user_guid = 'USR-1234-abcd' # String | The unique identifier for the user. Defined by MX.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List all categories associated with an insight.
  result = api_instance.list_categories_insight(user_guid, insight_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_categories_insight: #{e}"
end
```

#### Using the list_categories_insight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoriesResponseBody>, Integer, Hash)> list_categories_insight_with_http_info(user_guid, insight_guid, opts)

```ruby
begin
  # List all categories associated with an insight.
  data, status_code, headers = api_instance.list_categories_insight_with_http_info(user_guid, insight_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoriesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_categories_insight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**CategoriesResponseBody**](CategoriesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_insights_by_account

> <InsightsResponseBody> list_insights_by_account(account_guid, user_guid, opts)

List insights by account

Use this endpoint to list all insights associated with a specified account GUID.

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

api_instance = MxPlatformRuby::InsightsApi.new
account_guid = 'ACT-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for the `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for the `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List insights by account
  result = api_instance.list_insights_by_account(account_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_insights_by_account: #{e}"
end
```

#### Using the list_insights_by_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsResponseBody>, Integer, Hash)> list_insights_by_account_with_http_info(account_guid, user_guid, opts)

```ruby
begin
  # List insights by account
  data, status_code, headers = api_instance.list_insights_by_account_with_http_info(account_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_insights_by_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for the &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique id for the &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**InsightsResponseBody**](InsightsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_insights_user

> <InsightsResponseBody> list_insights_user(user_guid, opts)

List all insights for a user.

Use this endpoint to list all the insights associated with the user.

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

api_instance = MxPlatformRuby::InsightsApi.new
user_guid = 'USR-1234-abcd' # String | The unique identifier for the user. Defined by MX.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List all insights for a user.
  result = api_instance.list_insights_user(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_insights_user: #{e}"
end
```

#### Using the list_insights_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsResponseBody>, Integer, Hash)> list_insights_user_with_http_info(user_guid, opts)

```ruby
begin
  # List all insights for a user.
  data, status_code, headers = api_instance.list_insights_user_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_insights_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**InsightsResponseBody**](InsightsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_merchants_insight

> <MerchantsResponseBody> list_merchants_insight(user_guid, insight_guid, opts)

List all merchants associated with an insight.

Use this endpoint to list all the merchants associated with the insight.

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

api_instance = MxPlatformRuby::InsightsApi.new
user_guid = 'USR-1234-abcd' # String | The unique identifier for the user. Defined by MX.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List all merchants associated with an insight.
  result = api_instance.list_merchants_insight(user_guid, insight_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_merchants_insight: #{e}"
end
```

#### Using the list_merchants_insight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantsResponseBody>, Integer, Hash)> list_merchants_insight_with_http_info(user_guid, insight_guid, opts)

```ruby
begin
  # List all merchants associated with an insight.
  data, status_code, headers = api_instance.list_merchants_insight_with_http_info(user_guid, insight_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_merchants_insight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**MerchantsResponseBody**](MerchantsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_scheduled_payments_insight

> <ScheduledPaymentsResponseBody> list_scheduled_payments_insight(user_guid, insight_guid, opts)

List all scheduled payments associated with an insight

Use this endpoint to list all the scheduled payments associated with the insight.

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

api_instance = MxPlatformRuby::InsightsApi.new
user_guid = 'USR-1234-abcd' # String | The unique identifier for the user. Defined by MX.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List all scheduled payments associated with an insight
  result = api_instance.list_scheduled_payments_insight(user_guid, insight_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_scheduled_payments_insight: #{e}"
end
```

#### Using the list_scheduled_payments_insight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledPaymentsResponseBody>, Integer, Hash)> list_scheduled_payments_insight_with_http_info(user_guid, insight_guid, opts)

```ruby
begin
  # List all scheduled payments associated with an insight
  data, status_code, headers = api_instance.list_scheduled_payments_insight_with_http_info(user_guid, insight_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledPaymentsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_scheduled_payments_insight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**ScheduledPaymentsResponseBody**](ScheduledPaymentsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions_insight

> <TransactionsResponseBody> list_transactions_insight(user_guid, insight_guid, opts)

List all transactions associated with an insight.

Use this endpoint to list all the transactions associated with the insight.

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

api_instance = MxPlatformRuby::InsightsApi.new
user_guid = 'USR-1234-abcd' # String | The unique identifier for the user. Defined by MX.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List all transactions associated with an insight.
  result = api_instance.list_transactions_insight(user_guid, insight_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_transactions_insight: #{e}"
end
```

#### Using the list_transactions_insight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBody>, Integer, Hash)> list_transactions_insight_with_http_info(user_guid, insight_guid, opts)

```ruby
begin
  # List all transactions associated with an insight.
  data, status_code, headers = api_instance.list_transactions_insight_with_http_info(user_guid, insight_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_transactions_insight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**TransactionsResponseBody**](TransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_insights_user

> <InsightResponseBody> read_insights_user(user_guid, insight_guid)

Read a specific insight.

Use this endpoint to read the attributes of a specific insight according to its unique GUID.

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

api_instance = MxPlatformRuby::InsightsApi.new
user_guid = 'USR-1234-abcd' # String | The unique identifier for the user. Defined by MX.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.

begin
  # Read a specific insight.
  result = api_instance.read_insights_user(user_guid, insight_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->read_insights_user: #{e}"
end
```

#### Using the read_insights_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightResponseBody>, Integer, Hash)> read_insights_user_with_http_info(user_guid, insight_guid)

```ruby
begin
  # Read a specific insight.
  data, status_code, headers = api_instance.read_insights_user_with_http_info(user_guid, insight_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->read_insights_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |

### Return type

[**InsightResponseBody**](InsightResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_insight

> <InsightResponse> update_insight(user_guid, insight_guid, insight_update_request)

Update insight

Use this endpoint to update the attributes of a particular insight according to its unique GUID.

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

api_instance = MxPlatformRuby::InsightsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for the user. Defined by MX.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
insight_update_request = MxPlatformRuby::InsightUpdateRequest.new # InsightUpdateRequest | The insight to be updated (None of these parameters are required, but the user object cannot be empty.)

begin
  # Update insight
  result = api_instance.update_insight(user_guid, insight_guid, insight_update_request)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->update_insight: #{e}"
end
```

#### Using the update_insight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightResponse>, Integer, Hash)> update_insight_with_http_info(user_guid, insight_guid, insight_update_request)

```ruby
begin
  # Update insight
  data, status_code, headers = api_instance.update_insight_with_http_info(user_guid, insight_guid, insight_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->update_insight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **insight_update_request** | [**InsightUpdateRequest**](InsightUpdateRequest.md) | The insight to be updated (None of these parameters are required, but the user object cannot be empty.) |  |

### Return type

[**InsightResponse**](InsightResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

