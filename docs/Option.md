# OpenapiClient::Option

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **holder_categories** | [**Array&lt;HolderCategory&gt;**](HolderCategory.md) | The holder categories for the option. |  |
| **label** | **String** | The human-friendly label for the option. |  |
| **main_option** | **Boolean** | When &#x60;true&#x60;, the main option appears first in the list of options.  If no option is defined as the default, then the first option is automatically made the default.  | [optional] |
| **max_booking_quantity** | **Integer** | The maximum quantity allowed per booking. | [optional] |
| **min_booking_quantity** | **Integer** | The minimum quantity required for a valid booking. | [optional] |
| **option_id** | **String** | The option ID, assigned by the supplier. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Option.new(
  holder_categories: null,
  label: null,
  main_option: null,
  max_booking_quantity: null,
  min_booking_quantity: null,
  option_id: null
)
```

