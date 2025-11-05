# MxPlatformRuby::MicrodepositResponseBodyMicroDepositInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** |  | [optional] |
| **account_number** | **String** |  |  |
| **account_type** | **String** |  |  |
| **email** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **routing_number** | **String** |  |  |
| **error_message** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **institution_code** | **String** |  | [optional] |
| **institution_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **verified_at** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MicrodepositResponseBodyMicroDepositInner.new(
  account_name: My test account,
  account_number: 3331261,
  account_type: CHECKING,
  email: joshyboy2@example.com,
  first_name: Joshy,
  last_name: Grobanne,
  routing_number: 091000019,
  error_message: null,
  guid: MIC-09ba578e-8448-4f7f-89e1-b62ff2517edb,
  institution_code: mxbank,
  institution_name: MX Bank,
  status: INITIATED,
  updated_at: 2023-06-01T19:18:06Z,
  verified_at: null
)
```

