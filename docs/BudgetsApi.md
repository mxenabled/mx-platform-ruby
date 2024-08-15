# MxPlatformRuby::BudgetsApi

All URIs are relative to *https://api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_user_guid_budgets_budget_guid_delete**](BudgetsApi.md#users_user_guid_budgets_budget_guid_delete) | **DELETE** /users/{user_guid}/budgets/{budget_guid} | Delete a budget |
| [**users_user_guid_budgets_budget_guid_get**](BudgetsApi.md#users_user_guid_budgets_budget_guid_get) | **GET** /users/{user_guid}/budgets/{budget_guid} | Read a specific budget |
| [**users_user_guid_budgets_budget_guid_put**](BudgetsApi.md#users_user_guid_budgets_budget_guid_put) | **PUT** /users/{user_guid}/budgets/{budget_guid} | Update a specific budget |
| [**users_user_guid_budgets_generate_post**](BudgetsApi.md#users_user_guid_budgets_generate_post) | **POST** /users/{user_guid}/budgets/generate | Auto-generate budgets |
| [**users_user_guid_budgets_get**](BudgetsApi.md#users_user_guid_budgets_get) | **GET** /users/{user_guid}/budgets | List all budgets |
| [**users_user_guid_budgets_post**](BudgetsApi.md#users_user_guid_budgets_post) | **POST** /users/{user_guid}/budgets | Create a budget |


## users_user_guid_budgets_budget_guid_delete

> users_user_guid_budgets_budget_guid_delete(user_guid, budget_guid)

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
user_guid = 'user_guid_example' # String | The unique identifier for the budget. Defined by MX.
budget_guid = 'budget_guid_example' # String | The unique identifier for the budget. Defined by MX.

begin
  # Delete a budget
  api_instance.users_user_guid_budgets_budget_guid_delete(user_guid, budget_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_budget_guid_delete: #{e}"
end
```

#### Using the users_user_guid_budgets_budget_guid_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> users_user_guid_budgets_budget_guid_delete_with_http_info(user_guid, budget_guid)

```ruby
begin
  # Delete a budget
  data, status_code, headers = api_instance.users_user_guid_budgets_budget_guid_delete_with_http_info(user_guid, budget_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_budget_guid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the budget. Defined by MX. |  |
| **budget_guid** | **String** | The unique identifier for the budget. Defined by MX. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## users_user_guid_budgets_budget_guid_get

> <BudgetResponseBody> users_user_guid_budgets_budget_guid_get(budget_guid, user_guid)

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
budget_guid = 'budget_guid_example' # String | The unique identifier for the budget. Defined by MX.
user_guid = 'user_guid_example' # String | The unique identifier for the budget. Defined by MX.

begin
  # Read a specific budget
  result = api_instance.users_user_guid_budgets_budget_guid_get(budget_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_budget_guid_get: #{e}"
end
```

#### Using the users_user_guid_budgets_budget_guid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> users_user_guid_budgets_budget_guid_get_with_http_info(budget_guid, user_guid)

```ruby
begin
  # Read a specific budget
  data, status_code, headers = api_instance.users_user_guid_budgets_budget_guid_get_with_http_info(budget_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_budget_guid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_guid** | **String** | The unique identifier for the budget. Defined by MX. |  |
| **user_guid** | **String** | The unique identifier for the budget. Defined by MX. |  |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_user_guid_budgets_budget_guid_put

> <BudgetResponseBody> users_user_guid_budgets_budget_guid_put(user_guid, budget_guid, opts)

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
user_guid = 'user_guid_example' # String | The unique identifier for the budget. Defined by MX.
budget_guid = 'budget_guid_example' # String | The unique identifier for the budget. Defined by MX.
opts = {
  budget_update_request_body: MxPlatformRuby::BudgetUpdateRequestBody.new # BudgetUpdateRequestBody | 
}

begin
  # Update a specific budget
  result = api_instance.users_user_guid_budgets_budget_guid_put(user_guid, budget_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_budget_guid_put: #{e}"
end
```

#### Using the users_user_guid_budgets_budget_guid_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> users_user_guid_budgets_budget_guid_put_with_http_info(user_guid, budget_guid, opts)

```ruby
begin
  # Update a specific budget
  data, status_code, headers = api_instance.users_user_guid_budgets_budget_guid_put_with_http_info(user_guid, budget_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_budget_guid_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the budget. Defined by MX. |  |
| **budget_guid** | **String** | The unique identifier for the budget. Defined by MX. |  |
| **budget_update_request_body** | [**BudgetUpdateRequestBody**](BudgetUpdateRequestBody.md) |  | [optional] |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_user_guid_budgets_generate_post

> <BudgetResponseBody> users_user_guid_budgets_generate_post(user_guid)

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
user_guid = 'user_guid_example' # String | The unique identifier for the user. Defined by MX.

begin
  # Auto-generate budgets
  result = api_instance.users_user_guid_budgets_generate_post(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_generate_post: #{e}"
end
```

#### Using the users_user_guid_budgets_generate_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> users_user_guid_budgets_generate_post_with_http_info(user_guid)

```ruby
begin
  # Auto-generate budgets
  data, status_code, headers = api_instance.users_user_guid_budgets_generate_post_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_generate_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_user_guid_budgets_get

> <BudgetResponseBody> users_user_guid_budgets_get(user_guid)

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
user_guid = 'user_guid_example' # String | The unique identifier for the user. Defined by MX.

begin
  # List all budgets
  result = api_instance.users_user_guid_budgets_get(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_get: #{e}"
end
```

#### Using the users_user_guid_budgets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> users_user_guid_budgets_get_with_http_info(user_guid)

```ruby
begin
  # List all budgets
  data, status_code, headers = api_instance.users_user_guid_budgets_get_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_user_guid_budgets_post

> <BudgetResponseBody> users_user_guid_budgets_post(user_guid, budget_create_request_body)

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
user_guid = 'user_guid_example' # String | The unique identifier for the user. Defined by MX.
budget_create_request_body = MxPlatformRuby::BudgetCreateRequestBody.new # BudgetCreateRequestBody | 

begin
  # Create a budget
  result = api_instance.users_user_guid_budgets_post(user_guid, budget_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_post: #{e}"
end
```

#### Using the users_user_guid_budgets_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetResponseBody>, Integer, Hash)> users_user_guid_budgets_post_with_http_info(user_guid, budget_create_request_body)

```ruby
begin
  # Create a budget
  data, status_code, headers = api_instance.users_user_guid_budgets_post_with_http_info(user_guid, budget_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling BudgetsApi->users_user_guid_budgets_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **budget_create_request_body** | [**BudgetCreateRequestBody**](BudgetCreateRequestBody.md) |  |  |

### Return type

[**BudgetResponseBody**](BudgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

