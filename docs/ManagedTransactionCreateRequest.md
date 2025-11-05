# MxPlatformRuby::ManagedTransactionCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** |  |  |
| **category** | **String** |  | [optional] |
| **check_number_string** | **String** |  | [optional] |
| **currency_code** | **String** |  | [optional] |
| **description** | **String** |  |  |
| **id** | **String** |  | [optional] |
| **is_international** | **Boolean** |  | [optional] |
| **latitude** | **Float** |  | [optional] |
| **localized_description** | **String** |  | [optional] |
| **localized_memo** | **String** |  | [optional] |
| **longitude** | **Float** |  | [optional] |
| **memo** | **String** |  | [optional] |
| **merchant_category_code** | **Integer** |  | [optional] |
| **merchant_guid** | **String** |  | [optional] |
| **merchant_location_guid** | **String** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **posted_at** | **String** |  |  |
| **status** | **String** |  |  |
| **transacted_at** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ManagedTransactionCreateRequest.new(
  amount: 61.11,
  category: Groceries,
  check_number_string: 6812,
  currency_code: USD,
  description: Whole foods,
  id: transaction-265abee9-889b-af6a-c69b-25157db2bdd9,
  is_international: false,
  latitude: -43.2075,
  localized_description: This is a localized_description,
  localized_memo: This is a localized_memo,
  longitude: 139.691706,
  memo: This is a memo,
  merchant_category_code: 5411,
  merchant_guid: MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b,
  merchant_location_guid: MCL-00024e59-18b5-4d79-b879-2a7896726fea,
  metadata: some metadata,
  posted_at: 2016-10-07T06:00:00.000Z,
  status: POSTED,
  transacted_at: 2016-10-06T13:00:00.000Z,
  type: DEBIT
)
```

