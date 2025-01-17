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
  class VendorsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get vendors
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<Vendor>]
    def get_vendors(accept, accept_version, opts = {})
      data, _status_code, _headers = get_vendors_with_http_info(accept, accept_version, opts)
      data
    end

    # Get vendors
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Vendor>, Integer, Hash)>] Array<Vendor> data, response status code and response headers
    def get_vendors_with_http_info(accept, accept_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorsApi.get_vendors ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling VendorsApi.get_vendors"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept)
        fail ArgumentError, "invalid value for \"accept\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'accept_version' is set
      if @api_client.config.client_side_validation && accept_version.nil?
        fail ArgumentError, "Missing the required parameter 'accept_version' when calling VendorsApi.get_vendors"
      end
      # verify enum value
      allowable_values = ["vnd.porta-api.v1"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept_version)
        fail ArgumentError, "invalid value for \"accept_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/supplier/vendors'

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
      return_type = opts[:debug_return_type] || 'Array<Vendor>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Supplier-sandbox', 'Supplier-production']

      new_options = opts.merge(
        :operation => :"VendorsApi.get_vendors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorsApi#get_vendors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create vendor
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [Vendor] :vendor 
    # @return [Vendor]
    def post_vendors(accept, accept_version, opts = {})
      data, _status_code, _headers = post_vendors_with_http_info(accept, accept_version, opts)
      data
    end

    # Create vendor
    # @param accept [String] Specify the format of the response.
    # @param accept_version [String] The version of PORTA for the request.
    # @param [Hash] opts the optional parameters
    # @option opts [Vendor] :vendor 
    # @return [Array<(Vendor, Integer, Hash)>] Vendor data, response status code and response headers
    def post_vendors_with_http_info(accept, accept_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VendorsApi.post_vendors ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling VendorsApi.post_vendors"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept)
        fail ArgumentError, "invalid value for \"accept\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'accept_version' is set
      if @api_client.config.client_side_validation && accept_version.nil?
        fail ArgumentError, "Missing the required parameter 'accept_version' when calling VendorsApi.post_vendors"
      end
      # verify enum value
      allowable_values = ["vnd.porta-api.v1"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accept_version)
        fail ArgumentError, "invalid value for \"accept_version\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/supplier/vendors'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'vendor'])

      # return_type
      return_type = opts[:debug_return_type] || 'Vendor'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Supplier-sandbox', 'Supplier-production']

      new_options = opts.merge(
        :operation => :"VendorsApi.post_vendors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VendorsApi#post_vendors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
