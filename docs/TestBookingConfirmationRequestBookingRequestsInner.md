# OpenapiClient::TestBookingConfirmationRequestBookingRequestsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **holder_category_id** | **String** | The ID of a sandbox holder category. |  |
| **mandatory_answers** | [**Array&lt;TestBookingConfirmationRequestBookingRequestsInnerMandatoryAnswersInner&gt;**](TestBookingConfirmationRequestBookingRequestsInnerMandatoryAnswersInner.md) | An array of customer answers to any mandatory questions for the sandbox experience and/or option. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TestBookingConfirmationRequestBookingRequestsInner.new(
  holder_category_id: null,
  mandatory_answers: null
)
```

