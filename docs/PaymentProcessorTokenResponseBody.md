# MxPlatformRuby::PaymentProcessorTokenResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::PaymentProcessorTokenResponseBody.new(
  access_token: jUmJS4AZVdvywAMO_JWKwZ8fvY9ZZQINSBHTKkHMw-c,
  scope: payment_accounts,
  token_type: bearer
)
```

