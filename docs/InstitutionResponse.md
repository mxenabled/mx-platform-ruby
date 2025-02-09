# MxPlatformRuby::InstitutionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **forgot_password_url** | **String** |  | [optional] |
| **forgot_username_url** | **String** |  | [optional] |
| **instructional_text** | **String** |  | [optional] |
| **medium_logo_url** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **small_logo_url** | **String** |  | [optional] |
| **supports_account_identification** | **Boolean** |  | [optional] |
| **supports_account_statement** | **Boolean** |  | [optional] |
| **supports_account_verification** | **Boolean** |  | [optional] |
| **supports_oauth** | **Boolean** |  | [optional] |
| **supports_tax_document** | **Boolean** |  | [optional] |
| **supports_transaction_history** | **Boolean** |  | [optional] |
| **trouble_signing_in_url** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::InstitutionResponse.new(
  code: chase,
  forgot_password_url: https://example.url.chase.com/forgot-password,
  forgot_username_url: https://example.url.chase.com/forgot-username,
  instructional_text: Some instructional text &lt;a href&#x3D;&quot;https://example.url.chase.com/instructions&quot; id&#x3D;&quot;instructional_text&quot;&gt;for end users&lt;/a&gt;.,
  medium_logo_url: https://content.moneydesktop.com/storage/MD_Assets/Ipad%20Logos/100x100/default_100x100.png,
  name: Chase Bank,
  small_logo_url: https://content.moneydesktop.com/storage/MD_Assets/Ipad%20Logos/50x50/default_50x50.png,
  supports_account_identification: true,
  supports_account_statement: true,
  supports_account_verification: true,
  supports_oauth: true,
  supports_tax_document: true,
  supports_transaction_history: true,
  trouble_signing_in_url: https://example.url.chase.com/login-trouble,
  url: https://www.chase.com
)
```

