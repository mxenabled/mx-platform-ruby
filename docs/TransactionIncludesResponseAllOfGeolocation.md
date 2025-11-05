# MxPlatformRuby::TransactionIncludesResponseAllOfGeolocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionIncludesResponseAllOfGeolocation.new(
  country: us,
  state: UT,
  city: lehi,
  postal_code: 84043
)
```

