# OpenapiClient::Pickup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The human-friendly name for the pickup. |  |
| **type** | **String** | The type of pickup. |  |
| **latitude** | **Float** | The latitude value for the pickup location. This value may be omitted. | [optional] |
| **longitude** | **Float** | The longitude value for the pickup location. This value may be omitted. | [optional] |
| **pickup_id** | **String** | The pickup ID, assigned by the supplier. |  |
| **time_margin** | **Integer** | The number of minutes a pickup will occur before or after a time slot. This property accepts both positive and negative values.  A negative value indicates the pickup arrives *before* the time slot.  A positive value indicates the pickup arrives *after* the time slot.  | [optional][default to 0] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Pickup.new(
  name: null,
  type: null,
  latitude: null,
  longitude: null,
  pickup_id: null,
  time_margin: null
)
```

