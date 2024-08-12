# OpenapiClient::TestHoldAvailabilityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **experience_id** | **String** | The ID for an existing sandbox experience. |  |
| **expiration_time** | **Time** | When the hold availability request can expire, based on the agreed upon &#x60;hold_duration&#x60; value.  The value for this property must be in the local time for the experience with no time zone information, following the [ISO 8601 standard](https://www.iso.org/iso-8601-date-and-time-format.html).  |  |
| **hold_id** | **String** | A randomly-generated UUID. The same &#x60;hold_id&#x60; value must be used when testing the booking confirmation webhook. |  |
| **option_id** | **String** | The ID for an existing sandbox option. |  |
| **pickup_id** | **String** | The ID for an existing sandbox pickup, if any. | [optional] |
| **quantities** | [**Array&lt;TestHoldAvailabilityRequestQuantitiesInner&gt;**](TestHoldAvailabilityRequestQuantitiesInner.md) | An array of the requested holder categories and their quantities. |  |
| **slot_id** | **String** | The ID for an existing sandbox availability slot. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TestHoldAvailabilityRequest.new(
  experience_id: null,
  expiration_time: 2024-04-22T12:42:37Z,
  hold_id: null,
  option_id: null,
  pickup_id: null,
  quantities: null,
  slot_id: null
)
```

