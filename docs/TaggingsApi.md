# MxPlatformRuby::TaggingsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tagging**](TaggingsApi.md#create_tagging) | **POST** /users/{user_guid}/taggings | Create tagging |
| [**delete_tagging**](TaggingsApi.md#delete_tagging) | **DELETE** /users/{user_guid}/taggings/{tagging_guid} | Delete tagging |
| [**list_taggings**](TaggingsApi.md#list_taggings) | **GET** /users/{user_guid}/taggings | List taggings |
| [**read_tagging**](TaggingsApi.md#read_tagging) | **GET** /users/{user_guid}/taggings/{tagging_guid} | Read tagging |
| [**update_tagging**](TaggingsApi.md#update_tagging) | **PUT** /users/{user_guid}/taggings/{tagging_guid} | Update tagging |


## create_tagging

> <TaggingResponseBody> create_tagging(user_guid, tagging_create_request_body)

Create tagging

Use this endpoint to create a new association between a tag and a particular transaction, according to their unique GUIDs.

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

api_instance = MxPlatformRuby::TaggingsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
tagging_create_request_body = MxPlatformRuby::TaggingCreateRequestBody.new # TaggingCreateRequestBody | Tagging object to be created with required parameters (tag_guid and transaction_guid)

begin
  # Create tagging
  result = api_instance.create_tagging(user_guid, tagging_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->create_tagging: #{e}"
end
```

#### Using the create_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaggingResponseBody>, Integer, Hash)> create_tagging_with_http_info(user_guid, tagging_create_request_body)

```ruby
begin
  # Create tagging
  data, status_code, headers = api_instance.create_tagging_with_http_info(user_guid, tagging_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaggingResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->create_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **tagging_create_request_body** | [**TaggingCreateRequestBody**](TaggingCreateRequestBody.md) | Tagging object to be created with required parameters (tag_guid and transaction_guid) |  |

### Return type

[**TaggingResponseBody**](TaggingResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_tagging

> delete_tagging(tagging_guid, user_guid)

Delete tagging

Use this endpoint to delete a tagging according to its unique GUID. If successful, the API will respond with an empty body and a status of 204 NO Content.

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

api_instance = MxPlatformRuby::TaggingsApi.new
tagging_guid = 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe' # String | The unique id for a `tagging`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete tagging
  api_instance.delete_tagging(tagging_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->delete_tagging: #{e}"
end
```

#### Using the delete_tagging_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tagging_with_http_info(tagging_guid, user_guid)

```ruby
begin
  # Delete tagging
  data, status_code, headers = api_instance.delete_tagging_with_http_info(tagging_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->delete_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tagging_guid** | **String** | The unique id for a &#x60;tagging&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_taggings

> <TaggingsResponseBody> list_taggings(user_guid, opts)

List taggings

Use this endpoint to retrieve a list of all the taggings associated with a specific user.

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

api_instance = MxPlatformRuby::TaggingsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List taggings
  result = api_instance.list_taggings(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->list_taggings: #{e}"
end
```

#### Using the list_taggings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaggingsResponseBody>, Integer, Hash)> list_taggings_with_http_info(user_guid, opts)

```ruby
begin
  # List taggings
  data, status_code, headers = api_instance.list_taggings_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaggingsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->list_taggings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**TaggingsResponseBody**](TaggingsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_tagging

> <TaggingResponseBody> read_tagging(tagging_guid, user_guid)

Read tagging

Use this endpoint to read the attributes of a `tagging` according to its unique GUID.

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

api_instance = MxPlatformRuby::TaggingsApi.new
tagging_guid = 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe' # String | The unique id for a `tagging`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read tagging
  result = api_instance.read_tagging(tagging_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->read_tagging: #{e}"
end
```

#### Using the read_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaggingResponseBody>, Integer, Hash)> read_tagging_with_http_info(tagging_guid, user_guid)

```ruby
begin
  # Read tagging
  data, status_code, headers = api_instance.read_tagging_with_http_info(tagging_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaggingResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->read_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tagging_guid** | **String** | The unique id for a &#x60;tagging&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**TaggingResponseBody**](TaggingResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_tagging

> <TaggingResponseBody> update_tagging(tagging_guid, user_guid, tagging_update_request_body)

Update tagging

Use this endpoint to update a tagging.

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

api_instance = MxPlatformRuby::TaggingsApi.new
tagging_guid = 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe' # String | The unique id for a `tagging`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
tagging_update_request_body = MxPlatformRuby::TaggingUpdateRequestBody.new # TaggingUpdateRequestBody | Tagging object to be updated with required parameter (tag_guid)

begin
  # Update tagging
  result = api_instance.update_tagging(tagging_guid, user_guid, tagging_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->update_tagging: #{e}"
end
```

#### Using the update_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaggingResponseBody>, Integer, Hash)> update_tagging_with_http_info(tagging_guid, user_guid, tagging_update_request_body)

```ruby
begin
  # Update tagging
  data, status_code, headers = api_instance.update_tagging_with_http_info(tagging_guid, user_guid, tagging_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaggingResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling TaggingsApi->update_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tagging_guid** | **String** | The unique id for a &#x60;tagging&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **tagging_update_request_body** | [**TaggingUpdateRequestBody**](TaggingUpdateRequestBody.md) | Tagging object to be updated with required parameter (tag_guid) |  |

### Return type

[**TaggingResponseBody**](TaggingResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

