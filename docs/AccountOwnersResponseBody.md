# MxPlatformRuby::AccountOwnersResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_owners** | [**Array&lt;AccountOwnerResponse&gt;**](AccountOwnerResponse.md) |  | [optional] |
| **pagination** | [**PaginationResponse**](PaginationResponse.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::AccountOwnersResponseBody.new(
  account_owners: null,
  pagination: null
)
```

