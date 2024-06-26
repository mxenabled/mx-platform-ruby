# MxPlatformRuby::WidgetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_redirect_url** | **String** |  | [optional] |
| **color_scheme** | **String** |  | [optional] |
| **current_institution_code** | **String** |  | [optional] |
| **current_institution_guid** | **String** |  | [optional] |
| **current_member_guid** | **String** |  | [optional] |
| **disable_background_agg** | **Boolean** |  | [optional] |
| **disable_institution_search** | **Boolean** |  | [optional] |
| **include_identity** | **Boolean** |  | [optional] |
| **include_transactions** | **Boolean** |  | [optional] |
| **insight_guid** | **String** |  | [optional] |
| **is_mobile_webview** | **Boolean** |  | [optional] |
| **microwidget_instance_id** | **String** |  | [optional] |
| **mode** | **String** |  | [optional] |
| **oauth_referral_source** | **String** |  | [optional] |
| **ui_message_version** | **Integer** |  | [optional] |
| **ui_message_webview_url_scheme** | **String** |  | [optional] |
| **update_credentials** | **Boolean** |  | [optional] |
| **widget_type** | **String** |  |  |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::WidgetRequest.new(
  client_redirect_url: https://mx.com,
  color_scheme: light,
  current_institution_code: chase,
  current_institution_guid: INS-f1a3285d-e855-b61f-6aa7-8ae575c0e0e9,
  current_member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  disable_background_agg: false,
  disable_institution_search: false,
  include_identity: false,
  include_transactions: true,
  insight_guid: BET-123,
  is_mobile_webview: false,
  microwidget_instance_id: accounts_page,
  mode: aggregation,
  oauth_referral_source: BROWSER,
  ui_message_version: 4,
  ui_message_webview_url_scheme: mx,
  update_credentials: false,
  widget_type: connect_widget
)
```

