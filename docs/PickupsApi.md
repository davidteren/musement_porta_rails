# OpenapiClient::PickupsApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_catalog_pickups_pickup_id**](PickupsApi.md#delete_catalog_pickups_pickup_id) | **DELETE** /supplier/catalog/pickups/{pickup_id} | Remove pickup |
| [**get_catalog_pickups**](PickupsApi.md#get_catalog_pickups) | **GET** /supplier/catalog/pickups | Get pickups |
| [**get_catalog_pickups_pickup_id**](PickupsApi.md#get_catalog_pickups_pickup_id) | **GET** /supplier/catalog/pickups/{pickup_id} | Get pickup |
| [**post_catalog_pickups**](PickupsApi.md#post_catalog_pickups) | **POST** /supplier/catalog/pickups | Create pickup |


## delete_catalog_pickups_pickup_id

> delete_catalog_pickups_pickup_id(accept, accept_version, pickup_id)

Remove pickup

A pickup point cannot be removed if it is part of an availability slot. Suppliers must remove the pickup point from all availability slots first.

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

api_instance = OpenapiClient::PickupsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
pickup_id = 'pickup_id_example' # String | The pickup ID.

begin
  # Remove pickup
  api_instance.delete_catalog_pickups_pickup_id(accept, accept_version, pickup_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PickupsApi->delete_catalog_pickups_pickup_id: #{e}"
end
```

#### Using the delete_catalog_pickups_pickup_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_catalog_pickups_pickup_id_with_http_info(accept, accept_version, pickup_id)

```ruby
begin
  # Remove pickup
  data, status_code, headers = api_instance.delete_catalog_pickups_pickup_id_with_http_info(accept, accept_version, pickup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PickupsApi->delete_catalog_pickups_pickup_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **pickup_id** | **String** | The pickup ID. |  |

### Return type

nil (empty response body)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_catalog_pickups

> <Array<Pickup>> get_catalog_pickups(accept, accept_version)

Get pickups

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

api_instance = OpenapiClient::PickupsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.

begin
  # Get pickups
  result = api_instance.get_catalog_pickups(accept, accept_version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PickupsApi->get_catalog_pickups: #{e}"
end
```

#### Using the get_catalog_pickups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Pickup>>, Integer, Hash)> get_catalog_pickups_with_http_info(accept, accept_version)

```ruby
begin
  # Get pickups
  data, status_code, headers = api_instance.get_catalog_pickups_with_http_info(accept, accept_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Pickup>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PickupsApi->get_catalog_pickups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |

### Return type

[**Array&lt;Pickup&gt;**](Pickup.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_catalog_pickups_pickup_id

> <Pickup> get_catalog_pickups_pickup_id(accept, accept_version, pickup_id)

Get pickup

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

api_instance = OpenapiClient::PickupsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
pickup_id = 'pickup_id_example' # String | The pickup ID.

begin
  # Get pickup
  result = api_instance.get_catalog_pickups_pickup_id(accept, accept_version, pickup_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PickupsApi->get_catalog_pickups_pickup_id: #{e}"
end
```

#### Using the get_catalog_pickups_pickup_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pickup>, Integer, Hash)> get_catalog_pickups_pickup_id_with_http_info(accept, accept_version, pickup_id)

```ruby
begin
  # Get pickup
  data, status_code, headers = api_instance.get_catalog_pickups_pickup_id_with_http_info(accept, accept_version, pickup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pickup>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PickupsApi->get_catalog_pickups_pickup_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **pickup_id** | **String** | The pickup ID. |  |

### Return type

[**Pickup**](Pickup.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_catalog_pickups

> <Pickup> post_catalog_pickups(accept, accept_version, opts)

Create pickup

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

api_instance = OpenapiClient::PickupsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
opts = {
  pickup: OpenapiClient::Pickup.new({name: 'name_example', type: 'HOTEL', pickup_id: 'pickup_id_example'}) # Pickup | 
}

begin
  # Create pickup
  result = api_instance.post_catalog_pickups(accept, accept_version, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PickupsApi->post_catalog_pickups: #{e}"
end
```

#### Using the post_catalog_pickups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pickup>, Integer, Hash)> post_catalog_pickups_with_http_info(accept, accept_version, opts)

```ruby
begin
  # Create pickup
  data, status_code, headers = api_instance.post_catalog_pickups_with_http_info(accept, accept_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pickup>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PickupsApi->post_catalog_pickups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **pickup** | [**Pickup**](Pickup.md) |  | [optional] |

### Return type

[**Pickup**](Pickup.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

