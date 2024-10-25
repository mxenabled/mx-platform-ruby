# MxPlatformRuby::AccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** |  | [optional] |
| **account_ownership** | **String** |  | [optional] |
| **annuity_policy_to_date** | **String** |  | [optional] |
| **annuity_provider** | **String** |  | [optional] |
| **annuity_term_year** | **Float** |  | [optional] |
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
| **federal_insurance_status** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **holdings_value** | **Float** |  | [optional] |
| **id** | **String** |  | [optional] |
| **imported_at** | **String** |  | [optional] |
| **institution_code** | **String** |  | [optional] |
| **insured_name** | **String** |  | [optional] |
| **interest_rate** | **Float** |  | [optional] |
| **is_closed** | **Boolean** |  | [optional] |
| **is_hidden** | **Boolean** |  | [optional] |
| **is_manual** | **Boolean** |  | [optional] |
| **last_payment** | **Float** |  | [optional] |
| **last_payment_at** | **String** |  | [optional] |
| **loan_amount** | **Float** |  | [optional] |
| **margin_balance** | **Float** |  | [optional] |
| **matures_on** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **member_id** | **String** |  | [optional] |
| **member_is_managed_by_user** | **Boolean** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **minimum_balance** | **Float** |  | [optional] |
| **minimum_payment** | **Float** |  | [optional] |
| **name** | **String** |  | [optional] |
| **nickname** | **String** |  | [optional] |
| **original_balance** | **Float** |  | [optional] |
| **pay_out_amount** | **Float** |  | [optional] |
| **payment_due_at** | **String** |  | [optional] |
| **payoff_balance** | **Float** |  | [optional] |
| **premium_amount** | **Float** |  | [optional] |
| **property_type** | **String** |  | [optional] |
| **routing_number** | **String** |  | [optional] |
| **started_on** | **String** |  | [optional] |
| **statement_balance** | **Float** |  | [optional] |
| **subtype** | **String** |  | [optional] |
| **today_ugl_amount** | **Float** |  | [optional] |
| **today_ugl_percentage** | **Float** |  | [optional] |
| **total_account_value** | **Float** |  | [optional] |
| **total_account_value_ugl** | **Float** |  | [optional] |
| **type** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::AccountResponse.new(
  account_number: 5366,
  account_ownership: INDIVIDUAL,
  annuity_policy_to_date: 2016-10-13T17:57:37.000Z,
  annuity_provider: Metlife,
  annuity_term_year: 2048,
  apr: 1.0,
  apy: 1.0,
  available_balance: 1000.0,
  available_credit: 1000.0,
  balance: 10000.0,
  cash_balance: 1000.0,
  cash_surrender_value: 1000.0,
  created_at: 2023-07-25T17:14:46Z,
  credit_limit: 100.0,
  currency_code: USD,
  day_payment_is_due: 20,
  death_benefit: 1000,
  federal_insurance_status: INSURED,
  guid: ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1,
  holdings_value: 1000.0,
  id: 1040434698,
  imported_at: 2015-10-13T17:57:37.000Z,
  institution_code: 3af3685e-05d9-7060-359f-008d0755e993,
  insured_name: Tommy Shelby,
  interest_rate: 1.0,
  is_closed: false,
  is_hidden: false,
  is_manual: false,
  last_payment: 100.0,
  last_payment_at: 2023-07-25T17:14:46Z,
  loan_amount: 1000.0,
  margin_balance: 1000.0,
  matures_on: 2015-10-13T17:57:37.000Z,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  member_id: member123,
  member_is_managed_by_user: false,
  metadata: some metadata,
  minimum_balance: 100.0,
  minimum_payment: 10.0,
  name: Test account 2,
  nickname: My Checking,
  original_balance: 10.0,
  pay_out_amount: 10.0,
  payment_due_at: 2015-10-13T17:57:37.000Z,
  payoff_balance: 10.0,
  premium_amount: 1.0,
  property_type: VEHICLE,
  routing_number: 68899990000000,
  started_on: 2015-10-13T17:57:37.000Z,
  statement_balance: 100.1,
  subtype: NONE,
  today_ugl_amount: 1000.5,
  today_ugl_percentage: 6.9,
  total_account_value: 1.0,
  total_account_value_ugl: 1.1,
  type: SAVINGS,
  updated_at: 2016-10-13T18:08:00.000Z,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54,
  user_id: user123
)
```

