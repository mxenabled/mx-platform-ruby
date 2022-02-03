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
  class ManagedTransactionCreateRequest
    attr_accessor :amount

    attr_accessor :category

    attr_accessor :check_number_string

    attr_accessor :currency_code

    attr_accessor :description

    attr_accessor :id

    attr_accessor :is_international

    attr_accessor :latitude

    attr_accessor :localized_description

    attr_accessor :localized_memo

    attr_accessor :longitude

    attr_accessor :memo

    attr_accessor :merchant_category_code

    attr_accessor :merchant_guid

    attr_accessor :merchant_location_guid

    attr_accessor :metadata

    attr_accessor :posted_at

    attr_accessor :status

    attr_accessor :transacted_at

    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'category' => :'category',
        :'check_number_string' => :'check_number_string',
        :'currency_code' => :'currency_code',
        :'description' => :'description',
        :'id' => :'id',
        :'is_international' => :'is_international',
        :'latitude' => :'latitude',
        :'localized_description' => :'localized_description',
        :'localized_memo' => :'localized_memo',
        :'longitude' => :'longitude',
        :'memo' => :'memo',
        :'merchant_category_code' => :'merchant_category_code',
        :'merchant_guid' => :'merchant_guid',
        :'merchant_location_guid' => :'merchant_location_guid',
        :'metadata' => :'metadata',
        :'posted_at' => :'posted_at',
        :'status' => :'status',
        :'transacted_at' => :'transacted_at',
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
        :'amount' => :'String',
        :'category' => :'String',
        :'check_number_string' => :'String',
        :'currency_code' => :'String',
        :'description' => :'String',
        :'id' => :'String',
        :'is_international' => :'Boolean',
        :'latitude' => :'Float',
        :'localized_description' => :'String',
        :'localized_memo' => :'String',
        :'longitude' => :'Float',
        :'memo' => :'String',
        :'merchant_category_code' => :'Integer',
        :'merchant_guid' => :'String',
        :'merchant_location_guid' => :'String',
        :'metadata' => :'String',
        :'posted_at' => :'String',
        :'status' => :'String',
        :'transacted_at' => :'String',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MxPlatformRuby::ManagedTransactionCreateRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MxPlatformRuby::ManagedTransactionCreateRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'check_number_string')
        self.check_number_string = attributes[:'check_number_string']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_international')
        self.is_international = attributes[:'is_international']
      end

      if attributes.key?(:'latitude')
        self.latitude = attributes[:'latitude']
      end

      if attributes.key?(:'localized_description')
        self.localized_description = attributes[:'localized_description']
      end

      if attributes.key?(:'localized_memo')
        self.localized_memo = attributes[:'localized_memo']
      end

      if attributes.key?(:'longitude')
        self.longitude = attributes[:'longitude']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.key?(:'merchant_category_code')
        self.merchant_category_code = attributes[:'merchant_category_code']
      end

      if attributes.key?(:'merchant_guid')
        self.merchant_guid = attributes[:'merchant_guid']
      end

      if attributes.key?(:'merchant_location_guid')
        self.merchant_location_guid = attributes[:'merchant_location_guid']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'posted_at')
        self.posted_at = attributes[:'posted_at']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'transacted_at')
        self.transacted_at = attributes[:'transacted_at']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @transacted_at.nil?
        invalid_properties.push('invalid value for "transacted_at", transacted_at cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount.nil?
      return false if @description.nil?
      return false if @status.nil?
      return false if @transacted_at.nil?
      return false if @type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          category == o.category &&
          check_number_string == o.check_number_string &&
          currency_code == o.currency_code &&
          description == o.description &&
          id == o.id &&
          is_international == o.is_international &&
          latitude == o.latitude &&
          localized_description == o.localized_description &&
          localized_memo == o.localized_memo &&
          longitude == o.longitude &&
          memo == o.memo &&
          merchant_category_code == o.merchant_category_code &&
          merchant_guid == o.merchant_guid &&
          merchant_location_guid == o.merchant_location_guid &&
          metadata == o.metadata &&
          posted_at == o.posted_at &&
          status == o.status &&
          transacted_at == o.transacted_at &&
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
      [amount, category, check_number_string, currency_code, description, id, is_international, latitude, localized_description, localized_memo, longitude, memo, merchant_category_code, merchant_guid, merchant_location_guid, metadata, posted_at, status, transacted_at, type].hash
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
