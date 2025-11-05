# MxPlatformRuby::TransactionRulesResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_rules** | [**Array&lt;TransactionRuleResponse&gt;**](TransactionRuleResponse.md) |  | [optional] |
| **pagination** | [**PaginationResponse**](PaginationResponse.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionRulesResponseBody.new(
  transaction_rules: null,
  pagination: null
)
```

