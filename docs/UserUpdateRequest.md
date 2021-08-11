# MxPlatformRuby::UserUpdateRequest

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

instance = MxPlatformRuby::UserUpdateRequest.new(
  email: email@provider.com,
  id: My-Unique-ID,
  is_disabled: false,
  metadata: {\&quot;first_name\&quot;: \&quot;Steven\&quot;, \&quot;last_name\&quot;: \&quot;Universe\&quot;}
)
```

