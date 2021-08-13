# MxPlatformRuby::TransactionRulesResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**PaginationResponse**](PaginationResponse.md) |  | [optional] |
| **transaction_rules** | [**Array&lt;TransactionRuleResponse&gt;**](TransactionRuleResponse.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionRulesResponseBody.new(
  pagination: null,
  transaction_rules: null
)
```

