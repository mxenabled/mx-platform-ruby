# MxPlatformRuby::UserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **is_disabled** | **Boolean** |  | [optional] |
| **metadata** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::UserResponse.new(
  email: email@provider.com,
  guid: USR-d74cb14f-fd0a-449f-991b-e0362a63d9c6,
  id: My-Unique-ID,
  is_disabled: false,
  metadata: {\&quot;first_name\&quot;: \&quot;Steven\&quot;, \&quot;last_name\&quot;: \&quot;Universe\&quot;}
)
```

