=begin
#PORTA

## About PORTA  Musement's **PORTA** (*Perfect Open Road To Activities*) service allows suppliers to manage their experiences via API.  # Authentication  <SecurityDefinitions />  # Release notes  This section contains a record of changes to the API.  ## 2023-12-06  * Added `unconfirmed` property to booking cancellation request webhook  ## 2023-10-12  * Added `vendor_id` query parameter to the endpoint `GET /supplier/catalog/experiences`  * Filters results to those which belong to the specified vendor  ## 2023-10-02  * Added `ticket_numbers` and `transaction_id` properties to booking cancellation request webhook  ## 2023-08-24  * Changed `accept-version` header value used for webhook requests  * New value is `vnd.porta-webhook-api.v1`  ## 2023-06-22  * Added webhook test endpoints for sandbox environment:  * `POST /supplier/integration-tests/book`  * `POST /supplier/integration-tests/cancel-booking`  * `POST /supplier/integration-tests/hold`  ## 2023-06-09  * Added endpoint `PATCH /supplier/catalog/experiences/{experience_id}` * Added `archived` property to *Experience model*  * Archived experiences are no longer for sale  ## 2023-05-04  * Removed `supplier-code` header parameter from all endpoints * Removed exhaust vent that exposed the Core  ## 2023-04-20  **Booking confirmation request**  * Added `tuimm_booking_id` property  * Human-friendly Musement booking ID  **Vendors**  * Added `Vendor` model  * Used to categorize experiences by different sources, partners or channels * Added two endpoints:  * `GET /supplier/vendors`  * `POST /supplier/vendors` * Added `vendor_id` property to *Experience model*  ## 2023-03-23  **Experience model**  * Removed `content` and `media` properties 

The version of the OpenAPI document: 1.0.0
Contact: porta@tui.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/availability_open_slot'
require 'openapi_client/models/availability_slot'
require 'openapi_client/models/availability_slot_daily'
require 'openapi_client/models/availability_slot_generic'
require 'openapi_client/models/availability_time_slot'
require 'openapi_client/models/available_holder_category'
require 'openapi_client/models/booking_cancellation'
require 'openapi_client/models/booking_cancellation_timeout'
require 'openapi_client/models/daily_slot'
require 'openapi_client/models/duration_days'
require 'openapi_client/models/end_date'
require 'openapi_client/models/error_response'
require 'openapi_client/models/experience'
require 'openapi_client/models/experience_update_request'
require 'openapi_client/models/holder_category'
require 'openapi_client/models/mandatory_question'
require 'openapi_client/models/open_slot'
require 'openapi_client/models/option'
require 'openapi_client/models/patch_availability_experiences_experience_id_options_option_id_slots_availability_slot_id_request'
require 'openapi_client/models/pickup'
require 'openapi_client/models/post_integration_tests_cancel_booking_request'
require 'openapi_client/models/test_booking_confirmation_request'
require 'openapi_client/models/test_booking_confirmation_request_booking_requests_inner'
require 'openapi_client/models/test_booking_confirmation_request_booking_requests_inner_mandatory_answers_inner'
require 'openapi_client/models/test_booking_confirmation_request_holder'
require 'openapi_client/models/test_hold_availability_request'
require 'openapi_client/models/test_hold_availability_request_quantities_inner'
require 'openapi_client/models/time_slot'
require 'openapi_client/models/vendor'

# APIs
require 'openapi_client/api/availability_slots_api'
require 'openapi_client/api/daily_slots_api'
require 'openapi_client/api/experiences_api'
require 'openapi_client/api/mandatory_questions_api'
require 'openapi_client/api/open_slots_api'
require 'openapi_client/api/options_api'
require 'openapi_client/api/pickups_api'
require 'openapi_client/api/time_slots_api'
require 'openapi_client/api/vendors_api'
require 'openapi_client/api/webhook_tests_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
