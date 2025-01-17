=begin
#PORTA

## About PORTA  Musement's **PORTA** (*Perfect Open Road To Activities*) service allows suppliers to manage their experiences via API.  # Authentication  <SecurityDefinitions />  # Release notes  This section contains a record of changes to the API.  ## 2023-12-06  * Added `unconfirmed` property to booking cancellation request webhook  ## 2023-10-12  * Added `vendor_id` query parameter to the endpoint `GET /supplier/catalog/experiences`  * Filters results to those which belong to the specified vendor  ## 2023-10-02  * Added `ticket_numbers` and `transaction_id` properties to booking cancellation request webhook  ## 2023-08-24  * Changed `accept-version` header value used for webhook requests  * New value is `vnd.porta-webhook-api.v1`  ## 2023-06-22  * Added webhook test endpoints for sandbox environment:  * `POST /supplier/integration-tests/book`  * `POST /supplier/integration-tests/cancel-booking`  * `POST /supplier/integration-tests/hold`  ## 2023-06-09  * Added endpoint `PATCH /supplier/catalog/experiences/{experience_id}` * Added `archived` property to *Experience model*  * Archived experiences are no longer for sale  ## 2023-05-04  * Removed `supplier-code` header parameter from all endpoints * Removed exhaust vent that exposed the Core  ## 2023-04-20  **Booking confirmation request**  * Added `tuimm_booking_id` property  * Human-friendly Musement booking ID  **Vendors**  * Added `Vendor` model  * Used to categorize experiences by different sources, partners or channels * Added two endpoints:  * `GET /supplier/vendors`  * `POST /supplier/vendors` * Added `vendor_id` property to *Experience model*  ## 2023-03-23  **Experience model**  * Removed `content` and `media` properties 

The version of the OpenAPI document: 1.0.0
Contact: porta@tui.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module OpenapiClient
  class Experience
    # When an experience is archived, it is no longer for sale in Musement sites.  When an experience is un-archived, a member of the *Content Supplier Connectivity* team is required to un-archive the corresponding business platform activity. 
    attr_accessor :archived

    # The type of availability slot for the experience.
    attr_accessor :availability_slot_type

    # The currency to use for billing.  This property must follow the [ISO 4217 standard](https://www.iso.org/iso-4217-currency-codes.html). 
    attr_accessor :currency

    # The minimum amount of time required to book a travel date in advance.  This property must follow the [ISO 8601 standard](https://www.iso.org/iso-8601-date-and-time-format.html). 
    attr_accessor :cutoff_time

    # The experience ID, assigned by the supplier.
    attr_accessor :experience_id

    # The name of the experience as it will appear in PORTA.
    attr_accessor :experience_name

    # An additional ID for the experience which suppliers can use for their own records.
    attr_accessor :external_experience_id

    # An additional name for the experience which suppliers can use for their own records.
    attr_accessor :external_experience_name

    # The bookable options for the experience. This property must contain at least one option.
    attr_accessor :options

    # The ID of the vendor that the experience belongs to.
    attr_accessor :vendor_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'archived' => :'archived',
        :'availability_slot_type' => :'availability_slot_type',
        :'currency' => :'currency',
        :'cutoff_time' => :'cutoff_time',
        :'experience_id' => :'experience_id',
        :'experience_name' => :'experience_name',
        :'external_experience_id' => :'external_experience_id',
        :'external_experience_name' => :'external_experience_name',
        :'options' => :'options',
        :'vendor_id' => :'vendor_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'archived' => :'Boolean',
        :'availability_slot_type' => :'String',
        :'currency' => :'String',
        :'cutoff_time' => :'String',
        :'experience_id' => :'String',
        :'experience_name' => :'String',
        :'external_experience_id' => :'String',
        :'external_experience_name' => :'String',
        :'options' => :'Array<Option>',
        :'vendor_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Experience` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Experience`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'archived')
        self.archived = attributes[:'archived']
      else
        self.archived = false
      end

      if attributes.key?(:'availability_slot_type')
        self.availability_slot_type = attributes[:'availability_slot_type']
      else
        self.availability_slot_type = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'cutoff_time')
        self.cutoff_time = attributes[:'cutoff_time']
      else
        self.cutoff_time = 'P0D'
      end

      if attributes.key?(:'experience_id')
        self.experience_id = attributes[:'experience_id']
      else
        self.experience_id = nil
      end

      if attributes.key?(:'experience_name')
        self.experience_name = attributes[:'experience_name']
      else
        self.experience_name = nil
      end

      if attributes.key?(:'external_experience_id')
        self.external_experience_id = attributes[:'external_experience_id']
      end

      if attributes.key?(:'external_experience_name')
        self.external_experience_name = attributes[:'external_experience_name']
      end

      if attributes.key?(:'options')
        if (value = attributes[:'options']).is_a?(Array)
          self.options = value
        end
      else
        self.options = nil
      end

      if attributes.key?(:'vendor_id')
        self.vendor_id = attributes[:'vendor_id']
      else
        self.vendor_id = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @availability_slot_type.nil?
        invalid_properties.push('invalid value for "availability_slot_type", availability_slot_type cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @experience_id.nil?
        invalid_properties.push('invalid value for "experience_id", experience_id cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @experience_id !~ pattern
        invalid_properties.push("invalid value for \"experience_id\", must conform to the pattern #{pattern}.")
      end

      if @experience_name.nil?
        invalid_properties.push('invalid value for "experience_name", experience_name cannot be nil.')
      end

      if @options.nil?
        invalid_properties.push('invalid value for "options", options cannot be nil.')
      end

      if @vendor_id.nil?
        invalid_properties.push('invalid value for "vendor_id", vendor_id cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if @vendor_id !~ pattern
        invalid_properties.push("invalid value for \"vendor_id\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @availability_slot_type.nil?
      availability_slot_type_validator = EnumAttributeValidator.new('String', ["DAILY", "OPEN", "TIME"])
      return false unless availability_slot_type_validator.valid?(@availability_slot_type)
      return false if @currency.nil?
      return false if @experience_id.nil?
      return false if @experience_id !~ Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      return false if @experience_name.nil?
      return false if @options.nil?
      return false if @vendor_id.nil?
      return false if @vendor_id !~ Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] availability_slot_type Object to be assigned
    def availability_slot_type=(availability_slot_type)
      validator = EnumAttributeValidator.new('String', ["DAILY", "OPEN", "TIME"])
      unless validator.valid?(availability_slot_type)
        fail ArgumentError, "invalid value for \"availability_slot_type\", must be one of #{validator.allowable_values}."
      end
      @availability_slot_type = availability_slot_type
    end

    # Custom attribute writer method with validation
    # @param [Object] experience_id Value to be assigned
    def experience_id=(experience_id)
      if experience_id.nil?
        fail ArgumentError, 'experience_id cannot be nil'
      end

      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if experience_id !~ pattern
        fail ArgumentError, "invalid value for \"experience_id\", must conform to the pattern #{pattern}."
      end

      @experience_id = experience_id
    end

    # Custom attribute writer method with validation
    # @param [Object] options Value to be assigned
    def options=(options)
      if options.nil?
        fail ArgumentError, 'options cannot be nil'
      end

      @options = options
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_id Value to be assigned
    def vendor_id=(vendor_id)
      if vendor_id.nil?
        fail ArgumentError, 'vendor_id cannot be nil'
      end

      pattern = Regexp.new(/^(?!\-|\.|\_)[0-9a-z\-\.\_]{1,50}$/)
      if vendor_id !~ pattern
        fail ArgumentError, "invalid value for \"vendor_id\", must conform to the pattern #{pattern}."
      end

      @vendor_id = vendor_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          archived == o.archived &&
          availability_slot_type == o.availability_slot_type &&
          currency == o.currency &&
          cutoff_time == o.cutoff_time &&
          experience_id == o.experience_id &&
          experience_name == o.experience_name &&
          external_experience_id == o.external_experience_id &&
          external_experience_name == o.external_experience_name &&
          options == o.options &&
          vendor_id == o.vendor_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [archived, availability_slot_type, currency, cutoff_time, experience_id, experience_name, external_experience_id, external_experience_name, options, vendor_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
