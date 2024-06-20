# MxPlatformRuby::MemberStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregated_at** | **String** |  | [optional] |
| **challenges** | [**Array&lt;ChallengeResponse&gt;**](ChallengeResponse.md) |  | [optional] |
| **connection_status** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **has_processed_accounts** | **Boolean** |  | [optional] |
| **has_processed_account_numbers** | **Boolean** |  | [optional] |
| **has_processed_transactions** | **Boolean** |  | [optional] |
| **is_authenticated** | **Boolean** |  | [optional] |
| **is_being_aggregated** | **Boolean** |  | [optional] |
| **successfully_aggregated_at** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberStatusResponse.new(
  aggregated_at: 2016-10-13T18:07:57.000Z,
  challenges: null,
  connection_status: CONNECTED,
  guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  has_processed_accounts: true,
  has_processed_account_numbers: true,
  has_processed_transactions: false,
  is_authenticated: false,
  is_being_aggregated: false,
  successfully_aggregated_at: 2016-10-13T17:57:38.000Z
)
```

