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

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberCreateRequest.new(
  background_aggregation_is_disabled: false,
  credentials: null,
  id: unique_id,
  institution_code: chase,
  is_oauth: false,
  metadata: \&quot;credentials_last_refreshed_at\&quot;: \&quot;2015-10-15\&quot;,
  skip_aggregation: false
)
```

