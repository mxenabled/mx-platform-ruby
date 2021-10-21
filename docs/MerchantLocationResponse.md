# MxPlatformRuby::MerchantLocationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **city** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **guid** | **String** |  | [optional] |
| **latitude** | **Float** |  | [optional] |
| **longitude** | **Float** |  | [optional] |
| **merchant_guid** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **street_address** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'mx-platform-ruby'

instance = MxPlatformRuby::MerchantLocationResponse.new(
  city: Greenwood Village,
  country: US,
  created_at: 2020-04-13 21:05:09.000000000 Z,
  guid: MCL-00024e59-18b5-4d79-b879-2a7896726fea,
  latitude: 39.5963005,
  longitude: -104.89158799999998,
  merchant_guid: MCH-09466f0a-fb58-9d1a-bae2-2af0afbea621,
  phone_number: (303) 689-0728,
  postal_code: 801121436,
  state: CO,
  street_address: 8547 E Arapahoe Rd, Ste 1,
  updated_at: 2020-04-13 21:05:09.000000000 Z
)
```

