# OpenapiClient::OpenSlotsApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_availability_experiences_experience_id_options_option_id_slots_open_slots**](OpenSlotsApi.md#get_availability_experiences_experience_id_options_option_id_slots_open_slots) | **GET** /supplier/availability/experiences/{experience_id}/options/{option_id}/slots/open_slots | Get open slot for option |


## get_availability_experiences_experience_id_options_option_id_slots_open_slots

> <AvailabilityOpenSlot> get_availability_experiences_experience_id_options_option_id_slots_open_slots(accept, accept_version, experience_id, option_id)

Get open slot for option

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: Supplier-sandbox
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: Supplier-production
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::OpenSlotsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.

begin
  # Get open slot for option
  result = api_instance.get_availability_experiences_experience_id_options_option_id_slots_open_slots(accept, accept_version, experience_id, option_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OpenSlotsApi->get_availability_experiences_experience_id_options_option_id_slots_open_slots: #{e}"
end
```

#### Using the get_availability_experiences_experience_id_options_option_id_slots_open_slots_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilityOpenSlot>, Integer, Hash)> get_availability_experiences_experience_id_options_option_id_slots_open_slots_with_http_info(accept, accept_version, experience_id, option_id)

```ruby
begin
  # Get open slot for option
  data, status_code, headers = api_instance.get_availability_experiences_experience_id_options_option_id_slots_open_slots_with_http_info(accept, accept_version, experience_id, option_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilityOpenSlot>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OpenSlotsApi->get_availability_experiences_experience_id_options_option_id_slots_open_slots_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **option_id** | **String** | The option ID. |  |

### Return type

[**AvailabilityOpenSlot**](AvailabilityOpenSlot.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

