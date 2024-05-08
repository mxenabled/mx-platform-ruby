# MxPlatformRuby::ScheduledPaymentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **is_completed** | **Boolean** |  | [optional] |
| **is_recurring** | **Boolean** |  | [optional] |
| **merchant_guid** | **String** |  | [optional] |
| **occurs_on** | **String** |  | [optional] |
| **recurrence_day** | **Integer** |  | [optional] |
| **recurrence_type** | **String** |  | [optional] |
| **transaction_type** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ScheduledPaymentResponse.new(
  amount: 13.54,
  created_at: 2023-04-27T23:14:16Z,
  description: Netflix,
  guid: SPA-c76e4a85-b2c4-4335-82b7-8f8b8f28c35a,
  is_completed: false,
  is_recurring: true,
  merchant_guid: MCH-b8a2624c-2176-59ec-c150-37854bc38aa8,
  occurs_on: 2022-01-15,
  recurrence_day: 15,
  recurrence_type: EVERY_MONTH,
  transaction_type: DEBIT,
  updated_at: 2023-04-27T23:14:16Z,
  user_guid: USR-72086f59-6684-4adf-8f29-c4d32db43cd7
)
```

