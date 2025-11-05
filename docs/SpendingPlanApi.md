# MxPlatformRuby::SpendingPlanApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_spending_plan**](SpendingPlanApi.md#create_spending_plan) | **POST** /users/{user_guid}/spending_plans | Create spending plan |
| [**create_spending_plan_iteration_item**](SpendingPlanApi.md#create_spending_plan_iteration_item) | **POST** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items | Create spending plan iteration item |
| [**delete_spending_plan**](SpendingPlanApi.md#delete_spending_plan) | **DELETE** /users/{user_guid}/spending_plans/{spending_plan_guid} | Delete spending plan |
| [**delete_spending_plan_account**](SpendingPlanApi.md#delete_spending_plan_account) | **DELETE** /users/{user_guid}/spending_plans/{spending_plan_guid}/spending_plan_accounts/{spending_plan_account_guid} | Delete spending plan account |
| [**delete_spending_plan_iteration_item**](SpendingPlanApi.md#delete_spending_plan_iteration_item) | **DELETE** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items/{iteration_item_guid} | Delete spending plan iteration item |
| [**list_spending_plan_accounts**](SpendingPlanApi.md#list_spending_plan_accounts) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/spending_plan_accounts | List spending plan accounts |
| [**list_spending_plan_iteration_items**](SpendingPlanApi.md#list_spending_plan_iteration_items) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items | List spending plan iteration items |
| [**list_spending_plan_iterations**](SpendingPlanApi.md#list_spending_plan_iterations) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations | List spending plan iterations |
| [**list_spending_plans**](SpendingPlanApi.md#list_spending_plans) | **GET** /users/{user_guid}/spending_plans | List spending plans |
| [**read_current_spending_plan_iteration**](SpendingPlanApi.md#read_current_spending_plan_iteration) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current | Read current spending plan iteration |
| [**read_spending_plan_account**](SpendingPlanApi.md#read_spending_plan_account) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/spending_plan_accounts/{spending_plan_account_guid} | Read spending plan account |
| [**read_spending_plan_iteration**](SpendingPlanApi.md#read_spending_plan_iteration) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/{iteration_number} | Read a spending plan iteration |
| [**read_spending_plan_iteration_item**](SpendingPlanApi.md#read_spending_plan_iteration_item) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items/{iteration_item_guid} | Read a spending plan iteration item |
| [**read_spending_plan_user**](SpendingPlanApi.md#read_spending_plan_user) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid} | Read a spending plan for a user |
| [**update_spending_plan_iteration_item**](SpendingPlanApi.md#update_spending_plan_iteration_item) | **PUT** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items/{iteration_item_guid} | Update a spending plan iteration item |


## create_spending_plan

> <SpendingPlanResponse> create_spending_plan(user_guid)

Create spending plan

This endpoint creates a new `spending_plan` for the user.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Create spending plan
  result = api_instance.create_spending_plan(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->create_spending_plan: #{e}"
end
```

#### Using the create_spending_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanResponse>, Integer, Hash)> create_spending_plan_with_http_info(user_guid)

```ruby
begin
  # Create spending plan
  data, status_code, headers = api_instance.create_spending_plan_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->create_spending_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**SpendingPlanResponse**](SpendingPlanResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## create_spending_plan_iteration_item

> <SpendingPlanIterationItemResponse> create_spending_plan_iteration_item(spending_plan_guid, user_guid, spending_plan_iteration_item_create_request_body)

Create spending plan iteration item

This endpoint creates a new `spending_plan_iteration_item`.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_iteration_item_create_request_body = MxPlatformRuby::SpendingPlanIterationItemCreateRequestBody.new({planned_amount: 110}) # SpendingPlanIterationItemCreateRequestBody | Iteration item to be created with required parameter (planned_amount)

begin
  # Create spending plan iteration item
  result = api_instance.create_spending_plan_iteration_item(spending_plan_guid, user_guid, spending_plan_iteration_item_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->create_spending_plan_iteration_item: #{e}"
end
```

#### Using the create_spending_plan_iteration_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationItemResponse>, Integer, Hash)> create_spending_plan_iteration_item_with_http_info(spending_plan_guid, user_guid, spending_plan_iteration_item_create_request_body)

```ruby
begin
  # Create spending plan iteration item
  data, status_code, headers = api_instance.create_spending_plan_iteration_item_with_http_info(spending_plan_guid, user_guid, spending_plan_iteration_item_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationItemResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->create_spending_plan_iteration_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_iteration_item_create_request_body** | [**SpendingPlanIterationItemCreateRequestBody**](SpendingPlanIterationItemCreateRequestBody.md) | Iteration item to be created with required parameter (planned_amount) |  |

### Return type

[**SpendingPlanIterationItemResponse**](SpendingPlanIterationItemResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_spending_plan

> delete_spending_plan(user_guid, spending_plan_guid)

Delete spending plan

Use this endpoint to delete a user's `spending_plan`.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.

begin
  # Delete spending plan
  api_instance.delete_spending_plan(user_guid, spending_plan_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->delete_spending_plan: #{e}"
end
```

#### Using the delete_spending_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_spending_plan_with_http_info(user_guid, spending_plan_guid)

```ruby
begin
  # Delete spending plan
  data, status_code, headers = api_instance.delete_spending_plan_with_http_info(user_guid, spending_plan_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->delete_spending_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_spending_plan_account

> delete_spending_plan_account(user_guid, spending_plan_guid, spending_plan_account_guid)

Delete spending plan account

Use this endpoint to delete a `spending_plan_account`.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
spending_plan_account_guid = 'ACT-e9f80fee-84da-7s7r-9a5e-0346g4279b4c' # String | The unique ID for the specified account.

begin
  # Delete spending plan account
  api_instance.delete_spending_plan_account(user_guid, spending_plan_guid, spending_plan_account_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->delete_spending_plan_account: #{e}"
end
```

#### Using the delete_spending_plan_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_spending_plan_account_with_http_info(user_guid, spending_plan_guid, spending_plan_account_guid)

```ruby
begin
  # Delete spending plan account
  data, status_code, headers = api_instance.delete_spending_plan_account_with_http_info(user_guid, spending_plan_guid, spending_plan_account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->delete_spending_plan_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **spending_plan_account_guid** | **String** | The unique ID for the specified account. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_spending_plan_iteration_item

> delete_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid)

Delete spending plan iteration item

Use this endpoint to delete a spending plan `iteration_item`.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
iteration_item_guid = 'SII-a4dc1549-da28-1245-9c9c-53eee4cdfbe3' # String | The unique ID for the `iteration_item`.

begin
  # Delete spending plan iteration item
  api_instance.delete_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->delete_spending_plan_iteration_item: #{e}"
end
```

#### Using the delete_spending_plan_iteration_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid)

```ruby
begin
  # Delete spending plan iteration item
  data, status_code, headers = api_instance.delete_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->delete_spending_plan_iteration_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **iteration_item_guid** | **String** | The unique ID for the &#x60;iteration_item&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_spending_plan_accounts

> <SpendingPlanAccountsResponse> list_spending_plan_accounts(user_guid, spending_plan_guid, opts)

List spending plan accounts

Use this endpoint to list all the spending plan accounts associated with the spending plan.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List spending plan accounts
  result = api_instance.list_spending_plan_accounts(user_guid, spending_plan_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->list_spending_plan_accounts: #{e}"
end
```

#### Using the list_spending_plan_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanAccountsResponse>, Integer, Hash)> list_spending_plan_accounts_with_http_info(user_guid, spending_plan_guid, opts)

```ruby
begin
  # List spending plan accounts
  data, status_code, headers = api_instance.list_spending_plan_accounts_with_http_info(user_guid, spending_plan_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanAccountsResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->list_spending_plan_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**SpendingPlanAccountsResponse**](SpendingPlanAccountsResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_spending_plan_iteration_items

> <SpendingPlanIterationItemsResponseBody> list_spending_plan_iteration_items(user_guid, spending_plan_guid, opts)

List spending plan iteration items

Use this endpoint to list all the spending plan `iteration_items` associated with the `iteration`.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List spending plan iteration items
  result = api_instance.list_spending_plan_iteration_items(user_guid, spending_plan_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->list_spending_plan_iteration_items: #{e}"
end
```

#### Using the list_spending_plan_iteration_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationItemsResponseBody>, Integer, Hash)> list_spending_plan_iteration_items_with_http_info(user_guid, spending_plan_guid, opts)

```ruby
begin
  # List spending plan iteration items
  data, status_code, headers = api_instance.list_spending_plan_iteration_items_with_http_info(user_guid, spending_plan_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationItemsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->list_spending_plan_iteration_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**SpendingPlanIterationItemsResponseBody**](SpendingPlanIterationItemsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_spending_plan_iterations

> <SpendingPlanIterationsResponse> list_spending_plan_iterations(user_guid, spending_plan_guid, opts)

List spending plan iterations

Use this endpoint to list all the spending plan `iterations` associated with the `spending_plan`.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List spending plan iterations
  result = api_instance.list_spending_plan_iterations(user_guid, spending_plan_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->list_spending_plan_iterations: #{e}"
end
```

#### Using the list_spending_plan_iterations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationsResponse>, Integer, Hash)> list_spending_plan_iterations_with_http_info(user_guid, spending_plan_guid, opts)

```ruby
begin
  # List spending plan iterations
  data, status_code, headers = api_instance.list_spending_plan_iterations_with_http_info(user_guid, spending_plan_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationsResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->list_spending_plan_iterations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**SpendingPlanIterationsResponse**](SpendingPlanIterationsResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_spending_plans

> <SpendingPlansResponseBody> list_spending_plans(user_guid, opts)

List spending plans

Use this endpoint to list all the spending plans associated with the user.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List spending plans
  result = api_instance.list_spending_plans(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->list_spending_plans: #{e}"
end
```

#### Using the list_spending_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlansResponseBody>, Integer, Hash)> list_spending_plans_with_http_info(user_guid, opts)

```ruby
begin
  # List spending plans
  data, status_code, headers = api_instance.list_spending_plans_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlansResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->list_spending_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**SpendingPlansResponseBody**](SpendingPlansResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_current_spending_plan_iteration

> <SpendingPlanIterationResponse> read_current_spending_plan_iteration(user_guid, spending_plan_guid, opts)

Read current spending plan iteration

Use this endpoint to read the attributes of the current spending plan `iteration`.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # Read current spending plan iteration
  result = api_instance.read_current_spending_plan_iteration(user_guid, spending_plan_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_current_spending_plan_iteration: #{e}"
end
```

#### Using the read_current_spending_plan_iteration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationResponse>, Integer, Hash)> read_current_spending_plan_iteration_with_http_info(user_guid, spending_plan_guid, opts)

```ruby
begin
  # Read current spending plan iteration
  data, status_code, headers = api_instance.read_current_spending_plan_iteration_with_http_info(user_guid, spending_plan_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_current_spending_plan_iteration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**SpendingPlanIterationResponse**](SpendingPlanIterationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_spending_plan_account

> <SpendingPlanAccountResponse> read_spending_plan_account(user_guid, spending_plan_guid, spending_plan_account_guid, opts)

Read spending plan account

Use this endpoint to read the attributes of a specific spending plan account according to its unique GUID.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
spending_plan_account_guid = 'ACT-e9f80fee-84da-7s7r-9a5e-0346g4279b4c' # String | The unique ID for the specified account.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # Read spending plan account
  result = api_instance.read_spending_plan_account(user_guid, spending_plan_guid, spending_plan_account_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_spending_plan_account: #{e}"
end
```

#### Using the read_spending_plan_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanAccountResponse>, Integer, Hash)> read_spending_plan_account_with_http_info(user_guid, spending_plan_guid, spending_plan_account_guid, opts)

```ruby
begin
  # Read spending plan account
  data, status_code, headers = api_instance.read_spending_plan_account_with_http_info(user_guid, spending_plan_guid, spending_plan_account_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanAccountResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_spending_plan_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **spending_plan_account_guid** | **String** | The unique ID for the specified account. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**SpendingPlanAccountResponse**](SpendingPlanAccountResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_spending_plan_iteration

> <SpendingPlanIterationResponse> read_spending_plan_iteration(user_guid, spending_plan_guid, iteration_number, opts)

Read a spending plan iteration

Use this endpoint to read the attributes of a specific spending plan `iteration` according to its `iteration_number`.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
iteration_number = 1 # Integer | The current iteration number for the spending plan `iteration`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # Read a spending plan iteration
  result = api_instance.read_spending_plan_iteration(user_guid, spending_plan_guid, iteration_number, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_spending_plan_iteration: #{e}"
end
```

#### Using the read_spending_plan_iteration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationResponse>, Integer, Hash)> read_spending_plan_iteration_with_http_info(user_guid, spending_plan_guid, iteration_number, opts)

```ruby
begin
  # Read a spending plan iteration
  data, status_code, headers = api_instance.read_spending_plan_iteration_with_http_info(user_guid, spending_plan_guid, iteration_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_spending_plan_iteration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **iteration_number** | **Integer** | The current iteration number for the spending plan &#x60;iteration&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**SpendingPlanIterationResponse**](SpendingPlanIterationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_spending_plan_iteration_item

> <SpendingPlanIterationItemResponse> read_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid, opts)

Read a spending plan iteration item

Use this endpoint to read the attributes of a specific spending plan `iteration_item` according to its unique GUID.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
iteration_item_guid = 'SII-a4dc1549-da28-1245-9c9c-53eee4cdfbe3' # String | The unique ID for the `iteration_item`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # Read a spending plan iteration item
  result = api_instance.read_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_spending_plan_iteration_item: #{e}"
end
```

#### Using the read_spending_plan_iteration_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationItemResponse>, Integer, Hash)> read_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid, opts)

```ruby
begin
  # Read a spending plan iteration item
  data, status_code, headers = api_instance.read_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationItemResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_spending_plan_iteration_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **iteration_item_guid** | **String** | The unique ID for the &#x60;iteration_item&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**SpendingPlanIterationItemResponse**](SpendingPlanIterationItemResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_spending_plan_user

> <SpendingPlanResponse> read_spending_plan_user(user_guid, spending_plan_guid, opts)

Read a spending plan for a user

Use this endpoint to read the attributes of a specific spending plan according to its unique GUID.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # Read a spending plan for a user
  result = api_instance.read_spending_plan_user(user_guid, spending_plan_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_spending_plan_user: #{e}"
end
```

#### Using the read_spending_plan_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanResponse>, Integer, Hash)> read_spending_plan_user_with_http_info(user_guid, spending_plan_guid, opts)

```ruby
begin
  # Read a spending plan for a user
  data, status_code, headers = api_instance.read_spending_plan_user_with_http_info(user_guid, spending_plan_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->read_spending_plan_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**SpendingPlanResponse**](SpendingPlanResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_spending_plan_iteration_item

> <SpendingPlanIterationItemResponse> update_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid, spending_plan_iteration_item_create_request_body)

Update a spending plan iteration item

Use this endpoint to update an existing `spending_plan_iteration_item`.

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

api_instance = MxPlatformRuby::SpendingPlanApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
iteration_item_guid = 'SII-a4dc1549-da28-1245-9c9c-53eee4cdfbe3' # String | The unique ID for the `iteration_item`.
spending_plan_iteration_item_create_request_body = MxPlatformRuby::SpendingPlanIterationItemCreateRequestBody.new({planned_amount: 110}) # SpendingPlanIterationItemCreateRequestBody | Iteration item to be updated with required parameter (planned_amount)

begin
  # Update a spending plan iteration item
  result = api_instance.update_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid, spending_plan_iteration_item_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->update_spending_plan_iteration_item: #{e}"
end
```

#### Using the update_spending_plan_iteration_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationItemResponse>, Integer, Hash)> update_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid, spending_plan_iteration_item_create_request_body)

```ruby
begin
  # Update a spending plan iteration item
  data, status_code, headers = api_instance.update_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid, spending_plan_iteration_item_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationItemResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling SpendingPlanApi->update_spending_plan_iteration_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **iteration_item_guid** | **String** | The unique ID for the &#x60;iteration_item&#x60;. |  |
| **spending_plan_iteration_item_create_request_body** | [**SpendingPlanIterationItemCreateRequestBody**](SpendingPlanIterationItemCreateRequestBody.md) | Iteration item to be updated with required parameter (planned_amount) |  |

### Return type

[**SpendingPlanIterationItemResponse**](SpendingPlanIterationItemResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

