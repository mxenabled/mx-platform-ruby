# MxPlatformRuby::SpendingPlanIterationItemCreateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_guid** | **String** |  | [optional] |
| **item_type** | **Float** |  | [optional] |
| **planned_amount** | **Float** |  |  |
| **scheduled_payment_guid** | **String** |  | [optional] |
| **top_level_category_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::SpendingPlanIterationItemCreateRequestBody.new(
  category_guid: CAT-40faf068-abb4-405c-8f6a-e883ed541fff,
  item_type: 1,
  planned_amount: 110,
  scheduled_payment_guid: SCP-c731988a-712f-4f83-9b3b-0aa5b3d5208b,
  top_level_category_guid: CAT-9588eaad-90a4-bb5c-66c8-1812503d0db8
)
```

