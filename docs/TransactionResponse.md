# MxPlatformRuby::TransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **category** | **String** |  | [optional] |
| **category_guid** | **String** |  | [optional] |
| **check_number_string** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **currency_code** | **String** |  | [optional] |
| **date** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **extended_transaction_type** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **is_bill_pay** | **Boolean** |  | [optional] |
| **is_direct_deposit** | **Boolean** |  | [optional] |
| **is_expense** | **Boolean** |  | [optional] |
| **is_fee** | **Boolean** |  | [optional] |
| **is_income** | **Boolean** |  | [optional] |
| **is_international** | **Boolean** |  | [optional] |
| **is_overdraft_fee** | **Boolean** |  | [optional] |
| **is_payroll_advance** | **Boolean** |  | [optional] |
| **is_recurring** | **Boolean** |  | [optional] |
| **is_subscription** | **Boolean** |  | [optional] |
| **latitude** | **Float** |  | [optional] |
| **localized_description** | **String** |  | [optional] |
| **localized_memo** | **String** |  | [optional] |
| **longitude** | **Float** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **member_is_managed_by_user** | **Boolean** |  | [optional] |
| **memo** | **String** |  | [optional] |
| **merchant_category_code** | **Integer** |  | [optional] |
| **merchant_guid** | **String** |  | [optional] |
| **merchant_location_guid** | **String** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **original_description** | **String** |  | [optional] |
| **posted_at** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **top_level_category** | **String** |  | [optional] |
| **transacted_at** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionResponse.new(
  account_guid: ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1,
  account_id: account123,
  amount: 61.11,
  category: Groceries,
  category_guid: CAT-9588eaad-90a4-bb5c-66c8-1812503d0db8,
  check_number_string: 6812,
  created_at: 2016-10-06T09:43:42.000Z,
  currency_code: USD,
  date: 2013-09-23T00:00:00.000Z,
  description: Whole foods,
  extended_transaction_type: partner_transaction_type,
  guid: TRN-265abee9-889b-af6a-c69b-25157db2bdd9,
  id: transaction-265abee9-889b-af6a-c69b-25157db2bdd9,
  is_bill_pay: false,
  is_direct_deposit: false,
  is_expense: true,
  is_fee: false,
  is_income: false,
  is_international: false,
  is_overdraft_fee: false,
  is_payroll_advance: false,
  is_recurring: false,
  is_subscription: false,
  latitude: -43.2075,
  localized_description: This is a localized_description,
  localized_memo: This is a localized_memo,
  longitude: 139.691706,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  member_is_managed_by_user: false,
  memo: This is a memo,
  merchant_category_code: 5411,
  merchant_guid: MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b,
  merchant_location_guid: MCL-00024e59-18b5-4d79-b879-2a7896726fea,
  metadata: some metadata,
  original_description: WHOLEFDS TSQ 102,
  posted_at: 2016-10-07T06:00:00.000Z,
  status: POSTED,
  top_level_category: Food &amp; Dining,
  transacted_at: 2016-10-06T13:00:00.000Z,
  type: DEBIT,
  updated_at: 2016-10-07T05:49:12.000Z,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54,
  user_id: user123
)
```

