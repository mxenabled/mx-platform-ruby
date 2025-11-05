# MxPlatformRuby::ProcessorAccountNumberBodyAccountNumbersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |
| **account_number** | **Integer** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **institution_number** | **Object** |  | [optional] |
| **loan_guarantor** | **Object** |  | [optional] |
| **loan_reference_number** | **Object** |  | [optional] |
| **passed_validation** | **Object** |  | [optional] |
| **routing_number** | **Integer** |  | [optional] |
| **sequence_number** | **Object** |  | [optional] |
| **transit_number** | **Object** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ProcessorAccountNumberBodyAccountNumbersInner.new(
  account_guid: ACT-283132a4-1401-486a-909e-1605f1623d11,
  member_guid: MBR-54feffb9-8474-47bd-8442-de003910113a,
  user_guid: USR-101ad774-288b-44ed-ad16-da87d522ea20,
  account_number: 6366816006,
  guid: ACN-68c0b681-78c2-4731-9b41-d6e8ae2846cf,
  institution_number: null,
  loan_guarantor: null,
  loan_reference_number: null,
  passed_validation: true,
  routing_number: 242564563,
  sequence_number: null,
  transit_number: null
)
```

