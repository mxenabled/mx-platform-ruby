# MxPlatformRuby::TaxDocumentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_hash** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **document_type** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **issued_on** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **tax_year** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **uri** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TaxDocumentResponse.new(
  content_hash: a16c580c4fcdfa8088edaa7b4d35b290,
  created_at: 2022-10-18T19:23:16Z,
  document_type: TAX1099_C,
  guid: TAX-ee8776ea-468b-4b02-b95d-743adf6ba50e,
  issued_on: 2022-03-31,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  tax_year: 2023,
  updated_at: 2022-10-18T19:23:16Z,
  uri: /users/USR-11141024-90b3-1bce-cac9-c06ced52ab4c/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/tax_documents/TAX-ee8776ea-468b-4b02-b95d-743adf6ba50e.pdf,
  user_guid: USR-11141024-90b3-1bce-cac9-c06ced52ab4c
)
```

