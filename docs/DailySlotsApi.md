# OpenapiClient::DailySlotsApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_availability_experiences_experience_id_options_option_id_slots_daily_slots**](DailySlotsApi.md#get_availability_experiences_experience_id_options_option_id_slots_daily_slots) | **GET** /supplier/availability/experiences/{experience_id}/options/{option_id}/slots/daily_slots | Get daily slots for option |


## get_availability_experiences_experience_id_options_option_id_slots_daily_slots

> <Array<AvailabilitySlotDaily>> get_availability_experiences_experience_id_options_option_id_slots_daily_slots(accept, accept_version, experience_id, option_id, date_from, date_to)

Get daily slots for option

The `date_from` and `date_to` query parameters permit up to two years of dates.

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

api_instance = OpenapiClient::DailySlotsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.
date_from = Date.parse('2013-10-20') # Date | Filters results to those which take place on or after the specified date.
date_to = Date.parse('2013-10-20') # Date | Filters results to those which take place on or before the specified date.

begin
  # Get daily slots for option
  result = api_instance.get_availability_experiences_experience_id_options_option_id_slots_daily_slots(accept, accept_version, experience_id, option_id, date_from, date_to)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DailySlotsApi->get_availability_experiences_experience_id_options_option_id_slots_daily_slots: #{e}"
end
```

#### Using the get_availability_experiences_experience_id_options_option_id_slots_daily_slots_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AvailabilitySlotDaily>>, Integer, Hash)> get_availability_experiences_experience_id_options_option_id_slots_daily_slots_with_http_info(accept, accept_version, experience_id, option_id, date_from, date_to)

```ruby
begin
  # Get daily slots for option
  data, status_code, headers = api_instance.get_availability_experiences_experience_id_options_option_id_slots_daily_slots_with_http_info(accept, accept_version, experience_id, option_id, date_from, date_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AvailabilitySlotDaily>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DailySlotsApi->get_availability_experiences_experience_id_options_option_id_slots_daily_slots_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **option_id** | **String** | The option ID. |  |
| **date_from** | **Date** | Filters results to those which take place on or after the specified date. |  |
| **date_to** | **Date** | Filters results to those which take place on or before the specified date. |  |

### Return type

[**Array&lt;AvailabilitySlotDaily&gt;**](AvailabilitySlotDaily.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

