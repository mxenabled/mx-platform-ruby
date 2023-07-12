# MxPlatformRuby::AccountCreateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skip_webhook** | **Boolean** |  | [optional] |
| **account** | [**AccountCreateRequest**](AccountCreateRequest.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::AccountCreateRequestBody.new(
  skip_webhook: true,
  account: null
)
```

