=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.79.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module Plaid
  # Contains details about a security
  class Security
    # A unique, Plaid-specific identifier for the security, used to associate securities with holdings. Like all Plaid identifiers, the `security_id` is case sensitive.
    attr_accessor :security_id

    # 12-character ISIN, a globally unique securities identifier.
    attr_accessor :isin

    # 9-character CUSIP, an identifier assigned to North American securities.
    attr_accessor :cusip

    # 7-character SEDOL, an identifier assigned to securities in the UK.
    attr_accessor :sedol

    # An identifier given to the security by the institution
    attr_accessor :institution_security_id

    # If `institution_security_id` is present, this field indicates the Plaid `institution_id` of the institution to whom the identifier belongs.
    attr_accessor :institution_id

    # In certain cases, Plaid will provide the ID of another security whose performance resembles this security, typically when the original security has low volume, or when a private security can be modeled with a publicly traded security.
    attr_accessor :proxy_security_id

    # A descriptive name for the security, suitable for display.
    attr_accessor :name

    # The security’s trading symbol for publicly traded securities, and otherwise a short identifier if available.
    attr_accessor :ticker_symbol

    # Indicates that a security is a highly liquid asset and can be treated like cash.
    attr_accessor :is_cash_equivalent

    # The security type of the holding. Valid security types are:  `cash`: Cash, currency, and money market funds  `derivative`: Options, warrants, and other derivative instruments  `equity`: Domestic and foreign equities  `etf`: Multi-asset exchange-traded investment funds  `fixed income`: Bonds and certificates of deposit (CDs)  `loan`: Loans and loan receivables.  `mutual fund`: Open- and closed-end vehicles pooling funds of multiple investors.  `other`: Unknown or other investment types
    attr_accessor :type

    # Price of the security at the close of the previous trading session. `null` for non-public securities. If the security is a foreign currency or a cryptocurrency this field will be updated daily and will be priced in USD.
    attr_accessor :close_price

    # Date for which `close_price` is accurate. Always `null` if `close_price` is `null`.
    attr_accessor :close_price_as_of

    # The ISO-4217 currency code of the price given. Always `null` if `unofficial_currency_code` is non-`null`.
    attr_accessor :iso_currency_code

    # The unofficial currency code associated with the security. Always `null` if `iso_currency_code` is non-`null`. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.  See the [currency code schema](https://plaid.com/docs/api/accounts#currency-code-schema) for a full listing of supported `iso_currency_code`s.
    attr_accessor :unofficial_currency_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'security_id' => :'security_id',
        :'isin' => :'isin',
        :'cusip' => :'cusip',
        :'sedol' => :'sedol',
        :'institution_security_id' => :'institution_security_id',
        :'institution_id' => :'institution_id',
        :'proxy_security_id' => :'proxy_security_id',
        :'name' => :'name',
        :'ticker_symbol' => :'ticker_symbol',
        :'is_cash_equivalent' => :'is_cash_equivalent',
        :'type' => :'type',
        :'close_price' => :'close_price',
        :'close_price_as_of' => :'close_price_as_of',
        :'iso_currency_code' => :'iso_currency_code',
        :'unofficial_currency_code' => :'unofficial_currency_code'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'security_id' => :'String',
        :'isin' => :'String',
        :'cusip' => :'String',
        :'sedol' => :'String',
        :'institution_security_id' => :'String',
        :'institution_id' => :'String',
        :'proxy_security_id' => :'String',
        :'name' => :'String',
        :'ticker_symbol' => :'String',
        :'is_cash_equivalent' => :'Boolean',
        :'type' => :'String',
        :'close_price' => :'Float',
        :'close_price_as_of' => :'Date',
        :'iso_currency_code' => :'String',
        :'unofficial_currency_code' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'isin',
        :'cusip',
        :'sedol',
        :'institution_security_id',
        :'institution_id',
        :'proxy_security_id',
        :'name',
        :'ticker_symbol',
        :'is_cash_equivalent',
        :'type',
        :'close_price',
        :'close_price_as_of',
        :'iso_currency_code',
        :'unofficial_currency_code'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::Security` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::Security`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'security_id')
        self.security_id = attributes[:'security_id']
      end

      if attributes.key?(:'isin')
        self.isin = attributes[:'isin']
      end

      if attributes.key?(:'cusip')
        self.cusip = attributes[:'cusip']
      end

      if attributes.key?(:'sedol')
        self.sedol = attributes[:'sedol']
      end

      if attributes.key?(:'institution_security_id')
        self.institution_security_id = attributes[:'institution_security_id']
      end

      if attributes.key?(:'institution_id')
        self.institution_id = attributes[:'institution_id']
      end

      if attributes.key?(:'proxy_security_id')
        self.proxy_security_id = attributes[:'proxy_security_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'ticker_symbol')
        self.ticker_symbol = attributes[:'ticker_symbol']
      end

      if attributes.key?(:'is_cash_equivalent')
        self.is_cash_equivalent = attributes[:'is_cash_equivalent']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'close_price')
        self.close_price = attributes[:'close_price']
      end

      if attributes.key?(:'close_price_as_of')
        self.close_price_as_of = attributes[:'close_price_as_of']
      end

      if attributes.key?(:'iso_currency_code')
        self.iso_currency_code = attributes[:'iso_currency_code']
      end

      if attributes.key?(:'unofficial_currency_code')
        self.unofficial_currency_code = attributes[:'unofficial_currency_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @security_id.nil?
        invalid_properties.push('invalid value for "security_id", security_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @security_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          security_id == o.security_id &&
          isin == o.isin &&
          cusip == o.cusip &&
          sedol == o.sedol &&
          institution_security_id == o.institution_security_id &&
          institution_id == o.institution_id &&
          proxy_security_id == o.proxy_security_id &&
          name == o.name &&
          ticker_symbol == o.ticker_symbol &&
          is_cash_equivalent == o.is_cash_equivalent &&
          type == o.type &&
          close_price == o.close_price &&
          close_price_as_of == o.close_price_as_of &&
          iso_currency_code == o.iso_currency_code &&
          unofficial_currency_code == o.unofficial_currency_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [security_id, isin, cusip, sedol, institution_security_id, institution_id, proxy_security_id, name, ticker_symbol, is_cash_equivalent, type, close_price, close_price_as_of, iso_currency_code, unofficial_currency_code].hash
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
