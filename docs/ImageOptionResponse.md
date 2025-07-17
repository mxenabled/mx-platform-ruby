# MxPlatformRuby::ImageOptionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_uri** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **value** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ImageOptionResponse.new(
  data_uri: data:image/png;base64,iVBORw0KGgoAAAANSUh ... more image data ...,
  guid: CRO-e7ecc864-61fd-47a6-a122-3cbc9016660d,
  label: IMAGE_1,
  value: image_data
)
```

