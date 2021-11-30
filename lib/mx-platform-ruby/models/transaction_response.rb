=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module MxPlatformRuby
  class TransactionResponse
    attr_accessor :account_guid

    attr_accessor :account_id

    attr_accessor :amount

    attr_accessor :category

    attr_accessor :category_guid

    attr_accessor :check_number_string

    attr_accessor :created_at

    attr_accessor :currency_code

    attr_accessor :date

    attr_accessor :description

    attr_accessor :extended_transaction_type

    attr_accessor :guid

    attr_accessor :id

    attr_accessor :is_bill_pay

    attr_accessor :is_direct_deposit

    attr_accessor :is_expense

    attr_accessor :is_fee

    attr_accessor :is_income

    attr_accessor :is_international

    attr_accessor :is_overdraft_fee

    attr_accessor :is_payroll_advance

    attr_accessor :is_recurring

    attr_accessor :is_subscription

    attr_accessor :latitude

    attr_accessor :localized_description

    attr_accessor :localized_memo

    attr_accessor :longitude

    attr_accessor :member_guid

    attr_accessor :member_is_managed_by_user

    attr_accessor :memo

    attr_accessor :merchant_category_code

    attr_accessor :merchant_guid

    attr_accessor :merchant_location_guid

    attr_accessor :metadata

    attr_accessor :original_description

    attr_accessor :posted_at

    attr_accessor :status

    attr_accessor :top_level_category

    attr_accessor :transacted_at

    attr_accessor :type

    attr_accessor :updated_at

    attr_accessor :user_guid

    attr_accessor :user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_guid' => :'account_guid',
        :'account_id' => :'account_id',
        :'amount' => :'amount',
        :'category' => :'category',
        :'category_guid' => :'category_guid',
        :'check_number_string' => :'check_number_string',
        :'created_at' => :'created_at',
        :'currency_code' => :'currency_code',
        :'date' => :'date',
        :'description' => :'description',
        :'extended_transaction_type' => :'extended_transaction_type',
        :'guid' => :'guid',
        :'id' => :'id',
        :'is_bill_pay' => :'is_bill_pay',
        :'is_direct_deposit' => :'is_direct_deposit',
        :'is_expense' => :'is_expense',
        :'is_fee' => :'is_fee',
        :'is_income' => :'is_income',
        :'is_international' => :'is_international',
        :'is_overdraft_fee' => :'is_overdraft_fee',
        :'is_payroll_advance' => :'is_payroll_advance',
        :'is_recurring' => :'is_recurring',
        :'is_subscription' => :'is_subscription',
        :'latitude' => :'latitude',
        :'localized_description' => :'localized_description',
        :'localized_memo' => :'localized_memo',
        :'longitude' => :'longitude',
        :'member_guid' => :'member_guid',
        :'member_is_managed_by_user' => :'member_is_managed_by_user',
        :'memo' => :'memo',
        :'merchant_category_code' => :'merchant_category_code',
        :'merchant_guid' => :'merchant_guid',
        :'merchant_location_guid' => :'merchant_location_guid',
        :'metadata' => :'metadata',
        :'original_description' => :'original_description',
        :'posted_at' => :'posted_at',
        :'status' => :'status',
        :'top_level_category' => :'top_level_category',
        :'transacted_at' => :'transacted_at',
        :'type' => :'type',
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
        :'account_guid' => :'String',
        :'account_id' => :'String',
        :'amount' => :'Float',
        :'category' => :'String',
        :'category_guid' => :'String',
        :'check_number_string' => :'String',
        :'created_at' => :'String',
        :'currency_code' => :'String',
        :'date' => :'String',
        :'description' => :'String',
        :'extended_transaction_type' => :'String',
        :'guid' => :'String',
        :'id' => :'String',
        :'is_bill_pay' => :'Boolean',
        :'is_direct_deposit' => :'Boolean',
        :'is_expense' => :'Boolean',
        :'is_fee' => :'Boolean',
        :'is_income' => :'Boolean',
        :'is_international' => :'Boolean',
        :'is_overdraft_fee' => :'Boolean',
        :'is_payroll_advance' => :'Boolean',
        :'is_recurring' => :'Boolean',
        :'is_subscription' => :'Boolean',
        :'latitude' => :'Float',
        :'localized_description' => :'String',
        :'localized_memo' => :'String',
        :'longitude' => :'Float',
        :'member_guid' => :'String',
        :'member_is_managed_by_user' => :'Boolean',
        :'memo' => :'String',
        :'merchant_category_code' => :'Integer',
        :'merchant_guid' => :'String',
        :'merchant_location_guid' => :'String',
        :'metadata' => :'String',
        :'original_description' => :'String',
        :'posted_at' => :'String',
        :'status' => :'String',
        :'top_level_category' => :'String',
        :'transacted_at' => :'String',
        :'type' => :'String',
        :'updated_at' => :'String',
        :'user_guid' => :'String',
        :'user_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'account_id',
        :'amount',
        :'category',
        :'category_guid',
        :'check_number_string',
        :'created_at',
        :'currency_code',
        :'date',
        :'description',
        :'extended_transaction_type',
        :'id',
        :'is_bill_pay',
        :'is_direct_deposit',
        :'is_expense',
        :'is_fee',
        :'is_income',
        :'is_international',
        :'is_overdraft_fee',
        :'is_payroll_advance',
        :'is_recurring',
        :'is_subscription',
        :'latitude',
        :'localized_description',
        :'localized_memo',
        :'longitude',
        :'member_is_managed_by_user',
        :'memo',
        :'merchant_category_code',
        :'metadata',
        :'original_description',
        :'posted_at',
        :'status',
        :'top_level_category',
        :'transacted_at',
        :'type',
        :'updated_at',
        :'user_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MxPlatformRuby::TransactionResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MxPlatformRuby::TransactionResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_guid')
        self.account_guid = attributes[:'account_guid']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'category_guid')
        self.category_guid = attributes[:'category_guid']
      end

      if attributes.key?(:'check_number_string')
        self.check_number_string = attributes[:'check_number_string']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'extended_transaction_type')
        self.extended_transaction_type = attributes[:'extended_transaction_type']
      end

      if attributes.key?(:'guid')
        self.guid = attributes[:'guid']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_bill_pay')
        self.is_bill_pay = attributes[:'is_bill_pay']
      end

      if attributes.key?(:'is_direct_deposit')
        self.is_direct_deposit = attributes[:'is_direct_deposit']
      end

      if attributes.key?(:'is_expense')
        self.is_expense = attributes[:'is_expense']
      end

      if attributes.key?(:'is_fee')
        self.is_fee = attributes[:'is_fee']
      end

      if attributes.key?(:'is_income')
        self.is_income = attributes[:'is_income']
      end

      if attributes.key?(:'is_international')
        self.is_international = attributes[:'is_international']
      end

      if attributes.key?(:'is_overdraft_fee')
        self.is_overdraft_fee = attributes[:'is_overdraft_fee']
      end

      if attributes.key?(:'is_payroll_advance')
        self.is_payroll_advance = attributes[:'is_payroll_advance']
      end

      if attributes.key?(:'is_recurring')
        self.is_recurring = attributes[:'is_recurring']
      end

      if attributes.key?(:'is_subscription')
        self.is_subscription = attributes[:'is_subscription']
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

      if attributes.key?(:'member_guid')
        self.member_guid = attributes[:'member_guid']
      end

      if attributes.key?(:'member_is_managed_by_user')
        self.member_is_managed_by_user = attributes[:'member_is_managed_by_user']
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

      if attributes.key?(:'original_description')
        self.original_description = attributes[:'original_description']
      end

      if attributes.key?(:'posted_at')
        self.posted_at = attributes[:'posted_at']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'top_level_category')
        self.top_level_category = attributes[:'top_level_category']
      end

      if attributes.key?(:'transacted_at')
        self.transacted_at = attributes[:'transacted_at']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
          account_guid == o.account_guid &&
          account_id == o.account_id &&
          amount == o.amount &&
          category == o.category &&
          category_guid == o.category_guid &&
          check_number_string == o.check_number_string &&
          created_at == o.created_at &&
          currency_code == o.currency_code &&
          date == o.date &&
          description == o.description &&
          extended_transaction_type == o.extended_transaction_type &&
          guid == o.guid &&
          id == o.id &&
          is_bill_pay == o.is_bill_pay &&
          is_direct_deposit == o.is_direct_deposit &&
          is_expense == o.is_expense &&
          is_fee == o.is_fee &&
          is_income == o.is_income &&
          is_international == o.is_international &&
          is_overdraft_fee == o.is_overdraft_fee &&
          is_payroll_advance == o.is_payroll_advance &&
          is_recurring == o.is_recurring &&
          is_subscription == o.is_subscription &&
          latitude == o.latitude &&
          localized_description == o.localized_description &&
          localized_memo == o.localized_memo &&
          longitude == o.longitude &&
          member_guid == o.member_guid &&
          member_is_managed_by_user == o.member_is_managed_by_user &&
          memo == o.memo &&
          merchant_category_code == o.merchant_category_code &&
          merchant_guid == o.merchant_guid &&
          merchant_location_guid == o.merchant_location_guid &&
          metadata == o.metadata &&
          original_description == o.original_description &&
          posted_at == o.posted_at &&
          status == o.status &&
          top_level_category == o.top_level_category &&
          transacted_at == o.transacted_at &&
          type == o.type &&
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
      [account_guid, account_id, amount, category, category_guid, check_number_string, created_at, currency_code, date, description, extended_transaction_type, guid, id, is_bill_pay, is_direct_deposit, is_expense, is_fee, is_income, is_international, is_overdraft_fee, is_payroll_advance, is_recurring, is_subscription, latitude, localized_description, localized_memo, longitude, member_guid, member_is_managed_by_user, memo, merchant_category_code, merchant_guid, merchant_location_guid, metadata, original_description, posted_at, status, top_level_category, transacted_at, type, updated_at, user_guid, user_id].hash
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
