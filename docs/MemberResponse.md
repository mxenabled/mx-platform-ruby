# MxPlatformRuby::MemberResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregated_at** | **String** |  | [optional] |
| **connection_status** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **institution_code** | **String** |  | [optional] |
| **is_being_aggregated** | **Boolean** |  | [optional] |
| **is_oauth** | **Boolean** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **oauth_window_uri** | **String** |  | [optional] |
| **successfully_aggregated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MemberResponse.new(
  aggregated_at: 2016-10-13T18:07:57.000Z,
  connection_status: CONNECTED,
  guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  id: unique_id,
  institution_code: chase,
  is_being_aggregated: false,
  is_oauth: false,
  metadata: \&quot;credentials_last_refreshed_at\&quot;: \&quot;2015-10-15\&quot;,
  name: Chase Bank,
  oauth_window_uri: int-widgets.moneydesktop.com/oauth/predirect_to/MBR-df96fd60-7122-4464-b3c2-ff11d8c74f6f/p8v7rxpxg3pdAsfgwxcrwxwhz3Zbygxfr6wAb931qv91hpb57k6bkr6t6m9djrfrfd467p8xkgqp6w7k1r9g8k8bfxqbfw2lq5tdwjq2sngAx76fm0jrw0dpmbtlkxchgjsw3r7r0hhq6A8sshqptfxql2rt123shfpkyhhpfvy67yvprbkb7lmlyrpwsd9yj0s22pmsyjhcw7d2q44d9fsxn5kfsmr2zqc79c2AxAx5gkjgbczf22A1sjx70t2pvnggzyh55s7bh62dd5wq7f1r4x90mcxn1tfhhrq5b09mjkt5hg66cjn700pcf6fgA42lbsp7v1pdch85mswycrp21c6j2sxffm14Asg3?skip_aggregation&#x3D;false&amp;referral_source&#x3D;APP&amp;ui_message_webview_url_scheme&#x3D;myapp,
  successfully_aggregated_at: 2016-10-13T17:57:38.000Z,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

