# MxPlatformRuby::PartnerTokenResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::PartnerTokenResponseBody.new(
  access_token: jUmJS4AZVdvywAMO_JWKwZ8fvY9ZZQINSBHTKkHMw-c,
  scope: Platform#partner_accounts,
  token_type: bearer
)
```

