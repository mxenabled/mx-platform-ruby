# MxPlatformRuby::MembersApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_member**](MembersApi.md#aggregate_member) | **POST** /users/{user_guid}/members/{member_guid}/aggregate | Aggregate member |
| [**check_balances**](MembersApi.md#check_balances) | **POST** /users/{user_guid}/members/{member_guid}/check_balance | Check balances |
| [**create_member**](MembersApi.md#create_member) | **POST** /users/{user_guid}/members | Create member |
| [**delete_member**](MembersApi.md#delete_member) | **DELETE** /users/{user_guid}/members/{member_guid} | Delete member |
| [**identify_member**](MembersApi.md#identify_member) | **POST** /users/{user_guid}/members/{member_guid}/identify | Identify member |
| [**list_member_challenges**](MembersApi.md#list_member_challenges) | **GET** /users/{user_guid}/members/{member_guid}/challenges | List member challenges |
| [**list_member_credentials**](MembersApi.md#list_member_credentials) | **GET** /users/{user_guid}/members/{member_guid}/credentials | List member credentials |
| [**list_members**](MembersApi.md#list_members) | **GET** /users/{user_guid}/members | List members |
| [**read_member**](MembersApi.md#read_member) | **GET** /users/{user_guid}/members/{member_guid} | Read member |
| [**read_member_status**](MembersApi.md#read_member_status) | **GET** /users/{user_guid}/members/{member_guid}/status | Read member status |
| [**resume_aggregation**](MembersApi.md#resume_aggregation) | **PUT** /users/{user_guid}/members/{member_guid}/resume | Resume aggregation |
| [**update_member**](MembersApi.md#update_member) | **PUT** /users/{user_guid}/members/{member_guid} | Update member |
| [**verify_member**](MembersApi.md#verify_member) | **POST** /users/{user_guid}/members/{member_guid}/verify | Verify member |


## aggregate_member

> <MemberResponseBody> aggregate_member(member_guid, user_guid, opts)

Aggregate member

Calling this endpoint initiates an aggregation event for the member. This brings in the latest account and transaction data from the connected institution. If this data has recently been updated, MX may not initiate an aggregation event.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  x_callback_payload: '813e50bd-4a7e-4517-b6bb-9eef65a68cbd', # String | The base64 encoded string defined in this header will be returned in the [Member](/resources/webhooks/member/) and [Member Data Updated](/resources/webhooks/member#member-data-updated) webhooks. This allows you to trace user interactions and workflows initiated externally and internally in the MX Platform. Max 1024 characters.
  include_holdings: false, # Boolean | When set to `false`, the aggregation will not gather holdings data. Defaults to `true`.
  include_transactions: true # Boolean | When set to `false`, the aggregation will not gather transactions data. Defaults to `true`.
}

begin
  # Aggregate member
  result = api_instance.aggregate_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->aggregate_member: #{e}"
end
```

#### Using the aggregate_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> aggregate_member_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # Aggregate member
  data, status_code, headers = api_instance.aggregate_member_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->aggregate_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **x_callback_payload** | **String** | The base64 encoded string defined in this header will be returned in the [Member](/resources/webhooks/member/) and [Member Data Updated](/resources/webhooks/member#member-data-updated) webhooks. This allows you to trace user interactions and workflows initiated externally and internally in the MX Platform. Max 1024 characters. | [optional] |
| **include_holdings** | **Boolean** | When set to &#x60;false&#x60;, the aggregation will not gather holdings data. Defaults to &#x60;true&#x60;. | [optional] |
| **include_transactions** | **Boolean** | When set to &#x60;false&#x60;, the aggregation will not gather transactions data. Defaults to &#x60;true&#x60;. | [optional] |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## check_balances

> <MemberResponseBody> check_balances(member_guid, user_guid)

Check balances

This endpoint operates much like the aggregate member endpoint except that it gathers only account balance information; it does not gather any transaction data.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Check balances
  result = api_instance.check_balances(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->check_balances: #{e}"
end
```

#### Using the check_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> check_balances_with_http_info(member_guid, user_guid)

```ruby
begin
  # Check balances
  data, status_code, headers = api_instance.check_balances_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->check_balances_with_http_info: #{e}"
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


## create_member

> <MemberResponseBody> create_member(user_guid, member_create_request_body, opts)

Create member

This endpoint allows you to create a new member. Members are created with the required parameters credentials and institution_code, and the optional parameters id and metadata. When creating a member, youll need to include the correct type of credential required by the financial institution and provided by the user. You can find out which credential type is required with the `/institutions/{institution_code}/credentials` endpoint. If successful, the MX Platform API will respond with the newly-created member object. Once you successfully create a member, MX will immediately validate the provided credentials and attempt to aggregate data for accounts and transactions.

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

api_instance = MxPlatformRuby::MembersApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_create_request_body = MxPlatformRuby::MemberCreateRequestBody.new # MemberCreateRequestBody | Member object to be created with optional parameters (id and metadata) and required parameters (credentials and institution_code)
opts = {
  x_callback_payload: '813e50bd-4a7e-4517-b6bb-9eef65a68cbd' # String | The base64 encoded string defined in this header will be returned in the [Member](/resources/webhooks/member/) and [Member Data Updated](/resources/webhooks/member#member-data-updated) webhooks. This allows you to trace user interactions and workflows initiated externally and internally in the MX Platform. Max 1024 characters.
}

begin
  # Create member
  result = api_instance.create_member(user_guid, member_create_request_body, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->create_member: #{e}"
end
```

#### Using the create_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> create_member_with_http_info(user_guid, member_create_request_body, opts)

```ruby
begin
  # Create member
  data, status_code, headers = api_instance.create_member_with_http_info(user_guid, member_create_request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->create_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_create_request_body** | [**MemberCreateRequestBody**](MemberCreateRequestBody.md) | Member object to be created with optional parameters (id and metadata) and required parameters (credentials and institution_code) |  |
| **x_callback_payload** | **String** | The base64 encoded string defined in this header will be returned in the [Member](/resources/webhooks/member/) and [Member Data Updated](/resources/webhooks/member#member-data-updated) webhooks. This allows you to trace user interactions and workflows initiated externally and internally in the MX Platform. Max 1024 characters. | [optional] |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_member

> delete_member(member_guid, user_guid)

Delete member

Accessing this endpoint will permanently delete a member.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete member
  api_instance.delete_member(member_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->delete_member: #{e}"
end
```

#### Using the delete_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_with_http_info(member_guid, user_guid)

```ruby
begin
  # Delete member
  data, status_code, headers = api_instance.delete_member_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->delete_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## identify_member

> <MemberResponseBody> identify_member(member_guid, user_guid)

Identify member

The identify endpoint begins an identification process for an already-existing member.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Identify member
  result = api_instance.identify_member(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->identify_member: #{e}"
end
```

#### Using the identify_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> identify_member_with_http_info(member_guid, user_guid)

```ruby
begin
  # Identify member
  data, status_code, headers = api_instance.identify_member_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->identify_member_with_http_info: #{e}"
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


## list_member_challenges

> <ChallengesResponseBody> list_member_challenges(member_guid, user_guid, opts)

List member challenges

Use this endpoint for information on what multi-factor authentication challenges need to be answered in order to aggregate a member. If the aggregation is not challenged, i.e., the member does not have a connection status of `CHALLENGED`, then code `204 No Content` will be returned. If the aggregation has been challenged, i.e., the member does have a connection status of `CHALLENGED`, then code `200 OK` will be returned - along with the corresponding credentials.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List member challenges
  result = api_instance.list_member_challenges(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->list_member_challenges: #{e}"
end
```

#### Using the list_member_challenges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChallengesResponseBody>, Integer, Hash)> list_member_challenges_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List member challenges
  data, status_code, headers = api_instance.list_member_challenges_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChallengesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->list_member_challenges_with_http_info: #{e}"
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

[**ChallengesResponseBody**](ChallengesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_member_credentials

> <CredentialsResponseBody> list_member_credentials(member_guid, user_guid, opts)

List member credentials

This endpoint returns an array which contains information on every non-MFA credential associated with a specific member.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List member credentials
  result = api_instance.list_member_credentials(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->list_member_credentials: #{e}"
end
```

#### Using the list_member_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredentialsResponseBody>, Integer, Hash)> list_member_credentials_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List member credentials
  data, status_code, headers = api_instance.list_member_credentials_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredentialsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->list_member_credentials_with_http_info: #{e}"
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

[**CredentialsResponseBody**](CredentialsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_members

> <MembersResponseBody> list_members(user_guid, opts)

List members

This endpoint returns an array which contains information on every member associated with a specific user.

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

api_instance = MxPlatformRuby::MembersApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10, # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
  use_case: 'MONEY_MOVEMENT' # String | The use case associated with the member. Valid values are `PFM` and `MONEY_MOVEMENT`. For example, you can append either `?use_case=PFM` or `?use_case=MONEY_MOVEMENT`.
}

begin
  # List members
  result = api_instance.list_members(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->list_members: #{e}"
end
```

#### Using the list_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembersResponseBody>, Integer, Hash)> list_members_with_http_info(user_guid, opts)

```ruby
begin
  # List members
  data, status_code, headers = api_instance.list_members_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembersResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->list_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |
| **use_case** | **String** | The use case associated with the member. Valid values are &#x60;PFM&#x60; and &#x60;MONEY_MOVEMENT&#x60;. For example, you can append either &#x60;?use_case&#x3D;PFM&#x60; or &#x60;?use_case&#x3D;MONEY_MOVEMENT&#x60;. | [optional] |

### Return type

[**MembersResponseBody**](MembersResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_member

> <MemberResponseBody> read_member(member_guid, user_guid)

Read member

Use this endpoint to read the attributes of a specific member.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read member
  result = api_instance.read_member(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->read_member: #{e}"
end
```

#### Using the read_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> read_member_with_http_info(member_guid, user_guid)

```ruby
begin
  # Read member
  data, status_code, headers = api_instance.read_member_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->read_member_with_http_info: #{e}"
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


## read_member_status

> <MemberStatusResponseBody> read_member_status(member_guid, user_guid)

Read member status

This endpoint provides the status of the members most recent aggregation event. This is an important step in the aggregation process, and the results returned by this endpoint should determine what you do next in order to successfully aggregate a member. MX has introduced new, more detailed information on the current status of a members connection to a financial institution and the state of its aggregation - the connection_status field. These are intended to replace and expand upon the information provided in the status field, which will soon be deprecated; support for the status field remains for the time being.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read member status
  result = api_instance.read_member_status(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->read_member_status: #{e}"
end
```

#### Using the read_member_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberStatusResponseBody>, Integer, Hash)> read_member_status_with_http_info(member_guid, user_guid)

```ruby
begin
  # Read member status
  data, status_code, headers = api_instance.read_member_status_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberStatusResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->read_member_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**MemberStatusResponseBody**](MemberStatusResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## resume_aggregation

> <MemberResponseBody> resume_aggregation(member_guid, user_guid, member_resume_request_body)

Resume aggregation

This endpoint answers the challenges needed when a member has been challenged by multi-factor authentication.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_resume_request_body = MxPlatformRuby::MemberResumeRequestBody.new # MemberResumeRequestBody | Member object with MFA challenge answers

begin
  # Resume aggregation
  result = api_instance.resume_aggregation(member_guid, user_guid, member_resume_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->resume_aggregation: #{e}"
end
```

#### Using the resume_aggregation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> resume_aggregation_with_http_info(member_guid, user_guid, member_resume_request_body)

```ruby
begin
  # Resume aggregation
  data, status_code, headers = api_instance.resume_aggregation_with_http_info(member_guid, user_guid, member_resume_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->resume_aggregation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_resume_request_body** | [**MemberResumeRequestBody**](MemberResumeRequestBody.md) | Member object with MFA challenge answers |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_member

> <MemberResponseBody> update_member(member_guid, user_guid, member_update_request_body, opts)

Update member

Use this endpoint to update a members attributes. Only the credentials, id, and metadata parameters can be updated. To get a list of the required credentials for the member, use the list member credentials endpoint.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_update_request_body = MxPlatformRuby::MemberUpdateRequestBody.new # MemberUpdateRequestBody | Member object to be updated (While no single parameter is required, the request body can't be empty)
opts = {
  x_callback_payload: '813e50bd-4a7e-4517-b6bb-9eef65a68cbd' # String | The base64 encoded string defined in this header will be returned in the [Member](/resources/webhooks/member/) and [Member Data Updated](/resources/webhooks/member#member-data-updated) webhooks. This allows you to trace user interactions and workflows initiated externally and internally in the MX Platform. Max 1024 characters.
}

begin
  # Update member
  result = api_instance.update_member(member_guid, user_guid, member_update_request_body, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->update_member: #{e}"
end
```

#### Using the update_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> update_member_with_http_info(member_guid, user_guid, member_update_request_body, opts)

```ruby
begin
  # Update member
  data, status_code, headers = api_instance.update_member_with_http_info(member_guid, user_guid, member_update_request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->update_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_update_request_body** | [**MemberUpdateRequestBody**](MemberUpdateRequestBody.md) | Member object to be updated (While no single parameter is required, the request body can&#39;t be empty) |  |
| **x_callback_payload** | **String** | The base64 encoded string defined in this header will be returned in the [Member](/resources/webhooks/member/) and [Member Data Updated](/resources/webhooks/member#member-data-updated) webhooks. This allows you to trace user interactions and workflows initiated externally and internally in the MX Platform. Max 1024 characters. | [optional] |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## verify_member

> <MemberResponseBody> verify_member(member_guid, user_guid, opts)

Verify member

The verify endpoint begins a verification process for a member.

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

api_instance = MxPlatformRuby::MembersApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  x_callback_payload: '813e50bd-4a7e-4517-b6bb-9eef65a68cbd' # String | The base64 encoded string defined in this header will be returned in the [Member](/resources/webhooks/member/) and [Member Data Updated](/resources/webhooks/member#member-data-updated) webhooks. This allows you to trace user interactions and workflows initiated externally and internally in the MX Platform. Max 1024 characters.
}

begin
  # Verify member
  result = api_instance.verify_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->verify_member: #{e}"
end
```

#### Using the verify_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> verify_member_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # Verify member
  data, status_code, headers = api_instance.verify_member_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MembersApi->verify_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **x_callback_payload** | **String** | The base64 encoded string defined in this header will be returned in the [Member](/resources/webhooks/member/) and [Member Data Updated](/resources/webhooks/member#member-data-updated) webhooks. This allows you to trace user interactions and workflows initiated externally and internally in the MX Platform. Max 1024 characters. | [optional] |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json

