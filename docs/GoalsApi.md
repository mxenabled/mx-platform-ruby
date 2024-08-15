# MxPlatformRuby::GoalsApi

All URIs are relative to *https://api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_user_guid_goals_get**](GoalsApi.md#users_user_guid_goals_get) | **GET** /users/{user_guid}/goals | List goals |
| [**users_user_guid_goals_goal_guid_delete**](GoalsApi.md#users_user_guid_goals_goal_guid_delete) | **DELETE** /users/{user_guid}/goals/{goal_guid} | Delete a goal |
| [**users_user_guid_goals_goal_guid_get**](GoalsApi.md#users_user_guid_goals_goal_guid_get) | **GET** /users/{user_guid}/goals/{goal_guid} | Read a goal |
| [**users_user_guid_goals_goal_guid_put**](GoalsApi.md#users_user_guid_goals_goal_guid_put) | **PUT** /users/{user_guid}/goals/{goal_guid} | Update a goal |
| [**users_user_guid_goals_post**](GoalsApi.md#users_user_guid_goals_post) | **POST** /users/{user_guid}/goals | Create a goal |
| [**users_user_guid_goals_reposition_put**](GoalsApi.md#users_user_guid_goals_reposition_put) | **PUT** /users/{user_guid}/goals/reposition | Reposition goals |


## users_user_guid_goals_get

> <GoalsResponseBody> users_user_guid_goals_get(user_guid, opts)

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
user_guid = 'user_guid_example' # String | The unique identifier for the user.
opts = {
  page: 'page_example', # String | Results are returned in paginated sets, this is the page of the results you would like to view. Defaults to page 1 if no page is specified.
  records_per_age: 'records_per_age_example' # String | The supported range is from 10 to 1000. If the records_per_page parameter is not specified or is outside this range, a default of 25 records per page will be used.
}

begin
  # List goals
  result = api_instance.users_user_guid_goals_get(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_get: #{e}"
end
```

#### Using the users_user_guid_goals_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoalsResponseBody>, Integer, Hash)> users_user_guid_goals_get_with_http_info(user_guid, opts)

```ruby
begin
  # List goals
  data, status_code, headers = api_instance.users_user_guid_goals_get_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoalsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. |  |
| **page** | **String** | Results are returned in paginated sets, this is the page of the results you would like to view. Defaults to page 1 if no page is specified. | [optional] |
| **records_per_age** | **String** | The supported range is from 10 to 1000. If the records_per_page parameter is not specified or is outside this range, a default of 25 records per page will be used. | [optional] |

### Return type

[**GoalsResponseBody**](GoalsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_user_guid_goals_goal_guid_delete

> users_user_guid_goals_goal_guid_delete(goal_guid, user_guid)

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
user_guid = 'user_guid_example' # String | The unique identifier for a user.

begin
  # Delete a goal
  api_instance.users_user_guid_goals_goal_guid_delete(goal_guid, user_guid)
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_goal_guid_delete: #{e}"
end
```

#### Using the users_user_guid_goals_goal_guid_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> users_user_guid_goals_goal_guid_delete_with_http_info(goal_guid, user_guid)

```ruby
begin
  # Delete a goal
  data, status_code, headers = api_instance.users_user_guid_goals_goal_guid_delete_with_http_info(goal_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_goal_guid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goal_guid** | **String** | The unique identifier for a goal. Defined by MX. |  |
| **user_guid** | **String** | The unique identifier for a user. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## users_user_guid_goals_goal_guid_get

> <GoalResponseBody> users_user_guid_goals_goal_guid_get(goal_guid, user_guid)

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
user_guid = 'user_guid_example' # String | The unique identifier for a user.

begin
  # Read a goal
  result = api_instance.users_user_guid_goals_goal_guid_get(goal_guid, user_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_goal_guid_get: #{e}"
end
```

#### Using the users_user_guid_goals_goal_guid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoalResponseBody>, Integer, Hash)> users_user_guid_goals_goal_guid_get_with_http_info(goal_guid, user_guid)

```ruby
begin
  # Read a goal
  data, status_code, headers = api_instance.users_user_guid_goals_goal_guid_get_with_http_info(goal_guid, user_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoalResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_goal_guid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goal_guid** | **String** | The unique identifier for a goal. Defined by MX. |  |
| **user_guid** | **String** | The unique identifier for a user. |  |

### Return type

[**GoalResponseBody**](GoalResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_user_guid_goals_goal_guid_put

> <GoalResponseBody> users_user_guid_goals_goal_guid_put(goal_guid, user_guid, update_goal_request_body)

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
user_guid = 'user_guid_example' # String | The unique identifier for a user.
update_goal_request_body = MxPlatformRuby::UpdateGoalRequestBody.new # UpdateGoalRequestBody | 

begin
  # Update a goal
  result = api_instance.users_user_guid_goals_goal_guid_put(goal_guid, user_guid, update_goal_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_goal_guid_put: #{e}"
end
```

#### Using the users_user_guid_goals_goal_guid_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoalResponseBody>, Integer, Hash)> users_user_guid_goals_goal_guid_put_with_http_info(goal_guid, user_guid, update_goal_request_body)

```ruby
begin
  # Update a goal
  data, status_code, headers = api_instance.users_user_guid_goals_goal_guid_put_with_http_info(goal_guid, user_guid, update_goal_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoalResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_goal_guid_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goal_guid** | **String** | The unique identifier for a goal. Defined by MX. |  |
| **user_guid** | **String** | The unique identifier for a user. |  |
| **update_goal_request_body** | [**UpdateGoalRequestBody**](UpdateGoalRequestBody.md) |  |  |

### Return type

[**GoalResponseBody**](GoalResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_user_guid_goals_post

> <GoalResponseBody> users_user_guid_goals_post(user_guid, goal_request_body)

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
user_guid = 'user_guid_example' # String | The unique identifier for the user.
goal_request_body = MxPlatformRuby::GoalRequestBody.new # GoalRequestBody | 

begin
  # Create a goal
  result = api_instance.users_user_guid_goals_post(user_guid, goal_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_post: #{e}"
end
```

#### Using the users_user_guid_goals_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoalResponseBody>, Integer, Hash)> users_user_guid_goals_post_with_http_info(user_guid, goal_request_body)

```ruby
begin
  # Create a goal
  data, status_code, headers = api_instance.users_user_guid_goals_post_with_http_info(user_guid, goal_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoalResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. |  |
| **goal_request_body** | [**GoalRequestBody**](GoalRequestBody.md) |  |  |

### Return type

[**GoalResponseBody**](GoalResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## users_user_guid_goals_reposition_put

> <RepositionResponseBody> users_user_guid_goals_reposition_put(user_guid, reposition_request_body)

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
user_guid = 'user_guid_example' # String | The unique identifier for the user.
reposition_request_body = MxPlatformRuby::RepositionRequestBody.new # RepositionRequestBody | 

begin
  # Reposition goals
  result = api_instance.users_user_guid_goals_reposition_put(user_guid, reposition_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_reposition_put: #{e}"
end
```

#### Using the users_user_guid_goals_reposition_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositionResponseBody>, Integer, Hash)> users_user_guid_goals_reposition_put_with_http_info(user_guid, reposition_request_body)

```ruby
begin
  # Reposition goals
  data, status_code, headers = api_instance.users_user_guid_goals_reposition_put_with_http_info(user_guid, reposition_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositionResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling GoalsApi->users_user_guid_goals_reposition_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for the user. |  |
| **reposition_request_body** | [**RepositionRequestBody**](RepositionRequestBody.md) |  |  |

### Return type

[**RepositionResponseBody**](RepositionResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

