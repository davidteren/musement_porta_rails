# OpenapiClient::HolderCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_category** | **Boolean** | When &#x60;true&#x60; the holder category appears first in lists.  If no holder category is defined as the default, then the holder category with a &#x60;holder_type&#x60; value of &#x60;ADULT&#x60; is automatically made the default. If no adult holder categories are available, then the first holder category is automatically made the default.  | [optional] |
| **holder_category_id** | **String** | The holder category ID, assigned by the supplier. |  |
| **holder_type** | **String** | The type of holder category.  Please note that usage of the &#x60;CUSTOM*&#x60; holder type requires approval from the PORTA team.  |  |
| **maximum_age** | **Integer** | The maximum age customers can have to qualify for the holder category. | [optional] |
| **minimum_age** | **Integer** | The minimum age customers must have to qualify for the holder category. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::HolderCategory.new(
  default_category: null,
  holder_category_id: null,
  holder_type: null,
  maximum_age: null,
  minimum_age: null
)
```

