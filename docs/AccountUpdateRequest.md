# MxPlatformRuby::AccountUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_subtype** | **String** | Can only be updated for manual accounts. | [optional] |
| **account_type** | **String** | Can only be updated for manual accounts. | [optional] |
| **apr** | **Float** | Can only be updated for manual accounts. | [optional] |
| **apy** | **Float** | Can only be updated for manual accounts. | [optional] |
| **available_balance** | **Float** | Can only be updated for manual accounts. | [optional] |
| **balance** | **Float** | Can only be updated for manual accounts. | [optional] |
| **cash_surrender_value** | **Float** | Can only be updated for manual accounts. | [optional] |
| **credit_limit** | **Float** | Can only be updated for manual accounts. | [optional] |
| **currency_code** | **String** | Can only be updated for manual accounts. | [optional] |
| **death_benefit** | **Integer** | Can only be updated for manual accounts. | [optional] |
| **interest_rate** | **Float** | Can only be updated for manual accounts. | [optional] |
| **is_business** | **Boolean** | Can be updated for manual accounts and aggregated accounts. | [optional] |
| **is_closed** | **Boolean** | Can only be updated for manual accounts. | [optional] |
| **is_hidden** | **Boolean** | Can be updated for manual accounts and aggregated accounts. | [optional] |
| **loan_amount** | **Float** | Can only be updated for manual accounts. | [optional] |
| **metadata** | **String** | Can only be updated for manual accounts. | [optional] |
| **name** | **String** | Can only be updated for manual accounts. | [optional] |
| **nickname** | **String** | Can only be updated for manual accounts. | [optional] |
| **original_balance** | **Float** | Can only be updated for manual accounts. | [optional] |
| **property_type** | **String** | Can only be updated for manual accounts. | [optional] |
| **skip_webhook** | **Boolean** | If set to true, prevents sending an account webhook for the update if that webhook type is enabled for you. | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::AccountUpdateRequest.new(
  account_subtype: PERSONAL,
  account_type: SAVINGS,
  apr: 1,
  apy: 1,
  available_balance: 1000,
  balance: 1000,
  cash_surrender_value: 1000,
  credit_limit: 100,
  currency_code: USD,
  death_benefit: 1000,
  interest_rate: 1,
  is_business: false,
  is_closed: false,
  is_hidden: false,
  loan_amount: 1000,
  metadata: some metadata,
  name: Test account 2,
  nickname: Swiss Account,
  original_balance: 10,
  property_type: VEHICLE,
  skip_webhook: true
)
```

