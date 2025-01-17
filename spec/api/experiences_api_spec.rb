=begin
#PORTA

## About PORTA  Musement's **PORTA** (*Perfect Open Road To Activities*) service allows suppliers to manage their experiences via API.  # Authentication  <SecurityDefinitions />  # Release notes  This section contains a record of changes to the API.  ## 2023-12-06  * Added `unconfirmed` property to booking cancellation request webhook  ## 2023-10-12  * Added `vendor_id` query parameter to the endpoint `GET /supplier/catalog/experiences`  * Filters results to those which belong to the specified vendor  ## 2023-10-02  * Added `ticket_numbers` and `transaction_id` properties to booking cancellation request webhook  ## 2023-08-24  * Changed `accept-version` header value used for webhook requests  * New value is `vnd.porta-webhook-api.v1`  ## 2023-06-22  * Added webhook test endpoints for sandbox environment:  * `POST /supplier/integration-tests/book`  * `POST /supplier/integration-tests/cancel-booking`  * `POST /supplier/integration-tests/hold`  ## 2023-06-09  * Added endpoint `PATCH /supplier/catalog/experiences/{experience_id}` * Added `archived` property to *Experience model*  * Archived experiences are no longer for sale  ## 2023-05-04  * Removed `supplier-code` header parameter from all endpoints * Removed exhaust vent that exposed the Core  ## 2023-04-20  **Booking confirmation request**  * Added `tuimm_booking_id` property  * Human-friendly Musement booking ID  **Vendors**  * Added `Vendor` model  * Used to categorize experiences by different sources, partners or channels * Added two endpoints:  * `GET /supplier/vendors`  * `POST /supplier/vendors` * Added `vendor_id` property to *Experience model*  ## 2023-03-23  **Experience model**  * Removed `content` and `media` properties 

The version of the OpenAPI document: 1.0.0
Contact: porta@tui.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::ExperiencesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ExperiencesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::ExperiencesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExperiencesApi' do
    it 'should create an instance of ExperiencesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::ExperiencesApi)
    end
  end

  # unit tests for get_catalog_experiences
  # Get experiences
  # @param accept Specify the format of the response.
  # @param accept_version The version of PORTA for the request.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :vendor_id Filter results to those which belong to the specified vendor.
  # @return [Array<Experience>]
  describe 'get_catalog_experiences test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_catalog_experiences_experience_id
  # Get experience
  # @param accept Specify the format of the response.
  # @param accept_version The version of PORTA for the request.
  # @param experience_id The experience ID.
  # @param [Hash] opts the optional parameters
  # @return [Experience]
  describe 'get_catalog_experiences_experience_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_catalog_experiences_experience_id
  # Update experience
  # Updating an experience is limited to a small selection of properties.  Changes may take up to 24 hours to appear in the business platform and distribution sites. 
  # @param accept Specify the format of the response.
  # @param accept_version The version of PORTA for the request.
  # @param experience_id The experience ID.
  # @param [Hash] opts the optional parameters
  # @option opts [ExperienceUpdateRequest] :experience_update_request 
  # @return [Experience]
  describe 'patch_catalog_experiences_experience_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_catalog_experiences
  # Create experience
  # @param accept Specify the format of the response.
  # @param accept_version The version of PORTA for the request.
  # @param [Hash] opts the optional parameters
  # @option opts [Experience] :experience 
  # @return [Experience]
  describe 'post_catalog_experiences test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
