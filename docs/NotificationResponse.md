# MxPlatformRuby::NotificationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **Object** |  | [optional] |
| **content** | **Object** |  | [optional] |
| **deep_link_guid** | **Object** |  | [optional] |
| **delivered_at** | **Object** |  | [optional] |
| **entity_guid** | **Object** |  | [optional] |
| **has_been_delivered** | **Object** |  | [optional] |
| **has_been_viewed** | **Object** |  | [optional] |
| **notification_type** | **Object** |  | [optional] |
| **subject** | **Object** |  | [optional] |
| **channel** | **Object** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::NotificationResponse.new(
  guid: TF-b53294f5-2356-4782-9f81-ae064c42b40a,
  content: The content related to the notification.,
  deep_link_guid: BGT-e386a323-e452-47f2-b2fd-1ac3c18533de,
  delivered_at: null,
  entity_guid: BGT-e386a323-e452-47f2-b2fd-1ac3c18533de,
  has_been_delivered: true,
  has_been_viewed: false,
  notification_type: 2,
  subject: You&#39;re projected to spend $1,920.07 more than you&#39;ve budgeted for Fees &amp; Charges. You&#39;ve already spent $65.67 of $316.00.,
  channel: push
)
```

