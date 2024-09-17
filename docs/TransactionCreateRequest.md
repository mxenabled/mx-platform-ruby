# MxPlatformRuby::TransactionCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  |  |
| **date** | **String** |  |  |
| **description** | **String** |  |  |
| **type** | **String** | The type of transaction, which must be CREDIT or DEBIT. See Transaction Fields for more information. |  |
| **category_guid** | **String** | Unique identifier of the category. | [optional] |
| **currency_code** | **String** |  | [optional] |
| **has_been_viewed** | **Boolean** |  | [optional] |
| **is_hidden** | **Boolean** |  | [optional] |
| **is_international** | **Boolean** |  | [optional] |
| **memo** | **String** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **skip_webhook** | **Boolean** | When set to true, this parameter will prevent a webhook from being triggered by the request. | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionCreateRequest.new(
  amount: 61.11,
  date: 2016-10-06,
  description: Whole foods,
  type: DEBIT,
  category_guid: CAT-b6d61a19-30a7-e852-2703-bdfb4072289e,
  currency_code: USD,
  has_been_viewed: false,
  is_hidden: false,
  is_international: false,
  memo: This is a memo,
  metadata: some metadata,
  skip_webhook: true
)
```

