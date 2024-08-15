# MxPlatformRuby::BudgetCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** | Unique identifier of the category. |  |
| **parent_guid** | **String** | Unique identifier of the parent budget. This is only required when creating a budget on a sub-category. |  |
| **amount** | **Integer** | Amount of the budget. | [optional] |
| **metadata** | **String** | Additional information a partner can store on the budget. | [optional] |
| **skip_webhook** | **Boolean** | When set to true, this parameter will prevent a webhook from being triggered by the request. | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::BudgetCreateRequest.new(
  category_guid: CAT-bd56d35a-a9a7-6e10-66c1-5b9cc1b6c81a,
  parent_guid: BGT-6be44a91-e105-f68a-4770-8c7c0a5c9778,
  amount: 1000,
  metadata: Additional information,
  skip_webhook: true
)
```

