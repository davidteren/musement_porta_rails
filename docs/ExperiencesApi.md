# OpenapiClient::ExperiencesApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_catalog_experiences**](ExperiencesApi.md#get_catalog_experiences) | **GET** /supplier/catalog/experiences | Get experiences |
| [**get_catalog_experiences_experience_id**](ExperiencesApi.md#get_catalog_experiences_experience_id) | **GET** /supplier/catalog/experiences/{experience_id} | Get experience |
| [**patch_catalog_experiences_experience_id**](ExperiencesApi.md#patch_catalog_experiences_experience_id) | **PATCH** /supplier/catalog/experiences/{experience_id} | Update experience |
| [**post_catalog_experiences**](ExperiencesApi.md#post_catalog_experiences) | **POST** /supplier/catalog/experiences | Create experience |


## get_catalog_experiences

> <Array<Experience>> get_catalog_experiences(accept, accept_version, opts)

Get experiences

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

api_instance = OpenapiClient::ExperiencesApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
opts = {
  vendor_id: 'vendor_id_example' # String | Filter results to those which belong to the specified vendor.
}

begin
  # Get experiences
  result = api_instance.get_catalog_experiences(accept, accept_version, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExperiencesApi->get_catalog_experiences: #{e}"
end
```

#### Using the get_catalog_experiences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Experience>>, Integer, Hash)> get_catalog_experiences_with_http_info(accept, accept_version, opts)

```ruby
begin
  # Get experiences
  data, status_code, headers = api_instance.get_catalog_experiences_with_http_info(accept, accept_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Experience>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExperiencesApi->get_catalog_experiences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **vendor_id** | **String** | Filter results to those which belong to the specified vendor. | [optional] |

### Return type

[**Array&lt;Experience&gt;**](Experience.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_catalog_experiences_experience_id

> <Experience> get_catalog_experiences_experience_id(accept, accept_version, experience_id)

Get experience

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

api_instance = OpenapiClient::ExperiencesApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.

begin
  # Get experience
  result = api_instance.get_catalog_experiences_experience_id(accept, accept_version, experience_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExperiencesApi->get_catalog_experiences_experience_id: #{e}"
end
```

#### Using the get_catalog_experiences_experience_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Experience>, Integer, Hash)> get_catalog_experiences_experience_id_with_http_info(accept, accept_version, experience_id)

```ruby
begin
  # Get experience
  data, status_code, headers = api_instance.get_catalog_experiences_experience_id_with_http_info(accept, accept_version, experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Experience>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExperiencesApi->get_catalog_experiences_experience_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |

### Return type

[**Experience**](Experience.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_catalog_experiences_experience_id

> <Experience> patch_catalog_experiences_experience_id(accept, accept_version, experience_id, opts)

Update experience

Updating an experience is limited to a small selection of properties.  Changes may take up to 24 hours to appear in the business platform and distribution sites. 

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

api_instance = OpenapiClient::ExperiencesApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
opts = {
  experience_update_request: OpenapiClient::ExperienceUpdateRequest.new # ExperienceUpdateRequest | 
}

begin
  # Update experience
  result = api_instance.patch_catalog_experiences_experience_id(accept, accept_version, experience_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExperiencesApi->patch_catalog_experiences_experience_id: #{e}"
end
```

#### Using the patch_catalog_experiences_experience_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Experience>, Integer, Hash)> patch_catalog_experiences_experience_id_with_http_info(accept, accept_version, experience_id, opts)

```ruby
begin
  # Update experience
  data, status_code, headers = api_instance.patch_catalog_experiences_experience_id_with_http_info(accept, accept_version, experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Experience>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExperiencesApi->patch_catalog_experiences_experience_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **experience_update_request** | [**ExperienceUpdateRequest**](ExperienceUpdateRequest.md) |  | [optional] |

### Return type

[**Experience**](Experience.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_catalog_experiences

> <Experience> post_catalog_experiences(accept, accept_version, opts)

Create experience

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

api_instance = OpenapiClient::ExperiencesApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
opts = {
  experience: OpenapiClient::Experience.new({availability_slot_type: 'DAILY', currency: 'currency_example', experience_id: 'experience_id_example', experience_name: 'experience_name_example', options: [OpenapiClient::Option.new({holder_categories: [OpenapiClient::HolderCategory.new({holder_category_id: 'holder_category_id_example', holder_type: 'ADULT', minimum_age: 37})], label: 'label_example', option_id: 'option_id_example'})], vendor_id: 'vendor_id_example'}) # Experience | 
}

begin
  # Create experience
  result = api_instance.post_catalog_experiences(accept, accept_version, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExperiencesApi->post_catalog_experiences: #{e}"
end
```

#### Using the post_catalog_experiences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Experience>, Integer, Hash)> post_catalog_experiences_with_http_info(accept, accept_version, opts)

```ruby
begin
  # Create experience
  data, status_code, headers = api_instance.post_catalog_experiences_with_http_info(accept, accept_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Experience>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExperiencesApi->post_catalog_experiences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience** | [**Experience**](Experience.md) |  | [optional] |

### Return type

[**Experience**](Experience.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

