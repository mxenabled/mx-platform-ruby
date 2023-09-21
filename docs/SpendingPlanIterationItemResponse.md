# MxPlatformRuby::SpendingPlanIterationItemResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actual_amount** | **Float** |  | [optional] |
| **category_guid** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **item_type** | **String** |  | [optional] |
| **planned_amount** | **Float** |  | [optional] |
| **scheduled_payment_guid** | **String** |  | [optional] |
| **spending_plan_iteration_guid** | **String** |  | [optional] |
| **top_level_category_guid** | **String** |  | [optional] |
| **transaction_guids** | **Array&lt;String&gt;** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::SpendingPlanIterationItemResponse.new(
  actual_amount: 345.0,
  category_guid: CAT-40faf068-abb4-405c-8f6a-e883ed541fff,
  created_at: 2016-10-13T18:08:00+00:00,
  guid: SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262,
  item_type: 0,
  planned_amount: 345.0,
  scheduled_payment_guid: SCP-54bed778-6600-4262-908c-8822f141cc30,
  spending_plan_iteration_guid: SPI-848e6648-3fa3-4632-ac8f-e65f03167102,
  top_level_category_guid: CAT-50af068-abb4-405c-8f6a-e883ed541f4f,
  transaction_guids: null,
  updated_at: 2016-10-13T18:09:00+00:00,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

