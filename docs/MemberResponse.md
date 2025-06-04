# MxPlatformRuby::MemberResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregated_at** | **String** |  | [optional] |
| **background_aggregation_is_disabled** | **Boolean** |  | [optional] |
| **connection_status** | **String** |  | [optional] |
| **connection_status_message** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **institution_code** | **String** |  | [optional] |
| **institution_guid** | **String** |  | [optional] |
| **is_being_aggregated** | **Boolean** |  | [optional] |
| **is_managed_by_user** | **Boolean** |  | [optional] |
| **is_manual** | **Boolean** |  | [optional] |
| **is_oauth** | **Boolean** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **most_recent_job_detail_code** | **Integer** |  | [optional] |
| **most_recent_job_detail_text** | **Boolean** |  | [optional] |
| **most_recent_job_guid** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **needs_updated_credentials** | **Boolean** |  | [optional] |
| **oauth_window_uri** | **String** |  | [optional] |
| **successfully_aggregated_at** | **String** |  | [optional] |
| **use_cases** | **Array&lt;String&gt;** | The use case associated with the member. Valid values are &#x60;PFM&#x60; and/or &#x60;MONEY_MOVEMENT&#x60;. Only set this if you&#39;ve met with MX and have opted in to using this field. | [optional] |
| **user_guid** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberResponse.new(
  aggregated_at: 2016-10-13T18:07:57.000Z,
  background_aggregation_is_disabled: false,
  connection_status: CONNECTED,
  connection_status_message: Connected to MX Bank,
  error: {\&quot;error_type\&quot;: \&quot;MEMBER\&quot;, \&quot;error_code\&quot;: 1000, \&quot;error_message\&quot;: \&quot;This Member has no eligible checking, savings, or money market accounts.\&quot;, \&quot;user_message\&quot;: \&quot;We could not find any accounts eligible for transfers. Please link a checking or savings account.\&quot;, \&quot;locale\&quot;: \&quot;en\&quot;},
  guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  id: unique_id,
  institution_code: mxbank,
  institution_guid: INS-12345678-90ab-cdef-1234-567890abcdef,
  is_being_aggregated: false,
  is_managed_by_user: false,
  is_manual: false,
  is_oauth: false,
  metadata: \&quot;credentials_last_refreshed_at\&quot;: \&quot;2015-10-15\,
  most_recent_job_detail_code: null,
  most_recent_job_detail_text: null,
  most_recent_job_guid: false,
  name: MX Bank,
  needs_updated_credentials: false,
  oauth_window_uri: https://mxbank.mx.com/oauth/authorize?client_id&#x3D;b8OikQ4Ep3NuSUrQ13DdvFuwpNx-qqoAsJDVAQCyLkQ&amp;redirect_uri&#x3D;https%3A%2F%2Fint-app.moneydesktop.com%2Foauth%2Fredirect_from&amp;response_type&#x3D;code&amp;scope&#x3D;openid&amp;state&#x3D;d745bd4ee6f0f9c184757f574bcc2df2,
  successfully_aggregated_at: 2016-10-13T17:57:38.000Z,
  use_cases: [&quot;PFM&quot;],
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54,
  user_id: user123
)
```

