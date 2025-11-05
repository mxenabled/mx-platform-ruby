# MxPlatformRuby::TransactionsResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactions** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) |  | [optional] |
| **pagination** | [**PaginationResponse**](PaginationResponse.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionsResponseBody.new(
  transactions: null,
  pagination: null
)
```

