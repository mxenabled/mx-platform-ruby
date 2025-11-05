# MxPlatformRuby::CreditCardProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annual_fee** | **Float** |  | [optional] |
| **duration_of_introductory_rate_on_balance_transfer** | **Integer** |  | [optional] |
| **duration_of_introductory_rate_on_purchases** | **Integer** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **has_cashback_rewards** | **Boolean** |  | [optional] |
| **has_other_rewards** | **Boolean** |  | [optional] |
| **has_travel_rewards** | **Boolean** |  | [optional] |
| **has_zero_introductory_annual_fee** | **Boolean** |  | [optional] |
| **has_zero_percent_introductory_rate** | **Boolean** |  | [optional] |
| **has_zero_percent_introductory_rate_on_balance_transfer** | **Boolean** |  | [optional] |
| **is_accepting_applicants** | **Boolean** |  | [optional] |
| **is_active_credit_card_product** | **Boolean** |  | [optional] |
| **is_small_business_card** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::CreditCardProduct.new(
  annual_fee: 45,
  duration_of_introductory_rate_on_balance_transfer: null,
  duration_of_introductory_rate_on_purchases: null,
  guid: CCA-b5bcd822-6d01-4e23-b8d6-846a225e714a,
  has_cashback_rewards: false,
  has_other_rewards: true,
  has_travel_rewards: true,
  has_zero_introductory_annual_fee: true,
  has_zero_percent_introductory_rate: false,
  has_zero_percent_introductory_rate_on_balance_transfer: true,
  is_accepting_applicants: true,
  is_active_credit_card_product: true,
  is_small_business_card: true,
  name: Chase Credit Card
)
```

