# MxPlatformRuby::CategoriesApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_category**](CategoriesApi.md#create_category) | **POST** /users/{user_guid}/categories | Create category |
| [**delete_category**](CategoriesApi.md#delete_category) | **DELETE** /users/{user_guid}/categories/{category_guid} | Delete category |
| [**list_categories**](CategoriesApi.md#list_categories) | **GET** /users/{user_guid}/categories | List categories |
| [**list_default_categories**](CategoriesApi.md#list_default_categories) | **GET** /categories/default | List default categories |
| [**list_default_categories_by_user**](CategoriesApi.md#list_default_categories_by_user) | **GET** /users/{user_guid}/categories/default | List default categories by user |
| [**read_category**](CategoriesApi.md#read_category) | **GET** /users/{user_guid}/categories/{category_guid} | Read a custom category |
| [**read_default_category**](CategoriesApi.md#read_default_category) | **GET** /categories/{category_guid} | Read a default category |
| [**update_category**](CategoriesApi.md#update_category) | **PUT** /users/{user_guid}/categories/{category_guid} | Update category |


## create_category

> <CategoryResponseBody> create_category(user_guid, category_create_request_body)

Create category

Use this endpoint to create a new custom category for a specific `user`.

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

api_instance = MxPlatformRuby::CategoriesApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
category_create_request_body = MxPlatformRuby::CategoryCreateRequestBody.new # CategoryCreateRequestBody | Custom category object to be created

begin
  # Create category
  result = api_instance.create_category(user_guid, category_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->create_category: #{e}"
end
```

#### Using the create_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryResponseBody>, Integer, Hash)> create_category_with_http_info(user_guid, category_create_request_body)

```ruby
begin
  # Create category
  data, status_code, headers = api_instance.create_category_with_http_info(user_guid, category_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->create_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **category_create_request_body** | [**CategoryCreateRequestBody**](CategoryCreateRequestBody.md) | Custom category object to be created |  |

### Return type

[**CategoryResponseBody**](CategoryResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_category

> delete_category(category_guid, user_guid)

Delete category

Use this endpoint to delete a specific custom category according to its unique GUID. The API will respond with an empty object and a status of `204 No Content`.

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

api_instance = MxPlatformRuby::CategoriesApi.new
category_guid = 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874' # String | The unique id for a `category`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete category
  api_instance.delete_category(category_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->delete_category: #{e}"
end
```

#### Using the delete_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_category_with_http_info(category_guid, user_guid)

```ruby
begin
  # Delete category
  data, status_code, headers = api_instance.delete_category_with_http_info(category_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->delete_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** | The unique id for a &#x60;category&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_categories

> <CategoriesResponseBody> list_categories(user_guid, opts)

List categories

Use this endpoint to list all categories associated with a `user`, including both default and custom categories.

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

api_instance = MxPlatformRuby::CategoriesApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List categories
  result = api_instance.list_categories(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->list_categories: #{e}"
end
```

#### Using the list_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoriesResponseBody>, Integer, Hash)> list_categories_with_http_info(user_guid, opts)

```ruby
begin
  # List categories
  data, status_code, headers = api_instance.list_categories_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoriesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->list_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**CategoriesResponseBody**](CategoriesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_default_categories

> <CategoriesResponseBody> list_default_categories(opts)

List default categories

Use this endpoint to retrieve a list of all the default categories and subcategories offered within the MX Platform API. In other words, each item in the returned list will have its `is_default` field set to `true`. There are currently 119 default categories and subcategories. Both the _list default categories_ and _list default categories by user_ endpoints return the same results. The different routes are provided for convenience.

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

api_instance = MxPlatformRuby::CategoriesApi.new
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
}

begin
  # List default categories
  result = api_instance.list_default_categories(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->list_default_categories: #{e}"
end
```

#### Using the list_default_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoriesResponseBody>, Integer, Hash)> list_default_categories_with_http_info(opts)

```ruby
begin
  # List default categories
  data, status_code, headers = api_instance.list_default_categories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoriesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->list_default_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**CategoriesResponseBody**](CategoriesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_default_categories_by_user

> <CategoriesResponseBody> list_default_categories_by_user(user_guid, opts)

List default categories by user

Use this endpoint to retrieve a list of all the default categories and subcategories, scoped by user, offered within the MX Platform API. In other words, each item in the returned list will have its `is_default` field set to `true`. There are currently 119 default categories and subcategories. Both the _list default categories_ and _list default categories by user_ endpoints return the same results. The different routes are provided for convenience.

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

api_instance = MxPlatformRuby::CategoriesApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List default categories by user
  result = api_instance.list_default_categories_by_user(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->list_default_categories_by_user: #{e}"
end
```

#### Using the list_default_categories_by_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoriesResponseBody>, Integer, Hash)> list_default_categories_by_user_with_http_info(user_guid, opts)

```ruby
begin
  # List default categories by user
  data, status_code, headers = api_instance.list_default_categories_by_user_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoriesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->list_default_categories_by_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**CategoriesResponseBody**](CategoriesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_category

> <CategoryResponseBody> read_category(category_guid, user_guid)

Read a custom category

Use this endpoint to read the attributes of either a default category or a custom category.

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

api_instance = MxPlatformRuby::CategoriesApi.new
category_guid = 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874' # String | The unique id for a `category`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read a custom category
  result = api_instance.read_category(category_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->read_category: #{e}"
end
```

#### Using the read_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryResponseBody>, Integer, Hash)> read_category_with_http_info(category_guid, user_guid)

```ruby
begin
  # Read a custom category
  data, status_code, headers = api_instance.read_category_with_http_info(category_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->read_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** | The unique id for a &#x60;category&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**CategoryResponseBody**](CategoryResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_default_category

> <CategoryResponseBody> read_default_category(category_guid)

Read a default category

Use this endpoint to read the attributes of a default category.

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

api_instance = MxPlatformRuby::CategoriesApi.new
category_guid = 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874' # String | The unique id for a `category`.

begin
  # Read a default category
  result = api_instance.read_default_category(category_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->read_default_category: #{e}"
end
```

#### Using the read_default_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryResponseBody>, Integer, Hash)> read_default_category_with_http_info(category_guid)

```ruby
begin
  # Read a default category
  data, status_code, headers = api_instance.read_default_category_with_http_info(category_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->read_default_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** | The unique id for a &#x60;category&#x60;. |  |

### Return type

[**CategoryResponseBody**](CategoryResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_category

> <CategoryResponseBody> update_category(category_guid, user_guid, category_update_request_body)

Update category

Use this endpoint to update the attributes of a custom category according to its unique GUID.

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

api_instance = MxPlatformRuby::CategoriesApi.new
category_guid = 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874' # String | The unique id for a `category`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
category_update_request_body = MxPlatformRuby::CategoryUpdateRequestBody.new # CategoryUpdateRequestBody | Category object to be updated (While no single parameter is required, the `category` object cannot be empty)

begin
  # Update category
  result = api_instance.update_category(category_guid, user_guid, category_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->update_category: #{e}"
end
```

#### Using the update_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryResponseBody>, Integer, Hash)> update_category_with_http_info(category_guid, user_guid, category_update_request_body)

```ruby
begin
  # Update category
  data, status_code, headers = api_instance.update_category_with_http_info(category_guid, user_guid, category_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling CategoriesApi->update_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** | The unique id for a &#x60;category&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **category_update_request_body** | [**CategoryUpdateRequestBody**](CategoryUpdateRequestBody.md) | Category object to be updated (While no single parameter is required, the &#x60;category&#x60; object cannot be empty) |  |

### Return type

[**CategoryResponseBody**](CategoryResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

