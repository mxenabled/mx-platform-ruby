# MxPlatformRuby::ProcessorAccountNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

instance = MxPlatformRuby::ProcessorAccountNumber.new(
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

