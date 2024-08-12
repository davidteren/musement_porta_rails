# OpenapiClient::WebhooksApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_booking**](WebhooksApi.md#delete_booking) | **DELETE** /booking | Cancel booking |
| [**get_health**](WebhooksApi.md#get_health) | **GET** /health | Check webhook health |
| [**post_booking**](WebhooksApi.md#post_booking) | **POST** /booking | Confirm booking |
| [**post_hold**](WebhooksApi.md#post_hold) | **POST** /hold | Hold availability for booking |


## delete_booking

> delete_booking(accept_version, x_webhook_key, opts)

Cancel booking

This request is usually sent went a customer requests to cancel a booking. A cancellation request may also be sent when a booking confirmation request times out.  **Request endpoint**: `DELETE {supplier_url}/booking` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Webhook
  config.api_key['Webhook'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Webhook'] = 'Bearer'
end

api_instance = OpenapiClient::WebhooksApi.new
accept_version =  # String | The version of PORTA for the webhook request.
x_webhook_key =  # String | The key which allows the PORTA to access the supplier's webhook service.
opts = {
  post_integration_tests_cancel_booking_request:  # PostIntegrationTestsCancelBookingRequest | 
}

begin
  # Cancel booking
  api_instance.delete_booking(accept_version, x_webhook_key, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_booking: #{e}"
end
```

#### Using the delete_booking_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_booking_with_http_info(accept_version, x_webhook_key, opts)

```ruby
begin
  # Cancel booking
  data, status_code, headers = api_instance.delete_booking_with_http_info(accept_version, x_webhook_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_booking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_version** | **String** | The version of PORTA for the webhook request. |  |
| **x_webhook_key** | **String** | The key which allows the PORTA to access the supplier&#39;s webhook service. |  |
| **post_integration_tests_cancel_booking_request** | [**PostIntegrationTestsCancelBookingRequest**](PostIntegrationTestsCancelBookingRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Webhook](../README.md#Webhook)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_health

> get_health(accept_version, x_webhook_key)

Check webhook health

This request is sent approximately every five minutes to check the status of the supplier's webhook endpoint.  **Request endpoint**: `GET {supplier_url}/health` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Webhook
  config.api_key['Webhook'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Webhook'] = 'Bearer'
end

api_instance = OpenapiClient::WebhooksApi.new
accept_version =  # String | The version of PORTA for the webhook request.
x_webhook_key =  # String | The key which allows the PORTA to access the supplier's webhook service.

begin
  # Check webhook health
  api_instance.get_health(accept_version, x_webhook_key)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_health: #{e}"
end
```

#### Using the get_health_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_health_with_http_info(accept_version, x_webhook_key)

```ruby
begin
  # Check webhook health
  data, status_code, headers = api_instance.get_health_with_http_info(accept_version, x_webhook_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_health_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_version** | **String** | The version of PORTA for the webhook request. |  |
| **x_webhook_key** | **String** | The key which allows the PORTA to access the supplier&#39;s webhook service. |  |

### Return type

nil (empty response body)

### Authorization

[Webhook](../README.md#Webhook)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_booking

> Object post_booking(accept_version, x_webhook_key, opts)

Confirm booking

This request is sent after a customer has successfully created an order for the Musement catalog.  **Request endpoint**: `POST {supplier_url}/booking` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Webhook
  config.api_key['Webhook'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Webhook'] = 'Bearer'
end

api_instance = OpenapiClient::WebhooksApi.new
accept_version =  # String | The version of PORTA for the webhook request.
x_webhook_key =  # String | The key which allows the PORTA to access the supplier's webhook service.
opts = {
  unknown_base_type:  # UNKNOWN_BASE_TYPE | 
}

begin
  # Confirm booking
  result = api_instance.post_booking(accept_version, x_webhook_key, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->post_booking: #{e}"
end
```

#### Using the post_booking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_booking_with_http_info(accept_version, x_webhook_key, opts)

```ruby
begin
  # Confirm booking
  data, status_code, headers = api_instance.post_booking_with_http_info(accept_version, x_webhook_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->post_booking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_version** | **String** | The version of PORTA for the webhook request. |  |
| **x_webhook_key** | **String** | The key which allows the PORTA to access the supplier&#39;s webhook service. |  |
| **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md) |  | [optional] |

### Return type

**Object**

### Authorization

[Webhook](../README.md#Webhook)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_hold

> Object post_hold(accept_version, x_webhook_key, opts)

Hold availability for booking

A hold availability request is sent when a customer adds an item to their cart before payment. A successful response means the availability is guaranteed for the `hold_duration` value decided in the supplier's contract.  **Request endpoint**: `POST {supplier_url}/hold` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Webhook
  config.api_key['Webhook'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Webhook'] = 'Bearer'
end

api_instance = OpenapiClient::WebhooksApi.new
accept_version =  # String | The version of PORTA for the webhook request.
x_webhook_key =  # String | The key which allows the PORTA to access the supplier's webhook service.
opts = {
  unknown_base_type:  # UNKNOWN_BASE_TYPE | 
}

begin
  # Hold availability for booking
  result = api_instance.post_hold(accept_version, x_webhook_key, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->post_hold: #{e}"
end
```

#### Using the post_hold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_hold_with_http_info(accept_version, x_webhook_key, opts)

```ruby
begin
  # Hold availability for booking
  data, status_code, headers = api_instance.post_hold_with_http_info(accept_version, x_webhook_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->post_hold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_version** | **String** | The version of PORTA for the webhook request. |  |
| **x_webhook_key** | **String** | The key which allows the PORTA to access the supplier&#39;s webhook service. |  |
| **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md) |  | [optional] |

### Return type

**Object**

### Authorization

[Webhook](../README.md#Webhook)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

