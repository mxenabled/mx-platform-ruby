# MxPlatformRuby::TokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_processor_guid** | **String** |  | [optional] |
| **expires_at** | **String** |  | [optional] |
| **access_token** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TokenResponse.new(
  payment_processor_guid: PPR-084aa709-8218-4b5a-b3ab-70ffc7483daf,
  expires_at: 2023-04-19T15:38:2800:00,
  access_token: i8FnF...,
  active: true
)
```

