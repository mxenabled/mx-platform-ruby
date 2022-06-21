# MxPlatformRuby::ConnectWidgetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_redirect_url** | **String** |  | [optional] |
| **color_scheme** | **String** |  | [optional] |
| **current_institution_code** | **String** |  | [optional] |
| **current_member_guid** | **String** |  | [optional] |
| **disable_institution_search** | **Boolean** |  | [optional] |
| **include_transactions** | **Boolean** |  | [optional] |
| **is_mobile_webview** | **Boolean** |  | [optional] |
| **mode** | **String** |  | [optional] |
| **ui_message_version** | **Integer** |  | [optional] |
| **ui_message_webview_url_scheme** | **String** |  | [optional] |
| **update_credentials** | **Boolean** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ConnectWidgetRequest.new(
  client_redirect_url: https://mx.com,
  color_scheme: light,
  current_institution_code: chase,
  current_member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  disable_institution_search: false,
  include_transactions: true,
  is_mobile_webview: true,
  mode: aggregation,
  ui_message_version: 4,
  ui_message_webview_url_scheme: mx,
  update_credentials: false
)
```

