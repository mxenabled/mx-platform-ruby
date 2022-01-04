# MxPlatformRuby::EnhanceTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **categorized_by** | **Integer** |  | [optional] |
| **category** | **String** |  | [optional] |
| **category_guid** | **String** |  | [optional] |
| **described_by** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **extended_transaction_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **is_bill_pay** | **Boolean** |  | [optional] |
| **is_direct_deposit** | **Boolean** |  | [optional] |
| **is_expense** | **Boolean** |  | [optional] |
| **is_fee** | **Boolean** |  | [optional] |
| **is_income** | **Boolean** |  | [optional] |
| **is_international** | **Boolean** |  | [optional] |
| **is_overdraft_fee** | **Boolean** |  | [optional] |
| **is_payroll_advance** | **Boolean** |  | [optional] |
| **is_subscription** | **Boolean** |  | [optional] |
| **memo** | **String** |  | [optional] |
| **merchant_category_code** | **Integer** |  | [optional] |
| **merchant_guid** | **String** |  | [optional] |
| **merchant_location_guid** | **String** |  | [optional] |
| **original_description** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::EnhanceTransactionResponse.new(
  amount: 21.33,
  categorized_by: 13,
  category: Rental Car &amp; Taxi,
  category_guid: CAT-9588eaad-90a4-bb5c-66c8-1812503d0db8,
  described_by: 6,
  description: Uber,
  extended_transaction_type: partner_transaction_type,
  id: ID-123,
  is_bill_pay: false,
  is_direct_deposit: false,
  is_expense: false,
  is_fee: false,
  is_income: false,
  is_international: false,
  is_overdraft_fee: false,
  is_payroll_advance: false,
  is_subscription: false,
  memo: Additional-information*on_transaction,
  merchant_category_code: 4121,
  merchant_guid: MCH-14f25b63-ef47-a38e-b2b6-d02b280b6e4e,
  merchant_location_guid: MCL-00024e59-18b5-4d79-b879-2a7896726fea,
  original_description: ubr* pending.uber.com,
  type: DEBIT
)
```

