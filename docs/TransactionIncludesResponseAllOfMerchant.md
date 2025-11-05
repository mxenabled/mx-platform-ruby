# MxPlatformRuby::TransactionIncludesResponseAllOfMerchant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **logo_url** | **String** |  | [optional] |
| **website_url** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionIncludesResponseAllOfMerchant.new(
  name: MX,
  guid: MCH-0c25f895-393c-42a4-9c18-95a0b26d4d84,
  logo_url: https://content.mx.com/logos/merchants/MCH-0c25f895-393c-42a4-9c18-95a0b26d4d84.png,
  website_url: https://www.mx.com
)
```

