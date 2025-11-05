# MxPlatformRuby::ManagedDataApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_managed_account**](ManagedDataApi.md#create_managed_account) | **POST** /users/{user_guid}/managed_members/{member_guid}/accounts | Create managed account |
| [**create_managed_member**](ManagedDataApi.md#create_managed_member) | **POST** /users/{user_guid}/managed_members | Create managed member |
| [**create_managed_transaction**](ManagedDataApi.md#create_managed_transaction) | **POST** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions | Create managed transaction |
| [**delete_managed_account**](ManagedDataApi.md#delete_managed_account) | **DELETE** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid} | Delete managed account |
| [**delete_managed_member**](ManagedDataApi.md#delete_managed_member) | **DELETE** /users/{user_guid}/managed_members/{member_guid} | Delete managed member |
| [**delete_managed_transaction**](ManagedDataApi.md#delete_managed_transaction) | **DELETE** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions/{transaction_guid} | Delete managed transaction |
| [**list_managed_accounts**](ManagedDataApi.md#list_managed_accounts) | **GET** /users/{user_guid}/managed_members/{member_guid}/accounts | List managed accounts |
| [**list_managed_institutions**](ManagedDataApi.md#list_managed_institutions) | **GET** /managed_institutions | List managed institutions |
| [**list_managed_members**](ManagedDataApi.md#list_managed_members) | **GET** /users/{user_guid}/managed_members | List managed members |
| [**list_managed_transactions**](ManagedDataApi.md#list_managed_transactions) | **GET** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions | List managed transactions |
| [**read_managed_account**](ManagedDataApi.md#read_managed_account) | **GET** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid} | Read managed account |
| [**read_managed_member**](ManagedDataApi.md#read_managed_member) | **GET** /users/{user_guid}/managed_members/{member_guid} | Read managed member |
| [**read_managed_transaction**](ManagedDataApi.md#read_managed_transaction) | **GET** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions/{transaction_guid} | Read managed transaction |
| [**update_managed_account**](ManagedDataApi.md#update_managed_account) | **PUT** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid} | Update managed account |
| [**update_managed_member**](ManagedDataApi.md#update_managed_member) | **PUT** /users/{user_guid}/managed_members/{member_guid} | Update managed member |
| [**update_managed_transaction**](ManagedDataApi.md#update_managed_transaction) | **PUT** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions/{transaction_guid} | Update managed transaction |


## create_managed_account

> <AccountResponseBody> create_managed_account(member_guid, user_guid, managed_account_create_request_body)

Create managed account

Use this endpoint to create a partner-managed account.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
managed_account_create_request_body = MxPlatformRuby::ManagedAccountCreateRequestBody.new # ManagedAccountCreateRequestBody | Managed account to be created.

begin
  # Create managed account
  result = api_instance.create_managed_account(member_guid, user_guid, managed_account_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->create_managed_account: #{e}"
end
```

#### Using the create_managed_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponseBody>, Integer, Hash)> create_managed_account_with_http_info(member_guid, user_guid, managed_account_create_request_body)

```ruby
begin
  # Create managed account
  data, status_code, headers = api_instance.create_managed_account_with_http_info(member_guid, user_guid, managed_account_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->create_managed_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **managed_account_create_request_body** | [**ManagedAccountCreateRequestBody**](ManagedAccountCreateRequestBody.md) | Managed account to be created. |  |

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## create_managed_member

> <MemberResponseBody> create_managed_member(user_guid, managed_member_create_request_body)

Create managed member

Use this endpoint to create a new partner-managed `member`.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
managed_member_create_request_body = MxPlatformRuby::ManagedMemberCreateRequestBody.new # ManagedMemberCreateRequestBody | Managed member to be created.

begin
  # Create managed member
  result = api_instance.create_managed_member(user_guid, managed_member_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->create_managed_member: #{e}"
end
```

#### Using the create_managed_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> create_managed_member_with_http_info(user_guid, managed_member_create_request_body)

```ruby
begin
  # Create managed member
  data, status_code, headers = api_instance.create_managed_member_with_http_info(user_guid, managed_member_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->create_managed_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **managed_member_create_request_body** | [**ManagedMemberCreateRequestBody**](ManagedMemberCreateRequestBody.md) | Managed member to be created. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## create_managed_transaction

> <TransactionResponseBody> create_managed_transaction(account_guid, member_guid, user_guid, managed_transaction_create_request_body)

Create managed transaction

Use this endpoint to create a new partner-managed `transaction`.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
managed_transaction_create_request_body = MxPlatformRuby::ManagedTransactionCreateRequestBody.new # ManagedTransactionCreateRequestBody | Managed transaction to be created.

begin
  # Create managed transaction
  result = api_instance.create_managed_transaction(account_guid, member_guid, user_guid, managed_transaction_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->create_managed_transaction: #{e}"
end
```

#### Using the create_managed_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponseBody>, Integer, Hash)> create_managed_transaction_with_http_info(account_guid, member_guid, user_guid, managed_transaction_create_request_body)

```ruby
begin
  # Create managed transaction
  data, status_code, headers = api_instance.create_managed_transaction_with_http_info(account_guid, member_guid, user_guid, managed_transaction_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->create_managed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **managed_transaction_create_request_body** | [**ManagedTransactionCreateRequestBody**](ManagedTransactionCreateRequestBody.md) | Managed transaction to be created. |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_managed_account

> delete_managed_account(account_guid, member_guid, user_guid)

Delete managed account

Use this endpoint to delete a partner-managed account according to its unique GUID. If successful, the API will respond with a status of `204 No Content`.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete managed account
  api_instance.delete_managed_account(account_guid, member_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->delete_managed_account: #{e}"
end
```

#### Using the delete_managed_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_managed_account_with_http_info(account_guid, member_guid, user_guid)

```ruby
begin
  # Delete managed account
  data, status_code, headers = api_instance.delete_managed_account_with_http_info(account_guid, member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->delete_managed_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_managed_member

> delete_managed_member(member_guid, accept, user_guid)

Delete managed member

Use this endpoint to delete the specified partner-managed `member`. The endpoint will respond with a status of `204 No Content` without a resource.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
accept = 'application/vnd.mx.api.v1+json' # String | Specifies the media type expected in the response.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete managed member
  api_instance.delete_managed_member(member_guid, accept, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->delete_managed_member: #{e}"
end
```

#### Using the delete_managed_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_managed_member_with_http_info(member_guid, accept, user_guid)

```ruby
begin
  # Delete managed member
  data, status_code, headers = api_instance.delete_managed_member_with_http_info(member_guid, accept, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->delete_managed_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **accept** | **String** | Specifies the media type expected in the response. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_managed_transaction

> delete_managed_transaction(account_guid, member_guid, transaction_guid, user_guid)

Delete managed transaction

Use this endpoint to delete the specified partner-managed `transaction`. The endpoint will respond with a status of `204 No Content` without a resource.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Delete managed transaction
  api_instance.delete_managed_transaction(account_guid, member_guid, transaction_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->delete_managed_transaction: #{e}"
end
```

#### Using the delete_managed_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_managed_transaction_with_http_info(account_guid, member_guid, transaction_guid, user_guid)

```ruby
begin
  # Delete managed transaction
  data, status_code, headers = api_instance.delete_managed_transaction_with_http_info(account_guid, member_guid, transaction_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->delete_managed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_managed_accounts

> <AccountsResponseBody> list_managed_accounts(member_guid, user_guid, opts)

List managed accounts

Use this endpoint to retrieve a list of all the partner-managed accounts associated with the given partner-managed member.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List managed accounts
  result = api_instance.list_managed_accounts(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->list_managed_accounts: #{e}"
end
```

#### Using the list_managed_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountsResponseBody>, Integer, Hash)> list_managed_accounts_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List managed accounts
  data, status_code, headers = api_instance.list_managed_accounts_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->list_managed_accounts_with_http_info: #{e}"
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

[**AccountsResponseBody**](AccountsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_managed_institutions

> <InstitutionsResponseBody> list_managed_institutions(opts)

List managed institutions

This endpoint returns a list of institutions which can be used to create partner-managed members.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List managed institutions
  result = api_instance.list_managed_institutions(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->list_managed_institutions: #{e}"
end
```

#### Using the list_managed_institutions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstitutionsResponseBody>, Integer, Hash)> list_managed_institutions_with_http_info(opts)

```ruby
begin
  # List managed institutions
  data, status_code, headers = api_instance.list_managed_institutions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstitutionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->list_managed_institutions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**InstitutionsResponseBody**](InstitutionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_managed_members

> <MembersResponseBody> list_managed_members(user_guid, opts)

List managed members

This endpoint returns a list of all the partner-managed members associated with the specified `user`.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List managed members
  result = api_instance.list_managed_members(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->list_managed_members: #{e}"
end
```

#### Using the list_managed_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembersResponseBody>, Integer, Hash)> list_managed_members_with_http_info(user_guid, opts)

```ruby
begin
  # List managed members
  data, status_code, headers = api_instance.list_managed_members_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembersResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->list_managed_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**MembersResponseBody**](MembersResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_managed_transactions

> <TransactionsResponseBody> list_managed_transactions(account_guid, member_guid, user_guid, opts)

List managed transactions

This endpoint returns a list of all the partner-managed transactions associated with the specified `account`, scoped through a `user` and a `member`.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  from_date: '2024-01-01', # String | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided.
  to_date: '2024-03-31', # String | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List managed transactions
  result = api_instance.list_managed_transactions(account_guid, member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->list_managed_transactions: #{e}"
end
```

#### Using the list_managed_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBody>, Integer, Hash)> list_managed_transactions_with_http_info(account_guid, member_guid, user_guid, opts)

```ruby
begin
  # List managed transactions
  data, status_code, headers = api_instance.list_managed_transactions_with_http_info(account_guid, member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->list_managed_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **from_date** | **String** | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided. | [optional] |
| **to_date** | **String** | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**TransactionsResponseBody**](TransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_managed_account

> <AccountResponseBody> read_managed_account(account_guid, member_guid, user_guid)

Read managed account

Use this endpoint to read the attributes of a partner-managed account according to its unique guid.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read managed account
  result = api_instance.read_managed_account(account_guid, member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->read_managed_account: #{e}"
end
```

#### Using the read_managed_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponseBody>, Integer, Hash)> read_managed_account_with_http_info(account_guid, member_guid, user_guid)

```ruby
begin
  # Read managed account
  data, status_code, headers = api_instance.read_managed_account_with_http_info(account_guid, member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->read_managed_account_with_http_info: #{e}"
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


## read_managed_member

> <MemberResponseBody> read_managed_member(member_guid, user_guid)

Read managed member

This endpoint returns the attributes of the specified partner-managed`member`.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read managed member
  result = api_instance.read_managed_member(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->read_managed_member: #{e}"
end
```

#### Using the read_managed_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> read_managed_member_with_http_info(member_guid, user_guid)

```ruby
begin
  # Read managed member
  data, status_code, headers = api_instance.read_managed_member_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->read_managed_member_with_http_info: #{e}"
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


## read_managed_transaction

> <TransactionResponseBody> read_managed_transaction(account_guid, member_guid, transaction_guid, user_guid)

Read managed transaction

Requests to this endpoint will return the attributes of the specified partner-managed `transaction`.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read managed transaction
  result = api_instance.read_managed_transaction(account_guid, member_guid, transaction_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->read_managed_transaction: #{e}"
end
```

#### Using the read_managed_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponseBody>, Integer, Hash)> read_managed_transaction_with_http_info(account_guid, member_guid, transaction_guid, user_guid)

```ruby
begin
  # Read managed transaction
  data, status_code, headers = api_instance.read_managed_transaction_with_http_info(account_guid, member_guid, transaction_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->read_managed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## update_managed_account

> <AccountResponseBody> update_managed_account(account_guid, member_guid, user_guid, managed_account_update_request_body)

Update managed account

Use this endpoint to update the attributes of a partner-managed account according to its unique GUID.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
managed_account_update_request_body = MxPlatformRuby::ManagedAccountUpdateRequestBody.new # ManagedAccountUpdateRequestBody | Managed account object to be updated (While no single parameter is required, the request body can't be empty)

begin
  # Update managed account
  result = api_instance.update_managed_account(account_guid, member_guid, user_guid, managed_account_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->update_managed_account: #{e}"
end
```

#### Using the update_managed_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponseBody>, Integer, Hash)> update_managed_account_with_http_info(account_guid, member_guid, user_guid, managed_account_update_request_body)

```ruby
begin
  # Update managed account
  data, status_code, headers = api_instance.update_managed_account_with_http_info(account_guid, member_guid, user_guid, managed_account_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->update_managed_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **managed_account_update_request_body** | [**ManagedAccountUpdateRequestBody**](ManagedAccountUpdateRequestBody.md) | Managed account object to be updated (While no single parameter is required, the request body can&#39;t be empty) |  |

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_managed_member

> <MemberResponseBody> update_managed_member(member_guid, user_guid, managed_member_update_request_body)

Update managed member

Use this endpoint to update the attributes of the specified partner_managed `member`.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
managed_member_update_request_body = MxPlatformRuby::ManagedMemberUpdateRequestBody.new # ManagedMemberUpdateRequestBody | Managed member object to be updated (While no single parameter is required, the request body can't be empty)

begin
  # Update managed member
  result = api_instance.update_managed_member(member_guid, user_guid, managed_member_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->update_managed_member: #{e}"
end
```

#### Using the update_managed_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> update_managed_member_with_http_info(member_guid, user_guid, managed_member_update_request_body)

```ruby
begin
  # Update managed member
  data, status_code, headers = api_instance.update_managed_member_with_http_info(member_guid, user_guid, managed_member_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->update_managed_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **managed_member_update_request_body** | [**ManagedMemberUpdateRequestBody**](ManagedMemberUpdateRequestBody.md) | Managed member object to be updated (While no single parameter is required, the request body can&#39;t be empty) |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_managed_transaction

> <TransactionResponseBody> update_managed_transaction(account_guid, member_guid, transaction_guid, user_guid, managed_transaction_update_request_body)

Update managed transaction

Use this endpoint to update the attributes of the specified partner_managed `transaction`.

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

api_instance = MxPlatformRuby::ManagedDataApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
managed_transaction_update_request_body = MxPlatformRuby::ManagedTransactionUpdateRequestBody.new # ManagedTransactionUpdateRequestBody | Managed transaction object to be updated (While no single parameter is required, the request body can't be empty)

begin
  # Update managed transaction
  result = api_instance.update_managed_transaction(account_guid, member_guid, transaction_guid, user_guid, managed_transaction_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->update_managed_transaction: #{e}"
end
```

#### Using the update_managed_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponseBody>, Integer, Hash)> update_managed_transaction_with_http_info(account_guid, member_guid, transaction_guid, user_guid, managed_transaction_update_request_body)

```ruby
begin
  # Update managed transaction
  data, status_code, headers = api_instance.update_managed_transaction_with_http_info(account_guid, member_guid, transaction_guid, user_guid, managed_transaction_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling ManagedDataApi->update_managed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **managed_transaction_update_request_body** | [**ManagedTransactionUpdateRequestBody**](ManagedTransactionUpdateRequestBody.md) | Managed transaction object to be updated (While no single parameter is required, the request body can&#39;t be empty) |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json

