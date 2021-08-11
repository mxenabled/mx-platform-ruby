# MxPlatformRuby::EnhanceTransactionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **description** | **String** |  |  |
| **id** | **String** |  |  |
| **merchant_category_code** | **Integer** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::EnhanceTransactionsRequest.new(
  amount: 21.33,
  description: IN-N-OUT BURGER,
  id: ID-123,
  merchant_category_code: 123,
  type: DEBIT
)
```

