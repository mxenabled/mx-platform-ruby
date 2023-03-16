# MxPlatformRuby::MemberCreateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_redirect_url** | **String** |  | [optional] |
| **member** | [**MemberCreateRequest**](MemberCreateRequest.md) |  | [optional] |
| **referral_source** | **String** |  | [optional] |
| **ui_message_webview_url_scheme** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberCreateRequestBody.new(
  client_redirect_url: https://mx.com,
  member: null,
  referral_source: APP,
  ui_message_webview_url_scheme: mx
)
```

