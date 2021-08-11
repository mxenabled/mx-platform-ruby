# MxPlatformRuby::Challenge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_name** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **image_data** | **String** |  | [optional] |
| **image_options** | [**Array&lt;ChallengeImageOptions&gt;**](ChallengeImageOptions.md) |  | [optional] |
| **label** | **String** |  | [optional] |
| **options** | [**Array&lt;ChallengeOptions&gt;**](ChallengeOptions.md) |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::Challenge.new(
  field_name: Who is this guy?,
  guid: CRD-ce76d2e3-86bd-ec4a-ec52-eb53b5194bf5,
  image_data: Who is this guy?,
  image_options: null,
  label: Who is this guy?,
  options: null,
  type: IMAGE_DATA
)
```

