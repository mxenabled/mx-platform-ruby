# MxPlatformRuby::UpdateGoalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | Unique identifier of the account for the goal. | [optional] |
| **amount** | **Float** | Amount of the goal. | [optional] |
| **goal_type_name** | **String** | The goal type. | [optional] |
| **meta_type_name** | **String** | The category of the goal. | [optional] |
| **name** | **String** | The name of the goal. | [optional] |
| **completed_at** | **String** | Date and time the goal was completed. | [optional] |
| **has_been_spent** | **Boolean** | Determines if the goal has been spent. | [optional] |
| **is_complete** | **Boolean** | Determines if the goal is complete. | [optional] |
| **metadata** | **String** | Additional information a partner can store on the goal. | [optional] |
| **position** | **Integer** | The priority of the goal in relation to multiple goals. | [optional] |
| **targeted_to_complete_at** | **String** | Date and time the goal is to complete. Intended for users to set their own goal completion dates. | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::UpdateGoalRequest.new(
  account_guid: ACT-4e431124-4a29-abf9-f059-ab232ac14dbf,
  amount: 4500.5,
  goal_type_name: PAYOFF,
  meta_type_name: VACATION,
  name: Save for Europe,
  completed_at: 2015-06-19T10:37:04-06:00,
  has_been_spent: false,
  is_complete: false,
  metadata: Additional information,
  position: 3,
  targeted_to_complete_at: 2026-12-08 00:00:00.000000
)
```

