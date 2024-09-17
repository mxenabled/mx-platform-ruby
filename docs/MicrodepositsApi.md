# MxPlatformRuby::MicrodepositsApi

All URIs are relative to *https://api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**micro_deposits_microdeposit_guid_verify_put**](MicrodepositsApi.md#micro_deposits_microdeposit_guid_verify_put) | **PUT** /micro_deposits/{microdeposit_guid}/verify | Verify a Microdeposit |
| [**users_user_guid_micro_deposits_get**](MicrodepositsApi.md#users_user_guid_micro_deposits_get) | **GET** /users/{user_guid}/micro_deposits | List all microdeposits for a user |
| [**users_user_guid_micro_deposits_micro_deposit_guid_delete**](MicrodepositsApi.md#users_user_guid_micro_deposits_micro_deposit_guid_delete) | **DELETE** /users/{user_guid}/micro_deposits/{micro_deposit_guid} | Delete a microdeposit |
| [**users_user_guid_micro_deposits_micro_deposit_guid_get**](MicrodepositsApi.md#users_user_guid_micro_deposits_micro_deposit_guid_get) | **GET** /users/{user_guid}/micro_deposits/{micro_deposit_guid} | Read a microdeposit for a user |
| [**users_user_guid_micro_deposits_post**](MicrodepositsApi.md#users_user_guid_micro_deposits_post) | **POST** /users/{user_guid}/micro_deposits | Create a microdeposit |


## micro_deposits_microdeposit_guid_verify_put

> <MicrodepositResponseBody> micro_deposits_microdeposit_guid_verify_put(microdeposit_guid, opts)

Verify a Microdeposit

Use this endpoint to verify the amounts deposited into the account during a microdeposit verification. The verification has not successfully completed until the `status` is `VERIFIED`. Poll the `/users/{user_guid}/micro_deposits/{micro_deposit_guid}` (read microdeposit) endpoint until you see this status or an error state.

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

api_instance = MxPlatformRuby::MicrodepositsApi.new
microdeposit_guid = 'microdeposit_guid_example' # String | The unique identifier for the microdeposit. Defined by MX.
opts = {
  microdeposit_verify_request_body: MxPlatformRuby::MicrodepositVerifyRequestBody.new # MicrodepositVerifyRequestBody | 
}

begin
  # Verify a Microdeposit
  result = api_instance.micro_deposits_microdeposit_guid_verify_put(microdeposit_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->micro_deposits_microdeposit_guid_verify_put: #{e}"
end
```

#### Using the micro_deposits_microdeposit_guid_verify_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicrodepositResponseBody>, Integer, Hash)> micro_deposits_microdeposit_guid_verify_put_with_http_info(microdeposit_guid, opts)

```ruby
begin
  # Verify a Microdeposit
  data, status_code, headers = api_instance.micro_deposits_microdeposit_guid_verify_put_with_http_info(microdeposit_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicrodepositResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->micro_deposits_microdeposit_guid_verify_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **microdeposit_guid** | **String** | The unique identifier for the microdeposit. Defined by MX. |  |
| **microdeposit_verify_request_body** | [**MicrodepositVerifyRequestBody**](MicrodepositVerifyRequestBody.md) |  | [optional] |

### Return type

[**MicrodepositResponseBody**](MicrodepositResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_user_guid_micro_deposits_get

> <MicrodepositsResponseBody> users_user_guid_micro_deposits_get(user_guid)

List all microdeposits for a user

Use this endpoint to read the attributes of a specific microdeposit according to its unique GUID.

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

api_instance = MxPlatformRuby::MicrodepositsApi.new
user_guid = 'user_guid_example' # String | The unique identifier for the user. Defined by MX.

begin
  # List all microdeposits for a user
  result = api_instance.users_user_guid_micro_deposits_get(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->users_user_guid_micro_deposits_get: #{e}"
end
```

#### Using the users_user_guid_micro_deposits_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicrodepositsResponseBody>, Integer, Hash)> users_user_guid_micro_deposits_get_with_http_info(user_guid)

```ruby
begin
  # List all microdeposits for a user
  data, status_code, headers = api_instance.users_user_guid_micro_deposits_get_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicrodepositsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->users_user_guid_micro_deposits_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |

### Return type

[**MicrodepositsResponseBody**](MicrodepositsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_user_guid_micro_deposits_micro_deposit_guid_delete

> users_user_guid_micro_deposits_micro_deposit_guid_delete(micro_deposit_guid, user_guid)

Delete a microdeposit

Use this endpoint to delete the specified microdeposit.

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

api_instance = MxPlatformRuby::MicrodepositsApi.new
micro_deposit_guid = 'MIC-09ba578e-8448-4f7f-89e1-b62ff2517edb' # String | The unique identifier for the microdeposit. Defined by MX.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete a microdeposit
  api_instance.users_user_guid_micro_deposits_micro_deposit_guid_delete(micro_deposit_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->users_user_guid_micro_deposits_micro_deposit_guid_delete: #{e}"
end
```

#### Using the users_user_guid_micro_deposits_micro_deposit_guid_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> users_user_guid_micro_deposits_micro_deposit_guid_delete_with_http_info(micro_deposit_guid, user_guid)

```ruby
begin
  # Delete a microdeposit
  data, status_code, headers = api_instance.users_user_guid_micro_deposits_micro_deposit_guid_delete_with_http_info(micro_deposit_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->users_user_guid_micro_deposits_micro_deposit_guid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **micro_deposit_guid** | **String** | The unique identifier for the microdeposit. Defined by MX. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## users_user_guid_micro_deposits_micro_deposit_guid_get

> <MicrodepositResponseBody> users_user_guid_micro_deposits_micro_deposit_guid_get(user_guid, micro_deposit_guid)

Read a microdeposit for a user

Use this endpoint to read the attributes of a specific microdeposit according to its unique GUID. <br></br> Webhooks for microdeposit status changes are triggered when a status changes. The actual status of the microdeposit guid updates every minute. You may force a status update by calling the read microdeposit endpoint.

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

api_instance = MxPlatformRuby::MicrodepositsApi.new
user_guid = 'user_guid_example' # String | The unique identifier for the user. Defined by MX.
micro_deposit_guid = 'micro_deposit_guid_example' # String | The unique identifier for the microdeposit. Defined by MX.

begin
  # Read a microdeposit for a user
  result = api_instance.users_user_guid_micro_deposits_micro_deposit_guid_get(user_guid, micro_deposit_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->users_user_guid_micro_deposits_micro_deposit_guid_get: #{e}"
end
```

#### Using the users_user_guid_micro_deposits_micro_deposit_guid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicrodepositResponseBody>, Integer, Hash)> users_user_guid_micro_deposits_micro_deposit_guid_get_with_http_info(user_guid, micro_deposit_guid)

```ruby
begin
  # Read a microdeposit for a user
  data, status_code, headers = api_instance.users_user_guid_micro_deposits_micro_deposit_guid_get_with_http_info(user_guid, micro_deposit_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicrodepositResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->users_user_guid_micro_deposits_micro_deposit_guid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **micro_deposit_guid** | **String** | The unique identifier for the microdeposit. Defined by MX. |  |

### Return type

[**MicrodepositResponseBody**](MicrodepositResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_user_guid_micro_deposits_post

> <MicrodepositResponseBody> users_user_guid_micro_deposits_post(user_guid, microdeposit_request_body)

Create a microdeposit

Use this endpoint to create a microdeposit. The response will include the new microdeposit record with a status of INITIATED.

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

api_instance = MxPlatformRuby::MicrodepositsApi.new
user_guid = 'user_guid_example' # String | The unique identifier for the user. Defined by MX.
microdeposit_request_body = MxPlatformRuby::MicrodepositRequestBody.new # MicrodepositRequestBody | 

begin
  # Create a microdeposit
  result = api_instance.users_user_guid_micro_deposits_post(user_guid, microdeposit_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->users_user_guid_micro_deposits_post: #{e}"
end
```

#### Using the users_user_guid_micro_deposits_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicrodepositResponseBody>, Integer, Hash)> users_user_guid_micro_deposits_post_with_http_info(user_guid, microdeposit_request_body)

```ruby
begin
  # Create a microdeposit
  data, status_code, headers = api_instance.users_user_guid_micro_deposits_post_with_http_info(user_guid, microdeposit_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicrodepositResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->users_user_guid_micro_deposits_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. Defined by MX. |  |
| **microdeposit_request_body** | [**MicrodepositRequestBody**](MicrodepositRequestBody.md) |  |  |

### Return type

[**MicrodepositResponseBody**](MicrodepositResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

