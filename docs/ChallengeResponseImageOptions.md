# MxPlatformRuby::ChallengeResponseImageOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_uri** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **value** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ChallengeResponseImageOptions.new(
  data_uri: data:image/png;base64,iVBORw0KGgoAAAANSUh ... more image data ...,
  label: IMAGE_1,
  value: image_data
)
```

