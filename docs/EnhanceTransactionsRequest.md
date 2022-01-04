# MxPlatformRuby::EnhanceTransactionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **description** | **String** |  |  |
| **extended_transaction_type** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **memo** | **String** |  | [optional] |
| **merchant_category_code** | **Integer** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::EnhanceTransactionsRequest.new(
  amount: 21.33,
  description: ubr* pending.uber.com,
  extended_transaction_type: partner_transaction_type,
  id: ID-123,
  memo: Additional-information*on_transaction,
  merchant_category_code: 4121,
  type: DEBIT
)
```

