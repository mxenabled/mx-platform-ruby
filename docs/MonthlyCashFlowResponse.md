# MxPlatformRuby::MonthlyCashFlowResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | Unique identifier for the monthly cash flow profile. Defined by MX. | [optional] |
| **user_guid** | **String** | Unique identifier for the user the monthly cash flow profile is attached to. Defined by MX. | [optional] |
| **budgeted_income** | **Float** | The amount of the budgeted income for the user. | [optional] |
| **budgeted_expenses** | **Float** | The amount of the budgeted expenses for the user. | [optional] |
| **goals_contribution** | **Float** | The monthly dollar amount allocated for goals. | [optional] |
| **estimated_goals_contribution** | **Integer** | The estimated monthly dollar amount allocated for goals calculated from income and budgets. | [optional] |
| **uses_estimated_goals_contribution** | **Boolean** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MonthlyCashFlowResponse.new(
  guid: MCF-4e431124-4a29-abf9-f059-ab232ac14dbf,
  user_guid: USR-6c83f63c-efcc-0189-3f14-100f0bad378a,
  budgeted_income: 1200.12,
  budgeted_expenses: 1000.0,
  goals_contribution: 150.0,
  estimated_goals_contribution: null,
  uses_estimated_goals_contribution: false
)
```

