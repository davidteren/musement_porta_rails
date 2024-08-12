# OpenapiClient::AvailabilitySlotGeneric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_holder_categories** | [**Array&lt;AvailableHolderCategory&gt;**](AvailableHolderCategory.md) | Holder categories for the slot. |  |
| **guide_languages** | **Array&lt;String&gt;** | A list of languages which can be booked for the slot. The languages will appear for *all* available holder categories in the slot.  This property must follow the [ISO 639-1 standard](https://www.iso.org/iso-639-language-codes.html).  | [optional] |
| **option_id** | **String** | The ID of the option that the slot belongs to. |  |
| **slot_id** | **String** | The availability slot ID, assigned by the supplier.  The ID must be unique. The same ID cannot be re-used for different experiences.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AvailabilitySlotGeneric.new(
  available_holder_categories: null,
  guide_languages: null,
  option_id: null,
  slot_id: null
)
```

