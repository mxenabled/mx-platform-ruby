# MxPlatformRuby::ACHReturnCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** | The unique identifier for the account associated with the transaction. Defined by MX. |  |
| **account_number_last_four** | **String** | The last 4 digits of the account number used for the transaction by the Originating Depository Financial Institution (ODFI). | [optional] |
| **ach_initiated_at** | **String** | The date and time when the transaction was initiated by the Originating Depository Financial Institution (ODFI) in ISO 8601 format without timestamp. | [optional] |
| **corrected_account_number** | **String** | The account number correction reported by the RDFI. Populate only if the &#x60;resolution_code&#x60; is &#x60;NOTICE_OF_CHANGE&#x60;. | [optional] |
| **corrected_routing_number** | **String** | The routing number correction reported by the RDFI. Populate only if the &#x60;resolution_code&#x60; is &#x60;NOTICE_OF_CHANGE&#x60;. Must be a valid 9-digit routing number format. | [optional] |
| **id** | **String** | Client-defined identifier for this specific return submission. Allows you to track and reference you requests. |  |
| **member_guid** | **String** | The unique identifier for the member associated with the transaction. Defined by MX. |  |
| **return_account_number** | **String** | Incorrect account number used in the ACH transaction. | [optional] |
| **return_code** | **String** | The associated ACH return code and notice of change code (for example, R02, R03, R04, R05, R20, NOC). See [Return Codes](/api-reference/platform-api/reference/ach-return-fields#return-codes) for a complete list. |  |
| **return_notes** | **String** | Notes that you set to inform MX on internal ACH processing. | [optional] |
| **return_routing_number** | **String** | Incorrect routing number used in the ACH transaction. | [optional] |
| **returned_at** | **String** | The date and time when the return was reported by the Receiving Financial Depository Institution (RDFI) in ISO 8601 format without timestamp. | [optional] |
| **sec_code** | **String** | The SEC code (Standard Entry Class Code)–a three-letter code describing how a payment was authorized (for example, &#x60;WEB&#x60;). See [SEC Codes](/api-reference/platform-api/reference/ach-return-fields#sec-codes) for a complete list. | [optional] |
| **transaction_amount** | **Float** | The amount of the transaction. | [optional] |
| **transaction_amount_range** | **Float** | The transaction amount range, used for impact assessment. | [optional] |
| **user_guid** | **String** | MX-defined identifier for the user associated with the ACH return. |  |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ACHReturnCreateRequest.new(
  account_guid: ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1,
  account_number_last_four: 1234,
  ach_initiated_at: 2025-02-13T18:08:00+00:00,
  corrected_account_number: null,
  corrected_routing_number: null,
  id: client_ach_id_1234,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  return_account_number: null,
  return_code: R01,
  return_notes: null,
  return_routing_number: null,
  returned_at: 2025-02-13T18:09:00+00:00,
  sec_code: PPD,
  transaction_amount: 225.84,
  transaction_amount_range: null,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

