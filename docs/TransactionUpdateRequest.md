# MxPlatformRuby::TransactionUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** |  | [optional] |
| **memo** | **String** |  | [optional] |
| **category_guid** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionUpdateRequest.new(
  date: null,
  memo: null,
  category_guid: null,
  description: new description
)
```

