# MxPlatformRuby::CategoryCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **parent_guid** | **String** |  |  |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::CategoryCreateRequest.new(
  metadata: some metadata,
  name: Online Shopping,
  parent_guid: CAT-aad51b46-d6f7-3da5-fd6e-492328b3023f
)
```

