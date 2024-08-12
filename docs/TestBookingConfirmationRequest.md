# OpenapiClient::TestBookingConfirmationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **booking_id** | **String** | A randomly-generated UUID. The same &#x60;booking_id&#x60; value must be used when testing the booking cancellation webhook. |  |
| **booking_requests** | [**Array&lt;TestBookingConfirmationRequestBookingRequestsInner&gt;**](TestBookingConfirmationRequestBookingRequestsInner.md) | An array of items for the booking. |  |
| **hold_id** | **String** | The ID of the sandbox hold availability request. |  |
| **holder** | [**TestBookingConfirmationRequestHolder**](TestBookingConfirmationRequestHolder.md) |  |  |
| **pickup_id** | **String** | The ID of an existing sandbox pickup, if any.  Note that the location of this property differs from its location in the confirmation request sent to your webhook service.  | [optional] |
| **slot_id** | **String** | The ID of an existing sandbox availability slot.  Note that the location of this property differs from its location in the confirmation request sent to your webhook service.  |  |
| **request_id** | **String** | In production this property reflects PORTA&#39;s own ID for the item in the webhook request. Here, it can be a randomly-generated UUID. The same &#x60;request_id&#x60; value will appear in the request sent to the webhook service.  Note that the location of this property differs from its location in the confirmation request sent to your webhook service.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TestBookingConfirmationRequest.new(
  booking_id: null,
  booking_requests: null,
  hold_id: null,
  holder: null,
  pickup_id: null,
  slot_id: null,
  request_id: null
)
```

