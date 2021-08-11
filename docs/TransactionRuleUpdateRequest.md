# MxPlatformRuby::TransactionRuleUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **match_description** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionRuleUpdateRequest.new(
  category_guid: CAT-b1de2a04-db08-b6ed-f6fe-ca2f5b11c2d0,
  description: Wal-mart food storage,
  match_description: Wal-mart
)
```

