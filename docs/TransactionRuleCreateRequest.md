# MxPlatformRuby::TransactionRuleCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **match_description** | **String** |  |  |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionRuleCreateRequest.new(
  category_guid: CAT-b1de2a04-db08-b6ed-f6fe-ca2f5b11c2d0,
  description: Wal-mart food storage,
  match_description: Wal-mart
)
```

