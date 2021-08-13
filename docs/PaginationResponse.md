# MxPlatformRuby::PaginationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **total_entries** | **Integer** |  | [optional] |
| **total_pages** | **Integer** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::PaginationResponse.new(
  current_page: 1,
  per_page: 25,
  total_entries: 1,
  total_pages: 1
)
```

