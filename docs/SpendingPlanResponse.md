# MxPlatformRuby::SpendingPlanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **current_iteration_number** | **Integer** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::SpendingPlanResponse.new(
  created_at: 2016-10-13T18:08:00+00:00,
  current_iteration_number: 1,
  guid: SPL-e5f9a5bd-c5b3-4901-bdc0-62119b9db262,
  updated_at: 2016-10-13T18:09:00+00:00,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

