# MxPlatformRuby::ProcessorOwner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **Object** |  | [optional] |
| **owner_name** | **Object** |  | [optional] |
| **address** | **Object** |  | [optional] |
| **city** | **Object** |  | [optional] |
| **state** | **Object** |  | [optional] |
| **postal_code** | **Object** |  | [optional] |
| **country** | **Object** |  | [optional] |
| **email** | **Object** |  | [optional] |
| **phone** | **Object** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::ProcessorOwner.new(
  guid: ACO-a06b74ec-6a58-4c0b-b437-8de5e03194ac,
  owner_name: Janita Pollich,
  address: 3541 Adrian Street,
  city: North Kishaberg,
  state: Maine,
  postal_code: 45054-7764,
  country: null,
  email: janita.pollich823@beerpowlowski.ca,
  phone: 676-932-5861
)
```

