# MxPlatformRuby::MonthlyCashFlowProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goals_contribution** | **Float** | The monthly dollar amount allocated for goals. | [optional] |
| **uses_estimated_goals_contribution** | **Boolean** | Determines if the user uses estimated goals contribution. | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MonthlyCashFlowProfileRequest.new(
  goals_contribution: 150.01,
  uses_estimated_goals_contribution: false
)
```

