# MxPlatformRuby::TransactionRulesApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_transaction_rule**](TransactionRulesApi.md#create_transaction_rule) | **POST** /users/{user_guid}/transaction_rules | Create transaction rule |
| [**list_transaction_rules**](TransactionRulesApi.md#list_transaction_rules) | **GET** /users/{user_guid}/transaction_rules | List transaction rules |
| [**read_transaction_rule**](TransactionRulesApi.md#read_transaction_rule) | **GET** /users/{user_guid}/transaction_rules/{transaction_rule_guid} | Read transaction rule |
| [**update_transaction_rule**](TransactionRulesApi.md#update_transaction_rule) | **PUT** /users/{user_guid}/transaction_rules/{transaction_rule_guid} | Update transaction rule |


## create_transaction_rule

> <TransactionRuleResponseBody> create_transaction_rule(user_guid, transaction_rule_create_request_body)

Create transaction rule

Use this endpoint to create a new transaction rule. The newly-created `transaction_rule` object will be returned if successful.

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

api_instance = MxPlatformRuby::TransactionRulesApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
transaction_rule_create_request_body = MxPlatformRuby::TransactionRuleCreateRequestBody.new # TransactionRuleCreateRequestBody | TransactionRule object to be created with optional parameters (description) and required parameters (category_guid and match_description)

begin
  # Create transaction rule
  result = api_instance.create_transaction_rule(user_guid, transaction_rule_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionRulesApi->create_transaction_rule: #{e}"
end
```

#### Using the create_transaction_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRuleResponseBody>, Integer, Hash)> create_transaction_rule_with_http_info(user_guid, transaction_rule_create_request_body)

```ruby
begin
  # Create transaction rule
  data, status_code, headers = api_instance.create_transaction_rule_with_http_info(user_guid, transaction_rule_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRuleResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionRulesApi->create_transaction_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **transaction_rule_create_request_body** | [**TransactionRuleCreateRequestBody**](TransactionRuleCreateRequestBody.md) | TransactionRule object to be created with optional parameters (description) and required parameters (category_guid and match_description) |  |

### Return type

[**TransactionRuleResponseBody**](TransactionRuleResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## list_transaction_rules

> <TransactionRulesResponseBody> list_transaction_rules(user_guid, opts)

List transaction rules

Use this endpoint to read the attributes of all existing transaction rules belonging to the user.

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

api_instance = MxPlatformRuby::TransactionRulesApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List transaction rules
  result = api_instance.list_transaction_rules(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionRulesApi->list_transaction_rules: #{e}"
end
```

#### Using the list_transaction_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRulesResponseBody>, Integer, Hash)> list_transaction_rules_with_http_info(user_guid, opts)

```ruby
begin
  # List transaction rules
  data, status_code, headers = api_instance.list_transaction_rules_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRulesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionRulesApi->list_transaction_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**TransactionRulesResponseBody**](TransactionRulesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_transaction_rule

> <TransactionRuleResponseBody> read_transaction_rule(transaction_rule_guid, user_guid)

Read transaction rule

Use this endpoint to read the attributes of an existing transaction rule based on the rule’s unique GUID.

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

api_instance = MxPlatformRuby::TransactionRulesApi.new
transaction_rule_guid = 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3' # String | The unique id for a `transaction_rule`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read transaction rule
  result = api_instance.read_transaction_rule(transaction_rule_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionRulesApi->read_transaction_rule: #{e}"
end
```

#### Using the read_transaction_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRuleResponseBody>, Integer, Hash)> read_transaction_rule_with_http_info(transaction_rule_guid, user_guid)

```ruby
begin
  # Read transaction rule
  data, status_code, headers = api_instance.read_transaction_rule_with_http_info(transaction_rule_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRuleResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionRulesApi->read_transaction_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_rule_guid** | **String** | The unique id for a &#x60;transaction_rule&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**TransactionRuleResponseBody**](TransactionRuleResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_transaction_rule

> <TransactionRuleResponseBody> update_transaction_rule(transaction_rule_guid, user_guid, transaction_rule_update_request_body)

Update transaction rule

Use this endpoint to update the attributes of a specific transaction rule based on its unique GUID. The API will respond with the updated transaction_rule object. Any attributes not provided will be left unchanged.

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

api_instance = MxPlatformRuby::TransactionRulesApi.new
transaction_rule_guid = 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3' # String | The unique id for a `transaction_rule`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
transaction_rule_update_request_body = MxPlatformRuby::TransactionRuleUpdateRequestBody.new # TransactionRuleUpdateRequestBody | TransactionRule object to be updated

begin
  # Update transaction rule
  result = api_instance.update_transaction_rule(transaction_rule_guid, user_guid, transaction_rule_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionRulesApi->update_transaction_rule: #{e}"
end
```

#### Using the update_transaction_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRuleResponseBody>, Integer, Hash)> update_transaction_rule_with_http_info(transaction_rule_guid, user_guid, transaction_rule_update_request_body)

```ruby
begin
  # Update transaction rule
  data, status_code, headers = api_instance.update_transaction_rule_with_http_info(transaction_rule_guid, user_guid, transaction_rule_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRuleResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TransactionRulesApi->update_transaction_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_rule_guid** | **String** | The unique id for a &#x60;transaction_rule&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **transaction_rule_update_request_body** | [**TransactionRuleUpdateRequestBody**](TransactionRuleUpdateRequestBody.md) | TransactionRule object to be updated |  |

### Return type

[**TransactionRuleResponseBody**](TransactionRuleResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

