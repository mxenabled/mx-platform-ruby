# MxPlatformRuby::AccountUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_subtype** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **apr** | **Float** |  | [optional] |
| **apy** | **Float** |  | [optional] |
| **available_balance** | **Float** |  | [optional] |
| **balance** | **Float** |  | [optional] |
| **cash_surrender_value** | **Float** |  | [optional] |
| **credit_limit** | **Float** |  | [optional] |
| **currency_code** | **String** |  | [optional] |
| **death_benefit** | **Integer** |  | [optional] |
| **interest_rate** | **Float** |  | [optional] |
| **is_business** | **Boolean** |  | [optional] |
| **is_closed** | **Boolean** |  | [optional] |
| **is_hidden** | **Boolean** |  | [optional] |
| **loan_amount** | **Float** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **nickname** | **String** |  | [optional] |
| **original_balance** | **Float** |  | [optional] |
| **property_type** | **String** |  | [optional] |
| **skip_webhook** | **Boolean** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::AccountUpdateRequest.new(
  account_subtype: PERSONAL,
  account_type: SAVINGS,
  apr: 1.0,
  apy: 1.0,
  available_balance: 1000.0,
  balance: 1000.0,
  cash_surrender_value: 1000.0,
  credit_limit: 100.0,
  currency_code: USD,
  death_benefit: 1000,
  interest_rate: 1.0,
  is_business: false,
  is_closed: false,
  is_hidden: false,
  loan_amount: 1000.0,
  metadata: some metadata,
  name: Test account 2,
  nickname: Swiss Account,
  original_balance: 10.0,
  property_type: VEHICLE,
  skip_webhook: true
)
```

