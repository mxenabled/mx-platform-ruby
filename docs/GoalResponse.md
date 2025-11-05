# MxPlatformRuby::GoalResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | Unique identifier of the account for the goal. | [optional] |
| **amount** | **Float** | Amount of the goal. | [optional] |
| **completed_at** | **String** | Date and time the goal was completed. | [optional] |
| **current_amount** | **Float** | The current amount of the goal. | [optional] |
| **goal_type_name** | **String** | The goal type. | [optional] |
| **guid** | **String** | Unique identifier for the goal. Defined by MX. | [optional] |
| **has_been_spent** | **Boolean** | Determines if the goal has been spent. | [optional] |
| **is_complete** | **Boolean** | Determines if the goal is complete. | [optional] |
| **metadata** | **String** | Additional information a partner can store on the goal. | [optional] |
| **meta_type_name** | **String** | The category of the goal. | [optional] |
| **name** | **String** | The name of the goal. | [optional] |
| **position** | **Integer** | The priority of the goal in relation to multiple goals. | [optional] |
| **projected_to_complete_at** | **String** | Date and time the goal is projected to be completed. | [optional] |
| **targeted_to_complete_at** | **String** | Date and time the goal is to complete. Intended for users to set their own goal completion dates. | [optional] |
| **track_type_name** | **String** |  | [optional] |
| **user_guid** | **String** | The unique identifier for the the user. Defined by MX. | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::GoalResponse.new(
  account_guid: ACT-4e431124-4a29-abf9-f059-ab232ac14dbf,
  amount: 4500,
  completed_at: 2015-06-19T10:37:04-06:00,
  current_amount: 1651.27,
  goal_type_name: PAYOFF,
  guid: GOL-f223463-4355-48d0-rce7-fe2rb345617c,
  has_been_spent: false,
  is_complete: false,
  metadata: Additional information,
  meta_type_name: VACATION,
  name: Save for Europe,
  position: 3,
  projected_to_complete_at: 2022-06-14T16:03:53-00:00,
  targeted_to_complete_at: 2026-12-08 00:00:00.000000,
  track_type_name: Track Type Name,
  user_guid: USR-11141024-90b3-1bce-cac9-c06ced52ab4c
)
```

