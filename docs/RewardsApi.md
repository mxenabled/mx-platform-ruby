# MxPlatformRuby::RewardsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**credit_card**](RewardsApi.md#credit_card) | **GET** /credit_card_products/{credit_card_product_guid} | Read a Credit Card Product |
| [**fetch_rewards**](RewardsApi.md#fetch_rewards) | **POST** /users/{user_guid}/members/{member_guid}/fetch_rewards | Fetch Rewards |
| [**list_rewards**](RewardsApi.md#list_rewards) | **GET** /users/{user_guid}/members/{member_guid}/rewards | List Rewards |
| [**read_rewards**](RewardsApi.md#read_rewards) | **GET** /users/{user_guid}/members/{member_guid}/rewards/{reward_guid} | Read Reward |


## credit_card

> <CreditCardProductResponse> credit_card(credit_card_product_guid)

Read a Credit Card Product

This endpoint returns the specified `credit_card_product` according to the unique GUID.

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

api_instance = MxPlatformRuby::RewardsApi.new
credit_card_product_guid = 'credit_card_product_guid' # String | The required `credit_card_product_guid` can be found on the `account` object.

begin
  # Read a Credit Card Product
  result = api_instance.credit_card(credit_card_product_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling RewardsApi->credit_card: #{e}"
end
```

#### Using the credit_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditCardProductResponse>, Integer, Hash)> credit_card_with_http_info(credit_card_product_guid)

```ruby
begin
  # Read a Credit Card Product
  data, status_code, headers = api_instance.credit_card_with_http_info(credit_card_product_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditCardProductResponse>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling RewardsApi->credit_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_card_product_guid** | **String** | The required &#x60;credit_card_product_guid&#x60; can be found on the &#x60;account&#x60; object. |  |

### Return type

[**CreditCardProductResponse**](CreditCardProductResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## fetch_rewards

> <MemberResponseBody> fetch_rewards(user_guid, member_guid)

Fetch Rewards

Calling this endpoint initiates an aggregation-type event which will gather the member's rewards information, as well as account and transaction information. Rewards data is also gathered with daily background aggregations. Member and Rewards guids are defined by MX.

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

api_instance = MxPlatformRuby::RewardsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.

begin
  # Fetch Rewards
  result = api_instance.fetch_rewards(user_guid, member_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling RewardsApi->fetch_rewards: #{e}"
end
```

#### Using the fetch_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberResponseBody>, Integer, Hash)> fetch_rewards_with_http_info(user_guid, member_guid)

```ruby
begin
  # Fetch Rewards
  data, status_code, headers = api_instance.fetch_rewards_with_http_info(user_guid, member_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling RewardsApi->fetch_rewards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |

### Return type

[**MemberResponseBody**](MemberResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## list_rewards

> <RewardsResponseBody> list_rewards(user_guid, member_guid)

List Rewards

Use this endpoint to list all the `rewards` associated with a specified `member`. Member guids are defined by MX.

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

api_instance = MxPlatformRuby::RewardsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.

begin
  # List Rewards
  result = api_instance.list_rewards(user_guid, member_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling RewardsApi->list_rewards: #{e}"
end
```

#### Using the list_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardsResponseBody>, Integer, Hash)> list_rewards_with_http_info(user_guid, member_guid)

```ruby
begin
  # List Rewards
  data, status_code, headers = api_instance.list_rewards_with_http_info(user_guid, member_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling RewardsApi->list_rewards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |

### Return type

[**RewardsResponseBody**](RewardsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_rewards

> <RewardResponseBody> read_rewards(user_guid, member_guid, reward_guid)

Read Reward

Use this endpoint to read a specific `reward` based on its unique GUID. Member and Rewards guids are defined by MX.

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

api_instance = MxPlatformRuby::RewardsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
member_guid = 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b' # String | The unique id for a `member`.
reward_guid = 'RWD-fa7537f3-48aa-a683-a02a-b324322f54' # String | The unique identifier for the rewards. Defined by MX.

begin
  # Read Reward
  result = api_instance.read_rewards(user_guid, member_guid, reward_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling RewardsApi->read_rewards: #{e}"
end
```

#### Using the read_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardResponseBody>, Integer, Hash)> read_rewards_with_http_info(user_guid, member_guid, reward_guid)

```ruby
begin
  # Read Reward
  data, status_code, headers = api_instance.read_rewards_with_http_info(user_guid, member_guid, reward_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling RewardsApi->read_rewards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **member_guid** | **String** | The unique id for a &#x60;member&#x60;. |  |
| **reward_guid** | **String** | The unique identifier for the rewards. Defined by MX. |  |

### Return type

[**RewardResponseBody**](RewardResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json

