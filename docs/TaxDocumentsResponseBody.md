# MxPlatformRuby::TaxDocumentsResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**PaginationResponse**](PaginationResponse.md) |  | [optional] |
| **tax_documents** | [**Array&lt;TaxDocumentResponse&gt;**](TaxDocumentResponse.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TaxDocumentsResponseBody.new(
  pagination: null,
  tax_documents: null
)
```

