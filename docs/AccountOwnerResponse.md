# MxPlatformRuby::AccountOwnerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **owner_name** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::AccountOwnerResponse.new(
  account_guid: ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1,
  address: 123 This Way,
  city: Middlesex,
  country: US,
  email: donnie@darko.co,
  first_name: Donnie,
  guid: ACO-63dc7714-6fc0-4aa2-a069-c06cdccd1af9,
  last_name: Darko,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  owner_name: Donnie Darko,
  phone: 555-555-5555,
  postal_code: 00000-0000,
  state: VA,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

