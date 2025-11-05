# MxPlatformRuby::RepeatingTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **description** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **merchant_guid** | **String** |  | [optional] |
| **last_posted_date** | **String** |  | [optional] |
| **predicted_occurs_on** | **String** |  | [optional] |
| **recurrence_type** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |
| **repeating_transaction_type** | **String** |  | [optional] |
| **transaction_type** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::RepeatingTransactionResponse.new(
  account_guid: ACT-0af29528-bb91-447f-b5de-85c1c42593e5,
  amount: 107.4,
  description: Dominion Energy,
  guid: RPT-a2264e1a-d2e6-41d9-88d2-2cfdf1143959,
  member_guid: MBR-78b14c5f-7297-4fb5-a966-65ac45f74d83,
  merchant_guid: MCH-1b5d7e4d-fa29-95d1-fd0f-540b6f17d986,
  last_posted_date: 2024-12-09,
  predicted_occurs_on: 2025-01-09,
  recurrence_type: EVERY_MONTH,
  user_guid: null,
  repeating_transaction_type: null,
  transaction_type: null
)
```

