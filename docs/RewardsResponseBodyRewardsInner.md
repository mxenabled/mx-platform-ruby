# MxPlatformRuby::RewardsResponseBodyRewardsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |
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

instance = MxPlatformRuby::RewardsResponseBodyRewardsInner.new(
  account_guid: ACT-283132a4-1401-486a-909e-1605f1623d11,
  member_guid: MBR-54feffb9-8474-47bd-8442-de003910113a,
  user_guid: USR-101ad774-288b-44ed-ad16-da87d522ea20,
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

