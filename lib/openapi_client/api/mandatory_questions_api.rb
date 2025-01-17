=begin
#PORTA

## About PORTA  Musement's **PORTA** (*Perfect Open Road To Activities*) service allows suppliers to manage their experiences via API.  # Authentication  <SecurityDefinitions />  # Release notes  This section contains a record of changes to the API.  ## 2023-12-06  * Added `unconfirmed` property to booking cancellation request webhook  ## 2023-10-12  * Added `vendor_id` query parameter to the endpoint `GET /supplier/catalog/experiences`  * Filters results to those which belong to the specified vendor  ## 2023-10-02  * Added `ticket_numbers` and `transaction_id` properties to booking cancellation request webhook  ## 2023-08-24  * Changed `accept-version` header value used for webhook requests  * New value is `vnd.porta-webhook-api.v1`  ## 2023-06-22  * Added webhook test endpoints for sandbox environment:  * `POST /supplier/integration-tests/book`  * `POST /supplier/integration-tests/cancel-booking`  * `POST /supplier/integration-tests/hold`  ## 2023-06-09  * Added endpoint `PATCH /supplier/catalog/experiences/{experience_id}` * Added `archived` property to *Experience model*  * Archived experiences are no longer for sale  ## 2023-05-04  * Removed `supplier-code` header parameter from all endpoints * Removed exhaust vent that exposed the Core  ## 2023-04-20  **Booking confirmation request**  * Added `tuimm_booking_id` property  * Human-friendly Musement booking ID  **Vendors**  * Added `Vendor` model  * Used to categorize experiences by different sources, partners or channels * Added two endpoints:  * `GET /supplier/vendors`  * `POST /supplier/vendors` * Added `vendor_id` property to *Experience model*  ## 2023-03-23  **Experience model**  * Removed `content` and `media` properties 

The version of the OpenAPI document: 1.0.0
Contact: porta@tui.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenapiClient
  class MandatoryQuestionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Remove mandatory question from experience
    # A mandatory question cannot be removed if it is part of a hold availability request.
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param mandatory_question_id [String] The mandatory question ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id(accept, accept_version, experience_id, mandatory_question_id, opts = {})
      delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id, opts)
      nil
    end

    # Remove mandatory question from experience
    # A mandatory question cannot be removed if it is part of a hold availability request.
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param mandatory_question_id [String] The mandatory question ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandatoryQuestionsApi.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MandatoryQuestionsApi.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept)
        fail ArgumentError, "invalid value for \"accept\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'accept_version' is set
      if @api_client.config.client_side_validation && accept_version.nil?
        fail ArgumentError, "Missing the required parameter 'accept_version' when calling MandatoryQuestionsApi.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      # verify enum value
      allowable_values = ["vnd.porta-api.v1"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept_version)
        fail ArgumentError, "invalid value for \"accept_version\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'experience_id' is set
      if @api_client.config.client_side_validation && experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'experience_id' when calling MandatoryQuestionsApi.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @api_client.config.client_side_validation && experience_id !~ pattern
        fail ArgumentError, "invalid value for 'experience_id' when calling MandatoryQuestionsApi.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'mandatory_question_id' is set
      if @api_client.config.client_side_validation && mandatory_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'mandatory_question_id' when calling MandatoryQuestionsApi.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @api_client.config.client_side_validation && mandatory_question_id !~ pattern
        fail ArgumentError, "invalid value for 'mandatory_question_id' when calling MandatoryQuestionsApi.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/supplier/catalog/experiences/{experience_id}/mandatory-questions/{mandatory_question_id}'.sub('{' + 'experience_id' + '}', CGI.escape(experience_id.to_s)).sub('{' + 'mandatory_question_id' + '}', CGI.escape(mandatory_question_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'accept'] = accept
      header_params[:'accept-version'] = accept_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Supplier-sandbox', 'Supplier-production']

      new_options = opts.merge(
        :operation => :"MandatoryQuestionsApi.delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandatoryQuestionsApi#delete_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get mandatory questions for experience
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<MandatoryQuestion>]
    def get_catalog_experiences_experience_id_mandatory_questions(accept, accept_version, experience_id, opts = {})
      data, _status_code, _headers = get_catalog_experiences_experience_id_mandatory_questions_with_http_info(accept, accept_version, experience_id, opts)
      data
    end

    # Get mandatory questions for experience
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<MandatoryQuestion>, Integer, Hash)>] Array<MandatoryQuestion> data, response status code and response headers
    def get_catalog_experiences_experience_id_mandatory_questions_with_http_info(accept, accept_version, experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept)
        fail ArgumentError, "invalid value for \"accept\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'accept_version' is set
      if @api_client.config.client_side_validation && accept_version.nil?
        fail ArgumentError, "Missing the required parameter 'accept_version' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions"
      end
      # verify enum value
      allowable_values = ["vnd.porta-api.v1"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept_version)
        fail ArgumentError, "invalid value for \"accept_version\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'experience_id' is set
      if @api_client.config.client_side_validation && experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'experience_id' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions"
      end
      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @api_client.config.client_side_validation && experience_id !~ pattern
        fail ArgumentError, "invalid value for 'experience_id' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/supplier/catalog/experiences/{experience_id}/mandatory-questions'.sub('{' + 'experience_id' + '}', CGI.escape(experience_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'accept'] = accept
      header_params[:'accept-version'] = accept_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<MandatoryQuestion>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Supplier-sandbox', 'Supplier-production']

      new_options = opts.merge(
        :operation => :"MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandatoryQuestionsApi#get_catalog_experiences_experience_id_mandatory_questions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get mandatory question for experience
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param mandatory_question_id [String] The mandatory question ID.
    # @param [Hash] opts the optional parameters
    # @return [MandatoryQuestion]
    def get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id(accept, accept_version, experience_id, mandatory_question_id, opts = {})
      data, _status_code, _headers = get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id, opts)
      data
    end

    # Get mandatory question for experience
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param mandatory_question_id [String] The mandatory question ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MandatoryQuestion, Integer, Hash)>] MandatoryQuestion data, response status code and response headers
    def get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept)
        fail ArgumentError, "invalid value for \"accept\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'accept_version' is set
      if @api_client.config.client_side_validation && accept_version.nil?
        fail ArgumentError, "Missing the required parameter 'accept_version' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      # verify enum value
      allowable_values = ["vnd.porta-api.v1"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept_version)
        fail ArgumentError, "invalid value for \"accept_version\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'experience_id' is set
      if @api_client.config.client_side_validation && experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'experience_id' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @api_client.config.client_side_validation && experience_id !~ pattern
        fail ArgumentError, "invalid value for 'experience_id' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'mandatory_question_id' is set
      if @api_client.config.client_side_validation && mandatory_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'mandatory_question_id' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @api_client.config.client_side_validation && mandatory_question_id !~ pattern
        fail ArgumentError, "invalid value for 'mandatory_question_id' when calling MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/supplier/catalog/experiences/{experience_id}/mandatory-questions/{mandatory_question_id}'.sub('{' + 'experience_id' + '}', CGI.escape(experience_id.to_s)).sub('{' + 'mandatory_question_id' + '}', CGI.escape(mandatory_question_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'accept'] = accept
      header_params[:'accept-version'] = accept_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MandatoryQuestion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Supplier-sandbox', 'Supplier-production']

      new_options = opts.merge(
        :operation => :"MandatoryQuestionsApi.get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandatoryQuestionsApi#get_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create mandatory question for experience
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param [Hash] opts the optional parameters
    # @option opts [MandatoryQuestion] :mandatory_question 
    # @return [MandatoryQuestion]
    def post_catalog_experiences_experience_id_mandatory_questions(accept, accept_version, experience_id, opts = {})
      data, _status_code, _headers = post_catalog_experiences_experience_id_mandatory_questions_with_http_info(accept, accept_version, experience_id, opts)
      data
    end

    # Create mandatory question for experience
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param [Hash] opts the optional parameters
    # @option opts [MandatoryQuestion] :mandatory_question 
    # @return [Array<(MandatoryQuestion, Integer, Hash)>] MandatoryQuestion data, response status code and response headers
    def post_catalog_experiences_experience_id_mandatory_questions_with_http_info(accept, accept_version, experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandatoryQuestionsApi.post_catalog_experiences_experience_id_mandatory_questions ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MandatoryQuestionsApi.post_catalog_experiences_experience_id_mandatory_questions"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept)
        fail ArgumentError, "invalid value for \"accept\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'accept_version' is set
      if @api_client.config.client_side_validation && accept_version.nil?
        fail ArgumentError, "Missing the required parameter 'accept_version' when calling MandatoryQuestionsApi.post_catalog_experiences_experience_id_mandatory_questions"
      end
      # verify enum value
      allowable_values = ["vnd.porta-api.v1"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept_version)
        fail ArgumentError, "invalid value for \"accept_version\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'experience_id' is set
      if @api_client.config.client_side_validation && experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'experience_id' when calling MandatoryQuestionsApi.post_catalog_experiences_experience_id_mandatory_questions"
      end
      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @api_client.config.client_side_validation && experience_id !~ pattern
        fail ArgumentError, "invalid value for 'experience_id' when calling MandatoryQuestionsApi.post_catalog_experiences_experience_id_mandatory_questions, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/supplier/catalog/experiences/{experience_id}/mandatory-questions'.sub('{' + 'experience_id' + '}', CGI.escape(experience_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'accept'] = accept
      header_params[:'accept-version'] = accept_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'mandatory_question'])

      # return_type
      return_type = opts[:debug_return_type] || 'MandatoryQuestion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Supplier-sandbox', 'Supplier-production']

      new_options = opts.merge(
        :operation => :"MandatoryQuestionsApi.post_catalog_experiences_experience_id_mandatory_questions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandatoryQuestionsApi#post_catalog_experiences_experience_id_mandatory_questions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update mandatory question for experience
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param mandatory_question_id [String] The mandatory question ID.
    # @param [Hash] opts the optional parameters
    # @option opts [MandatoryQuestion] :mandatory_question 
    # @return [MandatoryQuestion]
    def put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id(accept, accept_version, experience_id, mandatory_question_id, opts = {})
      data, _status_code, _headers = put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id, opts)
      data
    end

    # Update mandatory question for experience
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param experience_id [String] The experience ID.
    # @param mandatory_question_id [String] The mandatory question ID.
    # @param [Hash] opts the optional parameters
    # @option opts [MandatoryQuestion] :mandatory_question 
    # @return [Array<(MandatoryQuestion, Integer, Hash)>] MandatoryQuestion data, response status code and response headers
    def put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id_with_http_info(accept, accept_version, experience_id, mandatory_question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandatoryQuestionsApi.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling MandatoryQuestionsApi.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept)
        fail ArgumentError, "invalid value for \"accept\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'accept_version' is set
      if @api_client.config.client_side_validation && accept_version.nil?
        fail ArgumentError, "Missing the required parameter 'accept_version' when calling MandatoryQuestionsApi.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      # verify enum value
      allowable_values = ["vnd.porta-api.v1"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept_version)
        fail ArgumentError, "invalid value for \"accept_version\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'experience_id' is set
      if @api_client.config.client_side_validation && experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'experience_id' when calling MandatoryQuestionsApi.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @api_client.config.client_side_validation && experience_id !~ pattern
        fail ArgumentError, "invalid value for 'experience_id' when calling MandatoryQuestionsApi.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'mandatory_question_id' is set
      if @api_client.config.client_side_validation && mandatory_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'mandatory_question_id' when calling MandatoryQuestionsApi.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id"
      end
      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @api_client.config.client_side_validation && mandatory_question_id !~ pattern
        fail ArgumentError, "invalid value for 'mandatory_question_id' when calling MandatoryQuestionsApi.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/supplier/catalog/experiences/{experience_id}/mandatory-questions/{mandatory_question_id}'.sub('{' + 'experience_id' + '}', CGI.escape(experience_id.to_s)).sub('{' + 'mandatory_question_id' + '}', CGI.escape(mandatory_question_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'accept'] = accept
      header_params[:'accept-version'] = accept_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'mandatory_question'])

      # return_type
      return_type = opts[:debug_return_type] || 'MandatoryQuestion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Supplier-sandbox', 'Supplier-production']

      new_options = opts.merge(
        :operation => :"MandatoryQuestionsApi.put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandatoryQuestionsApi#put_catalog_experiences_experience_id_mandatory_questions_mandatory_question_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
