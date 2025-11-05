# MxPlatformRuby::TransactionIncludesResponse

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
| **is_manual** | **Boolean** |  | [optional] |
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
| **classification** | [**TransactionIncludesResponseAllOfClassification**](TransactionIncludesResponseAllOfClassification.md) |  | [optional] |
| **geolocation** | [**TransactionIncludesResponseAllOfGeolocation**](TransactionIncludesResponseAllOfGeolocation.md) |  | [optional] |
| **merchant** | [**TransactionIncludesResponseAllOfMerchant**](TransactionIncludesResponseAllOfMerchant.md) |  | [optional] |
| **repeating_transaction** | [**TransactionIncludesResponseAllOfRepeatingTransaction**](TransactionIncludesResponseAllOfRepeatingTransaction.md) |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::TransactionIncludesResponse.new(
  account_guid: ACT-0af29528-bb91-447f-b5de-85c1c42593e5,
  account_id: FdvkkAgLS0nbDNUujrblz6rYDSl5w-tTLwYRgIxe7jw,
  amount: 5003.9,
  category: Paycheck,
  category_guid: CAT-982ea9e6-3f0e-0c5b-611b-6657a10ba819,
  check_number_string: null,
  created_at: 2024-12-20T18:52:36Z,
  currency_code: null,
  date: 2024-12-20,
  description: MX Technologies,
  extended_transaction_type: null,
  guid: TRN-429ad9fe-a1d2-4559-8590-885b2603f0e1,
  id: 1734681600000-178fa8095c154a55b9172f977b4c5f9a-0,
  is_bill_pay: false,
  is_direct_deposit: false,
  is_expense: false,
  is_fee: false,
  is_income: true,
  is_international: null,
  is_manual: false,
  is_overdraft_fee: false,
  is_payroll_advance: false,
  is_recurring: null,
  is_subscription: false,
  latitude: null,
  localized_description: null,
  localized_memo: null,
  longitude: null,
  member_guid: MBR-78b14c5f-7297-4fb5-a966-65ac45f74d8,
  member_is_managed_by_user: true,
  memo: Transactions,
  merchant_category_code: null,
  merchant_guid: MCH-8cc3b01a-1c52-47d4-970d-30f8ee5566f1,
  merchant_location_guid: null,
  metadata: null,
  original_description: MX TECHNOLOGIES PAYMENT,
  posted_at: 2024-12-20T12:00:00Z,
  status: POSTED,
  top_level_category: Income,
  transacted_at: 2024-12-20T12:00:00Z,
  type: CREDIT,
  updated_at: 2024-12-20T18:52:38Z,
  user_guid: USR-ef7a82f6-d6c1-42c4-9061-bdece5c4d44e,
  user_id: null,
  classification: null,
  geolocation: null,
  merchant: null,
  repeating_transaction: null
)
```

