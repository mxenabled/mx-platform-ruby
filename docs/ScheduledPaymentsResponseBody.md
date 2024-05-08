# MxPlatformRuby::ScheduledPaymentsResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**PaginationResponse**](PaginationResponse.md) |  | [optional] |
| **scheduled_payments** | [**Array&lt;ScheduledPaymentResponse&gt;**](ScheduledPaymentResponse.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ScheduledPaymentsResponseBody.new(
  pagination: null,
  scheduled_payments: null
)
```

