# MxPlatformRuby::MerchantsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_merchants**](MerchantsApi.md#list_merchants) | **GET** /merchants | List merchants |
| [**read_merchant**](MerchantsApi.md#read_merchant) | **GET** /merchants/{merchant_guid} | Read merchant |
| [**read_merchant_location**](MerchantsApi.md#read_merchant_location) | **GET** /merchant_locations/{merchant_location_guid} | Read merchant location |


## list_merchants

> <MerchantsResponseBody> list_merchants(opts)

List merchants

This endpoint returns a paginated list of all the merchants in the MX system.

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

api_instance = MxPlatformRuby::MerchantsApi.new
opts = {
  name: 'Comcast', # String | This will list only merchants in which the appended string appears.
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List merchants
  result = api_instance.list_merchants(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MerchantsApi->list_merchants: #{e}"
end
```

#### Using the list_merchants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantsResponseBody>, Integer, Hash)> list_merchants_with_http_info(opts)

```ruby
begin
  # List merchants
  data, status_code, headers = api_instance.list_merchants_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MerchantsApi->list_merchants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | This will list only merchants in which the appended string appears. | [optional] |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**MerchantsResponseBody**](MerchantsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_merchant

> <MerchantResponseBody> read_merchant(merchant_guid)

Read merchant

Returns information about a particular merchant, such as a logo, name, and website.

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

api_instance = MxPlatformRuby::MerchantsApi.new
merchant_guid = 'MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b' # String | The unique id for a `merchant`.

begin
  # Read merchant
  result = api_instance.read_merchant(merchant_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MerchantsApi->read_merchant: #{e}"
end
```

#### Using the read_merchant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantResponseBody>, Integer, Hash)> read_merchant_with_http_info(merchant_guid)

```ruby
begin
  # Read merchant
  data, status_code, headers = api_instance.read_merchant_with_http_info(merchant_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MerchantsApi->read_merchant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_guid** | **String** | The unique id for a &#x60;merchant&#x60;. |  |

### Return type

[**MerchantResponseBody**](MerchantResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_merchant_location

> <MerchantLocationResponseBody> read_merchant_location(merchant_location_guid)

Read merchant location

This endpoint returns the specified `merchant_location` resource. The `merchant_location_guid` can be found on `transaction` objects.

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

api_instance = MxPlatformRuby::MerchantsApi.new
merchant_location_guid = 'MCH-09466f0a-fb58-9d1a-bae2-2af0afbea621' # String | The unique id for a `merchant_location`.

begin
  # Read merchant location
  result = api_instance.read_merchant_location(merchant_location_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MerchantsApi->read_merchant_location: #{e}"
end
```

#### Using the read_merchant_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantLocationResponseBody>, Integer, Hash)> read_merchant_location_with_http_info(merchant_location_guid)

```ruby
begin
  # Read merchant location
  data, status_code, headers = api_instance.read_merchant_location_with_http_info(merchant_location_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantLocationResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MerchantsApi->read_merchant_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_location_guid** | **String** | The unique id for a &#x60;merchant_location&#x60;. |  |

### Return type

[**MerchantLocationResponseBody**](MerchantLocationResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json

