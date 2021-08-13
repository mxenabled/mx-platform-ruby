# MxPlatformRuby::TaggingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** |  | [optional] |
| **member_is_managed_by_user** | **Boolean** |  | [optional] |
| **tag_guid** | **String** |  | [optional] |
| **transaction_guid** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TaggingResponse.new(
  guid: TGN-007f5486-17e1-45fc-8b87-8f03984430fe,
  member_is_managed_by_user: false,
  tag_guid: TAG-40faf068-abb4-405c-8f6a-e883ed541fff,
  transaction_guid: TRN-810828b0-5210-4878-9bd3-f4ce514f90c4,
  user_guid: USR-11141024-90b3-1bce-cac9-c06ced52ab4c
)
```

