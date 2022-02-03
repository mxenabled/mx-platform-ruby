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
  class WidgetRequest
    attr_accessor :color_scheme

    attr_accessor :current_institution_code

    attr_accessor :current_institution_guid

    attr_accessor :current_member_guid

    attr_accessor :disable_institution_search

    attr_accessor :include_transactions

    attr_accessor :is_mobile_webview

    attr_accessor :mode

    attr_accessor :ui_message_version

    attr_accessor :ui_message_webview_url_scheme

    attr_accessor :update_credentials

    attr_accessor :wait_for_full_aggregation

    attr_accessor :widget_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'color_scheme' => :'color_scheme',
        :'current_institution_code' => :'current_institution_code',
        :'current_institution_guid' => :'current_institution_guid',
        :'current_member_guid' => :'current_member_guid',
        :'disable_institution_search' => :'disable_institution_search',
        :'include_transactions' => :'include_transactions',
        :'is_mobile_webview' => :'is_mobile_webview',
        :'mode' => :'mode',
        :'ui_message_version' => :'ui_message_version',
        :'ui_message_webview_url_scheme' => :'ui_message_webview_url_scheme',
        :'update_credentials' => :'update_credentials',
        :'wait_for_full_aggregation' => :'wait_for_full_aggregation',
        :'widget_type' => :'widget_type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'color_scheme' => :'String',
        :'current_institution_code' => :'String',
        :'current_institution_guid' => :'String',
        :'current_member_guid' => :'String',
        :'disable_institution_search' => :'Boolean',
        :'include_transactions' => :'Boolean',
        :'is_mobile_webview' => :'Boolean',
        :'mode' => :'String',
        :'ui_message_version' => :'Integer',
        :'ui_message_webview_url_scheme' => :'String',
        :'update_credentials' => :'Boolean',
        :'wait_for_full_aggregation' => :'Boolean',
        :'widget_type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MxPlatformRuby::WidgetRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MxPlatformRuby::WidgetRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'color_scheme')
        self.color_scheme = attributes[:'color_scheme']
      end

      if attributes.key?(:'current_institution_code')
        self.current_institution_code = attributes[:'current_institution_code']
      end

      if attributes.key?(:'current_institution_guid')
        self.current_institution_guid = attributes[:'current_institution_guid']
      end

      if attributes.key?(:'current_member_guid')
        self.current_member_guid = attributes[:'current_member_guid']
      end

      if attributes.key?(:'disable_institution_search')
        self.disable_institution_search = attributes[:'disable_institution_search']
      end

      if attributes.key?(:'include_transactions')
        self.include_transactions = attributes[:'include_transactions']
      end

      if attributes.key?(:'is_mobile_webview')
        self.is_mobile_webview = attributes[:'is_mobile_webview']
      end

      if attributes.key?(:'mode')
        self.mode = attributes[:'mode']
      end

      if attributes.key?(:'ui_message_version')
        self.ui_message_version = attributes[:'ui_message_version']
      end

      if attributes.key?(:'ui_message_webview_url_scheme')
        self.ui_message_webview_url_scheme = attributes[:'ui_message_webview_url_scheme']
      end

      if attributes.key?(:'update_credentials')
        self.update_credentials = attributes[:'update_credentials']
      end

      if attributes.key?(:'wait_for_full_aggregation')
        self.wait_for_full_aggregation = attributes[:'wait_for_full_aggregation']
      end

      if attributes.key?(:'widget_type')
        self.widget_type = attributes[:'widget_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @widget_type.nil?
        invalid_properties.push('invalid value for "widget_type", widget_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @widget_type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          color_scheme == o.color_scheme &&
          current_institution_code == o.current_institution_code &&
          current_institution_guid == o.current_institution_guid &&
          current_member_guid == o.current_member_guid &&
          disable_institution_search == o.disable_institution_search &&
          include_transactions == o.include_transactions &&
          is_mobile_webview == o.is_mobile_webview &&
          mode == o.mode &&
          ui_message_version == o.ui_message_version &&
          ui_message_webview_url_scheme == o.ui_message_webview_url_scheme &&
          update_credentials == o.update_credentials &&
          wait_for_full_aggregation == o.wait_for_full_aggregation &&
          widget_type == o.widget_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [color_scheme, current_institution_code, current_institution_guid, current_member_guid, disable_institution_search, include_transactions, is_mobile_webview, mode, ui_message_version, ui_message_webview_url_scheme, update_credentials, wait_for_full_aggregation, widget_type].hash
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
