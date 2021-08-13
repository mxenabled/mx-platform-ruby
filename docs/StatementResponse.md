# MxPlatformRuby::StatementResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **content_hash** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **uri** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::StatementResponse.new(
  account_guid: ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1,
  content_hash: ca53785b812d00ef821c3d94bfd6e5bbc0020504410589b7ea8552169f021981,
  created_at: 2016-10-13T18:08:00+00:00,
  guid: STA-737a344b-caae-0f6e-1384-01f52e75dcb1,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  updated_at: 2016-10-13T18:09:00+00:00,
  uri: uri/to/statement,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

