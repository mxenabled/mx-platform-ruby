# MxPlatformRuby::ManagedMemberUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ManagedMemberUpdateRequest.new(
  id: member123,
  metadata: some metadata,
  name: MX Bank
)
```

