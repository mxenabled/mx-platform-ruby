# MxPlatformRuby::MemberCreateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_redirect_url** | **String** |  | [optional] |
| **enable_app2app** | **Boolean** | This indicates whether OAuth app2app behavior is enabled for institutions that support it. Defaults to &#x60;true&#x60;. When set to &#x60;false&#x60;, any &#x60;oauth_window_uri&#x60; generated will **not** direct the end user to the institution&#39;s mobile application. This setting is not persistent. This setting currently only affects Chase institutions.  | [optional] |
| **member** | [**MemberCreateRequest**](MemberCreateRequest.md) |  | [optional] |
| **referral_source** | **String** |  | [optional] |
| **ui_message_webview_url_scheme** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberCreateRequestBody.new(
  client_redirect_url: https://{yoursite.com},
  enable_app2app: false,
  member: null,
  referral_source: APP,
  ui_message_webview_url_scheme: null
)
```

