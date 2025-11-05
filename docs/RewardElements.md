# MxPlatformRuby::RewardElements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_type** | **String** |  | [optional] |
| **balance** | **Integer** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expires_on** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **unit_type** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::RewardElements.new(
  balance_type: EXPIRING_BALANCE,
  balance: 102,
  created_at: 2020-01-28T21:09:01+0000,
  description: A description of the reward.,
  expires_on: 2020-02-28,
  guid: RWD-1234,
  unit_type: POINTS,
  updated_at: 2023-06-01T19:18:06Z
)
```

