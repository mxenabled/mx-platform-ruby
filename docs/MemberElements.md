# MxPlatformRuby::MemberElements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberElements.new(
  account_guid: ACT-283132a4-1401-486a-909e-1605f1623d11,
  member_guid: MBR-54feffb9-8474-47bd-8442-de003910113a,
  user_guid: USR-101ad774-288b-44ed-ad16-da87d522ea20
)
```

