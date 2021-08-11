# MxPlatformRuby::EnhanceTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **category** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **is_bill_pay** | **Boolean** |  | [optional] |
| **is_direct_deposit** | **Boolean** |  | [optional] |
| **is_expense** | **Boolean** |  | [optional] |
| **is_fee** | **Boolean** |  | [optional] |
| **is_income** | **Boolean** |  | [optional] |
| **is_international** | **Boolean** |  | [optional] |
| **is_overdraft_fee** | **Boolean** |  | [optional] |
| **is_payroll_advance** | **Boolean** |  | [optional] |
| **merchant_category_code** | **Integer** |  | [optional] |
| **merchant_guid** | **String** |  | [optional] |
| **original_description** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::EnhanceTransaction.new(
  amount: 21.33,
  category: Fast Food,
  description: IN-N-OUT BURGER,
  id: ID-123,
  is_bill_pay: false,
  is_direct_deposit: false,
  is_expense: false,
  is_fee: false,
  is_income: false,
  is_international: false,
  is_overdraft_fee: false,
  is_payroll_advance: false,
  merchant_category_code: 5411,
  merchant_guid: MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b,
  original_description: IN-N-OUT BURGER,
  type: DEBIT
)
```

