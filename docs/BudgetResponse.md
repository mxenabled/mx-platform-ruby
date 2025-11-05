# MxPlatformRuby::BudgetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | A goal amount set by the user for a category&#39;s transaction total during a month. | [optional] |
| **category_guid** | **String** | Unique identifier for the budget category. Defined by MX. | [optional] |
| **created_at** | **String** | Date and time the budget was created, represented in ISO 8601 format with timestamp. | [optional] |
| **guid** | **String** | Unique identifier for the budget. Defined by MX. | [optional] |
| **is_exceeded** | **Boolean** | If the budget has been exceeded, this field will be true. Otherwise, this field will be false. | [optional] |
| **is_off_track** | **Boolean** | If the budget is off track, this field will be true. Otherwise, this field will be false. | [optional] |
| **metadata** | **String** | Additional information a partner can store on the budget. | [optional] |
| **name** | **String** | The name of the budget that is visible to the user (ie \&quot;Food\&quot;, \&quot;Bills\&quot;, \&quot;Entertainment\&quot;, etc). | [optional] |
| **off_track_percentage** | **Float** | The percentage amount of off track spending. (Deprecated). | [optional] |
| **parent_guid** | **String** | Unique identifier for the parent budget. Defined by MX. | [optional] |
| **percent_spent** | **Float** | The percentage of a budget that has been spent during the current calendar month Calculated as the transaction total divided by the amount and then multiplied by 100.A value of zero will be returned when &#x60;amount&#x60; is zero. | [optional] |
| **projected_spending** | **Float** | The projected amount of spending for the budget. | [optional] |
| **revision** | **Integer** | The revision number of this budget record. | [optional] |
| **transaction_total** | **Object** | The cumulative amount of all transactions under the budget. | [optional] |
| **updated_at** | **Object** | Date and time the budget was updated, represented in ISO 8601 format with timestamp. | [optional] |
| **user_guid** | **Object** | Unique identifier for the user. Defined by MX. | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::BudgetResponse.new(
  amount: 153,
  category_guid: CAT-bd56d35a-a9a7-6e10-66c1-5b9cc1b6c81a,
  created_at: 2018-10-18T19:51:26+00:00,
  guid: BGT-6ca0e3ef-c65e-4655-8b5a-275a3c19c21d,
  is_exceeded: true,
  is_off_track: true,
  metadata: some metadata,
  name: Food &amp; Dining,
  off_track_percentage: null,
  parent_guid: null,
  percent_spent: 1276.34,
  projected_spending: 3562.4,
  revision: 561,
  transaction_total: 1952.8,
  updated_at: 2022-06-14T21:17:11+00:00,
  user_guid: USR-11141024-90b3-1bce-cac9-c06ced52ab4c
)
```

