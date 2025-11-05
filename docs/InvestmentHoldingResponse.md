# MxPlatformRuby::InvestmentHoldingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **cost_basis** | **Float** |  | [optional] |
| **coupon_yield** | **String** |  | [optional] |
| **currency_code** | **String** |  | [optional] |
| **current_price** | **Float** |  | [optional] |
| **daily_change** | **Float** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expiration** | **String** |  | [optional] |
| **face_value** | **Float** |  | [optional] |
| **frequency** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **market_value** | **Float** |  | [optional] |
| **maturity_date** | **String** |  | [optional] |
| **percentage_change** | **Float** |  | [optional] |
| **purchase_price** | **Float** |  | [optional] |
| **quantity** | **String** |  | [optional] |
| **rate** | **Float** |  | [optional] |
| **strike_price** | **Float** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **term** | **String** |  | [optional] |
| **today_ugl_amount** | **Float** |  | [optional] |
| **today_ugl_percentage** | **Float** |  | [optional] |
| **total_ugl_amount** | **Float** |  | [optional] |
| **total_ugl_percentage** | **Float** |  | [optional] |
| **unvested_quantity** | **Float** |  | [optional] |
| **unvested_value** | **Float** |  | [optional] |
| **user_guid** | **String** |  | [optional] |
| **vested_quantity** | **Float** |  | [optional] |
| **vested_value** | **Float** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **current_price_as_of** | **String** |  | [optional] |
| **issue_date** | **String** |  | [optional] |
| **vesting_start_date** | **String** |  | [optional] |
| **vesting_end_date** | **String** |  | [optional] |
| **put_or_call** | **String** |  | [optional] |
| **holding_type** | **String** |  | [optional] |
| **term_unit** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::InvestmentHoldingResponse.new(
  account_guid: ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1,
  cost_basis: 827,
  coupon_yield: null,
  currency_code: USD,
  current_price: 15,
  daily_change: 2.5,
  description: Guggenheim Defensive Equity ETF,
  expiration: null,
  face_value: null,
  frequency: null,
  guid: HOL-d65683e8-9eab-26bb-bcfd-ced159c9abe2,
  market_value: 989.5,
  maturity_date: null,
  percentage_change: 0.2,
  purchase_price: 26.3,
  quantity: 5000.0,
  rate: null,
  strike_price: null,
  symbol: DEF,
  term: null,
  today_ugl_amount: 200,
  today_ugl_percentage: 0.27,
  total_ugl_amount: 20000,
  total_ugl_percentage: 26.67,
  unvested_quantity: null,
  unvested_value: null,
  user_guid: USR-743e5d7f-1116-28fa-5de1-d3ba02e41d8d,
  vested_quantity: null,
  vested_value: null,
  created_at: 2015-04-13T18:01:23.000Z,
  current_price_as_of: 2023-11-06T00:00:00Z,
  issue_date: 2015-08-15,
  vesting_start_date: null,
  vesting_end_date: null,
  put_or_call: null,
  holding_type: MUTUAL_FUND,
  term_unit: null
)
```

