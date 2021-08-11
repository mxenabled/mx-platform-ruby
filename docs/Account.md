# MxPlatformRuby::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** |  | [optional] |
| **apr** | **Float** |  | [optional] |
| **apy** | **Float** |  | [optional] |
| **available_balance** | **Float** |  | [optional] |
| **available_credit** | **Float** |  | [optional] |
| **balance** | **Float** |  | [optional] |
| **cash_balance** | **Float** |  | [optional] |
| **cash_surrender_value** | **Float** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **credit_limit** | **Float** |  | [optional] |
| **currency_code** | **String** |  | [optional] |
| **day_payment_is_due** | **Integer** |  | [optional] |
| **death_benefit** | **Integer** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **holdings_value** | **Float** |  | [optional] |
| **id** | **String** |  | [optional] |
| **institution_code** | **String** |  | [optional] |
| **insured_name** | **String** |  | [optional] |
| **interest_rate** | **Float** |  | [optional] |
| **is_closed** | **Boolean** |  | [optional] |
| **is_hidden** | **Boolean** |  | [optional] |
| **last_payment** | **Float** |  | [optional] |
| **last_payment_at** | **String** |  | [optional] |
| **loan_amount** | **Float** |  | [optional] |
| **matures_on** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **minimum_balance** | **Float** |  | [optional] |
| **minimum_payment** | **Float** |  | [optional] |
| **name** | **String** |  | [optional] |
| **original_balance** | **Float** |  | [optional] |
| **pay_out_amount** | **Float** |  | [optional] |
| **payment_due_at** | **String** |  | [optional] |
| **payoff_balance** | **Float** |  | [optional] |
| **premium_amount** | **Float** |  | [optional] |
| **started_on** | **String** |  | [optional] |
| **subtype** | **String** |  | [optional] |
| **total_account_value** | **Float** |  | [optional] |
| **type** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::Account.new(
  account_number: 5366,
  apr: 1.0,
  apy: 1.0,
  available_balance: 1000.0,
  available_credit: 1000.0,
  balance: 1000.0,
  cash_balance: 1000.0,
  cash_surrender_value: 1000.0,
  created_at: 2016-10-13T17:57:37.000Z,
  credit_limit: 100.0,
  currency_code: USD,
  day_payment_is_due: 20,
  death_benefit: 1000,
  guid: ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1,
  holdings_value: 1000.0,
  id: 1040434698,
  institution_code: chase,
  insured_name: Frodo Baggins,
  interest_rate: 1.0,
  is_closed: false,
  is_hidden: false,
  last_payment: 100.0,
  last_payment_at: 2015-10-13T17:57:37.000Z,
  loan_amount: 1000.0,
  matures_on: 2015-10-13T17:57:37.000Z,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  minimum_balance: 100.0,
  minimum_payment: 10.0,
  name: Test account 2,
  original_balance: 10.0,
  pay_out_amount: 10.0,
  payment_due_at: 2015-10-13T17:57:37.000Z,
  payoff_balance: 10.0,
  premium_amount: 1.0,
  started_on: 2015-10-13T17:57:37.000Z,
  subtype: NONE,
  total_account_value: 1.0,
  type: SAVINGS,
  updated_at: 2016-10-13T18:08:00.000Z,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

