# MxPlatformRuby::TransactionRuleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **match_description** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionRuleResponse.new(
  category_guid: CAT-b1de2a04-db08-b6ed-f6fe-ca2f5b11c2d0,
  created_at: 2018-10-02T22:00:50+00:00,
  description: Wal-mart food storage,
  guid: TXR-a080e0f9-a2d4-4d6f-9e03-672cc357a4d3,
  match_description: Wal-mart,
  updated_at: 2018-10-02T23:54:40+00:00,
  user_guid: USR-22fc3203-b3e6-8340-43db-8e50b2f56995
)
```

