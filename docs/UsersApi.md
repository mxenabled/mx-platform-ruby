# MxPlatformRuby::UsersApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UsersApi.md#create_user) | **POST** /users | Create user |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{user_guid} | Delete user |
| [**list_users**](UsersApi.md#list_users) | **GET** /users | List users |
| [**read_user**](UsersApi.md#read_user) | **GET** /users/{user_guid} | Read user |
| [**update_user**](UsersApi.md#update_user) | **PUT** /users/{user_guid} | Update user |


## create_user

> <UserResponseBody> create_user(user_create_request_body)

Create user

Use this endpoint to create a new user. The API will respond with the newly-created user object if successful, containing a `guid` that you'll set as the `user_guid` in other requests when required. Disabling a user means that accounts and transactions associated with it will not be updated in the background by MX. It will also restrict access to that user’s data until they are no longer disabled.

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

api_instance = MxPlatformRuby::UsersApi.new
user_create_request_body = MxPlatformRuby::UserCreateRequestBody.new # UserCreateRequestBody | User object to be created. (None of these parameters are required, but the user object cannot be empty)

begin
  # Create user
  result = api_instance.create_user(user_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponseBody>, Integer, Hash)> create_user_with_http_info(user_create_request_body)

```ruby
begin
  # Create user
  data, status_code, headers = api_instance.create_user_with_http_info(user_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_create_request_body** | [**UserCreateRequestBody**](UserCreateRequestBody.md) | User object to be created. (None of these parameters are required, but the user object cannot be empty) |  |

### Return type

[**UserResponseBody**](UserResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_user

> delete_user(accept, user_guid)

Delete user

Use this endpoint to delete the specified `user`. The response will have a status of `204 No Content` without an object.  :::warning Deleting a user is permanent. Deleted users can never be restored. For more info, see [Deleting Objects](https://docs.mx.com/api-reference/platform-api/overview/deleting-objects). ::: 

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

api_instance = MxPlatformRuby::UsersApi.new
accept = 'application/vnd.mx.api.v1+json' # String | Specifies the media type expected in the response.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete user
  api_instance.delete_user(accept, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(accept, user_guid)

```ruby
begin
  # Delete user
  data, status_code, headers = api_instance.delete_user_with_http_info(accept, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the media type expected in the response. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_users

> <UsersResponseBody> list_users(opts)

List users

Use this endpoint to list every user you've created in the MX Platform API.

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

api_instance = MxPlatformRuby::UsersApi.new
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10, # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
  id: 'u-12324-abdc', # String | The user `id` to search for.
  email: 'example@example.com', # String | The user `email` to search for.
  is_disabled: true # Boolean | Search for users that are diabled.
}

begin
  # List users
  result = api_instance.list_users(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersResponseBody>, Integer, Hash)> list_users_with_http_info(opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.list_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |
| **id** | **String** | The user &#x60;id&#x60; to search for. | [optional] |
| **email** | **String** | The user &#x60;email&#x60; to search for. | [optional] |
| **is_disabled** | **Boolean** | Search for users that are diabled. | [optional] |

### Return type

[**UsersResponseBody**](UsersResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_user

> <UserResponseBody> read_user(user_guid)

Read user

Use this endpoint to read the attributes of a specific user.

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

api_instance = MxPlatformRuby::UsersApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read user
  result = api_instance.read_user(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->read_user: #{e}"
end
```

#### Using the read_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponseBody>, Integer, Hash)> read_user_with_http_info(user_guid)

```ruby
begin
  # Read user
  data, status_code, headers = api_instance.read_user_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->read_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**UserResponseBody**](UserResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_user

> <UserResponseBody> update_user(user_guid, user_update_request_body)

Update user

Use this endpoint to update the attributes of the specified user.

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

api_instance = MxPlatformRuby::UsersApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
user_update_request_body = MxPlatformRuby::UserUpdateRequestBody.new # UserUpdateRequestBody | User object to be updated (None of these parameters are required, but the user object cannot be empty.)

begin
  # Update user
  result = api_instance.update_user(user_guid, user_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponseBody>, Integer, Hash)> update_user_with_http_info(user_guid, user_update_request_body)

```ruby
begin
  # Update user
  data, status_code, headers = api_instance.update_user_with_http_info(user_guid, user_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling UsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **user_update_request_body** | [**UserUpdateRequestBody**](UserUpdateRequestBody.md) | User object to be updated (None of these parameters are required, but the user object cannot be empty.) |  |

### Return type

[**UserResponseBody**](UserResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

