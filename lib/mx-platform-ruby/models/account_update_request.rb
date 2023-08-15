=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module MxPlatformRuby
  class AccountUpdateRequest
    attr_accessor :account_subtype

    attr_accessor :account_type

    attr_accessor :apr

    attr_accessor :apy

    attr_accessor :available_balance

    attr_accessor :balance

    attr_accessor :cash_surrender_value

    attr_accessor :credit_limit

    attr_accessor :currency_code

    attr_accessor :death_benefit

    attr_accessor :interest_rate

    attr_accessor :is_business

    attr_accessor :is_closed

    attr_accessor :is_hidden

    attr_accessor :loan_amount

    attr_accessor :metadata

    attr_accessor :name

    attr_accessor :nickname

    attr_accessor :original_balance

    attr_accessor :property_type

    attr_accessor :skip_webhook

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_subtype' => :'account_subtype',
        :'account_type' => :'account_type',
        :'apr' => :'apr',
        :'apy' => :'apy',
        :'available_balance' => :'available_balance',
        :'balance' => :'balance',
        :'cash_surrender_value' => :'cash_surrender_value',
        :'credit_limit' => :'credit_limit',
        :'currency_code' => :'currency_code',
        :'death_benefit' => :'death_benefit',
        :'interest_rate' => :'interest_rate',
        :'is_business' => :'is_business',
        :'is_closed' => :'is_closed',
        :'is_hidden' => :'is_hidden',
        :'loan_amount' => :'loan_amount',
        :'metadata' => :'metadata',
        :'name' => :'name',
        :'nickname' => :'nickname',
        :'original_balance' => :'original_balance',
        :'property_type' => :'property_type',
        :'skip_webhook' => :'skip_webhook'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_subtype' => :'String',
        :'account_type' => :'String',
        :'apr' => :'Float',
        :'apy' => :'Float',
        :'available_balance' => :'Float',
        :'balance' => :'Float',
        :'cash_surrender_value' => :'Float',
        :'credit_limit' => :'Float',
        :'currency_code' => :'String',
        :'death_benefit' => :'Integer',
        :'interest_rate' => :'Float',
        :'is_business' => :'Boolean',
        :'is_closed' => :'Boolean',
        :'is_hidden' => :'Boolean',
        :'loan_amount' => :'Float',
        :'metadata' => :'String',
        :'name' => :'String',
        :'nickname' => :'String',
        :'original_balance' => :'Float',
        :'property_type' => :'String',
        :'skip_webhook' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MxPlatformRuby::AccountUpdateRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MxPlatformRuby::AccountUpdateRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_subtype')
        self.account_subtype = attributes[:'account_subtype']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'apr')
        self.apr = attributes[:'apr']
      end

      if attributes.key?(:'apy')
        self.apy = attributes[:'apy']
      end

      if attributes.key?(:'available_balance')
        self.available_balance = attributes[:'available_balance']
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'cash_surrender_value')
        self.cash_surrender_value = attributes[:'cash_surrender_value']
      end

      if attributes.key?(:'credit_limit')
        self.credit_limit = attributes[:'credit_limit']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'death_benefit')
        self.death_benefit = attributes[:'death_benefit']
      end

      if attributes.key?(:'interest_rate')
        self.interest_rate = attributes[:'interest_rate']
      end

      if attributes.key?(:'is_business')
        self.is_business = attributes[:'is_business']
      end

      if attributes.key?(:'is_closed')
        self.is_closed = attributes[:'is_closed']
      end

      if attributes.key?(:'is_hidden')
        self.is_hidden = attributes[:'is_hidden']
      end

      if attributes.key?(:'loan_amount')
        self.loan_amount = attributes[:'loan_amount']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end

      if attributes.key?(:'original_balance')
        self.original_balance = attributes[:'original_balance']
      end

      if attributes.key?(:'property_type')
        self.property_type = attributes[:'property_type']
      end

      if attributes.key?(:'skip_webhook')
        self.skip_webhook = attributes[:'skip_webhook']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_subtype == o.account_subtype &&
          account_type == o.account_type &&
          apr == o.apr &&
          apy == o.apy &&
          available_balance == o.available_balance &&
          balance == o.balance &&
          cash_surrender_value == o.cash_surrender_value &&
          credit_limit == o.credit_limit &&
          currency_code == o.currency_code &&
          death_benefit == o.death_benefit &&
          interest_rate == o.interest_rate &&
          is_business == o.is_business &&
          is_closed == o.is_closed &&
          is_hidden == o.is_hidden &&
          loan_amount == o.loan_amount &&
          metadata == o.metadata &&
          name == o.name &&
          nickname == o.nickname &&
          original_balance == o.original_balance &&
          property_type == o.property_type &&
          skip_webhook == o.skip_webhook
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_subtype, account_type, apr, apy, available_balance, balance, cash_surrender_value, credit_limit, currency_code, death_benefit, interest_rate, is_business, is_closed, is_hidden, loan_amount, metadata, name, nickname, original_balance, property_type, skip_webhook].hash
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
        klass = MxPlatformRuby.const_get(type)
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
