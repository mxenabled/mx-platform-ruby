# MxPlatformRuby::ACHResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_guid** | **String** |  | [optional] |
| **account_number_last_four** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **ach_initiated_at** | **String** |  | [optional] |
| **client_guid** | **String** |  | [optional] |
| **corrected_account_number** | **String** |  | [optional] |
| **corrected_routing_number** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **institution_guid** | **String** |  | [optional] |
| **investigation_notes** | **String** |  | [optional] |
| **member_guid** | **String** |  | [optional] |
| **processing_errors** | **String** |  | [optional] |
| **resolution_code** | **String** |  | [optional] |
| **resolution_detail** | **String** |  | [optional] |
| **resolved_status_at** | **String** |  | [optional] |
| **return_code** | **String** |  | [optional] |
| **return_notes** | **String** |  | [optional] |
| **return_account_number** | **String** |  | [optional] |
| **return_routing_number** | **String** |  | [optional] |
| **return_status** | **String** |  | [optional] |
| **returned_at** | **String** |  | [optional] |
| **sec_code** | **String** |  | [optional] |
| **started_processing_at** | **String** |  | [optional] |
| **submitted_at** | **String** |  | [optional] |
| **transaction_amount** | **Float** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user_guid** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ACHResponse.new(
  account_guid: ACT-06d7f44b-caae-0f6e-1384-01f52e75dcb1,
  account_number_last_four: 1234,
  account_type: CREDIT,
  ach_initiated_at: 2025-02-13T18:08:00+00:00,
  client_guid: CLT-abcd-1234,
  corrected_account_number: null,
  corrected_routing_number: null,
  created_at: null,
  guid: ACH-d74cb14f-fd0a-449f-991b-e0362a63d9c6,
  id: client_ach_return_id_1234,
  institution_guid: INS-34r4f44b-cfge-0f6e-3484-21f47e45tfv7,
  investigation_notes: null,
  member_guid: MBR-7c6f361b-e582-15b6-60c0-358f12466b4b,
  processing_errors: null,
  resolution_code: null,
  resolution_detail: null,
  resolved_status_at: null,
  return_code: R01,
  return_notes: null,
  return_account_number: null,
  return_routing_number: null,
  return_status: SUBMITTED,
  returned_at: 2025-02-13T18:09:00+00:00,
  sec_code: PPD,
  started_processing_at: null,
  submitted_at: null,
  transaction_amount: 225.84,
  updated_at: null,
  user_guid: USR-fa7537f3-48aa-a683-a02a-b18940482f54
)
```

