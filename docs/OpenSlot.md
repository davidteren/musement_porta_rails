# OpenapiClient::OpenSlot

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::OpenSlot.openapi_one_of
# =>
# [
#   :'DurationDays',
#   :'EndDate'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::OpenSlot.build(data)
# => #<DurationDays:0x00007fdd4aab02a0>

OpenapiClient::OpenSlot.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DurationDays`
- `EndDate`
- `nil` (if no type matches)

