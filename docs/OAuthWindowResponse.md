# MxPlatformRuby::OAuthWindowResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** |  | [optional] |
| **oauth_window_uri** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::OAuthWindowResponse.new(
  guid: MBR-df96fd60-7122-4464-b3c2-ff11d8c74f6f,
  oauth_window_uri: https://mxbank.mx.com/oauth/authorize?client_id&#x3D;b8OikQ4Ep3NuSUrQ13DdvFuwpNx-qqoAsJDVAQCyLkQ&amp;redirect_uri&#x3D;https%3A%2F%2Fint-app.moneydesktop.com%2Foauth%2Fredirect_from&amp;response_type&#x3D;code&amp;scope&#x3D;openid&amp;state&#x3D;d745bd4ee6f0f9c184757f574bcc2df2
)
```

