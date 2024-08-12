# OpenapiClient::BookingCancellationTimeout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **booking_id** | **String** | The ID of the booking to cancel. |  |
| **ticket_numbers** | **Array&lt;String&gt;** | A list of ticket values issued by the original booking confirmation response. |  |
| **transaction_id** | **String** | The ID issued by the original booking confirmation response. |  |
| **unconfirmed** | **Boolean** | When present, the original booking confirmation request timed out. When this happens, the booking is no longer considered valid and suppliers are required to cancel the confirmation request regardless of the experience&#39;s cancellation policy. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BookingCancellationTimeout.new(
  booking_id: null,
  ticket_numbers: null,
  transaction_id: null,
  unconfirmed: null
)
```

