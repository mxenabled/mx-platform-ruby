# MxPlatformRuby::PaymentProcessorAuthorizationCodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  |  |
| **member_guid** | **String** |  |  |
| **user_guid** | **String** |  |  |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::PaymentProcessorAuthorizationCodeRequest.new(
  account_guid: ACT-4d4c0068-33bc-4d06-bbd6-cd270fd0135c,
  member_guid: MBR-46637bc5-942d-4229-9370-ddd858bf805e,
  user_guid: USR-f12b1f5a-7cbe-467c-aa30-0a10d0b2f549
)
```

