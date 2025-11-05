# MxPlatformRuby::InvestmentHoldingsResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **investment_holdings** | [**Array&lt;InvestmentHoldingResponse&gt;**](InvestmentHoldingResponse.md) |  | [optional] |
| **pagination** | [**PaginationResponse**](PaginationResponse.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::InvestmentHoldingsResponseBody.new(
  investment_holdings: null,
  pagination: null
)
```

