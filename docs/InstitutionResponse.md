# MxPlatformRuby::InstitutionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **medium_logo_url** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **small_logo_url** | **String** |  | [optional] |
| **supports_account_identification** | **Boolean** |  | [optional] |
| **supports_account_statement** | **Boolean** |  | [optional] |
| **supports_account_verification** | **Boolean** |  | [optional] |
| **supports_oauth** | **Boolean** |  | [optional] |
| **supports_transaction_history** | **Boolean** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::InstitutionResponse.new(
  code: chase,
  medium_logo_url: https://content.moneydesktop.com/storage/MD_Assets/Ipad%20Logos/100x100/default_100x100.png,
  name: Chase Bank,
  small_logo_url: https://content.moneydesktop.com/storage/MD_Assets/Ipad%20Logos/50x50/default_50x50.png,
  supports_account_identification: true,
  supports_account_statement: true,
  supports_account_verification: true,
  supports_oauth: true,
  supports_transaction_history: true,
  url: https://www.chase.com
)
```

