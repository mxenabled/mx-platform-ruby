# MxPlatformRuby::AccountsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_manual_account**](AccountsApi.md#create_manual_account) | **POST** /users/{user_guid}/accounts | Create manual account |
| [**delete_manual_account**](AccountsApi.md#delete_manual_account) | **DELETE** /users/{user_guid}/accounts/{account_guid} | Delete manual account |
| [**list_account_numbers_by_account**](AccountsApi.md#list_account_numbers_by_account) | **GET** /users/{user_guid}/accounts/{account_guid}/account_numbers | List account numbers by account |
| [**list_account_numbers_by_member**](AccountsApi.md#list_account_numbers_by_member) | **GET** /users/{user_guid}/members/{member_guid}/account_numbers | List account numbers by member |
| [**list_account_owners_by_member**](AccountsApi.md#list_account_owners_by_member) | **GET** /users/{user_guid}/members/{member_guid}/account_owners | List account owners by member |
| [**list_member_accounts**](AccountsApi.md#list_member_accounts) | **GET** /users/{user_guid}/members/{member_guid}/accounts | List accounts by member |
| [**list_user_accounts**](AccountsApi.md#list_user_accounts) | **GET** /users/{user_guid}/accounts | List accounts |
| [**read_account**](AccountsApi.md#read_account) | **GET** /users/{user_guid}/accounts/{account_guid} | Read account |
| [**read_account_by_member**](AccountsApi.md#read_account_by_member) | **GET** /users/{user_guid}/members/{member_guid}/accounts/{account_guid} | Read account by member |
| [**update_account_by_member**](AccountsApi.md#update_account_by_member) | **PUT** /users/{user_guid}/members/{member_guid}/accounts/{account_guid} | Update account by member |


## create_manual_account

> <AccountResponseBody> create_manual_account(user_guid, account_create_request_body)

Create manual account

This endpoint can only be used to create manual accounts. Creating a manual account will automatically create it under the Manual Institution member. Since a manual account has no credentials tied to the member, the account will never aggregate or include data from a data feed..

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

api_instance = MxPlatformRuby::AccountsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
account_create_request_body = MxPlatformRuby::AccountCreateRequestBody.new # AccountCreateRequestBody | Manual account object to be created.

begin
  # Create manual account
  result = api_instance.create_manual_account(user_guid, account_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->create_manual_account: #{e}"
end
```

#### Using the create_manual_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponseBody>, Integer, Hash)> create_manual_account_with_http_info(user_guid, account_create_request_body)

```ruby
begin
  # Create manual account
  data, status_code, headers = api_instance.create_manual_account_with_http_info(user_guid, account_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->create_manual_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **account_create_request_body** | [**AccountCreateRequestBody**](AccountCreateRequestBody.md) | Manual account object to be created. |  |

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_manual_account

> delete_manual_account(account_guid, accept, user_guid)

Delete manual account

This endpoint deletes accounts that were manually created. The API will respond with an empty object and a status of `204 No Content`.

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

api_instance = MxPlatformRuby::AccountsApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
accept = 'application/vnd.mx.api.v1+json' # String | Specifies the media type expected in the response.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete manual account
  api_instance.delete_manual_account(account_guid, accept, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->delete_manual_account: #{e}"
end
```

#### Using the delete_manual_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_manual_account_with_http_info(account_guid, accept, user_guid)

```ruby
begin
  # Delete manual account
  data, status_code, headers = api_instance.delete_manual_account_with_http_info(account_guid, accept, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->delete_manual_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **accept** | **String** | Specifies the media type expected in the response. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_account_numbers_by_account

> <AccountNumbersResponseBody> list_account_numbers_by_account(account_guid, user_guid, opts)

List account numbers by account

This endpoint returns a list of account numbers associated with the specified `account`.

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

api_instance = MxPlatformRuby::AccountsApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List account numbers by account
  result = api_instance.list_account_numbers_by_account(account_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_account_numbers_by_account: #{e}"
end
```

#### Using the list_account_numbers_by_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountNumbersResponseBody>, Integer, Hash)> list_account_numbers_by_account_with_http_info(account_guid, user_guid, opts)

```ruby
begin
  # List account numbers by account
  data, status_code, headers = api_instance.list_account_numbers_by_account_with_http_info(account_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountNumbersResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_account_numbers_by_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**AccountNumbersResponseBody**](AccountNumbersResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_account_numbers_by_member

> <AccountNumbersResponseBody> list_account_numbers_by_member(member_guid, user_guid, opts)

List account numbers by member

This endpoint returns a list of account numbers associated with the specified `member`.

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

api_instance = MxPlatformRuby::AccountsApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List account numbers by member
  result = api_instance.list_account_numbers_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_account_numbers_by_member: #{e}"
end
```

#### Using the list_account_numbers_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountNumbersResponseBody>, Integer, Hash)> list_account_numbers_by_member_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List account numbers by member
  data, status_code, headers = api_instance.list_account_numbers_by_member_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountNumbersResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_account_numbers_by_member_with_http_info: #{e}"
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

[**AccountNumbersResponseBody**](AccountNumbersResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_account_owners_by_member

> <AccountOwnersResponseBody> list_account_owners_by_member(member_guid, user_guid, opts)

List account owners by member

This endpoint returns an array with information about every account associated with a particular member.

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

api_instance = MxPlatformRuby::AccountsApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List account owners by member
  result = api_instance.list_account_owners_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_account_owners_by_member: #{e}"
end
```

#### Using the list_account_owners_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountOwnersResponseBody>, Integer, Hash)> list_account_owners_by_member_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List account owners by member
  data, status_code, headers = api_instance.list_account_owners_by_member_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountOwnersResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_account_owners_by_member_with_http_info: #{e}"
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

[**AccountOwnersResponseBody**](AccountOwnersResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_member_accounts

> <AccountsResponseBody> list_member_accounts(user_guid, member_guid, opts)

List accounts by member

This endpoint returns a list of all the accounts associated with the specified `member`.

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

api_instance = MxPlatformRuby::AccountsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
opts = {
  member_is_managed_by_user: true, # Boolean | List only accounts whose member is managed by the user.
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List accounts by member
  result = api_instance.list_member_accounts(user_guid, member_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_member_accounts: #{e}"
end
```

#### Using the list_member_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountsResponseBody>, Integer, Hash)> list_member_accounts_with_http_info(user_guid, member_guid, opts)

```ruby
begin
  # List accounts by member
  data, status_code, headers = api_instance.list_member_accounts_with_http_info(user_guid, member_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_member_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **member_is_managed_by_user** | **Boolean** | List only accounts whose member is managed by the user. | [optional] |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**AccountsResponseBody**](AccountsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_user_accounts

> <AccountsResponseBody> list_user_accounts(user_guid, opts)

List accounts

This endpoint returns a list of all the accounts associated with the specified `user`.  :::warning This request will not return the full account number. It may return the last four digits of the account number if that information has been provided during aggregation. If you need the full account number, please refer to [List account numbers by member](https://docs.mx.com/api-reference/platform-api/reference/list-account-numbers-by-member/), [List account numbers by account](https://docs.mx.com/api-reference/platform-api/reference/list-account-numbers-by-account/), or the [Fetch Account and Routing Numbers](https://docs.mx.com/products/connectivity/instant-account-verification/fetch-account-routing-number-api/#4-read-the-account-numbers) guide. ::: 

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

api_instance = MxPlatformRuby::AccountsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  member_is_managed_by_user: true, # Boolean | List only accounts whose member is managed by the user.
  is_manual: true, # Boolean | List only accounts that were manually created.
  records_per_page: 10, # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
  use_case: 'MONEY_MOVEMENT' # String | The use case associated with the member. Valid values are `PFM` and `MONEY_MOVEMENT`. For example, you can append either `?use_case=PFM` or `?use_case=MONEY_MOVEMENT`.
}

begin
  # List accounts
  result = api_instance.list_user_accounts(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_user_accounts: #{e}"
end
```

#### Using the list_user_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountsResponseBody>, Integer, Hash)> list_user_accounts_with_http_info(user_guid, opts)

```ruby
begin
  # List accounts
  data, status_code, headers = api_instance.list_user_accounts_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->list_user_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **member_is_managed_by_user** | **Boolean** | List only accounts whose member is managed by the user. | [optional] |
| **is_manual** | **Boolean** | List only accounts that were manually created. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |
| **use_case** | **String** | The use case associated with the member. Valid values are &#x60;PFM&#x60; and &#x60;MONEY_MOVEMENT&#x60;. For example, you can append either &#x60;?use_case&#x3D;PFM&#x60; or &#x60;?use_case&#x3D;MONEY_MOVEMENT&#x60;. | [optional] |

### Return type

[**AccountsResponseBody**](AccountsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_account

> <AccountResponseBody> read_account(account_guid, user_guid)

Read account

This endpoint returns the specified `account` resource.

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

api_instance = MxPlatformRuby::AccountsApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read account
  result = api_instance.read_account(account_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->read_account: #{e}"
end
```

#### Using the read_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponseBody>, Integer, Hash)> read_account_with_http_info(account_guid, user_guid)

```ruby
begin
  # Read account
  data, status_code, headers = api_instance.read_account_with_http_info(account_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->read_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_account_by_member

> <AccountResponseBody> read_account_by_member(account_guid, member_guid, user_guid)

Read account by member

This endpoint allows you to read the attributes of an `account` resource.

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

api_instance = MxPlatformRuby::AccountsApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read account by member
  result = api_instance.read_account_by_member(account_guid, member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->read_account_by_member: #{e}"
end
```

#### Using the read_account_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponseBody>, Integer, Hash)> read_account_by_member_with_http_info(account_guid, member_guid, user_guid)

```ruby
begin
  # Read account by member
  data, status_code, headers = api_instance.read_account_by_member_with_http_info(account_guid, member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->read_account_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_account_by_member

> <AccountResponseBody> update_account_by_member(account_guid, member_guid, user_guid, account_update_request_body)

Update account by member

This endpoint allows you to update certain attributes of an `account` resource, including manual accounts. For manual accounts, you can update every field listed. For aggregated accounts, you can only update `is_business`, `is_hidden` and `metadata`.

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

api_instance = MxPlatformRuby::AccountsApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
account_update_request_body = MxPlatformRuby::AccountUpdateRequestBody.new # AccountUpdateRequestBody | 

begin
  # Update account by member
  result = api_instance.update_account_by_member(account_guid, member_guid, user_guid, account_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->update_account_by_member: #{e}"
end
```

#### Using the update_account_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponseBody>, Integer, Hash)> update_account_by_member_with_http_info(account_guid, member_guid, user_guid, account_update_request_body)

```ruby
begin
  # Update account by member
  data, status_code, headers = api_instance.update_account_by_member_with_http_info(account_guid, member_guid, user_guid, account_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling AccountsApi->update_account_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **account_update_request_body** | [**AccountUpdateRequestBody**](AccountUpdateRequestBody.md) |  |  |

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

