# MxPlatformRuby::SplitTransactionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount of money you want to re-categorize. |  |
| **description** | **String** | Description for the split transaction. | [optional] |
| **category_guid** | **String** | Unique identifier of the category. | [optional] |
| **memo** | **String** | Memo for the split transaction | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::SplitTransactionRequest.new(
  amount: 54.19,
  description: Chevron Gas,
  category_guid: CAT-b6d61a19-30a7-e852-2703-bdfb4072289e,
  memo: Chips and Soda
)
```

