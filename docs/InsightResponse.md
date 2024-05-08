# MxPlatformRuby::InsightResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_at** | **String** |  | [optional] |
| **client_guid** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **cta_clicked_at** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **has_associated_accounts** | **Boolean** |  | [optional] |
| **has_associated_merchants** | **Boolean** |  | [optional] |
| **has_associated_scheduled_payments** | **Boolean** |  | [optional] |
| **has_associated_transactions** | **Boolean** |  | [optional] |
| **has_been_displayed** | **Boolean** |  | [optional] |
| **is_dismissed** | **Boolean** |  | [optional] |
| **micro_call_to_action** | **String** |  | [optional] |
| **micro_description** | **String** |  | [optional] |
| **micro_title** | **String** |  | [optional] |
| **template** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |
| **user_id** | **Object** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::InsightResponse.new(
  active_at: 2022-01-07T12:00:00Z,
  client_guid: CLT-abcd-1234,
  created_at: 2022-01-12T18:16:51Z,
  cta_clicked_at: 2022-01-12T18:16:51Z,
  description: Gold&#39;s Gym charged you $36.71 more this month than normal. Did you upgrade your service?,
  guid: BET-abcd-1234,
  has_associated_accounts: false,
  has_associated_merchants: false,
  has_associated_scheduled_payments: false,
  has_associated_transactions: true,
  has_been_displayed: true,
  is_dismissed: false,
  micro_call_to_action: Learn more,
  micro_description: Netflix charged you $5.00 more this month than normal.,
  micro_title: Price increase,
  template: SubscriptionPriceIncrease,
  title: Price increase,
  updated_at: 2022-01-12T18:16:51Z,
  user_guid: USR-1234-abcd,
  user_id: user-partner-defined-1234
)
```

