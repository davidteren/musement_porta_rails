# OpenapiClient::WebhookTestsApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_integration_tests_book**](WebhookTestsApi.md#post_integration_tests_book) | **POST** /supplier/integration-tests/book | Test booking confirmation |
| [**post_integration_tests_cancel_booking**](WebhookTestsApi.md#post_integration_tests_cancel_booking) | **POST** /supplier/integration-tests/cancel-booking | Test booking cancellation |
| [**post_integration_tests_hold**](WebhookTestsApi.md#post_integration_tests_hold) | **POST** /supplier/integration-tests/hold | Test hold availability |


## post_integration_tests_book

> post_integration_tests_book(accept, accept_version, opts)

Test booking confirmation

Send a booking confirmation request in the sandbox environment to test your integration. This request format differs from what is eventually sent to the webhook service. The final request will also contain a randomly-generated `tuimm_booking_id` property.  The response will be the response from your webhook service. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: Supplier-sandbox
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::WebhookTestsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
opts = {
  test_booking_confirmation_request: OpenapiClient::TestBookingConfirmationRequest.new({booking_id: 'booking_id_example', booking_requests: [OpenapiClient::TestBookingConfirmationRequestBookingRequestsInner.new({holder_category_id: 'holder_category_id_example'})], hold_id: 'hold_id_example', holder: OpenapiClient::TestBookingConfirmationRequestHolder.new({email: 'email_example', first_name: 'first_name_example', last_name: 'last_name_example'}), slot_id: 'slot_id_example', request_id: 'request_id_example'}) # TestBookingConfirmationRequest | 
}

begin
  # Test booking confirmation
  api_instance.post_integration_tests_book(accept, accept_version, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookTestsApi->post_integration_tests_book: #{e}"
end
```

#### Using the post_integration_tests_book_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_integration_tests_book_with_http_info(accept, accept_version, opts)

```ruby
begin
  # Test booking confirmation
  data, status_code, headers = api_instance.post_integration_tests_book_with_http_info(accept, accept_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookTestsApi->post_integration_tests_book_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **test_booking_confirmation_request** | [**TestBookingConfirmationRequest**](TestBookingConfirmationRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_integration_tests_cancel_booking

> post_integration_tests_cancel_booking(accept, accept_version, opts)

Test booking cancellation

Send a booking cancellation request in the sandbox environment to test your integration. The response will be the response from your webhook service.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: Supplier-sandbox
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::WebhookTestsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
opts = {
  post_integration_tests_cancel_booking_request: OpenapiClient::BookingCancellation.new({booking_id: 'booking_id_example', ticket_numbers: ['ticket_numbers_example'], transaction_id: 'transaction_id_example'}) # PostIntegrationTestsCancelBookingRequest | 
}

begin
  # Test booking cancellation
  api_instance.post_integration_tests_cancel_booking(accept, accept_version, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookTestsApi->post_integration_tests_cancel_booking: #{e}"
end
```

#### Using the post_integration_tests_cancel_booking_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_integration_tests_cancel_booking_with_http_info(accept, accept_version, opts)

```ruby
begin
  # Test booking cancellation
  data, status_code, headers = api_instance.post_integration_tests_cancel_booking_with_http_info(accept, accept_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookTestsApi->post_integration_tests_cancel_booking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **post_integration_tests_cancel_booking_request** | [**PostIntegrationTestsCancelBookingRequest**](PostIntegrationTestsCancelBookingRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_integration_tests_hold

> post_integration_tests_hold(accept, accept_version, opts)

Test hold availability

Send a hold availability request in the sandbox environment to test your integration. The response will be the response from your webhook service.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: Supplier-sandbox
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::WebhookTestsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
opts = {
  test_hold_availability_request: OpenapiClient::TestHoldAvailabilityRequest.new({experience_id: 'experience_id_example', expiration_time: Time.parse('2024-04-22T12:42:37Z'), hold_id: 'hold_id_example', option_id: 'option_id_example', quantities: [OpenapiClient::TestHoldAvailabilityRequestQuantitiesInner.new({holder_category_id: 'holder_category_id_example', quantity: 37})], slot_id: 'slot_id_example'}) # TestHoldAvailabilityRequest | 
}

begin
  # Test hold availability
  api_instance.post_integration_tests_hold(accept, accept_version, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookTestsApi->post_integration_tests_hold: #{e}"
end
```

#### Using the post_integration_tests_hold_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_integration_tests_hold_with_http_info(accept, accept_version, opts)

```ruby
begin
  # Test hold availability
  data, status_code, headers = api_instance.post_integration_tests_hold_with_http_info(accept, accept_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookTestsApi->post_integration_tests_hold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **test_hold_availability_request** | [**TestHoldAvailabilityRequest**](TestHoldAvailabilityRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

