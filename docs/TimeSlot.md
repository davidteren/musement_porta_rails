# OpenapiClient::TimeSlot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Time** | The date and time the experience ends. If the experience duration is not well defined, suppliers can use the same value as the &#x60;start&#x60; property.  The value for this property must be in the local time for the experience with no time zone information, following the [ISO 8601 standard](https://www.iso.org/iso-8601-date-and-time-format.html).  |  |
| **pickup_ids** | **Array&lt;String&gt;** | A list of IDs for pickups available for this time slot. | [optional] |
| **start** | **Time** | The date and time the experience starts.  The value for this property must be in the local time for the experience with no time zone information, following the [ISO 8601 standard](https://www.iso.org/iso-8601-date-and-time-format.html).  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TimeSlot.new(
  _end: 2023-04-22T20:00:00Z,
  pickup_ids: null,
  start: 2023-04-22T18:00:00Z
)
```

