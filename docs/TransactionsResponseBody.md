# MxPlatformRuby::TransactionsResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**PaginationResponse**](PaginationResponse.md) |  | [optional] |
| **transactions** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionsResponseBody.new(
  pagination: null,
  transactions: null
)
```

