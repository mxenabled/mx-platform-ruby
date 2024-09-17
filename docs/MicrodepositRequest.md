# MxPlatformRuby::MicrodepositRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** |  |  |
| **account_type** | **String** |  |  |
| **routing_number** | **String** |  |  |
| **account_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MicrodepositRequest.new(
  account_number: 3331261,
  account_type: CHECKING,
  routing_number: 091000019,
  account_name: My test account,
  email: joshyboy2@example.com,
  first_name: Joshy,
  last_name: Grobanne
)
```

