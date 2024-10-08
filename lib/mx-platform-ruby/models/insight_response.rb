=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module MxPlatformRuby
  class InsightResponse
    attr_accessor :active_at

    attr_accessor :client_guid

    attr_accessor :created_at

    attr_accessor :cta_clicked_at

    attr_accessor :description

    attr_accessor :guid

    attr_accessor :has_associated_accounts

    attr_accessor :has_associated_merchants

    attr_accessor :has_associated_scheduled_payments

    attr_accessor :has_associated_transactions

    attr_accessor :has_been_displayed

    attr_accessor :is_dismissed

    attr_accessor :micro_call_to_action

    attr_accessor :micro_description

    attr_accessor :micro_title

    attr_accessor :template

    attr_accessor :title

    attr_accessor :updated_at

    attr_accessor :user_guid

    attr_accessor :user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active_at' => :'active_at',
        :'client_guid' => :'client_guid',
        :'created_at' => :'created_at',
        :'cta_clicked_at' => :'cta_clicked_at',
        :'description' => :'description',
        :'guid' => :'guid',
        :'has_associated_accounts' => :'has_associated_accounts',
        :'has_associated_merchants' => :'has_associated_merchants',
        :'has_associated_scheduled_payments' => :'has_associated_scheduled_payments',
        :'has_associated_transactions' => :'has_associated_transactions',
        :'has_been_displayed' => :'has_been_displayed',
        :'is_dismissed' => :'is_dismissed',
        :'micro_call_to_action' => :'micro_call_to_action',
        :'micro_description' => :'micro_description',
        :'micro_title' => :'micro_title',
        :'template' => :'template',
        :'title' => :'title',
        :'updated_at' => :'updated_at',
        :'user_guid' => :'user_guid',
        :'user_id' => :'user_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'active_at' => :'String',
        :'client_guid' => :'String',
        :'created_at' => :'String',
        :'cta_clicked_at' => :'String',
        :'description' => :'String',
        :'guid' => :'String',
        :'has_associated_accounts' => :'Boolean',
        :'has_associated_merchants' => :'Boolean',
        :'has_associated_scheduled_payments' => :'Boolean',
        :'has_associated_transactions' => :'Boolean',
        :'has_been_displayed' => :'Boolean',
        :'is_dismissed' => :'Boolean',
        :'micro_call_to_action' => :'String',
        :'micro_description' => :'String',
        :'micro_title' => :'String',
        :'template' => :'String',
        :'title' => :'String',
        :'updated_at' => :'String',
        :'user_guid' => :'String',
        :'user_id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'active_at',
        :'client_guid',
        :'created_at',
        :'cta_clicked_at',
        :'description',
        :'guid',
        :'has_associated_accounts',
        :'has_associated_merchants',
        :'has_associated_scheduled_payments',
        :'has_associated_transactions',
        :'has_been_displayed',
        :'is_dismissed',
        :'micro_call_to_action',
        :'micro_description',
        :'micro_title',
        :'template',
        :'title',
        :'updated_at',
        :'user_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MxPlatformRuby::InsightResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MxPlatformRuby::InsightResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active_at')
        self.active_at = attributes[:'active_at']
      end

      if attributes.key?(:'client_guid')
        self.client_guid = attributes[:'client_guid']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'cta_clicked_at')
        self.cta_clicked_at = attributes[:'cta_clicked_at']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'guid')
        self.guid = attributes[:'guid']
      end

      if attributes.key?(:'has_associated_accounts')
        self.has_associated_accounts = attributes[:'has_associated_accounts']
      end

      if attributes.key?(:'has_associated_merchants')
        self.has_associated_merchants = attributes[:'has_associated_merchants']
      end

      if attributes.key?(:'has_associated_scheduled_payments')
        self.has_associated_scheduled_payments = attributes[:'has_associated_scheduled_payments']
      end

      if attributes.key?(:'has_associated_transactions')
        self.has_associated_transactions = attributes[:'has_associated_transactions']
      end

      if attributes.key?(:'has_been_displayed')
        self.has_been_displayed = attributes[:'has_been_displayed']
      end

      if attributes.key?(:'is_dismissed')
        self.is_dismissed = attributes[:'is_dismissed']
      end

      if attributes.key?(:'micro_call_to_action')
        self.micro_call_to_action = attributes[:'micro_call_to_action']
      end

      if attributes.key?(:'micro_description')
        self.micro_description = attributes[:'micro_description']
      end

      if attributes.key?(:'micro_title')
        self.micro_title = attributes[:'micro_title']
      end

      if attributes.key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'user_guid')
        self.user_guid = attributes[:'user_guid']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active_at == o.active_at &&
          client_guid == o.client_guid &&
          created_at == o.created_at &&
          cta_clicked_at == o.cta_clicked_at &&
          description == o.description &&
          guid == o.guid &&
          has_associated_accounts == o.has_associated_accounts &&
          has_associated_merchants == o.has_associated_merchants &&
          has_associated_scheduled_payments == o.has_associated_scheduled_payments &&
          has_associated_transactions == o.has_associated_transactions &&
          has_been_displayed == o.has_been_displayed &&
          is_dismissed == o.is_dismissed &&
          micro_call_to_action == o.micro_call_to_action &&
          micro_description == o.micro_description &&
          micro_title == o.micro_title &&
          template == o.template &&
          title == o.title &&
          updated_at == o.updated_at &&
          user_guid == o.user_guid &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active_at, client_guid, created_at, cta_clicked_at, description, guid, has_associated_accounts, has_associated_merchants, has_associated_scheduled_payments, has_associated_transactions, has_been_displayed, is_dismissed, micro_call_to_action, micro_description, micro_title, template, title, updated_at, user_guid, user_id].hash
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
        klass = MxPlatformRuby.const_get(type)
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
