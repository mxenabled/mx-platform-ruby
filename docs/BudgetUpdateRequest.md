# MxPlatformRuby::BudgetUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Amount of the budget. | [optional] |
| **metadata** | **String** | Additional information a partner can store on the budget. | [optional] |
| **skip_webhook** | **Boolean** | When set to true, this parameter will prevent a webhook from being triggered by the request. | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::BudgetUpdateRequest.new(
  amount: 1000,
  metadata: Additional information,
  skip_webhook: true
)
```

