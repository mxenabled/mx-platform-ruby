# MxPlatformRuby::ScheduledPaymentsResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scheduled_payments** | [**Array&lt;ScheduledPaymentResponse&gt;**](ScheduledPaymentResponse.md) |  | [optional] |
| **pagination** | [**PaginationResponse**](PaginationResponse.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ScheduledPaymentsResponseBody.new(
  scheduled_payments: null,
  pagination: null
)
```

