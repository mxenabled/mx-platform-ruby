# MxPlatformRuby::UserCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **is_disabled** | **Boolean** |  | [optional] |
| **metadata** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::UserCreateRequest.new(
  email: email@provider.com,
  id: My-Unique-ID,
  is_disabled: false,
  metadata: {\&quot;type\&quot;: \&quot;individual\&quot;, \&quot;status\&quot;: \&quot;preferred\&quot;}
)
```

