# MxPlatformRuby::AccountCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** |  | [optional] |
| **apr** | **Float** |  | [optional] |
| **apy** | **Float** |  | [optional] |
| **available_balance** | **Float** |  | [optional] |
| **available_credit** | **Float** |  | [optional] |
| **balance** | **Float** |  |  |
| **cash_surrender_value** | **Float** |  | [optional] |
| **credit_limit** | **Float** |  | [optional] |
| **currency_code** | **String** |  | [optional] |
| **day_payment_is_due** | **Integer** |  | [optional] |
| **death_benefit** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **interest_rate** | **Float** |  | [optional] |
| **is_closed** | **Boolean** |  | [optional] |
| **is_hidden** | **Boolean** |  | [optional] |
| **last_payment** | **Float** |  | [optional] |
| **last_payment_at** | **String** |  | [optional] |
| **loan_amount** | **Float** |  | [optional] |
| **matures_on** | **String** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **minimum_balance** | **Float** |  | [optional] |
| **minimum_payment** | **Float** |  | [optional] |
| **name** | **String** |  |  |
| **nickname** | **String** |  | [optional] |
| **original_balance** | **Float** |  | [optional] |
| **payment_due_at** | **String** |  | [optional] |
| **payoff_balance** | **Float** |  | [optional] |
| **routing_number** | **String** |  | [optional] |
| **started_on** | **String** |  | [optional] |
| **subtype** | **String** |  | [optional] |
| **type** | **String** |  |  |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::AccountCreateRequest.new(
  account_number: 5366,
  apr: 1.0,
  apy: 1.0,
  available_balance: 1000.0,
  available_credit: 1000.0,
  balance: 1000.0,
  cash_surrender_value: 1000.0,
  credit_limit: 100.0,
  currency_code: USD,
  day_payment_is_due: 20,
  death_benefit: 1000,
  id: 1040434698,
  interest_rate: 1.0,
  is_closed: false,
  is_hidden: false,
  last_payment: 100.0,
  last_payment_at: 2015-10-13T17:57:37.000Z,
  loan_amount: 1000.0,
  matures_on: 2015-10-13T17:57:37.000Z,
  metadata: some metadata,
  minimum_balance: 100.0,
  minimum_payment: 10.0,
  name: Test account 2,
  nickname: Swiss Account,
  original_balance: 10.0,
  payment_due_at: 2015-10-13T17:57:37.000Z,
  payoff_balance: 10.0,
  routing_number: 68899990000000,
  started_on: 2015-10-13T17:57:37.000Z,
  subtype: NONE,
  type: SAVINGS
)
```

