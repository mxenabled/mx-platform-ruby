# MxPlatformRuby::MonthlyCashFlowProfileApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_monthly_cash_flow_profile**](MonthlyCashFlowProfileApi.md#read_monthly_cash_flow_profile) | **GET** /users/{user_guid}/monthly_cash_flow_profile | Read monthly cash flow profile |
| [**update_monthly_cash_flow_profile**](MonthlyCashFlowProfileApi.md#update_monthly_cash_flow_profile) | **PUT** /users/{user_guid}/monthly_cash_flow_profile | Update monthly cash flow profile |


## read_monthly_cash_flow_profile

> <MonthlyCashFlowResponseBody> read_monthly_cash_flow_profile(user_guid)

Read monthly cash flow profile

Read monthly cash flow profile.

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

api_instance = MxPlatformRuby::MonthlyCashFlowProfileApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read monthly cash flow profile
  result = api_instance.read_monthly_cash_flow_profile(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MonthlyCashFlowProfileApi->read_monthly_cash_flow_profile: #{e}"
end
```

#### Using the read_monthly_cash_flow_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonthlyCashFlowResponseBody>, Integer, Hash)> read_monthly_cash_flow_profile_with_http_info(user_guid)

```ruby
begin
  # Read monthly cash flow profile
  data, status_code, headers = api_instance.read_monthly_cash_flow_profile_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonthlyCashFlowResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MonthlyCashFlowProfileApi->read_monthly_cash_flow_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**MonthlyCashFlowResponseBody**](MonthlyCashFlowResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_monthly_cash_flow_profile

> <MonthlyCashFlowResponseBody> update_monthly_cash_flow_profile(user_guid, monthly_cash_flow_profile_request_body)

Update monthly cash flow profile

Use this endpoint to update the attributes of a `monthly_cash_flow_profile`.

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

api_instance = MxPlatformRuby::MonthlyCashFlowProfileApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
monthly_cash_flow_profile_request_body = MxPlatformRuby::MonthlyCashFlowProfileRequestBody.new # MonthlyCashFlowProfileRequestBody | 

begin
  # Update monthly cash flow profile
  result = api_instance.update_monthly_cash_flow_profile(user_guid, monthly_cash_flow_profile_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MonthlyCashFlowProfileApi->update_monthly_cash_flow_profile: #{e}"
end
```

#### Using the update_monthly_cash_flow_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonthlyCashFlowResponseBody>, Integer, Hash)> update_monthly_cash_flow_profile_with_http_info(user_guid, monthly_cash_flow_profile_request_body)

```ruby
begin
  # Update monthly cash flow profile
  data, status_code, headers = api_instance.update_monthly_cash_flow_profile_with_http_info(user_guid, monthly_cash_flow_profile_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonthlyCashFlowResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MonthlyCashFlowProfileApi->update_monthly_cash_flow_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **monthly_cash_flow_profile_request_body** | [**MonthlyCashFlowProfileRequestBody**](MonthlyCashFlowProfileRequestBody.md) |  |  |

### Return type

[**MonthlyCashFlowResponseBody**](MonthlyCashFlowResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

