# OpenapiClient::MandatoryQuestionsApi

All URIs are relative to *https://prod.api.tui/tui-musement-porta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id**](MandatoryQuestionsApi.md#delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id) | **DELETE** /supplier/catalog/experiences/{experience_id}/mandatory-questions/{mandatory_question_id} | Remove mandatory question from experience |
| [**get_catalog_experiences_experience_id_mandatory_questions**](MandatoryQuestionsApi.md#get_catalog_experiences_experience_id_mandatory_questions) | **GET** /supplier/catalog/experiences/{experience_id}/mandatory-questions | Get mandatory questions for experience |
| [**get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id**](MandatoryQuestionsApi.md#get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id) | **GET** /supplier/catalog/experiences/{experience_id}/mandatory-questions/{mandatory_question_id} | Get mandatory question for experience |
| [**post_catalog_experiences_experience_id_mandatory_questions**](MandatoryQuestionsApi.md#post_catalog_experiences_experience_id_mandatory_questions) | **POST** /supplier/catalog/experiences/{experience_id}/mandatory-questions | Create mandatory question for experience |
| [**put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id**](MandatoryQuestionsApi.md#put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id) | **PUT** /supplier/catalog/experiences/{experience_id}/mandatory-questions/{mandatory_question_id} | Update mandatory question for experience |


## delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id

> delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id(accept, accept_version, experience_id, mandatory_question_id)

Remove mandatory question from experience

A mandatory question cannot be removed if it is part of a hold availability request.

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

api_instance = OpenapiClient::MandatoryQuestionsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
mandatory_question_id = 'mandatory_question_id_example' # String | The mandatory question ID.

begin
  # Remove mandatory question from experience
  api_instance.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id(accept, accept_version, experience_id, mandatory_question_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id: #{e}"
end
```

#### Using the delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id)

```ruby
begin
  # Remove mandatory question from experience
  data, status_code, headers = api_instance.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **mandatory_question_id** | **String** | The mandatory question ID. |  |

### Return type

nil (empty response body)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_catalog_experiences_experience_id_mandatory_questions

> <Array<MandatoryQuestion>> get_catalog_experiences_experience_id_mandatory_questions(accept, accept_version, experience_id)

Get mandatory questions for experience

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

api_instance = OpenapiClient::MandatoryQuestionsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.

begin
  # Get mandatory questions for experience
  result = api_instance.get_catalog_experiences_experience_id_mandatory_questions(accept, accept_version, experience_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->get_catalog_experiences_experience_id_mandatory_questions: #{e}"
end
```

#### Using the get_catalog_experiences_experience_id_mandatory_questions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MandatoryQuestion>>, Integer, Hash)> get_catalog_experiences_experience_id_mandatory_questions_with_http_info(accept, accept_version, experience_id)

```ruby
begin
  # Get mandatory questions for experience
  data, status_code, headers = api_instance.get_catalog_experiences_experience_id_mandatory_questions_with_http_info(accept, accept_version, experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MandatoryQuestion>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->get_catalog_experiences_experience_id_mandatory_questions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |

### Return type

[**Array&lt;MandatoryQuestion&gt;**](MandatoryQuestion.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id

> <MandatoryQuestion> get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id(accept, accept_version, experience_id, mandatory_question_id)

Get mandatory question for experience

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

api_instance = OpenapiClient::MandatoryQuestionsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
mandatory_question_id = 'mandatory_question_id_example' # String | The mandatory question ID.

begin
  # Get mandatory question for experience
  result = api_instance.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id(accept, accept_version, experience_id, mandatory_question_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id: #{e}"
end
```

#### Using the get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MandatoryQuestion>, Integer, Hash)> get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id)

```ruby
begin
  # Get mandatory question for experience
  data, status_code, headers = api_instance.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MandatoryQuestion>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **mandatory_question_id** | **String** | The mandatory question ID. |  |

### Return type

[**MandatoryQuestion**](MandatoryQuestion.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_catalog_experiences_experience_id_mandatory_questions

> <MandatoryQuestion> post_catalog_experiences_experience_id_mandatory_questions(accept, accept_version, experience_id, opts)

Create mandatory question for experience

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

api_instance = OpenapiClient::MandatoryQuestionsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
opts = {
  mandatory_question: OpenapiClient::MandatoryQuestion.new({data_type: 'DATE', level: 'BOOKING', mandatory_question_id: 'mandatory_question_id_example', question: 'question_example'}) # MandatoryQuestion | 
}

begin
  # Create mandatory question for experience
  result = api_instance.post_catalog_experiences_experience_id_mandatory_questions(accept, accept_version, experience_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->post_catalog_experiences_experience_id_mandatory_questions: #{e}"
end
```

#### Using the post_catalog_experiences_experience_id_mandatory_questions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MandatoryQuestion>, Integer, Hash)> post_catalog_experiences_experience_id_mandatory_questions_with_http_info(accept, accept_version, experience_id, opts)

```ruby
begin
  # Create mandatory question for experience
  data, status_code, headers = api_instance.post_catalog_experiences_experience_id_mandatory_questions_with_http_info(accept, accept_version, experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MandatoryQuestion>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->post_catalog_experiences_experience_id_mandatory_questions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **mandatory_question** | [**MandatoryQuestion**](MandatoryQuestion.md) |  | [optional] |

### Return type

[**MandatoryQuestion**](MandatoryQuestion.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id

> <MandatoryQuestion> put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id(accept, accept_version, experience_id, mandatory_question_id, opts)

Update mandatory question for experience

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

api_instance = OpenapiClient::MandatoryQuestionsApi.new
accept = 'application/json' # String | Specify the format of the response.
accept_version = 'vnd.porta-api.v1' # String | The version of PORTA for the request.
experience_id = 'experience_id_example' # String | The experience ID.
mandatory_question_id = 'mandatory_question_id_example' # String | The mandatory question ID.
opts = {
  mandatory_question: OpenapiClient::MandatoryQuestion.new({data_type: 'DATE', level: 'BOOKING', mandatory_question_id: 'mandatory_question_id_example', question: 'question_example'}) # MandatoryQuestion | 
}

begin
  # Update mandatory question for experience
  result = api_instance.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id(accept, accept_version, experience_id, mandatory_question_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id: #{e}"
end
```

#### Using the put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MandatoryQuestion>, Integer, Hash)> put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id, opts)

```ruby
begin
  # Update mandatory question for experience
  data, status_code, headers = api_instance.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MandatoryQuestion>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MandatoryQuestionsApi->put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specify the format of the response. |  |
| **accept_version** | **String** | The version of PORTA for the request. |  |
| **experience_id** | **String** | The experience ID. |  |
| **mandatory_question_id** | **String** | The mandatory question ID. |  |
| **mandatory_question** | [**MandatoryQuestion**](MandatoryQuestion.md) |  | [optional] |

### Return type

[**MandatoryQuestion**](MandatoryQuestion.md)

### Authorization

[Supplier-sandbox](../README.md#Supplier-sandbox), [Supplier-production](../README.md#Supplier-production)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

