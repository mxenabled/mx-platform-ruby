# MxPlatformRuby::CredentialResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_order** | **Integer** |  | [optional] |
| **field_name** | **String** |  | [optional] |
| **field_type** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::CredentialResponse.new(
  display_order: 1,
  field_name: LOGIN,
  field_type: TEXT,
  guid: CRD-1ec152cd-e628-e81a-e852-d1e7104624da,
  label: Username
)
```

