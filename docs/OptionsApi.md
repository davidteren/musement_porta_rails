# OpenapiClient::OptionsApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_catalog_experiences_experience_id_options_option_id**](OptionsApi.md#delete_catalog_experiences_experience_id_options_option_id) | **DELETE** /supplier/catalog/experiences/{experience_id}/options/{option_id} | Remove option from experience |
| [**post_catalog_experiences_experience_id_options**](OptionsApi.md#post_catalog_experiences_experience_id_options) | **POST** /supplier/catalog/experiences/{experience_id}/options | Create option for experience |
| [**put_catalog_experiences_experience_id_options_option_id**](OptionsApi.md#put_catalog_experiences_experience_id_options_option_id) | **PUT** /supplier/catalog/experiences/{experience_id}/options/{option_id} | Update option for experience |


## delete_catalog_experiences_experience_id_options_option_id

> delete_catalog_experiences_experience_id_options_option_id(accept, accept_version, experience_id, option_id)

Remove option from experience

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

api_instance = OpenapiClient::OptionsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.

begin
  # Remove option from experience
  api_instance.delete_catalog_experiences_experience_id_options_option_id(accept, accept_version, experience_id, option_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionsApi->delete_catalog_experiences_experience_id_options_option_id: #{e}"
end
```

#### Using the delete_catalog_experiences_experience_id_options_option_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_catalog_experiences_experience_id_options_option_id_with_http_info(accept, accept_version, experience_id, option_id)

```ruby
begin
  # Remove option from experience
  data, status_code, headers = api_instance.delete_catalog_experiences_experience_id_options_option_id_with_http_info(accept, accept_version, experience_id, option_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionsApi->delete_catalog_experiences_experience_id_options_option_id_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_catalog_experiences_experience_id_options

> <Option> post_catalog_experiences_experience_id_options(accept, accept_version, experience_id, opts)

Create option for experience

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

api_instance = OpenapiClient::OptionsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
opts = {
  option: OpenapiClient::Option.new({holder_categories: [OpenapiClient::HolderCategory.new({holder_category_id: 'holder_category_id_example', holder_type: 'ADULT', minimum_age: 37})], label: 'label_example', option_id: 'option_id_example'}) # Option | 
}

begin
  # Create option for experience
  result = api_instance.post_catalog_experiences_experience_id_options(accept, accept_version, experience_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionsApi->post_catalog_experiences_experience_id_options: #{e}"
end
```

#### Using the post_catalog_experiences_experience_id_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Option>, Integer, Hash)> post_catalog_experiences_experience_id_options_with_http_info(accept, accept_version, experience_id, opts)

```ruby
begin
  # Create option for experience
  data, status_code, headers = api_instance.post_catalog_experiences_experience_id_options_with_http_info(accept, accept_version, experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Option>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionsApi->post_catalog_experiences_experience_id_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **option** | [**Option**](Option.md) |  | [optional] |

### Return type

[**Option**](Option.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_catalog_experiences_experience_id_options_option_id

> <Option> put_catalog_experiences_experience_id_options_option_id(accept, accept_version, experience_id, option_id, opts)

Update option for experience

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

api_instance = OpenapiClient::OptionsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
option_id = 'option_id_example' # String | The option ID.
opts = {
  option: OpenapiClient::Option.new({holder_categories: [OpenapiClient::HolderCategory.new({holder_category_id: 'holder_category_id_example', holder_type: 'ADULT', minimum_age: 37})], label: 'label_example', option_id: 'option_id_example'}) # Option | 
}

begin
  # Update option for experience
  result = api_instance.put_catalog_experiences_experience_id_options_option_id(accept, accept_version, experience_id, option_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionsApi->put_catalog_experiences_experience_id_options_option_id: #{e}"
end
```

#### Using the put_catalog_experiences_experience_id_options_option_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Option>, Integer, Hash)> put_catalog_experiences_experience_id_options_option_id_with_http_info(accept, accept_version, experience_id, option_id, opts)

```ruby
begin
  # Update option for experience
  data, status_code, headers = api_instance.put_catalog_experiences_experience_id_options_option_id_with_http_info(accept, accept_version, experience_id, option_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Option>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OptionsApi->put_catalog_experiences_experience_id_options_option_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **option_id** | **String** | The option ID. |  |
| **option** | [**Option**](Option.md) |  | [optional] |

### Return type

[**Option**](Option.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

