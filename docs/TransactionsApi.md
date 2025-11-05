# MxPlatformRuby::TransactionsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_manual_transaction**](TransactionsApi.md#create_manual_transaction) | **POST** /users/{user_guid}/accounts/{account_guid}/transactions | Create manual transaction |
| [**create_split_transactions**](TransactionsApi.md#create_split_transactions) | **POST** /users/{user_guid}/transactions/{transaction_guid}/split | Create split transactions |
| [**delete_manual_transactions**](TransactionsApi.md#delete_manual_transactions) | **DELETE** /users/{user_guid}/transactions/{transaction_guid} | Delete manual transactions |
| [**delete_split_transactions**](TransactionsApi.md#delete_split_transactions) | **DELETE** /users/{user_guid}/transactions/{transaction_guid}/split | Delete split transactions |
| [**delete_transaction_rule**](TransactionsApi.md#delete_transaction_rule) | **DELETE** /users/{user_guid}/transaction_rules/{transaction_rule_guid} | Delete transaction rule |
| [**enhance_transactions**](TransactionsApi.md#enhance_transactions) | **POST** /transactions/enhance | Enhance transactions |
| [**extend_history**](TransactionsApi.md#extend_history) | **POST** /users/{user_guid}/members/{member_guid}/extend_history | Extend history |
| [**list_transactions**](TransactionsApi.md#list_transactions) | **GET** /users/{user_guid}/transactions | List transactions |
| [**list_transactions_by_account**](TransactionsApi.md#list_transactions_by_account) | **GET** /users/{user_guid}/accounts/{account_guid}/transactions | List transactions by account |
| [**list_transactions_by_member**](TransactionsApi.md#list_transactions_by_member) | **GET** /users/{user_guid}/members/{member_guid}/transactions | List transactions by member |
| [**list_transactions_by_tag**](TransactionsApi.md#list_transactions_by_tag) | **GET** /users/{user_guid}/tags/{tag_guid}/transactions | List transactions by tag |
| [**read_transaction**](TransactionsApi.md#read_transaction) | **GET** /users/{user_guid}/transactions/{transaction_guid} | Read transaction |
| [**repeating_transactions**](TransactionsApi.md#repeating_transactions) | **GET** /users/{user_guid}/repeating_transactions | List Repeating Transactions |
| [**specific_repeating_transaction**](TransactionsApi.md#specific_repeating_transaction) | **GET** /users/{user_guid}/repeating_transactions/{repeating_transaction_guid} | Get a Repeating Transaction |
| [**update_transaction**](TransactionsApi.md#update_transaction) | **PUT** /users/{user_guid}/transactions/{transaction_guid} | Update transaction |
| [**update_transaction_by_account**](TransactionsApi.md#update_transaction_by_account) | **PUT** /users/{user_guid}/members/{member_guid}/accounts/{account_guid}/transactions/{transaction_guid} | Update Transaction by Account |


## create_manual_transaction

> <TransactionCreateResponseBody> create_manual_transaction(user_guid, account_guid, transaction_create_request_body)

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
transaction_create_request_body = MxPlatformRuby::TransactionCreateRequestBody.new # TransactionCreateRequestBody | 

begin
  # Create manual transaction
  result = api_instance.create_manual_transaction(user_guid, account_guid, transaction_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->create_manual_transaction: #{e}"
end
```

#### Using the create_manual_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionCreateResponseBody>, Integer, Hash)> create_manual_transaction_with_http_info(user_guid, account_guid, transaction_create_request_body)

```ruby
begin
  # Create manual transaction
  data, status_code, headers = api_instance.create_manual_transaction_with_http_info(user_guid, account_guid, transaction_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionCreateResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->create_manual_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **transaction_create_request_body** | [**TransactionCreateRequestBody**](TransactionCreateRequestBody.md) |  |  |

### Return type

[**TransactionCreateResponseBody**](TransactionCreateResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## create_split_transactions

> <SplitTransactionsResponseBody> create_split_transactions(transaction_guid, user_guid, opts)

Create split transactions

This endpoint creates two or more child transactions that are branched from a previous transaction. This endpoint allows you to link multiple categories, descriptions, and amounts to a parent transaction.  When a split transaction is created, the parent transaction's `has_been_split` field will automatically be updated to true and the child transactions' `parent_guid` will have the transaction guid of the parent. The total amount of the child transactions must equal the amount of the parent transaction. Once a transaction has been split it can't be split again.    In order to re-split a transaction, it must first be un-split. This can be done by calling the Delete Split Transactions endpoint. Calling this endpoint will delete the existing child transactions and update the parent transaction's `has_been_split` field to false. You can then re-split the parent transaction by calling Create Split Transaction again. 

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
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  split_transaction_request_body: MxPlatformRuby::SplitTransactionRequestBody.new({transactions: MxPlatformRuby::SplitTransactionRequest.new({amount: 54.19})}) # SplitTransactionRequestBody | 
}

begin
  # Create split transactions
  result = api_instance.create_split_transactions(transaction_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->create_split_transactions: #{e}"
end
```

#### Using the create_split_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SplitTransactionsResponseBody>, Integer, Hash)> create_split_transactions_with_http_info(transaction_guid, user_guid, opts)

```ruby
begin
  # Create split transactions
  data, status_code, headers = api_instance.create_split_transactions_with_http_info(transaction_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SplitTransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->create_split_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **split_transaction_request_body** | [**SplitTransactionRequestBody**](SplitTransactionRequestBody.md) |  | [optional] |

### Return type

[**SplitTransactionsResponseBody**](SplitTransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_manual_transactions

> delete_manual_transactions(user_guid, transaction_guid)

Delete manual transactions

Delete a manual transaction. In the path, use the manual transaction guid as the `transaction_guid`, such as `MAN-810828b0-5210-4878-9bd3-f4ce514f90c4`.

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.

begin
  # Delete manual transactions
  api_instance.delete_manual_transactions(user_guid, transaction_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->delete_manual_transactions: #{e}"
end
```

#### Using the delete_manual_transactions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_manual_transactions_with_http_info(user_guid, transaction_guid)

```ruby
begin
  # Delete manual transactions
  data, status_code, headers = api_instance.delete_manual_transactions_with_http_info(user_guid, transaction_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->delete_manual_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_split_transactions

> delete_split_transactions(transaction_guid, user_guid)

Delete split transactions

This endpoint deletes all split transactions linked to a parent transaction, but it leaves the parent transaction active. This request will also update the parent transaction's has_been_split field to false. This endpoint accepts the optional MX-Skip-Webhook header.

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
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete split transactions
  api_instance.delete_split_transactions(transaction_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->delete_split_transactions: #{e}"
end
```

#### Using the delete_split_transactions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_split_transactions_with_http_info(transaction_guid, user_guid)

```ruby
begin
  # Delete split transactions
  data, status_code, headers = api_instance.delete_split_transactions_with_http_info(transaction_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->delete_split_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_transaction_rule

> delete_transaction_rule(transaction_rule_guid, user_guid)

Delete transaction rule

Use this endpoint to permanently delete a transaction rule based on its unique GUID.

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
transaction_rule_guid = 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3' # String | The unique id for a `transaction_rule`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete transaction rule
  api_instance.delete_transaction_rule(transaction_rule_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->delete_transaction_rule: #{e}"
end
```

#### Using the delete_transaction_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_transaction_rule_with_http_info(transaction_rule_guid, user_guid)

```ruby
begin
  # Delete transaction rule
  data, status_code, headers = api_instance.delete_transaction_rule_with_http_info(transaction_rule_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->delete_transaction_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_rule_guid** | **String** | The unique id for a &#x60;transaction_rule&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## enhance_transactions

> <EnhanceTransactionsResponseBody> enhance_transactions(enhance_transactions_request_body)

Enhance transactions

Use this endpoint to categorize, cleanse, and classify transactions. These transactions are not persisted or stored on the MX platform. <br /><br />For more information on returned data, please see the [Enhanced Transactions fields guide](/api-reference/platform-api/reference/transactions-overview#enhanced-transactions).

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
enhance_transactions_request_body = MxPlatformRuby::EnhanceTransactionsRequestBody.new # EnhanceTransactionsRequestBody | Transaction object to be enhanced

begin
  # Enhance transactions
  result = api_instance.enhance_transactions(enhance_transactions_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->enhance_transactions: #{e}"
end
```

#### Using the enhance_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnhanceTransactionsResponseBody>, Integer, Hash)> enhance_transactions_with_http_info(enhance_transactions_request_body)

```ruby
begin
  # Enhance transactions
  data, status_code, headers = api_instance.enhance_transactions_with_http_info(enhance_transactions_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnhanceTransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->enhance_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enhance_transactions_request_body** | [**EnhanceTransactionsRequestBody**](EnhanceTransactionsRequestBody.md) | Transaction object to be enhanced |  |

### Return type

[**EnhanceTransactionsResponseBody**](EnhanceTransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## extend_history

> <MemberResponseBody> extend_history(member_guid, user_guid)

Extend history

Some institutions allow developers to access an extended transaction history with up to 24 months of data associated with a particular member. The process for fetching and then reading this extended transaction history is much like standard aggregation, and it may trigger multi-factor authentication.

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
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Extend history
  result = api_instance.extend_history(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->extend_history: #{e}"
end
```

#### Using the extend_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> extend_history_with_http_info(member_guid, user_guid)

```ruby
begin
  # Extend history
  data, status_code, headers = api_instance.extend_history_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->extend_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions

> <TransactionsResponseBodyIncludes> list_transactions(user_guid, opts)

List transactions

Requests to this endpoint return a list of transactions associated with the specified `user`, across all members and accounts associated with that `user`. <br /><br />Enhanced transaction data may be requested using the `includes` parameter. To use this optional parameter, the value should include the optional metadata requested such as `repeating_transactions`, `merchants`, `classifications`, `geolocations`. For more information, see the [Optional Enhancement Query Parameter guide](/api-reference/platform-api/reference/transactions-overview#enhanced-transactions#optional-enhancement-query-parameter).

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10, # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
  from_date: '2024-01-01', # String | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided.
  to_date: '2024-03-31', # String | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions.
  from_created_at: '2024-01-01', # String | Filter transactions from the date the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  to_created_at: '2024-03-31', # String | Filter transaction to the date in which the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  from_updated_at: '2024-01-01', # String | Filter transactions from the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  to_updated_at: '2024-03-31', # String | Filter transactions to the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  category_guid: 'category_guid_example', # String | Filter transactions belonging to specified `category_guid`.  For example, `?category_guid=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  category_guid2: ['inner_example'], # Array<String> | Filter transactions belonging to any specified `category_guid[]` in url.  For example, `?category_guid[]=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  top_level_category_guid: 'top_level_category_guid_example', # String | Filter transactions belonging to specified `top_level_category_guid`. This must be top level category guid, use `category_guid` for subcategory guid.  For example, `?top_level_category_guid=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  top_level_category_guid2: ['inner_example'], # Array<String> | Filter transactions belonging to any specified `top_level_category_guid[]` in url. This must be top level category guid(s), use `category_guid` for subcategory guid(s).  For example, `?top_level_category_guid[]=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  use_case: 'MONEY_MOVEMENT', # String | The use case associated with the member. Valid values are `PFM` and `MONEY_MOVEMENT`. For example, you can append either `?use_case=PFM` or `?use_case=MONEY_MOVEMENT`.
  includes: 'repeating_transactions,merchants,classifications,geolocations' # String | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: `repeating_transactions`, `merchants`, `classifications`, `geolocations`. The query value is format sensitive. To retrieve all available enhancements, append:  `?includes=repeating_transactions,merchants,classifications,geolocations`.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   `?includes=repeating_transactions,geolocations`.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata. 
}

begin
  # List transactions
  result = api_instance.list_transactions(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions: #{e}"
end
```

#### Using the list_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBodyIncludes>, Integer, Hash)> list_transactions_with_http_info(user_guid, opts)

```ruby
begin
  # List transactions
  data, status_code, headers = api_instance.list_transactions_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBodyIncludes>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |
| **from_date** | **String** | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided. | [optional] |
| **to_date** | **String** | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions. | [optional] |
| **from_created_at** | **String** | Filter transactions from the date the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **to_created_at** | **String** | Filter transaction to the date in which the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **from_updated_at** | **String** | Filter transactions from the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **to_updated_at** | **String** | Filter transactions to the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **category_guid** | **String** | Filter transactions belonging to specified &#x60;category_guid&#x60;.  For example, &#x60;?category_guid&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **category_guid2** | [**Array&lt;String&gt;**](String.md) | Filter transactions belonging to any specified &#x60;category_guid[]&#x60; in url.  For example, &#x60;?category_guid[]&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **top_level_category_guid** | **String** | Filter transactions belonging to specified &#x60;top_level_category_guid&#x60;. This must be top level category guid, use &#x60;category_guid&#x60; for subcategory guid.  For example, &#x60;?top_level_category_guid&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **top_level_category_guid2** | [**Array&lt;String&gt;**](String.md) | Filter transactions belonging to any specified &#x60;top_level_category_guid[]&#x60; in url. This must be top level category guid(s), use &#x60;category_guid&#x60; for subcategory guid(s).  For example, &#x60;?top_level_category_guid[]&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **use_case** | **String** | The use case associated with the member. Valid values are &#x60;PFM&#x60; and &#x60;MONEY_MOVEMENT&#x60;. For example, you can append either &#x60;?use_case&#x3D;PFM&#x60; or &#x60;?use_case&#x3D;MONEY_MOVEMENT&#x60;. | [optional] |
| **includes** | **String** | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: &#x60;repeating_transactions&#x60;, &#x60;merchants&#x60;, &#x60;classifications&#x60;, &#x60;geolocations&#x60;. The query value is format sensitive. To retrieve all available enhancements, append:  &#x60;?includes&#x3D;repeating_transactions,merchants,classifications,geolocations&#x60;.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   &#x60;?includes&#x3D;repeating_transactions,geolocations&#x60;.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata.  | [optional] |

### Return type

[**TransactionsResponseBodyIncludes**](TransactionsResponseBodyIncludes.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions_by_account

> <TransactionsResponseBodyIncludes> list_transactions_by_account(account_guid, user_guid, opts)

List transactions by account

Requests to this endpoint return a list of transactions associated with the specified account. <br /><br />Enhanced transaction data may be requested using the `includes` parameter.  To use this optional parameter, the value should include the optional metadata requested such as `repeating_transactions`, `merchants`, `classifications`, `geolocations`. For more information, see the [Optional Enhancement Query Parameter guide](/api-reference/platform-api/reference/transactions-overview#enhanced-transactions#optional-enhancement-query-parameter). 

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
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10, # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
  from_date: '2024-01-01', # String | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided.
  to_date: '2024-03-31', # String | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions.
  from_created_at: '2024-01-01', # String | Filter transactions from the date the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  to_created_at: '2024-03-31', # String | Filter transaction to the date in which the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  from_updated_at: '2024-01-01', # String | Filter transactions from the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  to_updated_at: '2024-03-31', # String | Filter transactions to the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  category_guid: 'category_guid_example', # String | Filter transactions belonging to specified `category_guid`.  For example, `?category_guid=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  category_guid2: ['inner_example'], # Array<String> | Filter transactions belonging to any specified `category_guid[]` in url.  For example, `?category_guid[]=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  top_level_category_guid: 'top_level_category_guid_example', # String | Filter transactions belonging to specified `top_level_category_guid`. This must be top level category guid, use `category_guid` for subcategory guid.  For example, `?top_level_category_guid=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  top_level_category_guid2: ['inner_example'], # Array<String> | Filter transactions belonging to any specified `top_level_category_guid[]` in url. This must be top level category guid(s), use `category_guid` for subcategory guid(s).  For example, `?top_level_category_guid[]=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  includes: 'repeating_transactions,merchants,classifications,geolocations' # String | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: `repeating_transactions`, `merchants`, `classifications`, `geolocations`. The query value is format sensitive. To retrieve all available enhancements, append:  `?includes=repeating_transactions,merchants,classifications,geolocations`.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   `?includes=repeating_transactions,geolocations`.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata. 
}

begin
  # List transactions by account
  result = api_instance.list_transactions_by_account(account_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_by_account: #{e}"
end
```

#### Using the list_transactions_by_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBodyIncludes>, Integer, Hash)> list_transactions_by_account_with_http_info(account_guid, user_guid, opts)

```ruby
begin
  # List transactions by account
  data, status_code, headers = api_instance.list_transactions_by_account_with_http_info(account_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBodyIncludes>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_by_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |
| **from_date** | **String** | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided. | [optional] |
| **to_date** | **String** | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions. | [optional] |
| **from_created_at** | **String** | Filter transactions from the date the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **to_created_at** | **String** | Filter transaction to the date in which the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **from_updated_at** | **String** | Filter transactions from the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **to_updated_at** | **String** | Filter transactions to the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **category_guid** | **String** | Filter transactions belonging to specified &#x60;category_guid&#x60;.  For example, &#x60;?category_guid&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **category_guid2** | [**Array&lt;String&gt;**](String.md) | Filter transactions belonging to any specified &#x60;category_guid[]&#x60; in url.  For example, &#x60;?category_guid[]&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **top_level_category_guid** | **String** | Filter transactions belonging to specified &#x60;top_level_category_guid&#x60;. This must be top level category guid, use &#x60;category_guid&#x60; for subcategory guid.  For example, &#x60;?top_level_category_guid&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **top_level_category_guid2** | [**Array&lt;String&gt;**](String.md) | Filter transactions belonging to any specified &#x60;top_level_category_guid[]&#x60; in url. This must be top level category guid(s), use &#x60;category_guid&#x60; for subcategory guid(s).  For example, &#x60;?top_level_category_guid[]&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **includes** | **String** | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: &#x60;repeating_transactions&#x60;, &#x60;merchants&#x60;, &#x60;classifications&#x60;, &#x60;geolocations&#x60;. The query value is format sensitive. To retrieve all available enhancements, append:  &#x60;?includes&#x3D;repeating_transactions,merchants,classifications,geolocations&#x60;.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   &#x60;?includes&#x3D;repeating_transactions,geolocations&#x60;.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata.  | [optional] |

### Return type

[**TransactionsResponseBodyIncludes**](TransactionsResponseBodyIncludes.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions_by_member

> <TransactionsResponseBodyIncludes> list_transactions_by_member(member_guid, user_guid, opts)

List transactions by member

Requests to this endpoint return a list of transactions associated with the specified `member`, across all accounts associated with that `member`. <br /><br />Enhanced transaction data may be requested using the `includes` parameter. To use this optional parameter, the value should include the optional metadata requested such as `repeating_transactions`, `merchants`, `classifications`, `geolocations`. For more information, see the [Optional Enhancement Query Parameter guide](/api-reference/platform-api/reference/transactions-overview#enhanced-transactions#optional-enhancement-query-parameter).

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
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10, # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
  from_date: '2024-01-01', # String | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided.
  to_date: '2024-03-31', # String | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions.
  from_created_at: '2024-01-01', # String | Filter transactions from the date the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  to_created_at: '2024-03-31', # String | Filter transaction to the date in which the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  from_updated_at: '2024-01-01', # String | Filter transactions from the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  to_updated_at: '2024-03-31', # String | Filter transactions to the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  category_guid: 'category_guid_example', # String | Filter transactions belonging to specified `category_guid`.  For example, `?category_guid=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  category_guid2: ['inner_example'], # Array<String> | Filter transactions belonging to any specified `category_guid[]` in url.  For example, `?category_guid[]=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  top_level_category_guid: 'top_level_category_guid_example', # String | Filter transactions belonging to specified `top_level_category_guid`. This must be top level category guid, use `category_guid` for subcategory guid.  For example, `?top_level_category_guid=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  top_level_category_guid2: ['inner_example'], # Array<String> | Filter transactions belonging to any specified `top_level_category_guid[]` in url. This must be top level category guid(s), use `category_guid` for subcategory guid(s).  For example, `?top_level_category_guid[]=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  includes: 'repeating_transactions,merchants,classifications,geolocations' # String | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: `repeating_transactions`, `merchants`, `classifications`, `geolocations`. The query value is format sensitive. To retrieve all available enhancements, append:  `?includes=repeating_transactions,merchants,classifications,geolocations`.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   `?includes=repeating_transactions,geolocations`.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata. 
}

begin
  # List transactions by member
  result = api_instance.list_transactions_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_by_member: #{e}"
end
```

#### Using the list_transactions_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBodyIncludes>, Integer, Hash)> list_transactions_by_member_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List transactions by member
  data, status_code, headers = api_instance.list_transactions_by_member_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBodyIncludes>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |
| **from_date** | **String** | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided. | [optional] |
| **to_date** | **String** | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions. | [optional] |
| **from_created_at** | **String** | Filter transactions from the date the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **to_created_at** | **String** | Filter transaction to the date in which the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **from_updated_at** | **String** | Filter transactions from the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **to_updated_at** | **String** | Filter transactions to the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **category_guid** | **String** | Filter transactions belonging to specified &#x60;category_guid&#x60;.  For example, &#x60;?category_guid&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **category_guid2** | [**Array&lt;String&gt;**](String.md) | Filter transactions belonging to any specified &#x60;category_guid[]&#x60; in url.  For example, &#x60;?category_guid[]&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **top_level_category_guid** | **String** | Filter transactions belonging to specified &#x60;top_level_category_guid&#x60;. This must be top level category guid, use &#x60;category_guid&#x60; for subcategory guid.  For example, &#x60;?top_level_category_guid&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **top_level_category_guid2** | [**Array&lt;String&gt;**](String.md) | Filter transactions belonging to any specified &#x60;top_level_category_guid[]&#x60; in url. This must be top level category guid(s), use &#x60;category_guid&#x60; for subcategory guid(s).  For example, &#x60;?top_level_category_guid[]&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **includes** | **String** | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: &#x60;repeating_transactions&#x60;, &#x60;merchants&#x60;, &#x60;classifications&#x60;, &#x60;geolocations&#x60;. The query value is format sensitive. To retrieve all available enhancements, append:  &#x60;?includes&#x3D;repeating_transactions,merchants,classifications,geolocations&#x60;.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   &#x60;?includes&#x3D;repeating_transactions,geolocations&#x60;.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata.  | [optional] |

### Return type

[**TransactionsResponseBodyIncludes**](TransactionsResponseBodyIncludes.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions_by_tag

> <TransactionsResponseBodyIncludes> list_transactions_by_tag(user_guid, tag_guid, opts)

List transactions by tag

Use this endpoint to get a list of all transactions associated with a particular tag according to the tag's unique GUID. This lists all transactions that have been assigned to a particular tag using the create tagging endpoint. <br /><br />Enhanced transaction data may be requested using the `includes` parameter. To use this optional parameter, the value should include the optional metadata requested such as `repeating_transactions`, `merchants`, `classifications`, `geolocations`. For more information, see the [Optional Enhancement Query Parameter guide](/api-reference/platform-api/reference/transactions-overview#enhanced-transactions#optional-enhancement-query-parameter).

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
tag_guid = 'TAG-aef36e72-6294-4c38-844d-e573e80aed52' # String | The unique id for a `tag`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10, # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
  from_date: '2024-01-01', # String | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided.
  to_date: '2024-03-31', # String | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions.
  from_created_at: '2024-01-01', # String | Filter transactions from the date the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  to_created_at: '2024-03-31', # String | Filter transaction to the date in which the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  from_updated_at: '2024-01-01', # String | Filter transactions from the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  to_updated_at: '2024-03-31', # String | Filter transactions to the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months.
  category_guid: 'category_guid_example', # String | Filter transactions belonging to specified `category_guid`.  For example, `?category_guid=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  category_guid2: ['inner_example'], # Array<String> | Filter transactions belonging to any specified `category_guid[]` in url.  For example, `?category_guid[]=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  top_level_category_guid: 'top_level_category_guid_example', # String | Filter transactions belonging to specified `top_level_category_guid`. This must be top level category guid, use `category_guid` for subcategory guid.  For example, `?top_level_category_guid=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  top_level_category_guid2: ['inner_example'], # Array<String> | Filter transactions belonging to any specified `top_level_category_guid[]` in url. This must be top level category guid(s), use `category_guid` for subcategory guid(s).  For example, `?top_level_category_guid[]=CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874`.
  use_case: 'MONEY_MOVEMENT', # String | The use case associated with the member. Valid values are `PFM` and `MONEY_MOVEMENT`. For example, you can append either `?use_case=PFM` or `?use_case=MONEY_MOVEMENT`.
  includes: 'repeating_transactions,merchants,classifications,geolocations' # String | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: `repeating_transactions`, `merchants`, `classifications`, `geolocations`. The query value is format sensitive. To retrieve all available enhancements, append:  `?includes=repeating_transactions,merchants,classifications,geolocations`.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   `?includes=repeating_transactions,geolocations`.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata. 
}

begin
  # List transactions by tag
  result = api_instance.list_transactions_by_tag(user_guid, tag_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_by_tag: #{e}"
end
```

#### Using the list_transactions_by_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBodyIncludes>, Integer, Hash)> list_transactions_by_tag_with_http_info(user_guid, tag_guid, opts)

```ruby
begin
  # List transactions by tag
  data, status_code, headers = api_instance.list_transactions_by_tag_with_http_info(user_guid, tag_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBodyIncludes>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_by_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **tag_guid** | **String** | The unique id for a &#x60;tag&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |
| **from_date** | **String** | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided. | [optional] |
| **to_date** | **String** | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions. | [optional] |
| **from_created_at** | **String** | Filter transactions from the date the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **to_created_at** | **String** | Filter transaction to the date in which the transaction was created. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **from_updated_at** | **String** | Filter transactions from the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **to_updated_at** | **String** | Filter transactions to the date in which the transaction was updated. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Maximum date range limit is 6 months. | [optional] |
| **category_guid** | **String** | Filter transactions belonging to specified &#x60;category_guid&#x60;.  For example, &#x60;?category_guid&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **category_guid2** | [**Array&lt;String&gt;**](String.md) | Filter transactions belonging to any specified &#x60;category_guid[]&#x60; in url.  For example, &#x60;?category_guid[]&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **top_level_category_guid** | **String** | Filter transactions belonging to specified &#x60;top_level_category_guid&#x60;. This must be top level category guid, use &#x60;category_guid&#x60; for subcategory guid.  For example, &#x60;?top_level_category_guid&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **top_level_category_guid2** | [**Array&lt;String&gt;**](String.md) | Filter transactions belonging to any specified &#x60;top_level_category_guid[]&#x60; in url. This must be top level category guid(s), use &#x60;category_guid&#x60; for subcategory guid(s).  For example, &#x60;?top_level_category_guid[]&#x3D;CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874&#x60;. | [optional] |
| **use_case** | **String** | The use case associated with the member. Valid values are &#x60;PFM&#x60; and &#x60;MONEY_MOVEMENT&#x60;. For example, you can append either &#x60;?use_case&#x3D;PFM&#x60; or &#x60;?use_case&#x3D;MONEY_MOVEMENT&#x60;. | [optional] |
| **includes** | **String** | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: &#x60;repeating_transactions&#x60;, &#x60;merchants&#x60;, &#x60;classifications&#x60;, &#x60;geolocations&#x60;. The query value is format sensitive. To retrieve all available enhancements, append:  &#x60;?includes&#x3D;repeating_transactions,merchants,classifications,geolocations&#x60;.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   &#x60;?includes&#x3D;repeating_transactions,geolocations&#x60;.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata.  | [optional] |

### Return type

[**TransactionsResponseBodyIncludes**](TransactionsResponseBodyIncludes.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_transaction

> <TransactionsResponseBodyIncludes> read_transaction(user_guid, transaction_guid, opts)

Read transaction

Requests to this endpoint will return the attributes of the specified `transaction`. To read a manual transaction, use the manual transaction guid in the path as the `transactionGuid`. <br /><br />Enhanced transaction data may be requested using the `includes` parameter. To use this optional parameter, the value should include the optional metadata requested such as `repeating_transactions`, `merchants`, `classifications`, `geolocations`. For more information, see the [Optional Enhancement Query Parameter guide](/api-reference/platform-api/reference/transactions-overview#enhanced-transactions#optional-enhancement-query-parameter).

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
opts = {
  includes: 'repeating_transactions,merchants,classifications,geolocations' # String | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: `repeating_transactions`, `merchants`, `classifications`, `geolocations`. The query value is format sensitive. To retrieve all available enhancements, append:  `?includes=repeating_transactions,merchants,classifications,geolocations`.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   `?includes=repeating_transactions,geolocations`.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata. 
}

begin
  # Read transaction
  result = api_instance.read_transaction(user_guid, transaction_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->read_transaction: #{e}"
end
```

#### Using the read_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBodyIncludes>, Integer, Hash)> read_transaction_with_http_info(user_guid, transaction_guid, opts)

```ruby
begin
  # Read transaction
  data, status_code, headers = api_instance.read_transaction_with_http_info(user_guid, transaction_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBodyIncludes>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->read_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **includes** | **String** | Options for enhanced transactions. This query parameter is optional. Possible additional metadata: &#x60;repeating_transactions&#x60;, &#x60;merchants&#x60;, &#x60;classifications&#x60;, &#x60;geolocations&#x60;. The query value is format sensitive. To retrieve all available enhancements, append:  &#x60;?includes&#x3D;repeating_transactions,merchants,classifications,geolocations&#x60;.    The query options may be combined to specific enhancements. For example, to request Repeating Transactions and Geolocation data, use:   &#x60;?includes&#x3D;repeating_transactions,geolocations&#x60;.  - Repeating Transactions: Identifies transactions with predictable recurrence patterns (e.g., Bill, Income, Subscription). - Merchants: Enriches transactions with merchant name. - Classifications: Provides more insight into the type of money movement that is occurring on the transaction, whether it be retail or investments. - Geolocation: Provides geographic metadata.  | [optional] |

### Return type

[**TransactionsResponseBodyIncludes**](TransactionsResponseBodyIncludes.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## repeating_transactions

> <RepeatingTransactionsResponseBody> repeating_transactions(user_guid)

List Repeating Transactions

Retrieve a list of all recurring transactions for a user. <br /><br />For more see the [Repeating Transactions guide](repeating-transactions-overview.mdx).

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # List Repeating Transactions
  result = api_instance.repeating_transactions(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->repeating_transactions: #{e}"
end
```

#### Using the repeating_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepeatingTransactionsResponseBody>, Integer, Hash)> repeating_transactions_with_http_info(user_guid)

```ruby
begin
  # List Repeating Transactions
  data, status_code, headers = api_instance.repeating_transactions_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepeatingTransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->repeating_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**RepeatingTransactionsResponseBody**](RepeatingTransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## specific_repeating_transaction

> <RepeatingTransactionsResponseBody> specific_repeating_transaction(user_guid, repeating_transaction_guid)

Get a Repeating Transaction

Get a Specific Repeating Transaction. <br /><br />List For more see the [Repeating Transactions guide](repeating-transactions-overview.mdx)

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
repeating_transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a recurring transaction.

begin
  # Get a Repeating Transaction
  result = api_instance.specific_repeating_transaction(user_guid, repeating_transaction_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->specific_repeating_transaction: #{e}"
end
```

#### Using the specific_repeating_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepeatingTransactionsResponseBody>, Integer, Hash)> specific_repeating_transaction_with_http_info(user_guid, repeating_transaction_guid)

```ruby
begin
  # Get a Repeating Transaction
  data, status_code, headers = api_instance.specific_repeating_transaction_with_http_info(user_guid, repeating_transaction_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepeatingTransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->specific_repeating_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **repeating_transaction_guid** | **String** | The unique id for a recurring transaction. |  |

### Return type

[**RepeatingTransactionsResponseBody**](RepeatingTransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_transaction

> <TransactionResponseBody> update_transaction(user_guid, transaction_guid, transaction_update_request_body)

Update transaction

Use this endpoint to update a specific transaction according to its unique GUID.

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
transaction_update_request_body = MxPlatformRuby::TransactionUpdateRequestBody.new # TransactionUpdateRequestBody | Transaction object with the fields to be updated.

begin
  # Update transaction
  result = api_instance.update_transaction(user_guid, transaction_guid, transaction_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->update_transaction: #{e}"
end
```

#### Using the update_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponseBody>, Integer, Hash)> update_transaction_with_http_info(user_guid, transaction_guid, transaction_update_request_body)

```ruby
begin
  # Update transaction
  data, status_code, headers = api_instance.update_transaction_with_http_info(user_guid, transaction_guid, transaction_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->update_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **transaction_update_request_body** | [**TransactionUpdateRequestBody**](TransactionUpdateRequestBody.md) | Transaction object with the fields to be updated. |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_transaction_by_account

> <TransactionResponseBody> update_transaction_by_account(user_guid, member_guid, account_guid, transaction_guid, transaction_update_request_body)

Update Transaction by Account

Use this endpoint to update a specific transaction according to its unique GUID.

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
transaction_update_request_body = MxPlatformRuby::TransactionUpdateRequestBody.new # TransactionUpdateRequestBody | Transaction object to be updated

begin
  # Update Transaction by Account
  result = api_instance.update_transaction_by_account(user_guid, member_guid, account_guid, transaction_guid, transaction_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->update_transaction_by_account: #{e}"
end
```

#### Using the update_transaction_by_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponseBody>, Integer, Hash)> update_transaction_by_account_with_http_info(user_guid, member_guid, account_guid, transaction_guid, transaction_update_request_body)

```ruby
begin
  # Update Transaction by Account
  data, status_code, headers = api_instance.update_transaction_by_account_with_http_info(user_guid, member_guid, account_guid, transaction_guid, transaction_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionsApi->update_transaction_by_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **transaction_update_request_body** | [**TransactionUpdateRequestBody**](TransactionUpdateRequestBody.md) | Transaction object to be updated |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

