# MxPlatformRuby::HoldingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **cost_basis** | **Float** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **currency_code** | **String** |  | [optional] |
| **cusip** | **String** |  | [optional] |
| **daily_change** | **Float** |  | [optional] |
| **description** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **holding_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **market_value** | **Float** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **purchase_price** | **Float** |  | [optional] |
| **shares** | **Float** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::HoldingResponse.new(
  account_guid: HOL-d65683e8-9eab-26bb-bcfd-ced159c9abe2,
  cost_basis: 827.0,
  created_at: 2015-04-13T18:01:23.000Z,
  currency_code: USD,
  cusip: 18383M878,
  daily_change: 2.5,
  description: Guggenheim Defensive Equity ETF,
  guid: HOL-d65683e8-9eab-26bb-bcfd-ced159c9abe2,
  holding_type: MONEY_MARKET,
  id: ID-123,
  market_value: 989.5,
  member_guid: MBR-d65683e8-9eab-26bb-bcfd-ced159c9abe,
  metadata: metadata,
  purchase_price: 26.3,
  shares: 6.0,
  symbol: DEF,
  updated_at: 2015-04-13T18:01:23.000Z,
  user_guid: USR-743e5d7f-1116-28fa-5de1-d3ba02e41d8d
)
```

