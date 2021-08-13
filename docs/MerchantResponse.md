# MxPlatformRuby::MerchantResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **logo_url** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **website_url** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MerchantResponse.new(
  created_at: 2017-04-20T19:30:12.000Z,
  guid: MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b,
  logo_url: https://s3.amazonaws.com/MD_Assets/merchant_logos/comcast.png,
  name: Comcast,
  updated_at: 2018-09-28T21:13:53.000Z,
  website_url: https://www.xfinity.com
)
```

