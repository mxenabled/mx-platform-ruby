# MxPlatformRuby::TagsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tag**](TagsApi.md#create_tag) | **POST** /users/{user_guid}/tags | Create tag |
| [**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /users/{user_guid}/tags/{tag_guid} | Delete tag |
| [**list_tags**](TagsApi.md#list_tags) | **GET** /users/{user_guid}/tags | List tags |
| [**read_tag**](TagsApi.md#read_tag) | **GET** /users/{user_guid}/tags/{tag_guid} | Read tag |
| [**update_tag**](TagsApi.md#update_tag) | **PUT** /users/{user_guid}/tags/{tag_guid} | Update tag |


## create_tag

> <TagResponseBody> create_tag(user_guid, tag_create_request_body)

Create tag

Use this endpoint to create a new custom tag.

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

api_instance = MxPlatformRuby::TagsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
tag_create_request_body = MxPlatformRuby::TagCreateRequestBody.new # TagCreateRequestBody | Tag object to be created with required parameters (tag_guid)

begin
  # Create tag
  result = api_instance.create_tag(user_guid, tag_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->create_tag: #{e}"
end
```

#### Using the create_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponseBody>, Integer, Hash)> create_tag_with_http_info(user_guid, tag_create_request_body)

```ruby
begin
  # Create tag
  data, status_code, headers = api_instance.create_tag_with_http_info(user_guid, tag_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->create_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **tag_create_request_body** | [**TagCreateRequestBody**](TagCreateRequestBody.md) | Tag object to be created with required parameters (tag_guid) |  |

### Return type

[**TagResponseBody**](TagResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_tag

> delete_tag(tag_guid, accept, user_guid)

Delete tag

Use this endpoint to permanently delete a specific tag based on its unique GUID. If successful, the API will respond with status of `204 No Content`.

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

api_instance = MxPlatformRuby::TagsApi.new
tag_guid = 'TAG-aef36e72-6294-4c38-844d-e573e80aed52' # String | The unique id for a `tag`.
accept = 'application/vnd.mx.api.v1+json' # String | Specifies the media type expected in the response.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete tag
  api_instance.delete_tag(tag_guid, accept, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tag_with_http_info(tag_guid, accept, user_guid)

```ruby
begin
  # Delete tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(tag_guid, accept, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_guid** | **String** | The unique id for a &#x60;tag&#x60;. |  |
| **accept** | **String** | Specifies the media type expected in the response. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_tags

> <TagsResponseBody> list_tags(user_guid, opts)

List tags

Use this endpoint to list all tags associated with the specified `user`. Each user includes the `Business` tag by default.

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

api_instance = MxPlatformRuby::TagsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List tags
  result = api_instance.list_tags(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->list_tags: #{e}"
end
```

#### Using the list_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagsResponseBody>, Integer, Hash)> list_tags_with_http_info(user_guid, opts)

```ruby
begin
  # List tags
  data, status_code, headers = api_instance.list_tags_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->list_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**TagsResponseBody**](TagsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_tag

> <TagResponseBody> read_tag(tag_guid, user_guid)

Read tag

Use this endpoint to read the attributes of a particular tag according to its unique GUID.

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

api_instance = MxPlatformRuby::TagsApi.new
tag_guid = 'TAG-aef36e72-6294-4c38-844d-e573e80aed52' # String | The unique id for a `tag`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read tag
  result = api_instance.read_tag(tag_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->read_tag: #{e}"
end
```

#### Using the read_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponseBody>, Integer, Hash)> read_tag_with_http_info(tag_guid, user_guid)

```ruby
begin
  # Read tag
  data, status_code, headers = api_instance.read_tag_with_http_info(tag_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->read_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_guid** | **String** | The unique id for a &#x60;tag&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**TagResponseBody**](TagResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_tag

> <TagResponseBody> update_tag(tag_guid, user_guid, tag_update_request_body)

Update tag

Use this endpoint to update the name of a specific tag according to its unique GUID.

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

api_instance = MxPlatformRuby::TagsApi.new
tag_guid = 'TAG-aef36e72-6294-4c38-844d-e573e80aed52' # String | The unique id for a `tag`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
tag_update_request_body = MxPlatformRuby::TagUpdateRequestBody.new # TagUpdateRequestBody | Tag object to be updated with required parameter (tag_guid)

begin
  # Update tag
  result = api_instance.update_tag(tag_guid, user_guid, tag_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->update_tag: #{e}"
end
```

#### Using the update_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponseBody>, Integer, Hash)> update_tag_with_http_info(tag_guid, user_guid, tag_update_request_body)

```ruby
begin
  # Update tag
  data, status_code, headers = api_instance.update_tag_with_http_info(tag_guid, user_guid, tag_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TagsApi->update_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_guid** | **String** | The unique id for a &#x60;tag&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **tag_update_request_body** | [**TagUpdateRequestBody**](TagUpdateRequestBody.md) | Tag object to be updated with required parameter (tag_guid) |  |

### Return type

[**TagResponseBody**](TagResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

