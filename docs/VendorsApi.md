# OpenapiClient::VendorsApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_vendors**](VendorsApi.md#get_vendors) | **GET** /supplier/vendors | Get vendors |
| [**post_vendors**](VendorsApi.md#post_vendors) | **POST** /supplier/vendors | Create vendor |


## get_vendors

> <Array<Vendor>> get_vendors(accept, accept_version)

Get vendors

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

api_instance = OpenapiClient::VendorsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.

begin
  # Get vendors
  result = api_instance.get_vendors(accept, accept_version)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendors: #{e}"
end
```

#### Using the get_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Vendor>>, Integer, Hash)> get_vendors_with_http_info(accept, accept_version)

```ruby
begin
  # Get vendors
  data, status_code, headers = api_instance.get_vendors_with_http_info(accept, accept_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Vendor>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VendorsApi->get_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |

### Return type

[**Array&lt;Vendor&gt;**](Vendor.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_vendors

> <Vendor> post_vendors(accept, accept_version, opts)

Create vendor

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

api_instance = OpenapiClient::VendorsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
opts = {
  vendor: OpenapiClient::Vendor.new({name: 'name_example', vendor_id: 'vendor_id_example'}) # Vendor | 
}

begin
  # Create vendor
  result = api_instance.post_vendors(accept, accept_version, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VendorsApi->post_vendors: #{e}"
end
```

#### Using the post_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Vendor>, Integer, Hash)> post_vendors_with_http_info(accept, accept_version, opts)

```ruby
begin
  # Create vendor
  data, status_code, headers = api_instance.post_vendors_with_http_info(accept, accept_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Vendor>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VendorsApi->post_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **vendor** | [**Vendor**](Vendor.md) |  | [optional] |

### Return type

[**Vendor**](Vendor.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

