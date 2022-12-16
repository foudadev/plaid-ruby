=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.210.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  # The object containing proof of employment data for an individual.
  class CreditEmploymentVerification
    # ID of the payroll provider account.
    attr_accessor :account_id

    # Current employment status.
    attr_accessor :status

    # Start of employment in ISO 8601 format (YYYY-MM-DD).
    attr_accessor :start_date

    # End of employment, if applicable. Provided in ISO 8601 format (YYY-MM-DD).
    attr_accessor :end_date

    attr_accessor :employer

    # Current title of employee.
    attr_accessor :title

    attr_accessor :platform_ids

    # The type of employment for the individual. `\"FULL_TIME\"`: A full-time employee. `\"PART_TIME\"`: A part-time employee. `\"CONTRACTOR\"`: An employee typically hired externally through a contracting group. `\"TEMPORARY\"`: A temporary employee. `\"OTHER\"`: The employee type is not one of the above defined types.
    attr_accessor :employee_type

    # The date of the employee's most recent paystub in ISO 8601 format (YYYY-MM-DD).
    attr_accessor :last_paystub_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'account_id',
        :'status' => :'status',
        :'start_date' => :'start_date',
        :'end_date' => :'end_date',
        :'employer' => :'employer',
        :'title' => :'title',
        :'platform_ids' => :'platform_ids',
        :'employee_type' => :'employee_type',
        :'last_paystub_date' => :'last_paystub_date'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_id' => :'String',
        :'status' => :'String',
        :'start_date' => :'Date',
        :'end_date' => :'Date',
        :'employer' => :'CreditEmployerVerification',
        :'title' => :'String',
        :'platform_ids' => :'CreditPlatformIds',
        :'employee_type' => :'String',
        :'last_paystub_date' => :'Date'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'account_id',
        :'status',
        :'start_date',
        :'end_date',
        :'title',
        :'employee_type',
        :'last_paystub_date'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::CreditEmploymentVerification` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::CreditEmploymentVerification`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'employer')
        self.employer = attributes[:'employer']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'platform_ids')
        self.platform_ids = attributes[:'platform_ids']
      end

      if attributes.key?(:'employee_type')
        self.employee_type = attributes[:'employee_type']
      end

      if attributes.key?(:'last_paystub_date')
        self.last_paystub_date = attributes[:'last_paystub_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @employer.nil?
        invalid_properties.push('invalid value for "employer", employer cannot be nil.')
      end

      if @platform_ids.nil?
        invalid_properties.push('invalid value for "platform_ids", platform_ids cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @employer.nil?
      return false if @platform_ids.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          status == o.status &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          employer == o.employer &&
          title == o.title &&
          platform_ids == o.platform_ids &&
          employee_type == o.employee_type &&
          last_paystub_date == o.last_paystub_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, status, start_date, end_date, employer, title, platform_ids, employee_type, last_paystub_date].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass = Plaid.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
