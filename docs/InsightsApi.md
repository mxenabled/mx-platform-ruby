# MxPlatformRuby::InsightsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_accounts_insight**](InsightsApi.md#list_accounts_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/accounts | List all accounts associated with an insight |
| [**list_categories_insight**](InsightsApi.md#list_categories_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/categories | List all categories associated with an insight |
| [**list_insights_by_account**](InsightsApi.md#list_insights_by_account) | **GET** /users/{user_guid}/accounts/{account_guid}/insights | List insights by account |
| [**list_insights_by_transaction**](InsightsApi.md#list_insights_by_transaction) | **GET** /users/{user_guid}/transactions/{transaction_guid}/insights | List insights by transaction |
| [**list_insights_user**](InsightsApi.md#list_insights_user) | **GET** /users/{user_guid}/insights | List all insights for a user |
| [**list_merchants_insight**](InsightsApi.md#list_merchants_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/merchants | List all merchants associated with an insight |
| [**list_scheduled_payments_insight**](InsightsApi.md#list_scheduled_payments_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/scheduled_payments | List all scheduled payments associated with an insight |
| [**list_transactions_insight**](InsightsApi.md#list_transactions_insight) | **GET** /users/{user_guid}/insights/{insight_guid}/transactions | List all transactions associated with an insight |
| [**read_insight_user**](InsightsApi.md#read_insight_user) | **GET** /users/{user_guid}/insights/{insight_guid} | Read insight |
| [**update_insight**](InsightsApi.md#update_insight) | **PUT** /users/{user_guid}/insights/{insight_guid} | Update insight |


## list_accounts_insight

> <AccountsResponseBody> list_accounts_insight(user_guid, insight_guid, opts)

List all accounts associated with an insight

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
}

begin
  # List all accounts associated with an insight
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
  # List all accounts associated with an insight
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
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**AccountsResponseBody**](AccountsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_categories_insight

> <CategoriesResponseBody> list_categories_insight(user_guid, insight_guid, opts)

List all categories associated with an insight

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
}

begin
  # List all categories associated with an insight
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
  # List all categories associated with an insight
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
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

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

Use this endpoint to list all insights associated with an account GUID.

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
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
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
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**InsightsResponseBody**](InsightsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_insights_by_transaction

> <InsightsResponseBody> list_insights_by_transaction(transaction_guid, user_guid, opts)

List insights by transaction

Use this endpoint to list all insights associated with a transaction GUID.

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
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
}

begin
  # List insights by transaction
  result = api_instance.list_insights_by_transaction(transaction_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_insights_by_transaction: #{e}"
end
```

#### Using the list_insights_by_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightsResponseBody>, Integer, Hash)> list_insights_by_transaction_with_http_info(transaction_guid, user_guid, opts)

```ruby
begin
  # List insights by transaction
  data, status_code, headers = api_instance.list_insights_by_transaction_with_http_info(transaction_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->list_insights_by_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**InsightsResponseBody**](InsightsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_insights_user

> <InsightsResponseBody> list_insights_user(user_guid, opts)

List all insights for a user

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
}

begin
  # List all insights for a user
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
  # List all insights for a user
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
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**InsightsResponseBody**](InsightsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_merchants_insight

> <MerchantsResponseBody> list_merchants_insight(user_guid, insight_guid, opts)

List all merchants associated with an insight

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
}

begin
  # List all merchants associated with an insight
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
  # List all merchants associated with an insight
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
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
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
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**ScheduledPaymentsResponseBody**](ScheduledPaymentsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions_insight

> <TransactionsResponseBody> list_transactions_insight(user_guid, insight_guid, opts)

List all transactions associated with an insight

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
}

begin
  # List all transactions associated with an insight
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
  # List all transactions associated with an insight
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
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**TransactionsResponseBody**](TransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_insight_user

> <InsightResponseBody> read_insight_user(user_guid, insight_guid)

Read insight

Use this endpoint to read the attributes of an insight according to its unique GUID.

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.

begin
  # Read insight
  result = api_instance.read_insight_user(user_guid, insight_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->read_insight_user: #{e}"
end
```

#### Using the read_insight_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightResponseBody>, Integer, Hash)> read_insight_user_with_http_info(user_guid, insight_guid)

```ruby
begin
  # Read insight
  data, status_code, headers = api_instance.read_insight_user_with_http_info(user_guid, insight_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsightResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->read_insight_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |

### Return type

[**InsightResponseBody**](InsightResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_insight

> <InsightResponse> update_insight(user_guid, insight_guid, insight_update_request_body)

Update insight

Use this endpoint to update the attributes of an insight according to its unique GUID.

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
insight_guid = 'BET-1234-abcd' # String | The unique identifier for the insight. Defined by MX.
insight_update_request_body = MxPlatformRuby::InsightUpdateRequestBody.new # InsightUpdateRequestBody | The insight to be updated (None of these parameters are required, but the user object cannot be empty.)

begin
  # Update insight
  result = api_instance.update_insight(user_guid, insight_guid, insight_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InsightsApi->update_insight: #{e}"
end
```

#### Using the update_insight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsightResponse>, Integer, Hash)> update_insight_with_http_info(user_guid, insight_guid, insight_update_request_body)

```ruby
begin
  # Update insight
  data, status_code, headers = api_instance.update_insight_with_http_info(user_guid, insight_guid, insight_update_request_body)
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
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **insight_guid** | **String** | The unique identifier for the insight. Defined by MX. |  |
| **insight_update_request_body** | [**InsightUpdateRequestBody**](InsightUpdateRequestBody.md) | The insight to be updated (None of these parameters are required, but the user object cannot be empty.) |  |

### Return type

[**InsightResponse**](InsightResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

