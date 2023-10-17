=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.457.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  # Represents an event in the Transfers API.
  class TransferEvent
    # Plaid’s unique identifier for this event. IDs are sequential unsigned 64-bit integers.
    attr_accessor :event_id

    # The datetime when this event occurred. This will be of the form `2006-01-02T15:04:05Z`.
    attr_accessor :timestamp

    attr_accessor :event_type

    # The account ID associated with the transfer. This field is omitted for Plaid Ledger Sweep events.
    attr_accessor :account_id

    # The id of the associated funding account, available in the Plaid Dashboard. If present, this indicates which of your business checking accounts will be credited or debited.
    attr_accessor :funding_account_id

    # Plaid’s unique identifier for a transfer. This field is `null` for Plaid Ledger Sweep events.
    attr_accessor :transfer_id

    # The ID of the origination account that this balance belongs to.
    attr_accessor :origination_account_id

    attr_accessor :transfer_type

    # The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\"). This field is omitted for Plaid Ledger Sweep events.
    attr_accessor :transfer_amount

    attr_accessor :failure_reason

    # Plaid’s unique identifier for a sweep.
    attr_accessor :sweep_id

    # A signed amount of how much was `swept` or `return_swept` for this transfer (decimal string with two digits of precision e.g. \"-5.50\").
    attr_accessor :sweep_amount

    # Plaid’s unique identifier for a refund. A non-null value indicates the event is for the associated refund of the transfer.
    attr_accessor :refund_id

    # The Plaid client ID that is the originator of the transfer that this event applies to. Only present if the transfer was created on behalf of another client as a third-party sender (TPS).
    attr_accessor :originator_client_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'event_id' => :'event_id',
        :'timestamp' => :'timestamp',
        :'event_type' => :'event_type',
        :'account_id' => :'account_id',
        :'funding_account_id' => :'funding_account_id',
        :'transfer_id' => :'transfer_id',
        :'origination_account_id' => :'origination_account_id',
        :'transfer_type' => :'transfer_type',
        :'transfer_amount' => :'transfer_amount',
        :'failure_reason' => :'failure_reason',
        :'sweep_id' => :'sweep_id',
        :'sweep_amount' => :'sweep_amount',
        :'refund_id' => :'refund_id',
        :'originator_client_id' => :'originator_client_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'event_id' => :'Integer',
        :'timestamp' => :'Time',
        :'event_type' => :'TransferEventType',
        :'account_id' => :'String',
        :'funding_account_id' => :'String',
        :'transfer_id' => :'String',
        :'origination_account_id' => :'String',
        :'transfer_type' => :'OmittableTransferType',
        :'transfer_amount' => :'String',
        :'failure_reason' => :'TransferFailure',
        :'sweep_id' => :'String',
        :'sweep_amount' => :'String',
        :'refund_id' => :'String',
        :'originator_client_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'funding_account_id',
        :'origination_account_id',
        :'failure_reason',
        :'sweep_id',
        :'sweep_amount',
        :'refund_id',
        :'originator_client_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::TransferEvent` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::TransferEvent`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'funding_account_id')
        self.funding_account_id = attributes[:'funding_account_id']
      end

      if attributes.key?(:'transfer_id')
        self.transfer_id = attributes[:'transfer_id']
      end

      if attributes.key?(:'origination_account_id')
        self.origination_account_id = attributes[:'origination_account_id']
      end

      if attributes.key?(:'transfer_type')
        self.transfer_type = attributes[:'transfer_type']
      end

      if attributes.key?(:'transfer_amount')
        self.transfer_amount = attributes[:'transfer_amount']
      end

      if attributes.key?(:'failure_reason')
        self.failure_reason = attributes[:'failure_reason']
      end

      if attributes.key?(:'sweep_id')
        self.sweep_id = attributes[:'sweep_id']
      end

      if attributes.key?(:'sweep_amount')
        self.sweep_amount = attributes[:'sweep_amount']
      end

      if attributes.key?(:'refund_id')
        self.refund_id = attributes[:'refund_id']
      end

      if attributes.key?(:'originator_client_id')
        self.originator_client_id = attributes[:'originator_client_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @event_id.nil?
        invalid_properties.push('invalid value for "event_id", event_id cannot be nil.')
      end

      if @event_id < 0
        invalid_properties.push('invalid value for "event_id", must be greater than or equal to 0.')
      end


      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      if @event_type.nil?
        invalid_properties.push('invalid value for "event_type", event_type cannot be nil.')
      end

      if @transfer_id.nil?
        invalid_properties.push('invalid value for "transfer_id", transfer_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @event_id.nil?
      return false if @event_id < 0
      return false if @timestamp.nil?
      return false if @event_type.nil?
      return false if @transfer_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] event_id Value to be assigned
    def event_id=(event_id)
      if event_id.nil?
        fail ArgumentError, 'event_id cannot be nil'
      end

      if event_id < 0
        fail ArgumentError, 'invalid value for "event_id", must be greater than or equal to 0.'
      end


      @event_id = event_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          event_id == o.event_id &&
          timestamp == o.timestamp &&
          event_type == o.event_type &&
          account_id == o.account_id &&
          funding_account_id == o.funding_account_id &&
          transfer_id == o.transfer_id &&
          origination_account_id == o.origination_account_id &&
          transfer_type == o.transfer_type &&
          transfer_amount == o.transfer_amount &&
          failure_reason == o.failure_reason &&
          sweep_id == o.sweep_id &&
          sweep_amount == o.sweep_amount &&
          refund_id == o.refund_id &&
          originator_client_id == o.originator_client_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [event_id, timestamp, event_type, account_id, funding_account_id, transfer_id, origination_account_id, transfer_type, transfer_amount, failure_reason, sweep_id, sweep_amount, refund_id, originator_client_id].hash
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
      attributes = attributes.transform_keys(&:to_sym)
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
