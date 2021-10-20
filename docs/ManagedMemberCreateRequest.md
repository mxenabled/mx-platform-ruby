# MxPlatformRuby::ManagedMemberCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **institution_code** | **String** |  |  |
| **metadata** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ManagedMemberCreateRequest.new(
  id: member123,
  institution_code: mxbank,
  metadata: some metadata,
  name: MX Bank
)
```

