# MxPlatformRuby::ChallengeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_name** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **image_data** | **String** |  | [optional] |
| **image_options** | [**Array&lt;ImageOptionResponse&gt;**](ImageOptionResponse.md) |  | [optional] |
| **label** | **String** |  | [optional] |
| **options** | [**Array&lt;OptionResponse&gt;**](OptionResponse.md) |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ChallengeResponse.new(
  field_name: Who is this guy?,
  guid: CRD-ce76d2e3-86bd-ec4a-ec52-eb53b5194bf5,
  image_data: Who is this guy?,
  image_options: null,
  label: Who is this guy?,
  options: null,
  type: IMAGE_DATA
)
```

