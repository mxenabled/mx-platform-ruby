# MxPlatformRuby::MicrodepositElements

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

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MicrodepositElements.new(
  account_name: My test account,
  account_number: 3331261,
  account_type: CHECKING,
  email: joshyboy2@example.com,
  first_name: Joshy,
  last_name: Grobanne,
  routing_number: 091000019
)
```

