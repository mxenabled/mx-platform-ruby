# MxPlatformRuby::RewardsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **balance_type** | **String** |  | [optional] |
| **balance** | **Integer** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expires_on** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **unit_type** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::RewardsResponse.new(
  account_guid: ACT-1234,
  balance_type: EXPIRING_BALANCE,
  balance: 102,
  created_at: 2020-01-28T21:09:01+0000,
  description: A description of the reward.,
  expires_on: 2020-02-28,
  guid: RWD-1234,
  member_guid: MBR-4567,
  unit_type: POINTS,
  user_guid: USR-1234
)
```

