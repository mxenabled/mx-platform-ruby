# MxPlatformRuby::MicrodepositsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_microdeposit**](MicrodepositsApi.md#create_microdeposit) | **POST** /users/{user_guid}/micro_deposits | Create or pre-initiate a microdeposit |
| [**delete_microdeposit**](MicrodepositsApi.md#delete_microdeposit) | **DELETE** /users/{user_guid}/micro_deposits/{micro_deposit_guid} | Delete a microdeposit |
| [**list_user_microdeposits**](MicrodepositsApi.md#list_user_microdeposits) | **GET** /users/{user_guid}/micro_deposits | List all microdeposits for a user |
| [**list_user_verifications**](MicrodepositsApi.md#list_user_verifications) | **GET** /users/{user_guid}/account_verifications | List all verifications for a user |
| [**read_user_microdeposit**](MicrodepositsApi.md#read_user_microdeposit) | **GET** /users/{user_guid}/micro_deposits/{micro_deposit_guid} | Read a microdeposit for a user |
| [**verify_microdeposit**](MicrodepositsApi.md#verify_microdeposit) | **PUT** /micro_deposits/{micro_deposit_guid}/verify | Verify a Microdeposit |


## create_microdeposit

> <MicrodepositResponseBody> create_microdeposit(user_guid, microdeposit_request_body)

Create or pre-initiate a microdeposit

Use this endpoint to create or pre-initiate a microdeposit. The response will include the new microdeposit record with a status of `INITIATED` or `PREINITIATED` respectively.  To pre-initiate a microdeposit, you only need to set `email` (string), `first_name` (string), and `last_name` (string) in the request body.   Pre-initiating a microdeposit allows you to pass the end user's first name, last name, and email if this data has already been collected. If the end user selects an institution which requires the microdeposit flow, the pre-initiated `micro_deposit` will be used and the Connect Widget step that normally requests this info from the end user will be skipped. However, if the end user selects an institution which supports IAV, the pre-initiated `micro_deposit` will be deleted and IAV will be used instead. When requesting a Connect Widget URL after pre-initiating, make sure to set the `current_microdeposit_guid` to the resulting microdeposit's `guid` and set the `mode` to `verification`. If you use this enhanced flow, a `micro_deposit` should be pre-initiated for all connect sessions in verification mode. After pre-initiating a microdeposit, pass the GUID to the config as `current_microdeposit_guid` and set the `mode` to `verification` when requesting a Connect URL.  Pre-initiating a microdeposit is optional. If you choose to implement this flow, it should be used for all Connect Widget sessions in verification mode. 

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
microdeposit_request_body = MxPlatformRuby::MicrodepositRequestBody.new # MicrodepositRequestBody | 

begin
  # Create or pre-initiate a microdeposit
  result = api_instance.create_microdeposit(user_guid, microdeposit_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->create_microdeposit: #{e}"
end
```

#### Using the create_microdeposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicrodepositResponseBody>, Integer, Hash)> create_microdeposit_with_http_info(user_guid, microdeposit_request_body)

```ruby
begin
  # Create or pre-initiate a microdeposit
  data, status_code, headers = api_instance.create_microdeposit_with_http_info(user_guid, microdeposit_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicrodepositResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->create_microdeposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **microdeposit_request_body** | [**MicrodepositRequestBody**](MicrodepositRequestBody.md) |  |  |

### Return type

[**MicrodepositResponseBody**](MicrodepositResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_microdeposit

> delete_microdeposit(micro_deposit_guid, user_guid)

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete a microdeposit
  api_instance.delete_microdeposit(micro_deposit_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->delete_microdeposit: #{e}"
end
```

#### Using the delete_microdeposit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_microdeposit_with_http_info(micro_deposit_guid, user_guid)

```ruby
begin
  # Delete a microdeposit
  data, status_code, headers = api_instance.delete_microdeposit_with_http_info(micro_deposit_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->delete_microdeposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **micro_deposit_guid** | **String** | The unique identifier for the microdeposit. Defined by MX. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_user_microdeposits

> <MicrodepositsResponseBody> list_user_microdeposits(user_guid)

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # List all microdeposits for a user
  result = api_instance.list_user_microdeposits(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->list_user_microdeposits: #{e}"
end
```

#### Using the list_user_microdeposits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicrodepositsResponseBody>, Integer, Hash)> list_user_microdeposits_with_http_info(user_guid)

```ruby
begin
  # List all microdeposits for a user
  data, status_code, headers = api_instance.list_user_microdeposits_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicrodepositsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->list_user_microdeposits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**MicrodepositsResponseBody**](MicrodepositsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_verifications

> <MicrodepositResponseBody> list_user_verifications(user_guid)

List all verifications for a user

This endpoint returns a list of the account verifications associated with the user, as well as the status of those verifications. 

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # List all verifications for a user
  result = api_instance.list_user_verifications(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->list_user_verifications: #{e}"
end
```

#### Using the list_user_verifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicrodepositResponseBody>, Integer, Hash)> list_user_verifications_with_http_info(user_guid)

```ruby
begin
  # List all verifications for a user
  data, status_code, headers = api_instance.list_user_verifications_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicrodepositResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->list_user_verifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**MicrodepositResponseBody**](MicrodepositResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_user_microdeposit

> <MicrodepositResponseBody> read_user_microdeposit(micro_deposit_guid, user_guid)

Read a microdeposit for a user

Use this endpoint to read the attributes of a specific microdeposit according to its unique GUID. <br /><br /> Webhooks for microdeposit status changes are triggered when a status changes. The actual status of the microdeposit guid updates every minute. You may force a status update by calling the read microdeposit endpoint.

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
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read a microdeposit for a user
  result = api_instance.read_user_microdeposit(micro_deposit_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->read_user_microdeposit: #{e}"
end
```

#### Using the read_user_microdeposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicrodepositResponseBody>, Integer, Hash)> read_user_microdeposit_with_http_info(micro_deposit_guid, user_guid)

```ruby
begin
  # Read a microdeposit for a user
  data, status_code, headers = api_instance.read_user_microdeposit_with_http_info(micro_deposit_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicrodepositResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->read_user_microdeposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **micro_deposit_guid** | **String** | The unique identifier for the microdeposit. Defined by MX. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**MicrodepositResponseBody**](MicrodepositResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_microdeposit

> <MicrodepositResponseBody> verify_microdeposit(micro_deposit_guid, opts)

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
micro_deposit_guid = 'MIC-09ba578e-8448-4f7f-89e1-b62ff2517edb' # String | The unique identifier for the microdeposit. Defined by MX.
opts = {
  microdeposit_verify_request_body: MxPlatformRuby::MicrodepositVerifyRequestBody.new # MicrodepositVerifyRequestBody | 
}

begin
  # Verify a Microdeposit
  result = api_instance.verify_microdeposit(micro_deposit_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->verify_microdeposit: #{e}"
end
```

#### Using the verify_microdeposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MicrodepositResponseBody>, Integer, Hash)> verify_microdeposit_with_http_info(micro_deposit_guid, opts)

```ruby
begin
  # Verify a Microdeposit
  data, status_code, headers = api_instance.verify_microdeposit_with_http_info(micro_deposit_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MicrodepositResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MicrodepositsApi->verify_microdeposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **micro_deposit_guid** | **String** | The unique identifier for the microdeposit. Defined by MX. |  |
| **microdeposit_verify_request_body** | [**MicrodepositVerifyRequestBody**](MicrodepositVerifyRequestBody.md) |  | [optional] |

### Return type

[**MicrodepositResponseBody**](MicrodepositResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

