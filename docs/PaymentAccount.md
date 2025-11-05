# MxPlatformRuby::PaymentAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **Object** |  | [optional] |
| **account_number** | **Object** |  | [optional] |
| **account_type** | **Object** |  | [optional] |
| **available_balance** | **Object** |  | [optional] |
| **balance** | **Object** |  | [optional] |
| **created_at** | **Object** |  | [optional] |
| **routing_number** | **Object** |  | [optional] |
| **transit_number** | **Object** |  | [optional] |
| **updated_at** | **Object** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::PaymentAccount.new(
  account_name: MX Bank Checking,
  account_number: 6366816006,
  account_type: CHECKING,
  available_balance: 1000,
  balance: 1000,
  created_at: 2022-03-17T20:38:58Z,
  routing_number: 242722023,
  transit_number: null,
  updated_at: 2022-11-29T08:02:07Z
)
```

