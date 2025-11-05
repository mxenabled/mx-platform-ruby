# MxPlatformRuby::MicrodepositVerifyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deposit_amount_1** | **Float** |  | [optional] |
| **deposit_amount_2** | **Float** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MicrodepositVerifyRequest.new(
  deposit_amount_1: 0.09,
  deposit_amount_2: 0.09
)
```

