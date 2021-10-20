=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'date'
require 'time'

module MxPlatformRuby
  class ManagedAccountUpdateRequest
    attr_accessor :account_number

    attr_accessor :apr

    attr_accessor :apy

    attr_accessor :available_balance

    attr_accessor :available_credit

    attr_accessor :balance

    attr_accessor :cash_surrender_value

    attr_accessor :credit_limit

    attr_accessor :currency_code

    attr_accessor :day_payment_is_due

    attr_accessor :death_benefit

    attr_accessor :id

    attr_accessor :interest_rate

    attr_accessor :is_closed

    attr_accessor :is_hidden

    attr_accessor :last_payment

    attr_accessor :last_payment_at

    attr_accessor :loan_amount

    attr_accessor :matures_on

    attr_accessor :metadata

    attr_accessor :minimum_balance

    attr_accessor :minimum_payment

    attr_accessor :name

    attr_accessor :nickname

    attr_accessor :original_balance

    attr_accessor :payment_due_at

    attr_accessor :payoff_balance

    attr_accessor :routing_number

    attr_accessor :started_on

    attr_accessor :subtype

    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_number' => :'account_number',
        :'apr' => :'apr',
        :'apy' => :'apy',
        :'available_balance' => :'available_balance',
        :'available_credit' => :'available_credit',
        :'balance' => :'balance',
        :'cash_surrender_value' => :'cash_surrender_value',
        :'credit_limit' => :'credit_limit',
        :'currency_code' => :'currency_code',
        :'day_payment_is_due' => :'day_payment_is_due',
        :'death_benefit' => :'death_benefit',
        :'id' => :'id',
        :'interest_rate' => :'interest_rate',
        :'is_closed' => :'is_closed',
        :'is_hidden' => :'is_hidden',
        :'last_payment' => :'last_payment',
        :'last_payment_at' => :'last_payment_at',
        :'loan_amount' => :'loan_amount',
        :'matures_on' => :'matures_on',
        :'metadata' => :'metadata',
        :'minimum_balance' => :'minimum_balance',
        :'minimum_payment' => :'minimum_payment',
        :'name' => :'name',
        :'nickname' => :'nickname',
        :'original_balance' => :'original_balance',
        :'payment_due_at' => :'payment_due_at',
        :'payoff_balance' => :'payoff_balance',
        :'routing_number' => :'routing_number',
        :'started_on' => :'started_on',
        :'subtype' => :'subtype',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_number' => :'String',
        :'apr' => :'Float',
        :'apy' => :'Float',
        :'available_balance' => :'Float',
        :'available_credit' => :'Float',
        :'balance' => :'Float',
        :'cash_surrender_value' => :'Float',
        :'credit_limit' => :'Float',
        :'currency_code' => :'String',
        :'day_payment_is_due' => :'Integer',
        :'death_benefit' => :'Integer',
        :'id' => :'String',
        :'interest_rate' => :'Float',
        :'is_closed' => :'Boolean',
        :'is_hidden' => :'Boolean',
        :'last_payment' => :'Float',
        :'last_payment_at' => :'String',
        :'loan_amount' => :'Float',
        :'matures_on' => :'String',
        :'metadata' => :'String',
        :'minimum_balance' => :'Float',
        :'minimum_payment' => :'Float',
        :'name' => :'String',
        :'nickname' => :'String',
        :'original_balance' => :'Float',
        :'payment_due_at' => :'String',
        :'payoff_balance' => :'Float',
        :'routing_number' => :'String',
        :'started_on' => :'String',
        :'subtype' => :'String',
        :'type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MxPlatformRuby::ManagedAccountUpdateRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MxPlatformRuby::ManagedAccountUpdateRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
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

      if attributes.key?(:'available_credit')
        self.available_credit = attributes[:'available_credit']
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

      if attributes.key?(:'day_payment_is_due')
        self.day_payment_is_due = attributes[:'day_payment_is_due']
      end

      if attributes.key?(:'death_benefit')
        self.death_benefit = attributes[:'death_benefit']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'interest_rate')
        self.interest_rate = attributes[:'interest_rate']
      end

      if attributes.key?(:'is_closed')
        self.is_closed = attributes[:'is_closed']
      end

      if attributes.key?(:'is_hidden')
        self.is_hidden = attributes[:'is_hidden']
      end

      if attributes.key?(:'last_payment')
        self.last_payment = attributes[:'last_payment']
      end

      if attributes.key?(:'last_payment_at')
        self.last_payment_at = attributes[:'last_payment_at']
      end

      if attributes.key?(:'loan_amount')
        self.loan_amount = attributes[:'loan_amount']
      end

      if attributes.key?(:'matures_on')
        self.matures_on = attributes[:'matures_on']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'minimum_balance')
        self.minimum_balance = attributes[:'minimum_balance']
      end

      if attributes.key?(:'minimum_payment')
        self.minimum_payment = attributes[:'minimum_payment']
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

      if attributes.key?(:'payment_due_at')
        self.payment_due_at = attributes[:'payment_due_at']
      end

      if attributes.key?(:'payoff_balance')
        self.payoff_balance = attributes[:'payoff_balance']
      end

      if attributes.key?(:'routing_number')
        self.routing_number = attributes[:'routing_number']
      end

      if attributes.key?(:'started_on')
        self.started_on = attributes[:'started_on']
      end

      if attributes.key?(:'subtype')
        self.subtype = attributes[:'subtype']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
          account_number == o.account_number &&
          apr == o.apr &&
          apy == o.apy &&
          available_balance == o.available_balance &&
          available_credit == o.available_credit &&
          balance == o.balance &&
          cash_surrender_value == o.cash_surrender_value &&
          credit_limit == o.credit_limit &&
          currency_code == o.currency_code &&
          day_payment_is_due == o.day_payment_is_due &&
          death_benefit == o.death_benefit &&
          id == o.id &&
          interest_rate == o.interest_rate &&
          is_closed == o.is_closed &&
          is_hidden == o.is_hidden &&
          last_payment == o.last_payment &&
          last_payment_at == o.last_payment_at &&
          loan_amount == o.loan_amount &&
          matures_on == o.matures_on &&
          metadata == o.metadata &&
          minimum_balance == o.minimum_balance &&
          minimum_payment == o.minimum_payment &&
          name == o.name &&
          nickname == o.nickname &&
          original_balance == o.original_balance &&
          payment_due_at == o.payment_due_at &&
          payoff_balance == o.payoff_balance &&
          routing_number == o.routing_number &&
          started_on == o.started_on &&
          subtype == o.subtype &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_number, apr, apy, available_balance, available_credit, balance, cash_surrender_value, credit_limit, currency_code, day_payment_is_due, death_benefit, id, interest_rate, is_closed, is_hidden, last_payment, last_payment_at, loan_amount, matures_on, metadata, minimum_balance, minimum_payment, name, nickname, original_balance, payment_due_at, payoff_balance, routing_number, started_on, subtype, type].hash
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
