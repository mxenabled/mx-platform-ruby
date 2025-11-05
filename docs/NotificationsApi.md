# MxPlatformRuby::NotificationsApi

All URIs are relative to *https://int-api.mx.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_notification**](NotificationsApi.md#create_notification) | **POST** /users/{user_guid}/notifications | Create a notification |
| [**list_notifications**](NotificationsApi.md#list_notifications) | **GET** /users/{user_guid}/notifications | List notifications |
| [**read_notifications**](NotificationsApi.md#read_notifications) | **GET** /users/{user_guid}/notifications/{notification_guid} | Read notifications |


## create_notification

> <NotificationResponseBody> create_notification(user_guid, content, subject)

Create a notification

All notifications created through the API will be of notification type `API_NOTIFICATION`, channel `PUSH`, and will not be associated to an entity.  No other channels are supported.  This will only have an effect for clients using an MX mobile application.

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

api_instance = MxPlatformRuby::NotificationsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
content = 'content_example' # String | The information related to the notification.
subject = 'subject_example' # String | The subject related to the notification.

begin
  # Create a notification
  result = api_instance.create_notification(user_guid, content, subject)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling NotificationsApi->create_notification: #{e}"
end
```

#### Using the create_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationResponseBody>, Integer, Hash)> create_notification_with_http_info(user_guid, content, subject)

```ruby
begin
  # Create a notification
  data, status_code, headers = api_instance.create_notification_with_http_info(user_guid, content, subject)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotificationResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling NotificationsApi->create_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **content** | **String** | The information related to the notification. |  |
| **subject** | **String** | The subject related to the notification. |  |

### Return type

[**NotificationResponseBody**](NotificationResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_notifications

> <NotificationsResponseBody> list_notifications(user_guid, opts)

List notifications

All notifications for the user can be listed, including notifications created by MX for other channels besides `PUSH`.

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

api_instance = MxPlatformRuby::NotificationsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
opts = {
  from_date: '2024-01-01', # String | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided.
  to_date: '2024-03-31', # String | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions.
  page: 1, # Integer | Results are paginated. Specify current page.
  records_per_page: 10 # Integer | This specifies the number of records to be returned on each page. Defaults to `25`. The valid range is from `10` to `1000`. If the value exceeds `1000`, the default value of `25` will be used instead.
}

begin
  # List notifications
  result = api_instance.list_notifications(user_guid, opts)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling NotificationsApi->list_notifications: #{e}"
end
```

#### Using the list_notifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationsResponseBody>, Integer, Hash)> list_notifications_with_http_info(user_guid, opts)

```ruby
begin
  # List notifications
  data, status_code, headers = api_instance.list_notifications_with_http_info(user_guid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotificationsResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling NotificationsApi->list_notifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **from_date** | **String** | Filter transactions from this date. This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 120 days ago if not provided. | [optional] |
| **to_date** | **String** | Filter transactions to this date (at midnight). This only supports ISO 8601 format without timestamp (YYYY-MM-DD). Defaults to 5 days forward from the day the request is made to capture pending transactions. | [optional] |
| **page** | **Integer** | Results are paginated. Specify current page. | [optional] |
| **records_per_page** | **Integer** | This specifies the number of records to be returned on each page. Defaults to &#x60;25&#x60;. The valid range is from &#x60;10&#x60; to &#x60;1000&#x60;. If the value exceeds &#x60;1000&#x60;, the default value of &#x60;25&#x60; will be used instead. | [optional] |

### Return type

[**NotificationsResponseBody**](NotificationsResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_notifications

> <NotificationResponseBody> read_notifications(user_guid, notification_guid)

Read notifications

Can pull up any notification associated with the user, including notifications created by MX for other channels besides `PUSH`. 

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

api_instance = MxPlatformRuby::NotificationsApi.new
user_guid = 'USR-fa7537f3-48aa-a683-a02a-b18940482f54' # String | The unique identifier for a `user`, beginning with the prefix `USR-`.
notification_guid = 'NTF-b53294f5-2356-4782-9f81-ae064c42b40a' # String | The unique identifier for notifications. Defined by MX.

begin
  # Read notifications
  result = api_instance.read_notifications(user_guid, notification_guid)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling NotificationsApi->read_notifications: #{e}"
end
```

#### Using the read_notifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotificationResponseBody>, Integer, Hash)> read_notifications_with_http_info(user_guid, notification_guid)

```ruby
begin
  # Read notifications
  data, status_code, headers = api_instance.read_notifications_with_http_info(user_guid, notification_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotificationResponseBody>
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling NotificationsApi->read_notifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_guid** | **String** | The unique identifier for a &#x60;user&#x60;, beginning with the prefix &#x60;USR-&#x60;. |  |
| **notification_guid** | **String** | The unique identifier for notifications. Defined by MX. |  |

### Return type

[**NotificationResponseBody**](NotificationResponseBody.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

