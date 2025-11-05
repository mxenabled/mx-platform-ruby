# MxPlatformRuby::MemberCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **background_aggregation_is_disabled** | **Boolean** |  | [optional] |
| **credentials** | [**Array&lt;CredentialRequest&gt;**](CredentialRequest.md) |  |  |
| **id** | **String** |  | [optional] |
| **institution_code** | **String** |  |  |
| **is_oauth** | **Boolean** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **skip_aggregation** | **Boolean** |  | [optional] |
| **use_cases** | **Array&lt;String&gt;** | The use case associated with the member. Valid values are &#x60;PFM&#x60; and/or &#x60;MONEY_MOVEMENT&#x60;. Only set this if you&#39;ve met with MX and have opted in to using this field. | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberCreateRequest.new(
  background_aggregation_is_disabled: false,
  credentials: null,
  id: unique_id,
  institution_code: mxbank,
  is_oauth: false,
  metadata: \&quot;credentials_last_refreshed_at\&quot;: \&quot;2015-10-15\,
  skip_aggregation: false,
  use_cases: [&quot;PFM&quot;]
)
```

