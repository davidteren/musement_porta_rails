# OpenapiClient::MandatoryQuestion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_pattern** | **String** | For unsupported data types, suppliers can provide a regular expression validation pattern. The &#x60;data_type&#x60; property must be &#x60;STRING&#x60; to use this feature. | [optional] |
| **data_type** | **String** | The type of data the question will collect. |  |
| **holder_category_id** | **String** | The holder category associated with the question. When &#x60;null&#x60;, the question is applied to all holder categories. | [optional] |
| **level** | **String** | The level determines how to request the question: once per booking or once per person in a booking. |  |
| **mandatory_question_id** | **String** | The mandatory question ID, assigned by the supplier. |  |
| **option_id** | **String** | The option associated with the question. When &#x60;null&#x60;, the question is applied to all options. | [optional] |
| **question** | **String** | The human-friendly question to show customers. |  |
| **select** | **Hash&lt;String, String&gt;** | When the &#x60;data_type&#x60; property is &#x60;SELECT_ONE&#x60;, use the &#x60;select&#x60; property to provide options for customers to select. The property value must be a key-value object of strings. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MandatoryQuestion.new(
  data_pattern: null,
  data_type: null,
  holder_category_id: null,
  level: null,
  mandatory_question_id: null,
  option_id: null,
  question: null,
  select: null
)
```

