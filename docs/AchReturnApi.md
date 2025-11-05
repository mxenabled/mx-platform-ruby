# MxPlatformRuby::AchReturnApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ach_return**](AchReturnApi.md#create_ach_return) | **POST** /ach_returns | Create ACH Return |
| [**list_ach_retruns**](AchReturnApi.md#list_ach_retruns) | **GET** /ach_returns | List ACH Returns |
| [**read_ach_retrun**](AchReturnApi.md#read_ach_retrun) | **GET** /ach_returns/{ach_return_guid} | Read ACH Return |


## create_ach_return

> <ACHReturnResponseBody> create_ach_return(ach_return_create_request_body)

Create ACH Return

:::warning The features documented here are in a beta state, and this documentation is considered draft material subject to frequent change. :::  Use this endpoint to create an ACH return in our system. 

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

api_instance = MxPlatformRuby::AchReturnApi.new
ach_return_create_request_body = MxPlatformRuby::ACHReturnCreateRequestBody.new # ACHReturnCreateRequestBody | ACH return object to be created.

begin
  # Create ACH Return
  result = api_instance.create_ach_return(ach_return_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AchReturnApi->create_ach_return: #{e}"
end
```

#### Using the create_ach_return_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ACHReturnResponseBody>, Integer, Hash)> create_ach_return_with_http_info(ach_return_create_request_body)

```ruby
begin
  # Create ACH Return
  data, status_code, headers = api_instance.create_ach_return_with_http_info(ach_return_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ACHReturnResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AchReturnApi->create_ach_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ach_return_create_request_body** | [**ACHReturnCreateRequestBody**](ACHReturnCreateRequestBody.md) | ACH return object to be created. |  |

### Return type

[**ACHReturnResponseBody**](ACHReturnResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## list_ach_retruns

> <ACHReturnsResponseBody> list_ach_retruns(opts)

List ACH Returns

:::warning The features documented here are in a beta state, and this documentation is considered draft material subject to frequent change. :::  Use this endpoint to get all ACH returns. 

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

api_instance = MxPlatformRuby::AchReturnApi.new
opts = {
  institution_guid: 'institution_guid_example', # String | The identifier for the institution associated with the ACH return. Defined by MX.
  returned_at: '2025-02-13T18:09:00+00:00', # String | The date and time when the return was reported by the Receiving Financial Depository Institution (RDFI) in ISO 8601 format without timestamp.
  resolved_status_at: '2025-02-13T18:09:00+00:00', # String | The date and time when the return was resolved by the Receiving Financial Depository Institution (RDFI) in ISO 8601 format without timestamp
  return_code: 'return_code_example', # String | The associated ACH return code and notice of change code. See [Return Codes](/api-reference/platform-api/reference/ach-return-fields#return-codes) for a complete list.
  return_status: 'SUBMITTED', # String | The status of the return. See [Return Statuses](/api-reference/platform-api/reference/ach-return-fields#return-status) for a complete list.
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
}

begin
  # List ACH Returns
  result = api_instance.list_ach_retruns(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AchReturnApi->list_ach_retruns: #{e}"
end
```

#### Using the list_ach_retruns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ACHReturnsResponseBody>, Integer, Hash)> list_ach_retruns_with_http_info(opts)

```ruby
begin
  # List ACH Returns
  data, status_code, headers = api_instance.list_ach_retruns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ACHReturnsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AchReturnApi->list_ach_retruns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institution_guid** | **String** | The identifier for the institution associated with the ACH return. Defined by MX. | [optional] |
| **returned_at** | **String** | The date and time when the return was reported by the Receiving Financial Depository Institution (RDFI) in ISO 8601 format without timestamp. | [optional] |
| **resolved_status_at** | **String** | The date and time when the return was resolved by the Receiving Financial Depository Institution (RDFI) in ISO 8601 format without timestamp | [optional] |
| **return_code** | **String** | The associated ACH return code and notice of change code. See [Return Codes](/api-reference/platform-api/reference/ach-return-fields#return-codes) for a complete list. | [optional] |
| **return_status** | **String** | The status of the return. See [Return Statuses](/api-reference/platform-api/reference/ach-return-fields#return-status) for a complete list. | [optional] |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**ACHReturnsResponseBody**](ACHReturnsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_ach_retrun

> <ACHReturnResponseBody> read_ach_retrun(ach_return_guid)

Read ACH Return

:::warning The features documented here are in a beta state, and this documentation is considered draft material subject to frequent change. :::  Use this endpoint to get an ACH return by its `guid` or `id`. 

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

api_instance = MxPlatformRuby::AchReturnApi.new
ach_return_guid = 'ach_return_guid_example' # String | The unique identifier (`guid`) for the ACH return. Defined by MX.

begin
  # Read ACH Return
  result = api_instance.read_ach_retrun(ach_return_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AchReturnApi->read_ach_retrun: #{e}"
end
```

#### Using the read_ach_retrun_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ACHReturnResponseBody>, Integer, Hash)> read_ach_retrun_with_http_info(ach_return_guid)

```ruby
begin
  # Read ACH Return
  data, status_code, headers = api_instance.read_ach_retrun_with_http_info(ach_return_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ACHReturnResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AchReturnApi->read_ach_retrun_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ach_return_guid** | **String** | The unique identifier (&#x60;guid&#x60;) for the ACH return. Defined by MX. |  |

### Return type

[**ACHReturnResponseBody**](ACHReturnResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json

