# MxPlatformRuby::MemberCreateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member** | [**MemberCreateRequest**](MemberCreateRequest.md) |  | [optional] |
| **referral_source** | **String** |  | [optional] |
| **ui_message_webview_url_scheme** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberCreateRequestBody.new(
  member: null,
  referral_source: APP,
  ui_message_webview_url_scheme: mx
)
```

