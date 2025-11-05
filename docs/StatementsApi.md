# MxPlatformRuby::StatementsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_statement_pdf**](StatementsApi.md#download_statement_pdf) | **GET** /users/{user_guid}/members/{member_guid}/statements/{statement_guid}.pdf | Download statement pdf |
| [**fetch_statements**](StatementsApi.md#fetch_statements) | **POST** /users/{user_guid}/members/{member_guid}/fetch_statements | Fetch statements |
| [**list_statements_by_member**](StatementsApi.md#list_statements_by_member) | **GET** /users/{user_guid}/members/{member_guid}/statements | List statements by member |
| [**read_statement_by_member**](StatementsApi.md#read_statement_by_member) | **GET** /users/{user_guid}/members/{member_guid}/statements/{statement_guid} | Read statement by member |


## download_statement_pdf

> File download_statement_pdf(member_guid, statement_guid, user_guid)

Download statement pdf

Use this endpoint to download a specified statement PDF.

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

api_instance = MxPlatformRuby::StatementsApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
statement_guid = 'STA-737a344b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for a `statement`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Download statement pdf
  result = api_instance.download_statement_pdf(member_guid, statement_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling StatementsApi->download_statement_pdf: #{e}"
end
```

#### Using the download_statement_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_statement_pdf_with_http_info(member_guid, statement_guid, user_guid)

```ruby
begin
  # Download statement pdf
  data, status_code, headers = api_instance.download_statement_pdf_with_http_info(member_guid, statement_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling StatementsApi->download_statement_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **statement_guid** | **String** | The unique id for a &#x60;statement&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

**File**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+pdf


## fetch_statements

> <MemberResponseBody> fetch_statements(member_guid, user_guid)

Fetch statements

Use this endpoint to fetch the statements associated with a particular member.

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

api_instance = MxPlatformRuby::StatementsApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Fetch statements
  result = api_instance.fetch_statements(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling StatementsApi->fetch_statements: #{e}"
end
```

#### Using the fetch_statements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> fetch_statements_with_http_info(member_guid, user_guid)

```ruby
begin
  # Fetch statements
  data, status_code, headers = api_instance.fetch_statements_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling StatementsApi->fetch_statements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_statements_by_member

> <StatementsResponseBody> list_statements_by_member(member_guid, user_guid, opts)

List statements by member

Use this endpoint to get an array of available statements.

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

api_instance = MxPlatformRuby::StatementsApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List statements by member
  result = api_instance.list_statements_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling StatementsApi->list_statements_by_member: #{e}"
end
```

#### Using the list_statements_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementsResponseBody>, Integer, Hash)> list_statements_by_member_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List statements by member
  data, status_code, headers = api_instance.list_statements_by_member_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling StatementsApi->list_statements_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**StatementsResponseBody**](StatementsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_statement_by_member

> <StatementResponseBody> read_statement_by_member(member_guid, statement_guid, user_guid)

Read statement by member

Use this endpoint to read a JSON representation of the statement.

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

api_instance = MxPlatformRuby::StatementsApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
statement_guid = 'STA-737a344b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for a `statement`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read statement by member
  result = api_instance.read_statement_by_member(member_guid, statement_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling StatementsApi->read_statement_by_member: #{e}"
end
```

#### Using the read_statement_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementResponseBody>, Integer, Hash)> read_statement_by_member_with_http_info(member_guid, statement_guid, user_guid)

```ruby
begin
  # Read statement by member
  data, status_code, headers = api_instance.read_statement_by_member_with_http_info(member_guid, statement_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling StatementsApi->read_statement_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **statement_guid** | **String** | The unique id for a &#x60;statement&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**StatementResponseBody**](StatementResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json

