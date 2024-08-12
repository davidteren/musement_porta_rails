# OpenapiClient::ExperienceUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archived** | **Boolean** | When an experience is archived, it is no longer for sale in Musement sites.  When an experience is un-archived, a member of the *Content Supplier Connectivity* team is required to un-archive the corresponding business platform activity.  | [optional][default to false] |
| **cutoff_time** | **String** | The minimum amount of time required to book a travel date in advance.  This property must follow the [ISO 8601 standard](https://www.iso.org/iso-8601-date-and-time-format.html).  | [optional][default to &#39;P0D&#39;] |
| **experience_name** | **String** | The name of the experience as it will appear in PORTA. | [optional] |
| **external_experience_id** | **String** | An additional ID for the experience which suppliers can use for their own records. | [optional] |
| **external_experience_name** | **String** | An additional name for the experience which suppliers can use for their own records. | [optional] |
| **vendor_id** | **String** | The ID of the vendor that the experience belongs to. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExperienceUpdateRequest.new(
  archived: null,
  cutoff_time: null,
  experience_name: null,
  external_experience_id: null,
  external_experience_name: null,
  vendor_id: null
)
```

