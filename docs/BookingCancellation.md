# OpenapiClient::BookingCancellation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **booking_id** | **String** | The ID of the booking to cancel. |  |
| **ticket_numbers** | **Array&lt;String&gt;** | A list of ticket values issued by the original booking confirmation response. |  |
| **transaction_id** | **String** | The ID issued by the original booking confirmation response. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BookingCancellation.new(
  booking_id: null,
  ticket_numbers: null,
  transaction_id: null
)
```

