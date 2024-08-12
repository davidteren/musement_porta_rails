# OpenapiClient::AvailabilitySlotsApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_availability_experiences_experience_id_options_option_id_slots**](AvailabilitySlotsApi.md#delete_availability_experiences_experience_id_options_option_id_slots) | **DELETE** /supplier/availability/experiences/{experience_id}/options/{option_id}/slots | Remove availability slots from option |
| [**delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id**](AvailabilitySlotsApi.md#delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id) | **DELETE** /supplier/availability/experiences/{experience_id}/options/{option_id}/slots/{availability_slot_id} | Remove availability slot from option |
| [**get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id**](AvailabilitySlotsApi.md#get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id) | **GET** /supplier/availability/experiences/{experience_id}/options/{option_id}/slots/{availability_slot_id} | Get availability slot for option |
| [**patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id**](AvailabilitySlotsApi.md#patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id) | **PATCH** /supplier/availability/experiences/{experience_id}/options/{option_id}/slots/{availability_slot_id} | Update capacity for availability slot |
| [**post_availability_experiences_experience_id_options_option_id_slots**](AvailabilitySlotsApi.md#post_availability_experiences_experience_id_options_option_id_slots) | **POST** /supplier/availability/experiences/{experience_id}/options/{option_id}/slots | Create availability slots for experience |
| [**put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id**](AvailabilitySlotsApi.md#put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id) | **PUT** /supplier/availability/experiences/{experience_id}/options/{option_id}/slots/{availability_slot_id} | Update availability slot for option |


## delete_availability_experiences_experience_id_options_option_id_slots

> delete_availability_experiences_experience_id_options_option_id_slots(accept, accept_version, api_key, experience_id, option_id)

Remove availability slots from option

An availability slot cannot be deleted if it is part of a hold availability request.

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

api_instance = OpenapiClient::AvailabilitySlotsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
api_key = 'api_key_example' # String | The supplier's API key
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.

begin
  # Remove availability slots from option
  api_instance.delete_availability_experiences_experience_id_options_option_id_slots(accept, accept_version, api_key, experience_id, option_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->delete_availability_experiences_experience_id_options_option_id_slots: #{e}"
end
```

#### Using the delete_availability_experiences_experience_id_options_option_id_slots_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_availability_experiences_experience_id_options_option_id_slots_with_http_info(accept, accept_version, api_key, experience_id, option_id)

```ruby
begin
  # Remove availability slots from option
  data, status_code, headers = api_instance.delete_availability_experiences_experience_id_options_option_id_slots_with_http_info(accept, accept_version, api_key, experience_id, option_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->delete_availability_experiences_experience_id_options_option_id_slots_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **api_key** | **String** | The supplier&#39;s API key |  |
| **experience_id** | **String** | The experience ID. |  |
| **option_id** | **String** | The option ID. |  |

### Return type

nil (empty response body)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id

> delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id(accept, accept_version, experience_id, option_id, availability_slot_id)

Remove availability slot from option

An availability slot cannot be deleted if it is part of a hold availability request.

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

api_instance = OpenapiClient::AvailabilitySlotsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.
availability_slot_id = 'availability_slot_id_example' # String | The availability slot ID.

begin
  # Remove availability slot from option
  api_instance.delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id(accept, accept_version, experience_id, option_id, availability_slot_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id: #{e}"
end
```

#### Using the delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info(accept, accept_version, experience_id, option_id, availability_slot_id)

```ruby
begin
  # Remove availability slot from option
  data, status_code, headers = api_instance.delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info(accept, accept_version, experience_id, option_id, availability_slot_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->delete_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **option_id** | **String** | The option ID. |  |
| **availability_slot_id** | **String** | The availability slot ID. |  |

### Return type

nil (empty response body)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id

> <AvailabilitySlot> get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id(accept, accept_version, experience_id, option_id, availability_slot_id)

Get availability slot for option

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

api_instance = OpenapiClient::AvailabilitySlotsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.
availability_slot_id = 'availability_slot_id_example' # String | The availability slot ID.

begin
  # Get availability slot for option
  result = api_instance.get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id(accept, accept_version, experience_id, option_id, availability_slot_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id: #{e}"
end
```

#### Using the get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilitySlot>, Integer, Hash)> get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info(accept, accept_version, experience_id, option_id, availability_slot_id)

```ruby
begin
  # Get availability slot for option
  data, status_code, headers = api_instance.get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info(accept, accept_version, experience_id, option_id, availability_slot_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilitySlot>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->get_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **option_id** | **String** | The option ID. |  |
| **availability_slot_id** | **String** | The availability slot ID. |  |

### Return type

[**AvailabilitySlot**](AvailabilitySlot.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id

> <AvailabilitySlot> patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id(accept, accept_version, experience_id, option_id, availability_slot_id, opts)

Update capacity for availability slot

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

api_instance = OpenapiClient::AvailabilitySlotsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.
availability_slot_id = 'availability_slot_id_example' # String | The availability slot ID.
opts = {
  patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_request: OpenapiClient::PatchAvailabilityExperiencesExperienceIdOptionsOptionIdSlotsAvailabilitySlotIdRequest.new # PatchAvailabilityExperiencesExperienceIdOptionsOptionIdSlotsAvailabilitySlotIdRequest | 
}

begin
  # Update capacity for availability slot
  result = api_instance.patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id(accept, accept_version, experience_id, option_id, availability_slot_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id: #{e}"
end
```

#### Using the patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilitySlot>, Integer, Hash)> patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info(accept, accept_version, experience_id, option_id, availability_slot_id, opts)

```ruby
begin
  # Update capacity for availability slot
  data, status_code, headers = api_instance.patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info(accept, accept_version, experience_id, option_id, availability_slot_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilitySlot>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **option_id** | **String** | The option ID. |  |
| **availability_slot_id** | **String** | The availability slot ID. |  |
| **patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_request** | [**PatchAvailabilityExperiencesExperienceIdOptionsOptionIdSlotsAvailabilitySlotIdRequest**](PatchAvailabilityExperiencesExperienceIdOptionsOptionIdSlotsAvailabilitySlotIdRequest.md) |  | [optional] |

### Return type

[**AvailabilitySlot**](AvailabilitySlot.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_availability_experiences_experience_id_options_option_id_slots

> <AvailabilitySlot> post_availability_experiences_experience_id_options_option_id_slots(accept, accept_version, api_key, experience_id, option_id, opts)

Create availability slots for experience

The maximum number of items in the request body varies based on the type of availability slot:    * Daily slot: 100   * Open slot: 1   * Time slot: 100 

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

api_instance = OpenapiClient::AvailabilitySlotsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
api_key = 'api_key_example' # String | The supplier's API key
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.
opts = {
  availability_slot: [OpenapiClient::AvailabilitySlot.new({available_holder_categories: [OpenapiClient::AvailableHolderCategory.new({holder_category_id: 'holder_category_id_example', price_in_cents: 3.56})], option_id: 'option_id_example', slot_id: 'slot_id_example', daily_slot: OpenapiClient::DailySlot.new({date: Date.today}), open_slot: OpenapiClient::DurationDays.new({duration_days: 37, type: 'DURATION_DAYS'}), time_slot: OpenapiClient::TimeSlot.new({_end: Time.parse('2023-04-22T20:00:00Z'), start: Time.parse('2023-04-22T18:00:00Z')})})] # Array<AvailabilitySlot> | 
}

begin
  # Create availability slots for experience
  result = api_instance.post_availability_experiences_experience_id_options_option_id_slots(accept, accept_version, api_key, experience_id, option_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->post_availability_experiences_experience_id_options_option_id_slots: #{e}"
end
```

#### Using the post_availability_experiences_experience_id_options_option_id_slots_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilitySlot>, Integer, Hash)> post_availability_experiences_experience_id_options_option_id_slots_with_http_info(accept, accept_version, api_key, experience_id, option_id, opts)

```ruby
begin
  # Create availability slots for experience
  data, status_code, headers = api_instance.post_availability_experiences_experience_id_options_option_id_slots_with_http_info(accept, accept_version, api_key, experience_id, option_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilitySlot>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->post_availability_experiences_experience_id_options_option_id_slots_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **api_key** | **String** | The supplier&#39;s API key |  |
| **experience_id** | **String** | The experience ID. |  |
| **option_id** | **String** | The option ID. |  |
| **availability_slot** | [**Array&lt;AvailabilitySlot&gt;**](AvailabilitySlot.md) |  | [optional] |

### Return type

[**AvailabilitySlot**](AvailabilitySlot.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id

> <AvailabilitySlot> put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id(accept, accept_version, experience_id, option_id, availability_slot_id, opts)

Update availability slot for option

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

api_instance = OpenapiClient::AvailabilitySlotsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.
availability_slot_id = 'availability_slot_id_example' # String | The availability slot ID.
opts = {
  availability_slot: OpenapiClient::AvailabilitySlot.new({available_holder_categories: [OpenapiClient::AvailableHolderCategory.new({holder_category_id: 'holder_category_id_example', price_in_cents: 3.56})], option_id: 'option_id_example', slot_id: 'slot_id_example', daily_slot: OpenapiClient::DailySlot.new({date: Date.today}), open_slot: OpenapiClient::DurationDays.new({duration_days: 37, type: 'DURATION_DAYS'}), time_slot: OpenapiClient::TimeSlot.new({_end: Time.parse('2023-04-22T20:00:00Z'), start: Time.parse('2023-04-22T18:00:00Z')})}) # AvailabilitySlot | 
}

begin
  # Update availability slot for option
  result = api_instance.put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id(accept, accept_version, experience_id, option_id, availability_slot_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id: #{e}"
end
```

#### Using the put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilitySlot>, Integer, Hash)> put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info(accept, accept_version, experience_id, option_id, availability_slot_id, opts)

```ruby
begin
  # Update availability slot for option
  data, status_code, headers = api_instance.put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info(accept, accept_version, experience_id, option_id, availability_slot_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilitySlot>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AvailabilitySlotsApi->put_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **option_id** | **String** | The option ID. |  |
| **availability_slot_id** | **String** | The availability slot ID. |  |
| **availability_slot** | [**AvailabilitySlot**](AvailabilitySlot.md) |  | [optional] |

### Return type

[**AvailabilitySlot**](AvailabilitySlot.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

