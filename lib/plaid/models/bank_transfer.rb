=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.78.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module Plaid
  # Represents a bank transfer within the Bank Transfers API.
  class BankTransfer
    # Plaid’s unique identifier for a bank transfer.
    attr_accessor :id

    attr_accessor :ach_class

    # The account ID that should be credited/debited for this bank transfer.
    attr_accessor :account_id

    attr_accessor :type

    attr_accessor :user

    # The amount of the bank transfer (decimal string with two digits of precision e.g. \"10.00\").
    attr_accessor :amount

    # The currency of the transfer amount, e.g. \"USD\"
    attr_accessor :iso_currency_code

    # The description of the transfer.
    attr_accessor :description

    # The datetime when this bank transfer was created. This will be of the form `2006-01-02T15:04:05Z`
    attr_accessor :created

    attr_accessor :status

    attr_accessor :network

    # When `true`, you can still cancel this bank transfer.
    attr_accessor :cancellable

    attr_accessor :failure_reason

    # A string containing the custom tag provided by the client in the create request. Will be null if not provided.
    attr_accessor :custom_tag

    # The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: - The JSON values must be Strings (no nested JSON objects allowed) - Only ASCII characters may be used - Maximum of 50 key/value pairs - Maximum key length of 40 characters - Maximum value length of 500 characters 
    attr_accessor :metadata

    # Plaid’s unique identifier for the origination account that was used for this transfer.
    attr_accessor :origination_account_id

    attr_accessor :direction

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'ach_class' => :'ach_class',
        :'account_id' => :'account_id',
        :'type' => :'type',
        :'user' => :'user',
        :'amount' => :'amount',
        :'iso_currency_code' => :'iso_currency_code',
        :'description' => :'description',
        :'created' => :'created',
        :'status' => :'status',
        :'network' => :'network',
        :'cancellable' => :'cancellable',
        :'failure_reason' => :'failure_reason',
        :'custom_tag' => :'custom_tag',
        :'metadata' => :'metadata',
        :'origination_account_id' => :'origination_account_id',
        :'direction' => :'direction'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'ach_class' => :'ACHClass',
        :'account_id' => :'String',
        :'type' => :'BankTransferType',
        :'user' => :'BankTransferUser',
        :'amount' => :'String',
        :'iso_currency_code' => :'String',
        :'description' => :'String',
        :'created' => :'Time',
        :'status' => :'BankTransferStatus',
        :'network' => :'BankTransferNetwork',
        :'cancellable' => :'Boolean',
        :'failure_reason' => :'BankTransferFailure',
        :'custom_tag' => :'String',
        :'metadata' => :'Hash<String, String>',
        :'origination_account_id' => :'String',
        :'direction' => :'BankTransferDirection'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'failure_reason',
        :'custom_tag',
        :'metadata',
        :'direction'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::BankTransfer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::BankTransfer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'ach_class')
        self.ach_class = attributes[:'ach_class']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'iso_currency_code')
        self.iso_currency_code = attributes[:'iso_currency_code']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.key?(:'cancellable')
        self.cancellable = attributes[:'cancellable']
      end

      if attributes.key?(:'failure_reason')
        self.failure_reason = attributes[:'failure_reason']
      end

      if attributes.key?(:'custom_tag')
        self.custom_tag = attributes[:'custom_tag']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'origination_account_id')
        self.origination_account_id = attributes[:'origination_account_id']
      end

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @ach_class.nil?
        invalid_properties.push('invalid value for "ach_class", ach_class cannot be nil.')
      end

      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @user.nil?
        invalid_properties.push('invalid value for "user", user cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @iso_currency_code.nil?
        invalid_properties.push('invalid value for "iso_currency_code", iso_currency_code cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @cancellable.nil?
        invalid_properties.push('invalid value for "cancellable", cancellable cannot be nil.')
      end


      if @origination_account_id.nil?
        invalid_properties.push('invalid value for "origination_account_id", origination_account_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @ach_class.nil?
      return false if @account_id.nil?
      return false if @type.nil?
      return false if @user.nil?
      return false if @amount.nil?
      return false if @iso_currency_code.nil?
      return false if @description.nil?
      return false if @created.nil?
      return false if @status.nil?
      return false if @network.nil?
      return false if @cancellable.nil?
      return false if @metadata.length > 50
      return false if @origination_account_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] metadata Value to be assigned
    def metadata=(metadata)

      @metadata = metadata
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          ach_class == o.ach_class &&
          account_id == o.account_id &&
          type == o.type &&
          user == o.user &&
          amount == o.amount &&
          iso_currency_code == o.iso_currency_code &&
          description == o.description &&
          created == o.created &&
          status == o.status &&
          network == o.network &&
          cancellable == o.cancellable &&
          failure_reason == o.failure_reason &&
          custom_tag == o.custom_tag &&
          metadata == o.metadata &&
          origination_account_id == o.origination_account_id &&
          direction == o.direction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, ach_class, account_id, type, user, amount, iso_currency_code, description, created, status, network, cancellable, failure_reason, custom_tag, metadata, origination_account_id, direction].hash
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
