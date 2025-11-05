# MxPlatformRuby::GoalsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_goal**](GoalsApi.md#create_goal) | **POST** /users/{user_guid}/goals | Create a goal |
| [**delete_goal**](GoalsApi.md#delete_goal) | **DELETE** /users/{user_guid}/goals/{goal_guid} | Delete a goal |
| [**list_goals**](GoalsApi.md#list_goals) | **GET** /users/{user_guid}/goals | List goals |
| [**read_goal**](GoalsApi.md#read_goal) | **GET** /users/{user_guid}/goals/{goal_guid} | Read a goal |
| [**reposition_goals**](GoalsApi.md#reposition_goals) | **PUT** /users/{user_guid}/goals/reposition | Reposition goals |
| [**update_goal**](GoalsApi.md#update_goal) | **PUT** /users/{user_guid}/goals/{goal_guid} | Update a goal |


## create_goal

> <GoalResponseBody> create_goal(user_guid, goal_request_body)

Create a goal

Create a goal. This endpoint accepts the optional `MX-Skip-Webhook` header and `skip_webhook` parameter.

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

api_instance = MxPlatformRuby::GoalsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
goal_request_body = MxPlatformRuby::GoalRequestBody.new # GoalRequestBody | 

begin
  # Create a goal
  result = api_instance.create_goal(user_guid, goal_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->create_goal: #{e}"
end
```

#### Using the create_goal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoalResponseBody>, Integer, Hash)> create_goal_with_http_info(user_guid, goal_request_body)

```ruby
begin
  # Create a goal
  data, status_code, headers = api_instance.create_goal_with_http_info(user_guid, goal_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoalResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->create_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **goal_request_body** | [**GoalRequestBody**](GoalRequestBody.md) |  |  |

### Return type

[**GoalResponseBody**](GoalResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/vnd.mx.api.v1+json
- **Accept**: application/json


## delete_goal

> delete_goal(goal_guid, user_guid, accept)

Delete a goal

Delete a goal.

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

api_instance = MxPlatformRuby::GoalsApi.new
goal_guid = 'goal_guid_example' # String | The unique identifier for a goal. Defined by MX.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
accept = 'application/vnd.mx.api.v1+json' # String | Specifies the media type expected in the response.

begin
  # Delete a goal
  api_instance.delete_goal(goal_guid, user_guid, accept)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->delete_goal: #{e}"
end
```

#### Using the delete_goal_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_goal_with_http_info(goal_guid, user_guid, accept)

```ruby
begin
  # Delete a goal
  data, status_code, headers = api_instance.delete_goal_with_http_info(goal_guid, user_guid, accept)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->delete_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goal_guid** | **String** | The unique identifier for a goal. Defined by MX. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **accept** | **String** | Specifies the media type expected in the response. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_goals

> <GoalsResponseBody> list_goals(accept, user_guid, opts)

List goals

List all goals a user can set.

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

api_instance = MxPlatformRuby::GoalsApi.new
accept = 'application/vnd.mx.api.v1+json' # String | Specifies the media type expected in the response.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List goals
  result = api_instance.list_goals(accept, user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->list_goals: #{e}"
end
```

#### Using the list_goals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoalsResponseBody>, Integer, Hash)> list_goals_with_http_info(accept, user_guid, opts)

```ruby
begin
  # List goals
  data, status_code, headers = api_instance.list_goals_with_http_info(accept, user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoalsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->list_goals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the media type expected in the response. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**GoalsResponseBody**](GoalsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.mx.api.v1+json


## read_goal

> <GoalResponseBody> read_goal(goal_guid, user_guid)

Read a goal

Read a specific goal.

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

api_instance = MxPlatformRuby::GoalsApi.new
goal_guid = 'goal_guid_example' # String | The unique identifier for a goal. Defined by MX.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.

begin
  # Read a goal
  result = api_instance.read_goal(goal_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->read_goal: #{e}"
end
```

#### Using the read_goal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoalResponseBody>, Integer, Hash)> read_goal_with_http_info(goal_guid, user_guid)

```ruby
begin
  # Read a goal
  data, status_code, headers = api_instance.read_goal_with_http_info(goal_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoalResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->read_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goal_guid** | **String** | The unique identifier for a goal. Defined by MX. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |

### Return type

[**GoalResponseBody**](GoalResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reposition_goals

> <RepositionResponseBody> reposition_goals(user_guid, reposition_request_body)

Reposition goals

This endpoint repositions goal priority levels. If one goal is set to a lower priority, then any other goals need to be adjusted accordingly.

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

api_instance = MxPlatformRuby::GoalsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
reposition_request_body = MxPlatformRuby::RepositionRequestBody.new # RepositionRequestBody | 

begin
  # Reposition goals
  result = api_instance.reposition_goals(user_guid, reposition_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->reposition_goals: #{e}"
end
```

#### Using the reposition_goals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositionResponseBody>, Integer, Hash)> reposition_goals_with_http_info(user_guid, reposition_request_body)

```ruby
begin
  # Reposition goals
  data, status_code, headers = api_instance.reposition_goals_with_http_info(user_guid, reposition_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->reposition_goals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **reposition_request_body** | [**RepositionRequestBody**](RepositionRequestBody.md) |  |  |

### Return type

[**RepositionResponseBody**](RepositionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/vnd.mx.api.v1+json
- **Accept**: application/json


## update_goal

> <GoalResponseBody> update_goal(goal_guid, user_guid, update_goal_request_body)

Update a goal

This endpoint updates a specific goal.

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

api_instance = MxPlatformRuby::GoalsApi.new
goal_guid = 'goal_guid_example' # String | The unique identifier for a goal. Defined by MX.
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
update_goal_request_body = MxPlatformRuby::UpdateGoalRequestBody.new # UpdateGoalRequestBody | 

begin
  # Update a goal
  result = api_instance.update_goal(goal_guid, user_guid, update_goal_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->update_goal: #{e}"
end
```

#### Using the update_goal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoalResponseBody>, Integer, Hash)> update_goal_with_http_info(goal_guid, user_guid, update_goal_request_body)

```ruby
begin
  # Update a goal
  data, status_code, headers = api_instance.update_goal_with_http_info(goal_guid, user_guid, update_goal_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoalResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->update_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goal_guid** | **String** | The unique identifier for a goal. Defined by MX. |  |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **update_goal_request_body** | [**UpdateGoalRequestBody**](UpdateGoalRequestBody.md) |  |  |

### Return type

[**GoalResponseBody**](GoalResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

