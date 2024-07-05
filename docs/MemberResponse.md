# MxPlatformRuby::MemberResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregated_at** | **String** |  | [optional] |
| **background_aggregation_is_disabled** | **Boolean** |  | [optional] |
| **connection_status** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **institution_code** | **String** |  | [optional] |
| **is_being_aggregated** | **Boolean** |  | [optional] |
| **is_managed_by_user** | **Boolean** |  | [optional] |
| **is_manual** | **Boolean** |  | [optional] |
| **is_oauth** | **Boolean** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **most_recent_job_detail_code** | **String** |  | [optional] |
| **most_recent_job_detail_text** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **oauth_window_uri** | **String** |  | [optional] |
| **successfully_aggregated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberResponse.new(
  aggregated_at: 2016-10-13T18:07:57.000Z,
  background_aggregation_is_disabled: false,
  connection_status: CONNECTED,
  guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  id: unique_id,
  institution_code: chase,
  is_being_aggregated: false,
  is_managed_by_user: false,
  is_manual: false,
  is_oauth: false,
  metadata: \&quot;credentials_last_refreshed_at\&quot;: \&quot;2015-10-15\&quot;,
  most_recent_job_detail_code: (deprecated),
  most_recent_job_detail_text: (deprecated),
  name: Chase Bank,
  oauth_window_uri: https://mxbank.mx.com/oauth/authorize?client_id&#x3D;b8OikQ4Ep3NuSUrQ13DdvFuwpNx-qqoAsJDVAQCyLkQ&amp;redirect_uri&#x3D;https%3A%2F%2Fint-app.moneydesktop.com%2Foauth%2Fredirect_from&amp;response_type&#x3D;code&amp;scope&#x3D;openid&amp;state&#x3D;d745bd4ee6f0f9c184757f574bcc2df2,
  successfully_aggregated_at: 2016-10-13T17:57:38.000Z,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54,
  user_id: user123
)
```

