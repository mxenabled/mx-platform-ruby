# MxPlatformRuby::RepositionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The unique identifier for the goal. Defined by MX. |  |
| **position** | **Integer** | The priority of the goal in relation to multiple goals. |  |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::RepositionRequest.new(
  guid: GOL-97665947-235c-b213-ca25-8cf0174774f5,
  position: 1
)
```

