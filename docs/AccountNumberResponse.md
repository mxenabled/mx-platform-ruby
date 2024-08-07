# MxPlatformRuby::AccountNumberResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **loan_guarantor** | **String** |  | [optional] |
| **loan_reference_number** | **String** |  | [optional] |
| **institution_number** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **passed_validation** | **Boolean** |  | [optional] |
| **routing_number** | **String** |  | [optional] |
| **sequence_number** | **String** |  | [optional] |
| **transit_number** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::AccountNumberResponse.new(
  account_guid: ACT-06d7f45b-caae-0f6e-1384-01f52e75dcb1,
  account_number: 10001,
  guid: ACN-8899832e-e5b4-42cd-aa25-bbf1dc889a8f,
  loan_guarantor: U.S. DEPARTMENT OF EDUCATION,
  loan_reference_number: 123456789012345,
  institution_number: 123,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  passed_validation: true,
  routing_number: 68899990000000,
  sequence_number: 1-01,
  transit_number: 12345,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

