# MxPlatformRuby::InstitutionsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_favorite_institutions**](InstitutionsApi.md#list_favorite_institutions) | **GET** /institutions/favorites | List favorite institutions |
| [**list_institution_credentials**](InstitutionsApi.md#list_institution_credentials) | **GET** /institutions/{institution_code}/credentials | List institution credentials |
| [**list_institutions**](InstitutionsApi.md#list_institutions) | **GET** /institutions | List institutions |
| [**read_institution**](InstitutionsApi.md#read_institution) | **GET** /institutions/{institution_code} | Read institution |


## list_favorite_institutions

> <InstitutionsResponseBody> list_favorite_institutions(opts)

List favorite institutions

This endpoint returns a paginated list containing institutions that have been set as the partner’s favorites, sorted by popularity. Please contact MX to set a list of favorites.

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

api_instance = MxPlatformRuby::InstitutionsApi.new
opts = {
  iso_country_code: ['inner_example'], # Array<String> | An array of strings that filters institutions in the widget by the specified country code. Acceptable codes include `US`, `CA`, and `MX` (Mexico).
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
}

begin
  # List favorite institutions
  result = api_instance.list_favorite_institutions(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InstitutionsApi->list_favorite_institutions: #{e}"
end
```

#### Using the list_favorite_institutions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstitutionsResponseBody>, Integer, Hash)> list_favorite_institutions_with_http_info(opts)

```ruby
begin
  # List favorite institutions
  data, status_code, headers = api_instance.list_favorite_institutions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstitutionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InstitutionsApi->list_favorite_institutions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iso_country_code** | [**Array&lt;String&gt;**](String.md) | An array of strings that filters institutions in the widget by the specified country code. Acceptable codes include &#x60;US&#x60;, &#x60;CA&#x60;, and &#x60;MX&#x60; (Mexico). | [optional] |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**InstitutionsResponseBody**](InstitutionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_institution_credentials

> <CredentialsResponseBody> list_institution_credentials(institution_code, opts)

List institution credentials

Use this endpoint to see which credentials will be needed to create a member for a specific institution.  Passing an invalid `institution_code` returns a `404`. 

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

api_instance = MxPlatformRuby::InstitutionsApi.new
institution_code = 'mxbank' # String | The institution_code of the institution.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List institution credentials
  result = api_instance.list_institution_credentials(institution_code, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InstitutionsApi->list_institution_credentials: #{e}"
end
```

#### Using the list_institution_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredentialsResponseBody>, Integer, Hash)> list_institution_credentials_with_http_info(institution_code, opts)

```ruby
begin
  # List institution credentials
  data, status_code, headers = api_instance.list_institution_credentials_with_http_info(institution_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredentialsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InstitutionsApi->list_institution_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institution_code** | **String** | The institution_code of the institution. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**CredentialsResponseBody**](CredentialsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_institutions

> <InstitutionsResponseBody> list_institutions(opts)

List institutions

This endpoint returns a list of institutions based on the specified search term or parameter.

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

api_instance = MxPlatformRuby::InstitutionsApi.new
opts = {
  name: 'mxbank', # String | This will list only institutions in which the appended string appears.
  iso_country_code: ['inner_example'], # Array<String> | An array of strings that filters institutions in the widget by the specified country code. Acceptable codes include `US`, `CA`, and `MX` (Mexico).
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10, # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `100`. If the value exceeds `100`, the default value of `25` will be used instead.
  supports_account_identification: true, # Boolean | Filter only institutions which support account identification.
  supports_account_statement: true, # Boolean | Filter only institutions which support account statements.
  supports_account_verification: true, # Boolean | Filter only institutions which support account verification.
  supports_transaction_history: true # Boolean | Filter only institutions which support extended transaction history.
}

begin
  # List institutions
  result = api_instance.list_institutions(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InstitutionsApi->list_institutions: #{e}"
end
```

#### Using the list_institutions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstitutionsResponseBody>, Integer, Hash)> list_institutions_with_http_info(opts)

```ruby
begin
  # List institutions
  data, status_code, headers = api_instance.list_institutions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstitutionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InstitutionsApi->list_institutions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | This will list only institutions in which the appended string appears. | [optional] |
| **iso_country_code** | [**Array&lt;String&gt;**](String.md) | An array of strings that filters institutions in the widget by the specified country code. Acceptable codes include &#x60;US&#x60;, &#x60;CA&#x60;, and &#x60;MX&#x60; (Mexico). | [optional] |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;100&#x60;. If the value exceeds &#x60;100&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |
| **supports_account_identification** | **Boolean** | Filter only institutions which support account identification. | [optional] |
| **supports_account_statement** | **Boolean** | Filter only institutions which support account statements. | [optional] |
| **supports_account_verification** | **Boolean** | Filter only institutions which support account verification. | [optional] |
| **supports_transaction_history** | **Boolean** | Filter only institutions which support extended transaction history. | [optional] |

### Return type

[**InstitutionsResponseBody**](InstitutionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_institution

> <InstitutionResponseBody> read_institution(institution_code)

Read institution

This endpoint returns information about the institution specified by `institution_code`.

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

api_instance = MxPlatformRuby::InstitutionsApi.new
institution_code = 'mxbank' # String | The institution_code of the institution.

begin
  # Read institution
  result = api_instance.read_institution(institution_code)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InstitutionsApi->read_institution: #{e}"
end
```

#### Using the read_institution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstitutionResponseBody>, Integer, Hash)> read_institution_with_http_info(institution_code)

```ruby
begin
  # Read institution
  data, status_code, headers = api_instance.read_institution_with_http_info(institution_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstitutionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling InstitutionsApi->read_institution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institution_code** | **String** | The institution_code of the institution. |  |

### Return type

[**InstitutionResponseBody**](InstitutionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json

