# OpenapiClient::TestHoldAvailabilityRequestQuantitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **holder_category_id** | **String** | The ID for an existing sandbox holder category. |  |
| **guide_language** | **String** | The requested language.  This property must follow the [ISO 639-1 standard](https://www.iso.org/iso-639-language-codes.html).  | [optional] |
| **quantity** | **Integer** | The quantity of pax. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TestHoldAvailabilityRequestQuantitiesInner.new(
  holder_category_id: null,
  guide_language: null,
  quantity: null
)
```

