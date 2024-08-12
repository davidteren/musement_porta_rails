# OpenapiClient::AvailableHolderCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **holder_category_id** | **String** | The holder category ID, assigned by the supplier. |  |
| **max_quantity** | **Integer** | The maximum quantity allowed per booking. | [optional] |
| **min_quantity** | **Integer** | The minimum quantity required for a valid booking. | [optional] |
| **price_in_cents** | **Integer** | The holder category price in cents. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AvailableHolderCategory.new(
  holder_category_id: null,
  max_quantity: null,
  min_quantity: null,
  price_in_cents: null
)
```

