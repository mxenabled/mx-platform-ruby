# MxPlatformRuby::CategoryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **is_income** | **Boolean** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **parent_guid** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::CategoryResponse.new(
  created_at: 2015-04-13T18:01:23.000Z,
  guid: CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874,
  is_default: true,
  is_income: false,
  metadata: some metadata,
  name: Auto Insurance,
  parent_guid: CAT-7829f71c-2e8c-afa5-2f55-fa3634b89874,
  updated_at: 2015-05-13T18:01:23.000Z
)
```

