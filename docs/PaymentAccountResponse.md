# MxPlatformRuby::PaymentAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **available_balance** | **Float** |  | [optional] |
| **balance** | **Float** |  | [optional] |
| **routing_number** | **String** |  | [optional] |
| **transit_number** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::PaymentAccountResponse.new(
  account_name: My Savings,
  account_number: 1858091489,
  account_type: SAVINGS,
  available_balance: 1000.0,
  balance: 1000.0,
  routing_number: 68899990000000,
  transit_number: 12345
)
```

