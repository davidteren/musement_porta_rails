# OpenapiClient::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The internal code for the error. |  |
| **id** | **String** | The ID of the error to use for tracking. |  |
| **message** | **String** | A message with a brief explanation of the error. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ErrorResponse.new(
  code: null,
  id: null,
  message: null
)
```

