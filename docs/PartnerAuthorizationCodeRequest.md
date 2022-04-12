# MxPlatformRuby::PartnerAuthorizationCodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::PartnerAuthorizationCodeRequest.new(
  account_guid: ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

