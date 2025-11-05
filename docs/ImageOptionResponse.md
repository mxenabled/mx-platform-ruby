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
  guid: CRD-ce76d2e3-86bd-ec4a-ec52-eb53b5194bf5,
  label: IMAGE_1,
  value: image_data
)
```

