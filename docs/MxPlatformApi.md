# MxPlatformRuby::MxPlatformApi

All URIs are relative to *https://api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_member**](MxPlatformApi.md#aggregate_member) | **POST** /users/{user_guid}/members/{member_guid}/aggregate | Aggregate member |
| [**check_balances**](MxPlatformApi.md#check_balances) | **POST** /users/{user_guid}/members/{member_guid}/check_balance | Check balances |
| [**create_category**](MxPlatformApi.md#create_category) | **POST** /users/{user_guid}/categories | Create category |
| [**create_managed_account**](MxPlatformApi.md#create_managed_account) | **POST** /users/{user_guid}/managed_members/{member_guid}/accounts | Create managed account |
| [**create_managed_member**](MxPlatformApi.md#create_managed_member) | **POST** /users/{user_guid}/managed_members | Create managed member |
| [**create_managed_transaction**](MxPlatformApi.md#create_managed_transaction) | **POST** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions | Create managed transaction |
| [**create_manual_account**](MxPlatformApi.md#create_manual_account) | **POST** /users/{user_guid}/accounts | Create manual account |
| [**create_member**](MxPlatformApi.md#create_member) | **POST** /users/{user_guid}/members | Create member |
| [**create_spending_plan**](MxPlatformApi.md#create_spending_plan) | **POST** /users/{user_guid}/spending_plans | Create spending plan |
| [**create_spending_plan_iteration_item**](MxPlatformApi.md#create_spending_plan_iteration_item) | **POST** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items | Create spending plan iteration item |
| [**create_tag**](MxPlatformApi.md#create_tag) | **POST** /users/{user_guid}/tags | Create tag |
| [**create_tagging**](MxPlatformApi.md#create_tagging) | **POST** /users/{user_guid}/taggings | Create tagging |
| [**create_transaction_rule**](MxPlatformApi.md#create_transaction_rule) | **POST** /users/{user_guid}/transaction_rules | Create transaction rule |
| [**create_user**](MxPlatformApi.md#create_user) | **POST** /users | Create user |
| [**delete_category**](MxPlatformApi.md#delete_category) | **DELETE** /users/{user_guid}/categories/{category_guid} | Delete category |
| [**delete_managed_account**](MxPlatformApi.md#delete_managed_account) | **DELETE** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid} | Delete managed account |
| [**delete_managed_member**](MxPlatformApi.md#delete_managed_member) | **DELETE** /users/{user_guid}/managed_members/{member_guid} | Delete managed member |
| [**delete_managed_transaction**](MxPlatformApi.md#delete_managed_transaction) | **DELETE** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions/{transaction_guid} | Delete managed transaction |
| [**delete_manual_account**](MxPlatformApi.md#delete_manual_account) | **DELETE** /users/{user_guid}/accounts/{account_guid} | Delete manual account |
| [**delete_member**](MxPlatformApi.md#delete_member) | **DELETE** /users/{user_guid}/members/{member_guid} | Delete member |
| [**delete_spending_plan**](MxPlatformApi.md#delete_spending_plan) | **DELETE** /users/{user_guid}/spending_plans/{spending_plan_guid} | Delete spending plan |
| [**delete_spending_plan_account**](MxPlatformApi.md#delete_spending_plan_account) | **DELETE** /users/{user_guid}/spending_plans/{spending_plan_guid}/spending_plan_accounts/{spending_plan_account_guid} | Delete spending plan account |
| [**delete_spending_plan_iteration_item**](MxPlatformApi.md#delete_spending_plan_iteration_item) | **DELETE** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items/{iteration_item_guid} | Delete spending plan iteration item |
| [**delete_tag**](MxPlatformApi.md#delete_tag) | **DELETE** /users/{user_guid}/tags/{tag_guid} | Delete tag |
| [**delete_tagging**](MxPlatformApi.md#delete_tagging) | **DELETE** /users/{user_guid}/taggings/{tagging_guid} | Delete tagging |
| [**delete_transaction_rule**](MxPlatformApi.md#delete_transaction_rule) | **DELETE** /users/{user_guid}/transaction_rules/{transaction_rule_guid} | Delete transaction rule |
| [**delete_user**](MxPlatformApi.md#delete_user) | **DELETE** /users/{user_guid} | Delete user |
| [**deprecated_request_payment_processor_authorization_code**](MxPlatformApi.md#deprecated_request_payment_processor_authorization_code) | **POST** /payment_processor_authorization_code | (Deprecated) Request an authorization code. |
| [**download_statement_pdf**](MxPlatformApi.md#download_statement_pdf) | **GET** /users/{user_guid}/members/{member_guid}/statements/{statement_guid}.pdf | Download statement pdf |
| [**download_tax_document**](MxPlatformApi.md#download_tax_document) | **GET** /users/{user_guid}/members/{member_guid}/tax_documents/{tax_document_guid}.pdf | Download a Tax Document PDF |
| [**enhance_transactions**](MxPlatformApi.md#enhance_transactions) | **POST** /transactions/enhance | Enhance transactions |
| [**extend_history**](MxPlatformApi.md#extend_history) | **POST** /users/{user_guid}/members/{member_guid}/extend_history | Extend history |
| [**fetch_statements**](MxPlatformApi.md#fetch_statements) | **POST** /users/{user_guid}/members/{member_guid}/fetch_statements | Fetch statements |
| [**fetch_tax_documents**](MxPlatformApi.md#fetch_tax_documents) | **POST** /users/{user_guid}/members/{member_guid}/fetch_tax_documents | Fetch Tax Documents |
| [**identify_member**](MxPlatformApi.md#identify_member) | **POST** /users/{user_guid}/members/{member_guid}/identify | Identify member |
| [**list_account_numbers_by_account**](MxPlatformApi.md#list_account_numbers_by_account) | **GET** /users/{user_guid}/accounts/{account_guid}/account_numbers | List account numbers by account |
| [**list_account_numbers_by_member**](MxPlatformApi.md#list_account_numbers_by_member) | **GET** /users/{user_guid}/members/{member_guid}/account_numbers | List account numbers by member |
| [**list_account_owners_by_member**](MxPlatformApi.md#list_account_owners_by_member) | **GET** /users/{user_guid}/members/{member_guid}/account_owners | List account owners by member |
| [**list_categories**](MxPlatformApi.md#list_categories) | **GET** /users/{user_guid}/categories | List categories |
| [**list_default_categories**](MxPlatformApi.md#list_default_categories) | **GET** /categories/default | List default categories |
| [**list_default_categories_by_user**](MxPlatformApi.md#list_default_categories_by_user) | **GET** /users/{user_guid}/categories/default | List default categories by user |
| [**list_favorite_institutions**](MxPlatformApi.md#list_favorite_institutions) | **GET** /institutions/favorites | List favorite institutions |
| [**list_holdings**](MxPlatformApi.md#list_holdings) | **GET** /users/{user_guid}/holdings | List holdings |
| [**list_holdings_by_account**](MxPlatformApi.md#list_holdings_by_account) | **GET** /users/{user_guid}/accounts/{account_guid}/holdings | List holdings by account |
| [**list_holdings_by_member**](MxPlatformApi.md#list_holdings_by_member) | **GET** /users/{user_guid}/members/{member_guid}/holdings | List holdings by member |
| [**list_institution_credentials**](MxPlatformApi.md#list_institution_credentials) | **GET** /institutions/{institution_code}/credentials | List institution credentials |
| [**list_institutions**](MxPlatformApi.md#list_institutions) | **GET** /institutions | List institutions |
| [**list_managed_accounts**](MxPlatformApi.md#list_managed_accounts) | **GET** /users/{user_guid}/managed_members/{member_guid}/accounts | List managed accounts |
| [**list_managed_institutions**](MxPlatformApi.md#list_managed_institutions) | **GET** /managed_institutions | List managed institutions |
| [**list_managed_members**](MxPlatformApi.md#list_managed_members) | **GET** /users/{user_guid}/managed_members | List managed members |
| [**list_managed_transactions**](MxPlatformApi.md#list_managed_transactions) | **GET** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions | List managed transactions |
| [**list_member_accounts**](MxPlatformApi.md#list_member_accounts) | **GET** /users/{user_guid}/members/{member_guid}/accounts | List accounts by member |
| [**list_member_challenges**](MxPlatformApi.md#list_member_challenges) | **GET** /users/{user_guid}/members/{member_guid}/challenges | List member challenges |
| [**list_member_credentials**](MxPlatformApi.md#list_member_credentials) | **GET** /users/{user_guid}/members/{member_guid}/credentials | List member credentials |
| [**list_members**](MxPlatformApi.md#list_members) | **GET** /users/{user_guid}/members | List members |
| [**list_merchants**](MxPlatformApi.md#list_merchants) | **GET** /merchants | List merchants |
| [**list_spending_plan_accounts**](MxPlatformApi.md#list_spending_plan_accounts) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/spending_plan_accounts | List spending plan accounts |
| [**list_spending_plan_iteration_items**](MxPlatformApi.md#list_spending_plan_iteration_items) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items | List spending plan iteration items |
| [**list_spending_plan_iterations**](MxPlatformApi.md#list_spending_plan_iterations) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations | List spending plan iterations |
| [**list_spending_plans**](MxPlatformApi.md#list_spending_plans) | **GET** /users/{user_guid}/spending_plans | List spending plans |
| [**list_statements_by_member**](MxPlatformApi.md#list_statements_by_member) | **GET** /users/{user_guid}/members/{member_guid}/statements | List statements by member |
| [**list_taggings**](MxPlatformApi.md#list_taggings) | **GET** /users/{user_guid}/taggings | List taggings |
| [**list_tags**](MxPlatformApi.md#list_tags) | **GET** /users/{user_guid}/tags | List tags |
| [**list_tax_documents**](MxPlatformApi.md#list_tax_documents) | **GET** /users/{user_guid}/members/{member_guid}/tax_documents | List Tax Documents |
| [**list_transaction_rules**](MxPlatformApi.md#list_transaction_rules) | **GET** /users/{user_guid}/transaction_rules | List transaction rules |
| [**list_transactions**](MxPlatformApi.md#list_transactions) | **GET** /users/{user_guid}/transactions | List transactions |
| [**list_transactions_by_account**](MxPlatformApi.md#list_transactions_by_account) | **GET** /users/{user_guid}/accounts/{account_guid}/transactions | List transactions by account |
| [**list_transactions_by_member**](MxPlatformApi.md#list_transactions_by_member) | **GET** /users/{user_guid}/members/{member_guid}/transactions | List transactions by member |
| [**list_transactions_by_tag**](MxPlatformApi.md#list_transactions_by_tag) | **GET** /users/{user_guid}/tags/{tag_guid}/transactions | List transactions by tag |
| [**list_user_accounts**](MxPlatformApi.md#list_user_accounts) | **GET** /users/{user_guid}/accounts | List accounts |
| [**list_users**](MxPlatformApi.md#list_users) | **GET** /users | List users |
| [**read_account**](MxPlatformApi.md#read_account) | **GET** /users/{user_guid}/accounts/{account_guid} | Read account |
| [**read_account_by_member**](MxPlatformApi.md#read_account_by_member) | **GET** /users/{user_guid}/members/{member_guid}/accounts/{account_guid} | Read account by member |
| [**read_category**](MxPlatformApi.md#read_category) | **GET** /users/{user_guid}/categories/{category_guid} | Read a custom category |
| [**read_default_category**](MxPlatformApi.md#read_default_category) | **GET** /categories/{category_guid} | Read a default category |
| [**read_holding**](MxPlatformApi.md#read_holding) | **GET** /users/{user_guid}/holdings/{holding_guid} | Read holding |
| [**read_institution**](MxPlatformApi.md#read_institution) | **GET** /institutions/{institution_code} | Read institution |
| [**read_managed_account**](MxPlatformApi.md#read_managed_account) | **GET** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid} | Read managed account |
| [**read_managed_member**](MxPlatformApi.md#read_managed_member) | **GET** /users/{user_guid}/managed_members/{member_guid} | Read managed member |
| [**read_managed_transaction**](MxPlatformApi.md#read_managed_transaction) | **GET** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions/{transaction_guid} | Read managed transaction |
| [**read_member**](MxPlatformApi.md#read_member) | **GET** /users/{user_guid}/members/{member_guid} | Read member |
| [**read_member_status**](MxPlatformApi.md#read_member_status) | **GET** /users/{user_guid}/members/{member_guid}/status | Read member status |
| [**read_merchant**](MxPlatformApi.md#read_merchant) | **GET** /merchants/{merchant_guid} | Read merchant |
| [**read_merchant_location**](MxPlatformApi.md#read_merchant_location) | **GET** /merchant_locations/{merchant_location_guid} | Read merchant location |
| [**read_spending_plan_account**](MxPlatformApi.md#read_spending_plan_account) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/spending_plan_accounts/{spending_plan_account_guid} | Read spending plan account |
| [**read_spending_plan_iteration**](MxPlatformApi.md#read_spending_plan_iteration) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/{iteration_number} | Read a spending plan iteration |
| [**read_spending_plan_iteration_item**](MxPlatformApi.md#read_spending_plan_iteration_item) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items/{iteration_item_guid} | Read a spending plan iteration item |
| [**read_spending_plan_user**](MxPlatformApi.md#read_spending_plan_user) | **GET** /users/{user_guid}/spending_plans/{spending_plan_guid} | Read a spending plan for a user |
| [**read_statement_by_member**](MxPlatformApi.md#read_statement_by_member) | **GET** /users/{user_guid}/members/{member_guid}/statements/{statement_guid} | Read statement by member |
| [**read_tag**](MxPlatformApi.md#read_tag) | **GET** /users/{user_guid}/tags/{tag_guid} | Read tag |
| [**read_tagging**](MxPlatformApi.md#read_tagging) | **GET** /users/{user_guid}/taggings/{tagging_guid} | Read tagging |
| [**read_tax_document**](MxPlatformApi.md#read_tax_document) | **GET** /users/{user_guid}/members/{member_guid}/tax_documents/{tax_document_guid} | Read a Tax Document |
| [**read_transaction**](MxPlatformApi.md#read_transaction) | **GET** /users/{user_guid}/transactions/{transaction_guid} | Read transaction |
| [**read_transaction_rule**](MxPlatformApi.md#read_transaction_rule) | **GET** /users/{user_guid}/transaction_rules/{transaction_rule_guid} | Read transaction rule |
| [**read_user**](MxPlatformApi.md#read_user) | **GET** /users/{user_guid} | Read user |
| [**request_authorization_code**](MxPlatformApi.md#request_authorization_code) | **POST** /authorization_code | Request an authorization code. |
| [**request_connect_widget_url**](MxPlatformApi.md#request_connect_widget_url) | **POST** /users/{user_guid}/connect_widget_url | Request connect widget url |
| [**request_o_auth_window_uri**](MxPlatformApi.md#request_o_auth_window_uri) | **GET** /users/{user_guid}/members/{member_guid}/oauth_window_uri | Request oauth window uri |
| [**request_widget_url**](MxPlatformApi.md#request_widget_url) | **POST** /users/{user_guid}/widget_urls | Request widget url |
| [**resume_aggregation**](MxPlatformApi.md#resume_aggregation) | **PUT** /users/{user_guid}/members/{member_guid}/resume | Resume aggregation |
| [**update_account_by_member**](MxPlatformApi.md#update_account_by_member) | **PUT** /users/{user_guid}/members/{member_guid}/accounts/{account_guid} | Update account by member |
| [**update_category**](MxPlatformApi.md#update_category) | **PUT** /users/{user_guid}/categories/{category_guid} | Update category |
| [**update_managed_account**](MxPlatformApi.md#update_managed_account) | **PUT** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid} | Update managed account |
| [**update_managed_member**](MxPlatformApi.md#update_managed_member) | **PUT** /users/{user_guid}/managed_members/{member_guid} | Update managed member |
| [**update_managed_transaction**](MxPlatformApi.md#update_managed_transaction) | **PUT** /users/{user_guid}/managed_members/{member_guid}/accounts/{account_guid}/transactions/{transaction_guid} | Update managed transaction |
| [**update_member**](MxPlatformApi.md#update_member) | **PUT** /users/{user_guid}/members/{member_guid} | Update member |
| [**update_spending_plan_iteration_item**](MxPlatformApi.md#update_spending_plan_iteration_item) | **PUT** /users/{user_guid}/spending_plans/{spending_plan_guid}/iterations/current/iteration_items/{iteration_item_guid} | Update a spending plan iteration item |
| [**update_tag**](MxPlatformApi.md#update_tag) | **PUT** /users/{user_guid}/tags/{tag_guid} | Update tag |
| [**update_tagging**](MxPlatformApi.md#update_tagging) | **PUT** /users/{user_guid}/taggings/{tagging_guid} | Update tagging |
| [**update_transaction**](MxPlatformApi.md#update_transaction) | **PUT** /users/{user_guid}/transactions/{transaction_guid} | Update transaction |
| [**update_transaction_rule**](MxPlatformApi.md#update_transaction_rule) | **PUT** /users/{user_guid}/transaction_rules/{transaction_rule_guid} | Update transaction_rule |
| [**update_user**](MxPlatformApi.md#update_user) | **PUT** /users/{user_guid} | Update user |
| [**verify_member**](MxPlatformApi.md#verify_member) | **POST** /users/{user_guid}/members/{member_guid}/verify | Verify member |


## aggregate_member

> <MemberResponseBody> aggregate_member(member_guid, user_guid)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Aggregate member
  result = api_instance.aggregate_member(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->aggregate_member: #{e}"
end
```

#### Using the aggregate_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> aggregate_member_with_http_info(member_guid, user_guid)

```ruby
begin
  # Aggregate member
  data, status_code, headers = api_instance.aggregate_member_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->aggregate_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Check balances
  result = api_instance.check_balances(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->check_balances: #{e}"
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
  puts "Error when calling MxPlatformApi->check_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## create_category

> <CategoryResponseBody> create_category(user_guid, category_create_request_body)

Create category

Use this endpoint to create a new custom category for a specific `user`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
category_create_request_body = MxPlatformRuby::CategoryCreateRequestBody.new # CategoryCreateRequestBody | Custom category object to be created

begin
  # Create category
  result = api_instance.create_category(user_guid, category_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_category: #{e}"
end
```

#### Using the create_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryResponseBody>, Integer, Hash)> create_category_with_http_info(user_guid, category_create_request_body)

```ruby
begin
  # Create category
  data, status_code, headers = api_instance.create_category_with_http_info(user_guid, category_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **category_create_request_body** | [**CategoryCreateRequestBody**](CategoryCreateRequestBody.md) | Custom category object to be created |  |

### Return type

[**CategoryResponseBody**](CategoryResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
managed_account_create_request_body = MxPlatformRuby::ManagedAccountCreateRequestBody.new # ManagedAccountCreateRequestBody | Managed account to be created.

begin
  # Create managed account
  result = api_instance.create_managed_account(member_guid, user_guid, managed_account_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_managed_account: #{e}"
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
  puts "Error when calling MxPlatformApi->create_managed_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
managed_member_create_request_body = MxPlatformRuby::ManagedMemberCreateRequestBody.new # ManagedMemberCreateRequestBody | Managed member to be created.

begin
  # Create managed member
  result = api_instance.create_managed_member(user_guid, managed_member_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_managed_member: #{e}"
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
  puts "Error when calling MxPlatformApi->create_managed_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
managed_transaction_create_request_body = MxPlatformRuby::ManagedTransactionCreateRequestBody.new # ManagedTransactionCreateRequestBody | Managed transaction to be created.

begin
  # Create managed transaction
  result = api_instance.create_managed_transaction(account_guid, member_guid, user_guid, managed_transaction_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_managed_transaction: #{e}"
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
  puts "Error when calling MxPlatformApi->create_managed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **managed_transaction_create_request_body** | [**ManagedTransactionCreateRequestBody**](ManagedTransactionCreateRequestBody.md) | Managed transaction to be created. |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
account_create_request_body = MxPlatformRuby::AccountCreateRequestBody.new # AccountCreateRequestBody | Manual account object to be created.

begin
  # Create manual account
  result = api_instance.create_manual_account(user_guid, account_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_manual_account: #{e}"
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
  puts "Error when calling MxPlatformApi->create_manual_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **account_create_request_body** | [**AccountCreateRequestBody**](AccountCreateRequestBody.md) | Manual account object to be created. |  |

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## create_member

> <MemberResponseBody> create_member(user_guid, member_create_request_body)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
member_create_request_body = MxPlatformRuby::MemberCreateRequestBody.new # MemberCreateRequestBody | Member object to be created with optional parameters (id and metadata) and required parameters (credentials and institution_code)

begin
  # Create member
  result = api_instance.create_member(user_guid, member_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_member: #{e}"
end
```

#### Using the create_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> create_member_with_http_info(user_guid, member_create_request_body)

```ruby
begin
  # Create member
  data, status_code, headers = api_instance.create_member_with_http_info(user_guid, member_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **member_create_request_body** | [**MemberCreateRequestBody**](MemberCreateRequestBody.md) | Member object to be created with optional parameters (id and metadata) and required parameters (credentials and institution_code) |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## create_spending_plan

> <SpendingPlanResponse> create_spending_plan(user_guid)

Create spending plan

This endpoint creates a new `spending_plan` for the user.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Create spending plan
  result = api_instance.create_spending_plan(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_spending_plan: #{e}"
end
```

#### Using the create_spending_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanResponse>, Integer, Hash)> create_spending_plan_with_http_info(user_guid)

```ruby
begin
  # Create spending plan
  data, status_code, headers = api_instance.create_spending_plan_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_spending_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**SpendingPlanResponse**](SpendingPlanResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## create_spending_plan_iteration_item

> <SpendingPlanIterationItemResponse> create_spending_plan_iteration_item(spending_plan_guid, user_guid, spending_plan_iteration_item_create_request_body)

Create spending plan iteration item

This endpoint creates a new `spending_plan_iteration_item`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
spending_plan_iteration_item_create_request_body = MxPlatformRuby::SpendingPlanIterationItemCreateRequestBody.new({planned_amount: 110}) # SpendingPlanIterationItemCreateRequestBody | Iteration item to be created with required parameters (planned_amount)

begin
  # Create spending plan iteration item
  result = api_instance.create_spending_plan_iteration_item(spending_plan_guid, user_guid, spending_plan_iteration_item_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_spending_plan_iteration_item: #{e}"
end
```

#### Using the create_spending_plan_iteration_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationItemResponse>, Integer, Hash)> create_spending_plan_iteration_item_with_http_info(spending_plan_guid, user_guid, spending_plan_iteration_item_create_request_body)

```ruby
begin
  # Create spending plan iteration item
  data, status_code, headers = api_instance.create_spending_plan_iteration_item_with_http_info(spending_plan_guid, user_guid, spending_plan_iteration_item_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationItemResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_spending_plan_iteration_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **spending_plan_iteration_item_create_request_body** | [**SpendingPlanIterationItemCreateRequestBody**](SpendingPlanIterationItemCreateRequestBody.md) | Iteration item to be created with required parameters (planned_amount) |  |

### Return type

[**SpendingPlanIterationItemResponse**](SpendingPlanIterationItemResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## create_tag

> <TagResponseBody> create_tag(user_guid, tag_create_request_body)

Create tag

Use this endpoint to create a new custom tag.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
tag_create_request_body = MxPlatformRuby::TagCreateRequestBody.new # TagCreateRequestBody | Tag object to be created with required parameters (tag_guid)

begin
  # Create tag
  result = api_instance.create_tag(user_guid, tag_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_tag: #{e}"
end
```

#### Using the create_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponseBody>, Integer, Hash)> create_tag_with_http_info(user_guid, tag_create_request_body)

```ruby
begin
  # Create tag
  data, status_code, headers = api_instance.create_tag_with_http_info(user_guid, tag_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **tag_create_request_body** | [**TagCreateRequestBody**](TagCreateRequestBody.md) | Tag object to be created with required parameters (tag_guid) |  |

### Return type

[**TagResponseBody**](TagResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## create_tagging

> <TaggingResponseBody> create_tagging(user_guid, tagging_create_request_body)

Create tagging

Use this endpoint to create a new association between a tag and a particular transaction, according to their unique GUIDs.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
tagging_create_request_body = MxPlatformRuby::TaggingCreateRequestBody.new # TaggingCreateRequestBody | Tagging object to be created with required parameters (tag_guid and transaction_guid)

begin
  # Create tagging
  result = api_instance.create_tagging(user_guid, tagging_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_tagging: #{e}"
end
```

#### Using the create_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaggingResponseBody>, Integer, Hash)> create_tagging_with_http_info(user_guid, tagging_create_request_body)

```ruby
begin
  # Create tagging
  data, status_code, headers = api_instance.create_tagging_with_http_info(user_guid, tagging_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaggingResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **tagging_create_request_body** | [**TaggingCreateRequestBody**](TaggingCreateRequestBody.md) | Tagging object to be created with required parameters (tag_guid and transaction_guid) |  |

### Return type

[**TaggingResponseBody**](TaggingResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## create_transaction_rule

> <TransactionRuleResponseBody> create_transaction_rule(user_guid, transaction_rule_create_request_body)

Create transaction rule

Use this endpoint to create a new transaction rule. The newly-created `transaction_rule` object will be returned if successful.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
transaction_rule_create_request_body = MxPlatformRuby::TransactionRuleCreateRequestBody.new # TransactionRuleCreateRequestBody | TransactionRule object to be created with optional parameters (description) and required parameters (category_guid and match_description)

begin
  # Create transaction rule
  result = api_instance.create_transaction_rule(user_guid, transaction_rule_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_transaction_rule: #{e}"
end
```

#### Using the create_transaction_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRuleResponseBody>, Integer, Hash)> create_transaction_rule_with_http_info(user_guid, transaction_rule_create_request_body)

```ruby
begin
  # Create transaction rule
  data, status_code, headers = api_instance.create_transaction_rule_with_http_info(user_guid, transaction_rule_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRuleResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_transaction_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **transaction_rule_create_request_body** | [**TransactionRuleCreateRequestBody**](TransactionRuleCreateRequestBody.md) | TransactionRule object to be created with optional parameters (description) and required parameters (category_guid and match_description) |  |

### Return type

[**TransactionRuleResponseBody**](TransactionRuleResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## create_user

> <UserResponseBody> create_user(user_create_request_body)

Create user

Use this endpoint to create a new user. The API will respond with the newly-created user object if successful. Disabling a user means that accounts and transactions associated with it will not be updated in the background by MX. It will also restrict access to that user’s data until they are no longer disabled.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_create_request_body = MxPlatformRuby::UserCreateRequestBody.new # UserCreateRequestBody | User object to be created. (None of these parameters are required, but the user object cannot be empty)

begin
  # Create user
  result = api_instance.create_user(user_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponseBody>, Integer, Hash)> create_user_with_http_info(user_create_request_body)

```ruby
begin
  # Create user
  data, status_code, headers = api_instance.create_user_with_http_info(user_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_create_request_body** | [**UserCreateRequestBody**](UserCreateRequestBody.md) | User object to be created. (None of these parameters are required, but the user object cannot be empty) |  |

### Return type

[**UserResponseBody**](UserResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## delete_category

> delete_category(category_guid, user_guid)

Delete category

Use this endpoint to delete a specific custom category according to its unique GUID. The API will respond with an empty object and a status of `204 No Content`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
category_guid = 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874' # String | The unique id for a `category`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete category
  api_instance.delete_category(category_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_category: #{e}"
end
```

#### Using the delete_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_category_with_http_info(category_guid, user_guid)

```ruby
begin
  # Delete category
  data, status_code, headers = api_instance.delete_category_with_http_info(category_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** | The unique id for a &#x60;category&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete managed account
  api_instance.delete_managed_account(account_guid, member_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_managed_account: #{e}"
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
  puts "Error when calling MxPlatformApi->delete_managed_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_managed_member

> delete_managed_member(member_guid, user_guid)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete managed member
  api_instance.delete_managed_member(member_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_managed_member: #{e}"
end
```

#### Using the delete_managed_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_managed_member_with_http_info(member_guid, user_guid)

```ruby
begin
  # Delete managed member
  data, status_code, headers = api_instance.delete_managed_member_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_managed_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete managed transaction
  api_instance.delete_managed_transaction(account_guid, member_guid, transaction_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_managed_transaction: #{e}"
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
  puts "Error when calling MxPlatformApi->delete_managed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_manual_account

> delete_manual_account(account_guid, user_guid)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete manual account
  api_instance.delete_manual_account(account_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_manual_account: #{e}"
end
```

#### Using the delete_manual_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_manual_account_with_http_info(account_guid, user_guid)

```ruby
begin
  # Delete manual account
  data, status_code, headers = api_instance.delete_manual_account_with_http_info(account_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_manual_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete member
  api_instance.delete_member(member_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_member: #{e}"
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
  puts "Error when calling MxPlatformApi->delete_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_spending_plan

> delete_spending_plan(user_guid, spending_plan_guid)

Delete spending plan

Use this endpoint to delete a user's `spending_plan`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique ID for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.

begin
  # Delete spending plan
  api_instance.delete_spending_plan(user_guid, spending_plan_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_spending_plan: #{e}"
end
```

#### Using the delete_spending_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_spending_plan_with_http_info(user_guid, spending_plan_guid)

```ruby
begin
  # Delete spending plan
  data, status_code, headers = api_instance.delete_spending_plan_with_http_info(user_guid, spending_plan_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_spending_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique ID for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_spending_plan_account

> delete_spending_plan_account(user_guid, spending_plan_guid, spending_plan_account_guid)

Delete spending plan account

Use this endpoint to delete a `spending_plan_account`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique ID for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
spending_plan_account_guid = 'ACT-e9f80fee-84da-7s7r-9a5e-0346g4279b4c' # String | The unique ID for the specified account.

begin
  # Delete spending plan account
  api_instance.delete_spending_plan_account(user_guid, spending_plan_guid, spending_plan_account_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_spending_plan_account: #{e}"
end
```

#### Using the delete_spending_plan_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_spending_plan_account_with_http_info(user_guid, spending_plan_guid, spending_plan_account_guid)

```ruby
begin
  # Delete spending plan account
  data, status_code, headers = api_instance.delete_spending_plan_account_with_http_info(user_guid, spending_plan_guid, spending_plan_account_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_spending_plan_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique ID for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **spending_plan_account_guid** | **String** | The unique ID for the specified account. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_spending_plan_iteration_item

> delete_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid)

Delete spending plan iteration item

Use this endpoint to delete a spending plan `iteration_item`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique ID for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
iteration_item_guid = 'SII-a4dc1549-da28-1245-9c9c-53eee4cdfbe3' # String | The unique ID for the `iteration_item`.

begin
  # Delete spending plan iteration item
  api_instance.delete_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_spending_plan_iteration_item: #{e}"
end
```

#### Using the delete_spending_plan_iteration_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid)

```ruby
begin
  # Delete spending plan iteration item
  data, status_code, headers = api_instance.delete_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_spending_plan_iteration_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique ID for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **iteration_item_guid** | **String** | The unique ID for the &#x60;iteration_item&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_tag

> delete_tag(tag_guid, user_guid)

Delete tag

Use this endpoint to permanently delete a specific tag based on its unique GUID. If successful, the API will respond with status of `204 No Content`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
tag_guid = 'TAG-aef36e72-6294-4c38-844d-e573e80aed52' # String | The unique id for a `tag`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete tag
  api_instance.delete_tag(tag_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tag_with_http_info(tag_guid, user_guid)

```ruby
begin
  # Delete tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(tag_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_guid** | **String** | The unique id for a &#x60;tag&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_tagging

> delete_tagging(tagging_guid, user_guid)

Delete tagging

Use this endpoint to delete a tagging according to its unique GUID. If successful, the API will respond with an empty body and a status of 204 NO Content.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
tagging_guid = 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe' # String | The unique id for a `tagging`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete tagging
  api_instance.delete_tagging(tagging_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_tagging: #{e}"
end
```

#### Using the delete_tagging_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tagging_with_http_info(tagging_guid, user_guid)

```ruby
begin
  # Delete tagging
  data, status_code, headers = api_instance.delete_tagging_with_http_info(tagging_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tagging_guid** | **String** | The unique id for a &#x60;tagging&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_transaction_rule

> delete_transaction_rule(transaction_rule_guid, user_guid)

Delete transaction rule

Use this endpoint to permanently delete a transaction rule based on its unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
transaction_rule_guid = 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3' # String | The unique id for a `transaction_rule`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete transaction rule
  api_instance.delete_transaction_rule(transaction_rule_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_transaction_rule: #{e}"
end
```

#### Using the delete_transaction_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_transaction_rule_with_http_info(transaction_rule_guid, user_guid)

```ruby
begin
  # Delete transaction rule
  data, status_code, headers = api_instance.delete_transaction_rule_with_http_info(transaction_rule_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_transaction_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_rule_guid** | **String** | The unique id for a &#x60;transaction_rule&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_user

> delete_user(user_guid)

Delete user

Use this endpoint to delete the specified `user`. The response will have a status of `204 No Content` without an object.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Delete user
  api_instance.delete_user(user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(user_guid)

```ruby
begin
  # Delete user
  data, status_code, headers = api_instance.delete_user_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deprecated_request_payment_processor_authorization_code

> <PaymentProcessorAuthorizationCodeResponseBody> deprecated_request_payment_processor_authorization_code(payment_processor_authorization_code_request_body)

(Deprecated) Request an authorization code.

(This endpoint is deprecated. Clients should use `/authorization_code`.) Clients use this endpoint to request an authorization_code according to a user, member, and account specified in the request body. Clients then pass this code to processors. Processor access is scoped only to the user/member/account specified in this request. Before requesting an authorization_code, clients must have verified the specified member.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
payment_processor_authorization_code_request_body = MxPlatformRuby::PaymentProcessorAuthorizationCodeRequestBody.new # PaymentProcessorAuthorizationCodeRequestBody | The scope for the authorization code.

begin
  # (Deprecated) Request an authorization code.
  result = api_instance.deprecated_request_payment_processor_authorization_code(payment_processor_authorization_code_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->deprecated_request_payment_processor_authorization_code: #{e}"
end
```

#### Using the deprecated_request_payment_processor_authorization_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentProcessorAuthorizationCodeResponseBody>, Integer, Hash)> deprecated_request_payment_processor_authorization_code_with_http_info(payment_processor_authorization_code_request_body)

```ruby
begin
  # (Deprecated) Request an authorization code.
  data, status_code, headers = api_instance.deprecated_request_payment_processor_authorization_code_with_http_info(payment_processor_authorization_code_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentProcessorAuthorizationCodeResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->deprecated_request_payment_processor_authorization_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_processor_authorization_code_request_body** | [**PaymentProcessorAuthorizationCodeRequestBody**](PaymentProcessorAuthorizationCodeRequestBody.md) | The scope for the authorization code. |  |

### Return type

[**PaymentProcessorAuthorizationCodeResponseBody**](PaymentProcessorAuthorizationCodeResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
statement_guid = 'STA-737a344b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for a `statement`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Download statement pdf
  result = api_instance.download_statement_pdf(member_guid, statement_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->download_statement_pdf: #{e}"
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
  puts "Error when calling MxPlatformApi->download_statement_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **statement_guid** | **String** | The unique id for a &#x60;statement&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

**File**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+pdf


## download_tax_document

> File download_tax_document(tax_document_guid, member_guid, user_guid)

Download a Tax Document PDF

Use this endpoint to download a PDF version of the specified tax document. The endpoint URL is the base URL appended with the uri of the tax_document.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
tax_document_guid = 'TAX-987dfds1b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `tax_document`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Download a Tax Document PDF
  result = api_instance.download_tax_document(tax_document_guid, member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->download_tax_document: #{e}"
end
```

#### Using the download_tax_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_tax_document_with_http_info(tax_document_guid, member_guid, user_guid)

```ruby
begin
  # Download a Tax Document PDF
  data, status_code, headers = api_instance.download_tax_document_with_http_info(tax_document_guid, member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->download_tax_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_document_guid** | **String** | The unique id for a &#x60;tax_document&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

**File**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+pdf


## enhance_transactions

> <EnhanceTransactionsResponseBody> enhance_transactions(enhance_transactions_request_body)

Enhance transactions

Use this endpoint to categorize, cleanse, and classify transactions. These transactions are not persisted or stored on the MX platform.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
enhance_transactions_request_body = MxPlatformRuby::EnhanceTransactionsRequestBody.new # EnhanceTransactionsRequestBody | Transaction object to be enhanced

begin
  # Enhance transactions
  result = api_instance.enhance_transactions(enhance_transactions_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->enhance_transactions: #{e}"
end
```

#### Using the enhance_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnhanceTransactionsResponseBody>, Integer, Hash)> enhance_transactions_with_http_info(enhance_transactions_request_body)

```ruby
begin
  # Enhance transactions
  data, status_code, headers = api_instance.enhance_transactions_with_http_info(enhance_transactions_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnhanceTransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->enhance_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enhance_transactions_request_body** | [**EnhanceTransactionsRequestBody**](EnhanceTransactionsRequestBody.md) | Transaction object to be enhanced |  |

### Return type

[**EnhanceTransactionsResponseBody**](EnhanceTransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## extend_history

> <MemberResponseBody> extend_history(member_guid, user_guid)

Extend history

Some institutions allow developers to access an extended transaction history with up to 24 months of data associated with a particular member. The process for fetching and then reading this extended transaction history is much like standard aggregation, and it may trigger multi-factor authentication.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique identifier for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`.

begin
  # Extend history
  result = api_instance.extend_history(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->extend_history: #{e}"
end
```

#### Using the extend_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> extend_history_with_http_info(member_guid, user_guid)

```ruby
begin
  # Extend history
  data, status_code, headers = api_instance.extend_history_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->extend_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique identifier for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Fetch statements
  result = api_instance.fetch_statements(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->fetch_statements: #{e}"
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
  puts "Error when calling MxPlatformApi->fetch_statements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## fetch_tax_documents

> <MemberResponseBody> fetch_tax_documents(member_guid, user_guid)

Fetch Tax Documents

Use this endpoint to fetch (aggregate) the tax documents associated with the specified member. This request **does not** return the latest tax documents. It just starts the document aggregation process and returns the initial state of the process. You must interact with the newly aggregated data using the other document endpoints in this reference. This request may also trigger multi-factor authentication which requires end-user input and a specific process for answering authentication challenges.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Fetch Tax Documents
  result = api_instance.fetch_tax_documents(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->fetch_tax_documents: #{e}"
end
```

#### Using the fetch_tax_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> fetch_tax_documents_with_http_info(member_guid, user_guid)

```ruby
begin
  # Fetch Tax Documents
  data, status_code, headers = api_instance.fetch_tax_documents_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->fetch_tax_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Identify member
  result = api_instance.identify_member(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->identify_member: #{e}"
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
  puts "Error when calling MxPlatformApi->identify_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List account numbers by account
  result = api_instance.list_account_numbers_by_account(account_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_account_numbers_by_account: #{e}"
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
  puts "Error when calling MxPlatformApi->list_account_numbers_by_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List account numbers by member
  result = api_instance.list_account_numbers_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_account_numbers_by_member: #{e}"
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
  puts "Error when calling MxPlatformApi->list_account_numbers_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List account owners by member
  result = api_instance.list_account_owners_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_account_owners_by_member: #{e}"
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
  puts "Error when calling MxPlatformApi->list_account_owners_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**AccountOwnersResponseBody**](AccountOwnersResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_categories

> <CategoriesResponseBody> list_categories(user_guid, opts)

List categories

Use this endpoint to list all categories associated with a `user`, including both default and custom categories.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List categories
  result = api_instance.list_categories(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_categories: #{e}"
end
```

#### Using the list_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoriesResponseBody>, Integer, Hash)> list_categories_with_http_info(user_guid, opts)

```ruby
begin
  # List categories
  data, status_code, headers = api_instance.list_categories_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoriesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**CategoriesResponseBody**](CategoriesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_default_categories

> <CategoriesResponseBody> list_default_categories(opts)

List default categories

Use this endpoint to retrieve a list of all the default categories and subcategories offered within the MX Platform API. In other words, each item in the returned list will have its `is_default` field set to `true`. There are currently 119 default categories and subcategories. Both the _list default categories_ and _list default categories by user_ endpoints return the same results. The different routes are provided for convenience.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List default categories
  result = api_instance.list_default_categories(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_default_categories: #{e}"
end
```

#### Using the list_default_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoriesResponseBody>, Integer, Hash)> list_default_categories_with_http_info(opts)

```ruby
begin
  # List default categories
  data, status_code, headers = api_instance.list_default_categories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoriesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_default_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**CategoriesResponseBody**](CategoriesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_default_categories_by_user

> <CategoriesResponseBody> list_default_categories_by_user(user_guid, opts)

List default categories by user

Use this endpoint to retrieve a list of all the default categories and subcategories, scoped by user, offered within the MX Platform API. In other words, each item in the returned list will have its `is_default` field set to `true`. There are currently 119 default categories and subcategories. Both the _list default categories_ and _list default categories by user_ endpoints return the same results. The different routes are provided for convenience.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List default categories by user
  result = api_instance.list_default_categories_by_user(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_default_categories_by_user: #{e}"
end
```

#### Using the list_default_categories_by_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoriesResponseBody>, Integer, Hash)> list_default_categories_by_user_with_http_info(user_guid, opts)

```ruby
begin
  # List default categories by user
  data, status_code, headers = api_instance.list_default_categories_by_user_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoriesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_default_categories_by_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**CategoriesResponseBody**](CategoriesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


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

api_instance = MxPlatformRuby::MxPlatformApi.new
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List favorite institutions
  result = api_instance.list_favorite_institutions(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_favorite_institutions: #{e}"
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
  puts "Error when calling MxPlatformApi->list_favorite_institutions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**InstitutionsResponseBody**](InstitutionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_holdings

> <HoldingsResponseBody> list_holdings(user_guid, opts)

List holdings

This endpoint returns all holdings associated with the specified `user` across all accounts and members.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  from_date: '2015-09-20', # String | Filter holdings from this date.
  page: 1, # Integer | Specify current page.
  records_per_page: 10, # Integer | Specify records per page.
  to_date: '2019-10-20' # String | Filter holdings to this date.
}

begin
  # List holdings
  result = api_instance.list_holdings(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_holdings: #{e}"
end
```

#### Using the list_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HoldingsResponseBody>, Integer, Hash)> list_holdings_with_http_info(user_guid, opts)

```ruby
begin
  # List holdings
  data, status_code, headers = api_instance.list_holdings_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HoldingsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_holdings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **from_date** | **String** | Filter holdings from this date. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |
| **to_date** | **String** | Filter holdings to this date. | [optional] |

### Return type

[**HoldingsResponseBody**](HoldingsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_holdings_by_account

> <HoldingsResponseBody> list_holdings_by_account(account_guid, user_guid, opts)

List holdings by account

This endpoint returns all holdings associated with the specified `account`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for the `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for the `user`.
opts = {
  from_date: '2015-09-20', # String | Filter holdings from this date.
  page: 1, # Integer | Specify current page.
  records_per_page: 10, # Integer | Specify records per page.
  to_date: '2019-10-20' # String | Filter holdings to this date.
}

begin
  # List holdings by account
  result = api_instance.list_holdings_by_account(account_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_holdings_by_account: #{e}"
end
```

#### Using the list_holdings_by_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HoldingsResponseBody>, Integer, Hash)> list_holdings_by_account_with_http_info(account_guid, user_guid, opts)

```ruby
begin
  # List holdings by account
  data, status_code, headers = api_instance.list_holdings_by_account_with_http_info(account_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HoldingsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_holdings_by_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for the &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique id for the &#x60;user&#x60;. |  |
| **from_date** | **String** | Filter holdings from this date. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |
| **to_date** | **String** | Filter holdings to this date. | [optional] |

### Return type

[**HoldingsResponseBody**](HoldingsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_holdings_by_member

> <HoldingsResponseBody> list_holdings_by_member(member_guid, user_guid, opts)

List holdings by member

This endpoint returns all holdings associated with the specified `member` across all accounts.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  from_date: '2015-09-20', # String | Filter holdings from this date.
  page: 1, # Integer | Specify current page.
  records_per_page: 10, # Integer | Specify records per page.
  to_date: '2019-10-20' # String | Filter holdings to this date.
}

begin
  # List holdings by member
  result = api_instance.list_holdings_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_holdings_by_member: #{e}"
end
```

#### Using the list_holdings_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HoldingsResponseBody>, Integer, Hash)> list_holdings_by_member_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List holdings by member
  data, status_code, headers = api_instance.list_holdings_by_member_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HoldingsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_holdings_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **from_date** | **String** | Filter holdings from this date. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |
| **to_date** | **String** | Filter holdings to this date. | [optional] |

### Return type

[**HoldingsResponseBody**](HoldingsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_institution_credentials

> <CredentialsResponseBody> list_institution_credentials(institution_code, opts)

List institution credentials

Use this endpoint to see which credentials will be needed to create a member for a specific institution.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
institution_code = 'chase' # String | The institution_code of the institution.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List institution credentials
  result = api_instance.list_institution_credentials(institution_code, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_institution_credentials: #{e}"
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
  puts "Error when calling MxPlatformApi->list_institution_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **institution_code** | **String** | The institution_code of the institution. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
opts = {
  name: 'chase', # String | This will list only institutions in which the appended string appears.
  page: 1, # Integer | Specify current page.
  records_per_page: 10, # Integer | Specify records per page.
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
  puts "Error when calling MxPlatformApi->list_institutions: #{e}"
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
  puts "Error when calling MxPlatformApi->list_institutions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | This will list only institutions in which the appended string appears. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |
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


## list_managed_accounts

> <AccountsResponseBody> list_managed_accounts(member_guid, user_guid, opts)

List managed accounts

Use this endpoint to retrieve a list of all the partner-managed accounts associated with the given partner-manage member.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List managed accounts
  result = api_instance.list_managed_accounts(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_managed_accounts: #{e}"
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
  puts "Error when calling MxPlatformApi->list_managed_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List managed institutions
  result = api_instance.list_managed_institutions(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_managed_institutions: #{e}"
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
  puts "Error when calling MxPlatformApi->list_managed_institutions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List managed members
  result = api_instance.list_managed_members(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_managed_members: #{e}"
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
  puts "Error when calling MxPlatformApi->list_managed_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List managed transactions
  result = api_instance.list_managed_transactions(account_guid, member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_managed_transactions: #{e}"
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
  puts "Error when calling MxPlatformApi->list_managed_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**TransactionsResponseBody**](TransactionsResponseBody.md)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
opts = {
  member_is_managed_by_user: true, # Boolean | List only accounts whose member is managed by the user.
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List accounts by member
  result = api_instance.list_member_accounts(user_guid, member_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_member_accounts: #{e}"
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
  puts "Error when calling MxPlatformApi->list_member_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **member_is_managed_by_user** | **Boolean** | List only accounts whose member is managed by the user. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**AccountsResponseBody**](AccountsResponseBody.md)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List member challenges
  result = api_instance.list_member_challenges(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_member_challenges: #{e}"
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
  puts "Error when calling MxPlatformApi->list_member_challenges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List member credentials
  result = api_instance.list_member_credentials(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_member_credentials: #{e}"
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
  puts "Error when calling MxPlatformApi->list_member_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List members
  result = api_instance.list_members(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_members: #{e}"
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
  puts "Error when calling MxPlatformApi->list_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**MembersResponseBody**](MembersResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


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

api_instance = MxPlatformRuby::MxPlatformApi.new
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List merchants
  result = api_instance.list_merchants(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_merchants: #{e}"
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
  puts "Error when calling MxPlatformApi->list_merchants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**MerchantsResponseBody**](MerchantsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_spending_plan_accounts

> <SpendingPlanAccountsResponse> list_spending_plan_accounts(user_guid, spending_plan_guid, opts)

List spending plan accounts

Use this endpoint to list all the spending plan accounts associated with the spending plan.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List spending plan accounts
  result = api_instance.list_spending_plan_accounts(user_guid, spending_plan_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_spending_plan_accounts: #{e}"
end
```

#### Using the list_spending_plan_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanAccountsResponse>, Integer, Hash)> list_spending_plan_accounts_with_http_info(user_guid, spending_plan_guid, opts)

```ruby
begin
  # List spending plan accounts
  data, status_code, headers = api_instance.list_spending_plan_accounts_with_http_info(user_guid, spending_plan_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanAccountsResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_spending_plan_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**SpendingPlanAccountsResponse**](SpendingPlanAccountsResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_spending_plan_iteration_items

> <SpendingPlanIterationItemsResponseBody> list_spending_plan_iteration_items(user_guid, spending_plan_guid, opts)

List spending plan iteration items

Use this endpoint to list all the spending plan `iteration_items` associated with the `iteration`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List spending plan iteration items
  result = api_instance.list_spending_plan_iteration_items(user_guid, spending_plan_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_spending_plan_iteration_items: #{e}"
end
```

#### Using the list_spending_plan_iteration_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationItemsResponseBody>, Integer, Hash)> list_spending_plan_iteration_items_with_http_info(user_guid, spending_plan_guid, opts)

```ruby
begin
  # List spending plan iteration items
  data, status_code, headers = api_instance.list_spending_plan_iteration_items_with_http_info(user_guid, spending_plan_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationItemsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_spending_plan_iteration_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**SpendingPlanIterationItemsResponseBody**](SpendingPlanIterationItemsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_spending_plan_iterations

> <SpendingPlanIterationsResponse> list_spending_plan_iterations(user_guid, spending_plan_guid, opts)

List spending plan iterations

Use this endpoint to list all the spending plan `iterations` associated with the `spending_plan`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List spending plan iterations
  result = api_instance.list_spending_plan_iterations(user_guid, spending_plan_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_spending_plan_iterations: #{e}"
end
```

#### Using the list_spending_plan_iterations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationsResponse>, Integer, Hash)> list_spending_plan_iterations_with_http_info(user_guid, spending_plan_guid, opts)

```ruby
begin
  # List spending plan iterations
  data, status_code, headers = api_instance.list_spending_plan_iterations_with_http_info(user_guid, spending_plan_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationsResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_spending_plan_iterations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**SpendingPlanIterationsResponse**](SpendingPlanIterationsResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_spending_plans

> <SpendingPlansResponseBody> list_spending_plans(user_guid, opts)

List spending plans

Use this endpoint to list all the spending plans associated with the user.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List spending plans
  result = api_instance.list_spending_plans(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_spending_plans: #{e}"
end
```

#### Using the list_spending_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlansResponseBody>, Integer, Hash)> list_spending_plans_with_http_info(user_guid, opts)

```ruby
begin
  # List spending plans
  data, status_code, headers = api_instance.list_spending_plans_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlansResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_spending_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**SpendingPlansResponseBody**](SpendingPlansResponseBody.md)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List statements by member
  result = api_instance.list_statements_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_statements_by_member: #{e}"
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
  puts "Error when calling MxPlatformApi->list_statements_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**StatementsResponseBody**](StatementsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_taggings

> <TaggingsResponseBody> list_taggings(user_guid, opts)

List taggings

Use this endpoint to retrieve a list of all the taggings associated with a specific user.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List taggings
  result = api_instance.list_taggings(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_taggings: #{e}"
end
```

#### Using the list_taggings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaggingsResponseBody>, Integer, Hash)> list_taggings_with_http_info(user_guid, opts)

```ruby
begin
  # List taggings
  data, status_code, headers = api_instance.list_taggings_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaggingsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_taggings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**TaggingsResponseBody**](TaggingsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_tags

> <TagsResponseBody> list_tags(user_guid, opts)

List tags

Use this endpoint to list all tags associated with the specified `user`. Each user includes the `Business` tag by default.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List tags
  result = api_instance.list_tags(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_tags: #{e}"
end
```

#### Using the list_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagsResponseBody>, Integer, Hash)> list_tags_with_http_info(user_guid, opts)

```ruby
begin
  # List tags
  data, status_code, headers = api_instance.list_tags_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**TagsResponseBody**](TagsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_tax_documents

> <TaxDocumentsResponseBody> list_tax_documents(member_guid, user_guid, opts)

List Tax Documents

Use this endpoint to get a paginated list of tax documents.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List Tax Documents
  result = api_instance.list_tax_documents(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_tax_documents: #{e}"
end
```

#### Using the list_tax_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxDocumentsResponseBody>, Integer, Hash)> list_tax_documents_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List Tax Documents
  data, status_code, headers = api_instance.list_tax_documents_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxDocumentsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_tax_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**TaxDocumentsResponseBody**](TaxDocumentsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transaction_rules

> <TransactionRulesResponseBody> list_transaction_rules(user_guid, opts)

List transaction rules

Use this endpoint to read the attributes of all existing transaction rules belonging to the user.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List transaction rules
  result = api_instance.list_transaction_rules(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transaction_rules: #{e}"
end
```

#### Using the list_transaction_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRulesResponseBody>, Integer, Hash)> list_transaction_rules_with_http_info(user_guid, opts)

```ruby
begin
  # List transaction rules
  data, status_code, headers = api_instance.list_transaction_rules_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRulesResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transaction_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**TransactionRulesResponseBody**](TransactionRulesResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions

> <TransactionsResponseBody> list_transactions(user_guid, opts)

List transactions

Requests to this endpoint return a list of transactions associated with the specified `user`, accross all members and accounts associated with that `user`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  from_date: '2015-09-20', # String | Filter transactions from this date.
  page: 1, # Integer | Specify current page.
  records_per_page: 10, # Integer | Specify records per page.
  to_date: '2019-10-20' # String | Filter transactions to this date.
}

begin
  # List transactions
  result = api_instance.list_transactions(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transactions: #{e}"
end
```

#### Using the list_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBody>, Integer, Hash)> list_transactions_with_http_info(user_guid, opts)

```ruby
begin
  # List transactions
  data, status_code, headers = api_instance.list_transactions_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **from_date** | **String** | Filter transactions from this date. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |
| **to_date** | **String** | Filter transactions to this date. | [optional] |

### Return type

[**TransactionsResponseBody**](TransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions_by_account

> <TransactionsResponseBody> list_transactions_by_account(account_guid, user_guid, opts)

List transactions by account

This endpoint returns a list of the last 90 days of transactions associated with the specified account.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  from_date: '2015-09-20', # String | Filter transactions from this date.
  page: 1, # Integer | Specify current page.
  records_per_page: 10, # Integer | Specify records per page.
  to_date: '2019-10-20' # String | Filter transactions to this date.
}

begin
  # List transactions by account
  result = api_instance.list_transactions_by_account(account_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transactions_by_account: #{e}"
end
```

#### Using the list_transactions_by_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBody>, Integer, Hash)> list_transactions_by_account_with_http_info(account_guid, user_guid, opts)

```ruby
begin
  # List transactions by account
  data, status_code, headers = api_instance.list_transactions_by_account_with_http_info(account_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transactions_by_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **from_date** | **String** | Filter transactions from this date. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |
| **to_date** | **String** | Filter transactions to this date. | [optional] |

### Return type

[**TransactionsResponseBody**](TransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions_by_member

> <TransactionsResponseBody> list_transactions_by_member(member_guid, user_guid, opts)

List transactions by member

Requests to this endpoint return a list of transactions associated with the specified `member`, accross all accounts associated with that `member`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  from_date: '2015-09-20', # String | Filter transactions from this date.
  page: 1, # Integer | Specify current page.
  records_per_page: 10, # Integer | Specify records per page.
  to_date: '2019-10-20' # String | Filter transactions to this date.
}

begin
  # List transactions by member
  result = api_instance.list_transactions_by_member(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transactions_by_member: #{e}"
end
```

#### Using the list_transactions_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBody>, Integer, Hash)> list_transactions_by_member_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # List transactions by member
  data, status_code, headers = api_instance.list_transactions_by_member_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transactions_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **from_date** | **String** | Filter transactions from this date. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |
| **to_date** | **String** | Filter transactions to this date. | [optional] |

### Return type

[**TransactionsResponseBody**](TransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_transactions_by_tag

> <TransactionsResponseBody> list_transactions_by_tag(tag_guid, user_guid, opts)

List transactions by tag

Use this endpoint to get a list of all transactions associated with a particular tag according to the tag’s unique GUID. In other words, a list of all transactions that have been assigned to a particular tag using the create a tagging endpoint.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
tag_guid = 'TAG-aef36e72-6294-4c38-844d-e573e80aed52' # String | The unique id for a `tag`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  from_date: '2015-09-20', # String | Filter transactions from this date.
  page: 1, # Integer | Specify current page.
  records_per_page: 10, # Integer | Specify records per page.
  to_date: '2019-10-20' # String | Filter transactions to this date.
}

begin
  # List transactions by tag
  result = api_instance.list_transactions_by_tag(tag_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transactions_by_tag: #{e}"
end
```

#### Using the list_transactions_by_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsResponseBody>, Integer, Hash)> list_transactions_by_tag_with_http_info(tag_guid, user_guid, opts)

```ruby
begin
  # List transactions by tag
  data, status_code, headers = api_instance.list_transactions_by_tag_with_http_info(tag_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_transactions_by_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_guid** | **String** | The unique id for a &#x60;tag&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **from_date** | **String** | Filter transactions from this date. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |
| **to_date** | **String** | Filter transactions to this date. | [optional] |

### Return type

[**TransactionsResponseBody**](TransactionsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_user_accounts

> <AccountsResponseBody> list_user_accounts(user_guid, opts)

List accounts

This endpoint returns a list of all the accounts associated with the specified `user`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  member_is_managed_by_user: true, # Boolean | List only accounts whose member is managed by the user.
  page: 1, # Integer | Specify current page.
  is_manual: true, # Boolean | List only accounts that were manually created.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # List accounts
  result = api_instance.list_user_accounts(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_user_accounts: #{e}"
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
  puts "Error when calling MxPlatformApi->list_user_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **member_is_managed_by_user** | **Boolean** | List only accounts whose member is managed by the user. | [optional] |
| **page** | **Integer** | Specify current page. | [optional] |
| **is_manual** | **Boolean** | List only accounts that were manually created. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**AccountsResponseBody**](AccountsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_users

> <UsersResponseBody> list_users(opts)

List users

Use this endpoint to list every user you've created in the MX Platform API.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10, # Integer | Specify records per page.
  id: 'u-12324-abdc', # String | The user `id` to search for.
  email: 'example@example.com', # String | The user `email` to search for.
  is_disabled: true # Boolean | Search for users that are diabled.
}

begin
  # List users
  result = api_instance.list_users(opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersResponseBody>, Integer, Hash)> list_users_with_http_info(opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.list_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |
| **id** | **String** | The user &#x60;id&#x60; to search for. | [optional] |
| **email** | **String** | The user &#x60;email&#x60; to search for. | [optional] |
| **is_disabled** | **Boolean** | Search for users that are diabled. | [optional] |

### Return type

[**UsersResponseBody**](UsersResponseBody.md)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read account
  result = api_instance.read_account(account_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_account: #{e}"
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
  puts "Error when calling MxPlatformApi->read_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read account by member
  result = api_instance.read_account_by_member(account_guid, member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_account_by_member: #{e}"
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
  puts "Error when calling MxPlatformApi->read_account_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_category

> <CategoryResponseBody> read_category(category_guid, user_guid)

Read a custom category

Use this endpoint to read the attributes of either a default category or a custom category.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
category_guid = 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874' # String | The unique id for a `category`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read a custom category
  result = api_instance.read_category(category_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_category: #{e}"
end
```

#### Using the read_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryResponseBody>, Integer, Hash)> read_category_with_http_info(category_guid, user_guid)

```ruby
begin
  # Read a custom category
  data, status_code, headers = api_instance.read_category_with_http_info(category_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** | The unique id for a &#x60;category&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**CategoryResponseBody**](CategoryResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_default_category

> <CategoryResponseBody> read_default_category(category_guid)

Read a default category

Use this endpoint to read the attributes of a default category.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
category_guid = 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874' # String | The unique id for a `category`.

begin
  # Read a default category
  result = api_instance.read_default_category(category_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_default_category: #{e}"
end
```

#### Using the read_default_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryResponseBody>, Integer, Hash)> read_default_category_with_http_info(category_guid)

```ruby
begin
  # Read a default category
  data, status_code, headers = api_instance.read_default_category_with_http_info(category_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_default_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** | The unique id for a &#x60;category&#x60;. |  |

### Return type

[**CategoryResponseBody**](CategoryResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_holding

> <HoldingResponseBody> read_holding(holding_guid, user_guid)

Read holding

Use this endpoint to read the attributes of a specific `holding`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
holding_guid = 'HOL-d65683e8-9eab-26bb-bcfd-ced159c9abe2' # String | The unique id for a `holding`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read holding
  result = api_instance.read_holding(holding_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_holding: #{e}"
end
```

#### Using the read_holding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HoldingResponseBody>, Integer, Hash)> read_holding_with_http_info(holding_guid, user_guid)

```ruby
begin
  # Read holding
  data, status_code, headers = api_instance.read_holding_with_http_info(holding_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HoldingResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_holding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **holding_guid** | **String** | The unique id for a &#x60;holding&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**HoldingResponseBody**](HoldingResponseBody.md)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
institution_code = 'chase' # String | The institution_code of the institution.

begin
  # Read institution
  result = api_instance.read_institution(institution_code)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_institution: #{e}"
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
  puts "Error when calling MxPlatformApi->read_institution_with_http_info: #{e}"
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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read managed account
  result = api_instance.read_managed_account(account_guid, member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_managed_account: #{e}"
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
  puts "Error when calling MxPlatformApi->read_managed_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

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

This endpoint returns the attributes of the specified partner-managed `member`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read managed member
  result = api_instance.read_managed_member(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_managed_member: #{e}"
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
  puts "Error when calling MxPlatformApi->read_managed_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read managed transaction
  result = api_instance.read_managed_transaction(account_guid, member_guid, transaction_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_managed_transaction: #{e}"
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
  puts "Error when calling MxPlatformApi->read_managed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read member
  result = api_instance.read_member(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_member: #{e}"
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
  puts "Error when calling MxPlatformApi->read_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read member status
  result = api_instance.read_member_status(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_member_status: #{e}"
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
  puts "Error when calling MxPlatformApi->read_member_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**MemberStatusResponseBody**](MemberStatusResponseBody.md)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
merchant_guid = 'MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b' # String | The unique id for a `merchant`.

begin
  # Read merchant
  result = api_instance.read_merchant(merchant_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_merchant: #{e}"
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
  puts "Error when calling MxPlatformApi->read_merchant_with_http_info: #{e}"
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

This endpoint returns the specified merchant_location resource.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
merchant_location_guid = 'MCH-09466f0a-fb58-9d1a-bae2-2af0afbea621' # String | The unique id for a `merchant_location`.

begin
  # Read merchant location
  result = api_instance.read_merchant_location(merchant_location_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_merchant_location: #{e}"
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
  puts "Error when calling MxPlatformApi->read_merchant_location_with_http_info: #{e}"
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


## read_spending_plan_account

> <SpendingPlanAccountResponse> read_spending_plan_account(user_guid, spending_plan_guid, spending_plan_account_guid, opts)

Read spending plan account

Use this endpoint to read the attributes of a specific spending plan account according to its unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
spending_plan_account_guid = 'ACT-e9f80fee-84da-7s7r-9a5e-0346g4279b4c' # String | The unique ID for the specified account.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # Read spending plan account
  result = api_instance.read_spending_plan_account(user_guid, spending_plan_guid, spending_plan_account_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_spending_plan_account: #{e}"
end
```

#### Using the read_spending_plan_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanAccountResponse>, Integer, Hash)> read_spending_plan_account_with_http_info(user_guid, spending_plan_guid, spending_plan_account_guid, opts)

```ruby
begin
  # Read spending plan account
  data, status_code, headers = api_instance.read_spending_plan_account_with_http_info(user_guid, spending_plan_guid, spending_plan_account_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanAccountResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_spending_plan_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **spending_plan_account_guid** | **String** | The unique ID for the specified account. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**SpendingPlanAccountResponse**](SpendingPlanAccountResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_spending_plan_iteration

> <SpendingPlanIterationResponse> read_spending_plan_iteration(user_guid, spending_plan_guid, iteration_number, opts)

Read a spending plan iteration

Use this endpoint to read the attributes of a specific spending plan `iteration` according to its `iteration_number`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
iteration_number = 1 # Integer | The current iteration number for the spending plan `iteration``.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # Read a spending plan iteration
  result = api_instance.read_spending_plan_iteration(user_guid, spending_plan_guid, iteration_number, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_spending_plan_iteration: #{e}"
end
```

#### Using the read_spending_plan_iteration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationResponse>, Integer, Hash)> read_spending_plan_iteration_with_http_info(user_guid, spending_plan_guid, iteration_number, opts)

```ruby
begin
  # Read a spending plan iteration
  data, status_code, headers = api_instance.read_spending_plan_iteration_with_http_info(user_guid, spending_plan_guid, iteration_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_spending_plan_iteration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **iteration_number** | **Integer** | The current iteration number for the spending plan &#x60;iteration&#x60;&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**SpendingPlanIterationResponse**](SpendingPlanIterationResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_spending_plan_iteration_item

> <SpendingPlanIterationItemResponse> read_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid, opts)

Read a spending plan iteration item

Use this endpoint to read the attributes of a specific spending plan `iteration_item` according to its unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
iteration_item_guid = 'SII-a4dc1549-da28-1245-9c9c-53eee4cdfbe3' # String | The unique ID for the `iteration_item`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # Read a spending plan iteration item
  result = api_instance.read_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_spending_plan_iteration_item: #{e}"
end
```

#### Using the read_spending_plan_iteration_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationItemResponse>, Integer, Hash)> read_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid, opts)

```ruby
begin
  # Read a spending plan iteration item
  data, status_code, headers = api_instance.read_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationItemResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_spending_plan_iteration_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **iteration_item_guid** | **String** | The unique ID for the &#x60;iteration_item&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**SpendingPlanIterationItemResponse**](SpendingPlanIterationItemResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_spending_plan_user

> <SpendingPlanResponse> read_spending_plan_user(user_guid, spending_plan_guid, opts)

Read a spending plan for a user

Use this endpoint to read the attributes of a specific spending plan according to its unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
opts = {
  page: 1, # Integer | Specify current page.
  records_per_page: 10 # Integer | Specify records per page.
}

begin
  # Read a spending plan for a user
  result = api_instance.read_spending_plan_user(user_guid, spending_plan_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_spending_plan_user: #{e}"
end
```

#### Using the read_spending_plan_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanResponse>, Integer, Hash)> read_spending_plan_user_with_http_info(user_guid, spending_plan_guid, opts)

```ruby
begin
  # Read a spending plan for a user
  data, status_code, headers = api_instance.read_spending_plan_user_with_http_info(user_guid, spending_plan_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_spending_plan_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **page** | **Integer** | Specify current page. | [optional] |
| **records_per_page** | **Integer** | Specify records per page. | [optional] |

### Return type

[**SpendingPlanResponse**](SpendingPlanResponse.md)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
statement_guid = 'STA-737a344b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for a `statement`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read statement by member
  result = api_instance.read_statement_by_member(member_guid, statement_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_statement_by_member: #{e}"
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
  puts "Error when calling MxPlatformApi->read_statement_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **statement_guid** | **String** | The unique id for a &#x60;statement&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**StatementResponseBody**](StatementResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_tag

> <TagResponseBody> read_tag(tag_guid, user_guid)

Read tag

Use this endpoint to read the attributes of a particular tag according to its unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
tag_guid = 'TAG-aef36e72-6294-4c38-844d-e573e80aed52' # String | The unique id for a `tag`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read tag
  result = api_instance.read_tag(tag_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_tag: #{e}"
end
```

#### Using the read_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponseBody>, Integer, Hash)> read_tag_with_http_info(tag_guid, user_guid)

```ruby
begin
  # Read tag
  data, status_code, headers = api_instance.read_tag_with_http_info(tag_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_guid** | **String** | The unique id for a &#x60;tag&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**TagResponseBody**](TagResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_tagging

> <TaggingResponseBody> read_tagging(tagging_guid, user_guid)

Read tagging

Use this endpoint to read the attributes of a `tagging` according to its unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
tagging_guid = 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe' # String | The unique id for a `tagging`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read tagging
  result = api_instance.read_tagging(tagging_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_tagging: #{e}"
end
```

#### Using the read_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaggingResponseBody>, Integer, Hash)> read_tagging_with_http_info(tagging_guid, user_guid)

```ruby
begin
  # Read tagging
  data, status_code, headers = api_instance.read_tagging_with_http_info(tagging_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaggingResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tagging_guid** | **String** | The unique id for a &#x60;tagging&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**TaggingResponseBody**](TaggingResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_tax_document

> <TaxDocumentResponseBody> read_tax_document(tax_document_guid, member_guid, user_guid)

Read a Tax Document

Use this endpoint to read the attributes of the specified tax document.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
tax_document_guid = 'TAX-987dfds1b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `tax_document`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read a Tax Document
  result = api_instance.read_tax_document(tax_document_guid, member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_tax_document: #{e}"
end
```

#### Using the read_tax_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxDocumentResponseBody>, Integer, Hash)> read_tax_document_with_http_info(tax_document_guid, member_guid, user_guid)

```ruby
begin
  # Read a Tax Document
  data, status_code, headers = api_instance.read_tax_document_with_http_info(tax_document_guid, member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxDocumentResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_tax_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_document_guid** | **String** | The unique id for a &#x60;tax_document&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**TaxDocumentResponseBody**](TaxDocumentResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_transaction

> <TransactionResponseBody> read_transaction(transaction_guid, user_guid)

Read transaction

Requests to this endpoint will return the attributes of the specified `transaction`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read transaction
  result = api_instance.read_transaction(transaction_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_transaction: #{e}"
end
```

#### Using the read_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponseBody>, Integer, Hash)> read_transaction_with_http_info(transaction_guid, user_guid)

```ruby
begin
  # Read transaction
  data, status_code, headers = api_instance.read_transaction_with_http_info(transaction_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_transaction_rule

> <TransactionRuleResponseBody> read_transaction_rule(transaction_rule_guid, user_guid)

Read transaction rule

Use this endpoint to read the attributes of an existing transaction rule based on the rule’s unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
transaction_rule_guid = 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3' # String | The unique id for a `transaction_rule`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read transaction rule
  result = api_instance.read_transaction_rule(transaction_rule_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_transaction_rule: #{e}"
end
```

#### Using the read_transaction_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRuleResponseBody>, Integer, Hash)> read_transaction_rule_with_http_info(transaction_rule_guid, user_guid)

```ruby
begin
  # Read transaction rule
  data, status_code, headers = api_instance.read_transaction_rule_with_http_info(transaction_rule_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRuleResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_transaction_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_rule_guid** | **String** | The unique id for a &#x60;transaction_rule&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**TransactionRuleResponseBody**](TransactionRuleResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_user

> <UserResponseBody> read_user(user_guid)

Read user

Use this endpoint to read the attributes of a specific user.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Read user
  result = api_instance.read_user(user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_user: #{e}"
end
```

#### Using the read_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponseBody>, Integer, Hash)> read_user_with_http_info(user_guid)

```ruby
begin
  # Read user
  data, status_code, headers = api_instance.read_user_with_http_info(user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->read_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**UserResponseBody**](UserResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## request_authorization_code

> <AuthorizationCodeResponseBody> request_authorization_code(authorization_code_request_body)

Request an authorization code.

Clients use this endpoint to request an authorization code according to the parameters specified in the scope. Clients then pass this code to processors. Processor access is scoped only to the GUIDs and features specified in this request. Before requesting an authorization code which includes a member in the scope, clients must have verified that member.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
authorization_code_request_body = MxPlatformRuby::AuthorizationCodeRequestBody.new # AuthorizationCodeRequestBody | The scope for the authorization code.

begin
  # Request an authorization code.
  result = api_instance.request_authorization_code(authorization_code_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->request_authorization_code: #{e}"
end
```

#### Using the request_authorization_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthorizationCodeResponseBody>, Integer, Hash)> request_authorization_code_with_http_info(authorization_code_request_body)

```ruby
begin
  # Request an authorization code.
  data, status_code, headers = api_instance.request_authorization_code_with_http_info(authorization_code_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthorizationCodeResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->request_authorization_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_code_request_body** | [**AuthorizationCodeRequestBody**](AuthorizationCodeRequestBody.md) | The scope for the authorization code. |  |

### Return type

[**AuthorizationCodeResponseBody**](AuthorizationCodeResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## request_connect_widget_url

> <ConnectWidgetResponseBody> request_connect_widget_url(user_guid, connect_widget_request_body)

Request connect widget url

This endpoint will return a URL for an embeddable version of MX Connect.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
connect_widget_request_body = MxPlatformRuby::ConnectWidgetRequestBody.new # ConnectWidgetRequestBody | Optional config options for WebView (is_mobile_webview, current_institution_code, current_member_guid, update_credentials)

begin
  # Request connect widget url
  result = api_instance.request_connect_widget_url(user_guid, connect_widget_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->request_connect_widget_url: #{e}"
end
```

#### Using the request_connect_widget_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectWidgetResponseBody>, Integer, Hash)> request_connect_widget_url_with_http_info(user_guid, connect_widget_request_body)

```ruby
begin
  # Request connect widget url
  data, status_code, headers = api_instance.request_connect_widget_url_with_http_info(user_guid, connect_widget_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectWidgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->request_connect_widget_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **connect_widget_request_body** | [**ConnectWidgetRequestBody**](ConnectWidgetRequestBody.md) | Optional config options for WebView (is_mobile_webview, current_institution_code, current_member_guid, update_credentials) |  |

### Return type

[**ConnectWidgetResponseBody**](ConnectWidgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## request_o_auth_window_uri

> <OAuthWindowResponseBody> request_o_auth_window_uri(member_guid, user_guid, opts)

Request oauth window uri

This endpoint will generate an `oauth_window_uri` for the specified `member`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
opts = {
  client_redirect_url: 'https://mx.com', # String | A URL that MX will redirect to at the end of OAuth with additional query parameters. Only available with `referral_source=APP`.
  enable_app2app: 'false', # String | This indicates whether OAuth app2app behavior is enabled for institutions that support it. Defaults to `true`. This setting is not persistent.
  referral_source: 'APP', # String | Must be either `BROWSER` or `APP` depending on the implementation. Defaults to `BROWSER`.
  skip_aggregation: false, # Boolean | Setting this parameter to `true` will prevent the member from automatically aggregating after being redirected from the authorization page.
  ui_message_webview_url_scheme: 'mx' # String | A scheme for routing the user back to the application state they were previously in. Only available with `referral_source=APP`.
}

begin
  # Request oauth window uri
  result = api_instance.request_o_auth_window_uri(member_guid, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->request_o_auth_window_uri: #{e}"
end
```

#### Using the request_o_auth_window_uri_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OAuthWindowResponseBody>, Integer, Hash)> request_o_auth_window_uri_with_http_info(member_guid, user_guid, opts)

```ruby
begin
  # Request oauth window uri
  data, status_code, headers = api_instance.request_o_auth_window_uri_with_http_info(member_guid, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OAuthWindowResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->request_o_auth_window_uri_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **client_redirect_url** | **String** | A URL that MX will redirect to at the end of OAuth with additional query parameters. Only available with &#x60;referral_source&#x3D;APP&#x60;. | [optional] |
| **enable_app2app** | **String** | This indicates whether OAuth app2app behavior is enabled for institutions that support it. Defaults to &#x60;true&#x60;. This setting is not persistent. | [optional] |
| **referral_source** | **String** | Must be either &#x60;BROWSER&#x60; or &#x60;APP&#x60; depending on the implementation. Defaults to &#x60;BROWSER&#x60;. | [optional] |
| **skip_aggregation** | **Boolean** | Setting this parameter to &#x60;true&#x60; will prevent the member from automatically aggregating after being redirected from the authorization page. | [optional] |
| **ui_message_webview_url_scheme** | **String** | A scheme for routing the user back to the application state they were previously in. Only available with &#x60;referral_source&#x3D;APP&#x60;. | [optional] |

### Return type

[**OAuthWindowResponseBody**](OAuthWindowResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## request_widget_url

> <WidgetResponseBody> request_widget_url(user_guid, widget_request_body, opts)

Request widget url

This endpoint allows partners to get a URL by passing the `widget_type` in the request body, as well as configuring it in several different ways. In the case of Connect, that means setting the `widget_type` to `connect_widget`. Partners may also pass an optional `Accept-Language` header as well as a number of configuration options. Note that this is a `POST` request.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
widget_request_body = MxPlatformRuby::WidgetRequestBody.new # WidgetRequestBody | The widget url configuration options.
opts = {
  accept_language: 'en-US' # String | The desired language of the widget.
}

begin
  # Request widget url
  result = api_instance.request_widget_url(user_guid, widget_request_body, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->request_widget_url: #{e}"
end
```

#### Using the request_widget_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WidgetResponseBody>, Integer, Hash)> request_widget_url_with_http_info(user_guid, widget_request_body, opts)

```ruby
begin
  # Request widget url
  data, status_code, headers = api_instance.request_widget_url_with_http_info(user_guid, widget_request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WidgetResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->request_widget_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **widget_request_body** | [**WidgetRequestBody**](WidgetRequestBody.md) | The widget url configuration options. |  |
| **accept_language** | **String** | The desired language of the widget. | [optional] |

### Return type

[**WidgetResponseBody**](WidgetResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
member_resume_request_body = MxPlatformRuby::MemberResumeRequestBody.new # MemberResumeRequestBody | Member object with MFA challenge answers

begin
  # Resume aggregation
  result = api_instance.resume_aggregation(member_guid, user_guid, member_resume_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->resume_aggregation: #{e}"
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
  puts "Error when calling MxPlatformApi->resume_aggregation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **member_resume_request_body** | [**MemberResumeRequestBody**](MemberResumeRequestBody.md) | Member object with MFA challenge answers |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_account_by_member

> <AccountResponseBody> update_account_by_member(account_guid, member_guid, user_guid, account_update_request_body)

Update account by member

This endpoint allows you to update certain attributes of an `account` resource.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
account_update_request_body = MxPlatformRuby::AccountUpdateRequestBody.new # AccountUpdateRequestBody | Account object to be created with optional parameters (is_hidden)

begin
  # Update account by member
  result = api_instance.update_account_by_member(account_guid, member_guid, user_guid, account_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_account_by_member: #{e}"
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
  puts "Error when calling MxPlatformApi->update_account_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **account_update_request_body** | [**AccountUpdateRequestBody**](AccountUpdateRequestBody.md) | Account object to be created with optional parameters (is_hidden) |  |

### Return type

[**AccountResponseBody**](AccountResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_category

> <CategoryResponseBody> update_category(category_guid, user_guid, category_update_request_body)

Update category

Use this endpoint to update the attributes of a custom category according to its unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
category_guid = 'CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874' # String | The unique id for a `category`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
category_update_request_body = MxPlatformRuby::CategoryUpdateRequestBody.new # CategoryUpdateRequestBody | Category object to be updated (While no single parameter is required, the `category` object cannot be empty)

begin
  # Update category
  result = api_instance.update_category(category_guid, user_guid, category_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_category: #{e}"
end
```

#### Using the update_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryResponseBody>, Integer, Hash)> update_category_with_http_info(category_guid, user_guid, category_update_request_body)

```ruby
begin
  # Update category
  data, status_code, headers = api_instance.update_category_with_http_info(category_guid, user_guid, category_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** | The unique id for a &#x60;category&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **category_update_request_body** | [**CategoryUpdateRequestBody**](CategoryUpdateRequestBody.md) | Category object to be updated (While no single parameter is required, the &#x60;category&#x60; object cannot be empty) |  |

### Return type

[**CategoryResponseBody**](CategoryResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
managed_account_update_request_body = MxPlatformRuby::ManagedAccountUpdateRequestBody.new # ManagedAccountUpdateRequestBody | Managed account object to be updated (While no single parameter is required, the request body can't be empty)

begin
  # Update managed account
  result = api_instance.update_managed_account(account_guid, member_guid, user_guid, managed_account_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_managed_account: #{e}"
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
  puts "Error when calling MxPlatformApi->update_managed_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
managed_member_update_request_body = MxPlatformRuby::ManagedMemberUpdateRequestBody.new # ManagedMemberUpdateRequestBody | Managed member object to be updated (While no single parameter is required, the request body can't be empty)

begin
  # Update managed member
  result = api_instance.update_managed_member(member_guid, user_guid, managed_member_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_managed_member: #{e}"
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
  puts "Error when calling MxPlatformApi->update_managed_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
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

api_instance = MxPlatformRuby::MxPlatformApi.new
account_guid = 'ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1' # String | The unique id for an `account`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
managed_transaction_update_request_body = MxPlatformRuby::ManagedTransactionUpdateRequestBody.new # ManagedTransactionUpdateRequestBody | Managed transaction object to be updated (While no single parameter is required, the request body can't be empty)

begin
  # Update managed transaction
  result = api_instance.update_managed_transaction(account_guid, member_guid, transaction_guid, user_guid, managed_transaction_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_managed_transaction: #{e}"
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
  puts "Error when calling MxPlatformApi->update_managed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique id for an &#x60;account&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **managed_transaction_update_request_body** | [**ManagedTransactionUpdateRequestBody**](ManagedTransactionUpdateRequestBody.md) | Managed transaction object to be updated (While no single parameter is required, the request body can&#39;t be empty) |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_member

> <MemberResponseBody> update_member(member_guid, user_guid, member_update_request_body)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
member_update_request_body = MxPlatformRuby::MemberUpdateRequestBody.new # MemberUpdateRequestBody | Member object to be updated (While no single parameter is required, the request body can't be empty)

begin
  # Update member
  result = api_instance.update_member(member_guid, user_guid, member_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_member: #{e}"
end
```

#### Using the update_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> update_member_with_http_info(member_guid, user_guid, member_update_request_body)

```ruby
begin
  # Update member
  data, status_code, headers = api_instance.update_member_with_http_info(member_guid, user_guid, member_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **member_update_request_body** | [**MemberUpdateRequestBody**](MemberUpdateRequestBody.md) | Member object to be updated (While no single parameter is required, the request body can&#39;t be empty) |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_spending_plan_iteration_item

> <SpendingPlanIterationItemResponse> update_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid, spending_plan_iteration_item_create_request_body)

Update a spending plan iteration item

Use this endpoint to update an existing `spending_plan_iteration_item`.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
spending_plan_guid = 'SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262' # String | The unique ID for the `spending_plan`.
iteration_item_guid = 'SII-a4dc1549-da28-1245-9c9c-53eee4cdfbe3' # String | The unique ID for the `iteration_item`.
spending_plan_iteration_item_create_request_body = MxPlatformRuby::SpendingPlanIterationItemCreateRequestBody.new({planned_amount: 110}) # SpendingPlanIterationItemCreateRequestBody | Iteration item object to be updated with required parameter (iteration_item_guid)

begin
  # Update a spending plan iteration item
  result = api_instance.update_spending_plan_iteration_item(user_guid, spending_plan_guid, iteration_item_guid, spending_plan_iteration_item_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_spending_plan_iteration_item: #{e}"
end
```

#### Using the update_spending_plan_iteration_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendingPlanIterationItemResponse>, Integer, Hash)> update_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid, spending_plan_iteration_item_create_request_body)

```ruby
begin
  # Update a spending plan iteration item
  data, status_code, headers = api_instance.update_spending_plan_iteration_item_with_http_info(user_guid, spending_plan_guid, iteration_item_guid, spending_plan_iteration_item_create_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendingPlanIterationItemResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_spending_plan_iteration_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **spending_plan_guid** | **String** | The unique ID for the &#x60;spending_plan&#x60;. |  |
| **iteration_item_guid** | **String** | The unique ID for the &#x60;iteration_item&#x60;. |  |
| **spending_plan_iteration_item_create_request_body** | [**SpendingPlanIterationItemCreateRequestBody**](SpendingPlanIterationItemCreateRequestBody.md) | Iteration item object to be updated with required parameter (iteration_item_guid) |  |

### Return type

[**SpendingPlanIterationItemResponse**](SpendingPlanIterationItemResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_tag

> <TagResponseBody> update_tag(tag_guid, user_guid, tag_update_request_body)

Update tag

Use this endpoint to update the name of a specific tag according to its unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
tag_guid = 'TAG-aef36e72-6294-4c38-844d-e573e80aed52' # String | The unique id for a `tag`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
tag_update_request_body = MxPlatformRuby::TagUpdateRequestBody.new # TagUpdateRequestBody | Tag object to be updated with required parameter (tag_guid)

begin
  # Update tag
  result = api_instance.update_tag(tag_guid, user_guid, tag_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_tag: #{e}"
end
```

#### Using the update_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponseBody>, Integer, Hash)> update_tag_with_http_info(tag_guid, user_guid, tag_update_request_body)

```ruby
begin
  # Update tag
  data, status_code, headers = api_instance.update_tag_with_http_info(tag_guid, user_guid, tag_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_guid** | **String** | The unique id for a &#x60;tag&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **tag_update_request_body** | [**TagUpdateRequestBody**](TagUpdateRequestBody.md) | Tag object to be updated with required parameter (tag_guid) |  |

### Return type

[**TagResponseBody**](TagResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_tagging

> <TaggingResponseBody> update_tagging(tagging_guid, user_guid, tagging_update_request_body)

Update tagging

Use this endpoint to update a tagging.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
tagging_guid = 'TGN-007f5486-17e1-45fc-8b87-8f03984430fe' # String | The unique id for a `tagging`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
tagging_update_request_body = MxPlatformRuby::TaggingUpdateRequestBody.new # TaggingUpdateRequestBody | Tagging object to be updated with required parameter (tag_guid)

begin
  # Update tagging
  result = api_instance.update_tagging(tagging_guid, user_guid, tagging_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_tagging: #{e}"
end
```

#### Using the update_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaggingResponseBody>, Integer, Hash)> update_tagging_with_http_info(tagging_guid, user_guid, tagging_update_request_body)

```ruby
begin
  # Update tagging
  data, status_code, headers = api_instance.update_tagging_with_http_info(tagging_guid, user_guid, tagging_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaggingResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tagging_guid** | **String** | The unique id for a &#x60;tagging&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **tagging_update_request_body** | [**TaggingUpdateRequestBody**](TaggingUpdateRequestBody.md) | Tagging object to be updated with required parameter (tag_guid) |  |

### Return type

[**TaggingResponseBody**](TaggingResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_transaction

> <TransactionResponseBody> update_transaction(transaction_guid, user_guid, transaction_update_request_body)

Update transaction

Use this endpoint to update the `description` of a specific transaction according to its unique GUID.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
transaction_guid = 'TRN-810828b0-5210-4878-9bd3-f4ce514f90c4' # String | The unique id for a `transaction`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
transaction_update_request_body = MxPlatformRuby::TransactionUpdateRequestBody.new # TransactionUpdateRequestBody | Transaction object to be updated with a new description

begin
  # Update transaction
  result = api_instance.update_transaction(transaction_guid, user_guid, transaction_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_transaction: #{e}"
end
```

#### Using the update_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponseBody>, Integer, Hash)> update_transaction_with_http_info(transaction_guid, user_guid, transaction_update_request_body)

```ruby
begin
  # Update transaction
  data, status_code, headers = api_instance.update_transaction_with_http_info(transaction_guid, user_guid, transaction_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_guid** | **String** | The unique id for a &#x60;transaction&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **transaction_update_request_body** | [**TransactionUpdateRequestBody**](TransactionUpdateRequestBody.md) | Transaction object to be updated with a new description |  |

### Return type

[**TransactionResponseBody**](TransactionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_transaction_rule

> <TransactionRuleResponseBody> update_transaction_rule(transaction_rule_guid, user_guid, transaction_rule_update_request_body)

Update transaction_rule

Use this endpoint to update the attributes of a specific transaction rule based on its unique GUID. The API will respond with the updated transaction_rule object. Any attributes not provided will be left unchanged.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
transaction_rule_guid = 'TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3' # String | The unique id for a `transaction_rule`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
transaction_rule_update_request_body = MxPlatformRuby::TransactionRuleUpdateRequestBody.new # TransactionRuleUpdateRequestBody | TransactionRule object to be updated

begin
  # Update transaction_rule
  result = api_instance.update_transaction_rule(transaction_rule_guid, user_guid, transaction_rule_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_transaction_rule: #{e}"
end
```

#### Using the update_transaction_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRuleResponseBody>, Integer, Hash)> update_transaction_rule_with_http_info(transaction_rule_guid, user_guid, transaction_rule_update_request_body)

```ruby
begin
  # Update transaction_rule
  data, status_code, headers = api_instance.update_transaction_rule_with_http_info(transaction_rule_guid, user_guid, transaction_rule_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRuleResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_transaction_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_rule_guid** | **String** | The unique id for a &#x60;transaction_rule&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **transaction_rule_update_request_body** | [**TransactionRuleUpdateRequestBody**](TransactionRuleUpdateRequestBody.md) | TransactionRule object to be updated |  |

### Return type

[**TransactionRuleResponseBody**](TransactionRuleResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## update_user

> <UserResponseBody> update_user(user_guid, user_update_request_body)

Update user

Use this endpoint to update the attributes of the specified user.

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

api_instance = MxPlatformRuby::MxPlatformApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.
user_update_request_body = MxPlatformRuby::UserUpdateRequestBody.new # UserUpdateRequestBody | User object to be updated (None of these parameters are required, but the user object cannot be empty.)

begin
  # Update user
  result = api_instance.update_user(user_guid, user_update_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponseBody>, Integer, Hash)> update_user_with_http_info(user_guid, user_update_request_body)

```ruby
begin
  # Update user
  data, status_code, headers = api_instance.update_user_with_http_info(user_guid, user_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |
| **user_update_request_body** | [**UserUpdateRequestBody**](UserUpdateRequestBody.md) | User object to be updated (None of these parameters are required, but the user object cannot be empty.) |  |

### Return type

[**UserResponseBody**](UserResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.mx.api.v1+json


## verify_member

> <MemberResponseBody> verify_member(member_guid, user_guid)

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

api_instance = MxPlatformRuby::MxPlatformApi.new
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique id for a `user`.

begin
  # Verify member
  result = api_instance.verify_member(member_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->verify_member: #{e}"
end
```

#### Using the verify_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> verify_member_with_http_info(member_guid, user_guid)

```ruby
begin
  # Verify member
  data, status_code, headers = api_instance.verify_member_with_http_info(member_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->verify_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **user_guid** | **String** | The unique id for a &#x60;user&#x60;. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json

