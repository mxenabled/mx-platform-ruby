# MxPlatformRuby::SpendingPlanIterationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **end_on** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **iteration_number** | **Integer** |  | [optional] |
| **spending_plan_guid** | **String** |  | [optional] |
| **start_on** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::SpendingPlanIterationResponse.new(
  created_at: 2016-10-13T18:08:00+00:00,
  end_on: 2023-05-31,
  guid: SPI-848e6648-3fa3-4632-ac8f-e65f03167102,
  iteration_number: 1,
  spending_plan_guid: SPL-dbfe201d-c341-4bff-93c0-62a918d0b600,
  start_on: 2023-05-01,
  updated_at: 2016-10-13T18:09:00+00:00,
  user_guid: USR-72086f59-6684-4adf-8f29-c4d32db43cd7
)
```

