# MxPlatformRuby::SpendingPlanAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **client_guid** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **spending_plan_guid** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::SpendingPlanAccountResponse.new(
  account_guid: ACT-97d3948f-ebe7-434a-9bd0-20b29d67c9d4,
  client_guid: CLT-024284fc-a6a7-42ee-b363-dab9343e3f72,
  created_at: 2023-04-27T23:14:16Z,
  guid: SPA-c76e4a85-b2c4-4335-82b7-8f8b8f28c35a,
  spending_plan_guid: SPL-dbfe201d-c341-4bff-93c0-62a918d0b600,
  updated_at: 2023-04-27T23:14:16Z,
  user_guid: USR-72086f59-6684-4adf-8f29-c4d32db43cd7
)
```

