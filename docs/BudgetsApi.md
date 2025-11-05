# MxPlatformRuby::BudgetsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**auto_generate_budgets**](BudgetsApi.md#auto_generate_budgets) | **POST** /users/{user_guid}/budgets/generate | Auto-generate budgets |
| [**create_budget**](BudgetsApi.md#create_budget) | **POST** /users/{user_guid}/budgets | Create a budget |
| [**delete_budget**](BudgetsApi.md#delete_budget) | **DELETE** /users/{user_guid}/budgets/{budget_guid} | Delete a budget |
| [**list_all_budgets**](BudgetsApi.md#list_all_budgets) | **GET** /users/{user_guid}/budgets | List all budgets |
| [**read_specific_budget**](BudgetsApi.md#read_specific_budget) | **GET** /users/{user_guid}/budgets/{budget_guid} | Read a specific budget |
| [**update_specific_budget**](BudgetsApi.md#update_specific_budget) | **PUT** /users/{user_guid}/budgets/{budget_guid} | Update a specific budget |


## auto_generate_budgets

> <BudgetResponseBody> auto_generate_budgets(user_guid)

Auto-generate budgets

This endpoint will automatically create budgets for several categories based on existing transactions; these budgets are returned as an array. Specifically, budgets will only be generated if the `user` has at least one `transaction` in a given category during each of the two previous calendar months. For example, if the request is made on March 6, and there is at least one \"Bills & Utilities\" `transaction` in both January and February, a budget will be generated for \"Bills & Utilities.\" If there are two \"Bills & Utilities\" transactions in February but none in January, no budget will be generated for that category. If budgets already exist for particular categories, new budgets will be generated and returned based on the available transactions. If one or more budgets remain unchanged, they will nevertheless be returned in the response. If no transaction data for the `user` meet the above criteria, a `422 Unprocessable Entity` error will be returned with status code 4221 along with the message, `There aren't enough transactions to automatically create any budgets`.

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

api_instance = MxPlatformRuby::BudgetsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Auto-generate budgets
  result = api_instance.auto_generate_budgets(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->auto_generate_budgets: #{e}"
end
```

#### Using the auto_generate_budgets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> auto_generate_budgets_with_http_info(user_guid)

```ruby
begin
  # Auto-generate budgets
  data, status_code, headers = api_instance.auto_generate_budgets_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->auto_generate_budgets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## create_budget

> <BudgetResponseBody> create_budget(user_guid, budget_create_request_body)

Create a budget

Create a budget. This endpoint accepts the optional `MX-Skip-Webhook` header and `skip_webhook` parameter. You cannot create a duplicate budget. For example, if you attempt to create a budget for \"Gas\", but that budget already exist, the request will fail. You can retrieve a list of all existing categories by using the List Categories endpoint.

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

api_instance = MxPlatformRuby::BudgetsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
budget_create_request_body = MxPlatformRuby::BudgetCreateRequestBody.new # BudgetCreateRequestBody | 

begin
  # Create a budget
  result = api_instance.create_budget(user_guid, budget_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->create_budget: #{e}"
end
```

#### Using the create_budget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> create_budget_with_http_info(user_guid, budget_create_request_body)

```ruby
begin
  # Create a budget
  data, status_code, headers = api_instance.create_budget_with_http_info(user_guid, budget_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->create_budget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **budget_create_request_body** | [**BudgetCreateRequestBody**](BudgetCreateRequestBody.md) |  |  |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/vnd.mx.api.v1+json
- **Accept**: application/json


## delete_budget

> delete_budget(user_guid, budget_guid)

Delete a budget

Delete a budget.

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

api_instance = MxPlatformRuby::BudgetsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
budget_guid = 'budget_guid_example' # String | The unique identifier for the budget. Defined by MX.

begin
  # Delete a budget
  api_instance.delete_budget(user_guid, budget_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->delete_budget: #{e}"
end
```

#### Using the delete_budget_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_budget_with_http_info(user_guid, budget_guid)

```ruby
begin
  # Delete a budget
  data, status_code, headers = api_instance.delete_budget_with_http_info(user_guid, budget_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->delete_budget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **budget_guid** | **String** | The unique identifier for the budget. Defined by MX. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_all_budgets

> <BudgetResponseBody> list_all_budgets(user_guid)

List all budgets

List all budgets

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

api_instance = MxPlatformRuby::BudgetsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # List all budgets
  result = api_instance.list_all_budgets(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->list_all_budgets: #{e}"
end
```

#### Using the list_all_budgets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> list_all_budgets_with_http_info(user_guid)

```ruby
begin
  # List all budgets
  data, status_code, headers = api_instance.list_all_budgets_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->list_all_budgets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_specific_budget

> <BudgetResponseBody> read_specific_budget(user_guid, budget_guid)

Read a specific budget

Read a specific budget.

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

api_instance = MxPlatformRuby::BudgetsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
budget_guid = 'budget_guid_example' # String | The unique identifier for the budget. Defined by MX.

begin
  # Read a specific budget
  result = api_instance.read_specific_budget(user_guid, budget_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->read_specific_budget: #{e}"
end
```

#### Using the read_specific_budget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> read_specific_budget_with_http_info(user_guid, budget_guid)

```ruby
begin
  # Read a specific budget
  data, status_code, headers = api_instance.read_specific_budget_with_http_info(user_guid, budget_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->read_specific_budget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **budget_guid** | **String** | The unique identifier for the budget. Defined by MX. |  |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_specific_budget

> <BudgetResponseBody> update_specific_budget(user_guid, budget_guid, opts)

Update a specific budget

Update a specific budget.

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

api_instance = MxPlatformRuby::BudgetsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
budget_guid = 'budget_guid_example' # String | The unique identifier for the budget. Defined by MX.
opts = {
  budget_update_request_body: MxPlatformRuby::BudgetUpdateRequestBody.new # BudgetUpdateRequestBody | 
}

begin
  # Update a specific budget
  result = api_instance.update_specific_budget(user_guid, budget_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->update_specific_budget: #{e}"
end
```

#### Using the update_specific_budget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> update_specific_budget_with_http_info(user_guid, budget_guid, opts)

```ruby
begin
  # Update a specific budget
  data, status_code, headers = api_instance.update_specific_budget_with_http_info(user_guid, budget_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->update_specific_budget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **budget_guid** | **String** | The unique identifier for the budget. Defined by MX. |  |
| **budget_update_request_body** | [**BudgetUpdateRequestBody**](BudgetUpdateRequestBody.md) |  | [optional] |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/vnd.mx.api.v1+json
- **Accept**: application/json

