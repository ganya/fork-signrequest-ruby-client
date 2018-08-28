=begin
#SignRequest API

#API for SignRequest.com

OpenAPI spec version: v1
Contact: tech-support@signrequest.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SignRequestClient

  class DocumentSignerTemplateConf
    attr_accessor :signer_index

    attr_accessor :needs_to_sign

    attr_accessor :approve_only

    attr_accessor :notify_only

    attr_accessor :in_person

    attr_accessor :order

    attr_accessor :placeholders


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'signer_index' => :'signer_index',
        :'needs_to_sign' => :'needs_to_sign',
        :'approve_only' => :'approve_only',
        :'notify_only' => :'notify_only',
        :'in_person' => :'in_person',
        :'order' => :'order',
        :'placeholders' => :'placeholders'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'signer_index' => :'Integer',
        :'needs_to_sign' => :'BOOLEAN',
        :'approve_only' => :'BOOLEAN',
        :'notify_only' => :'BOOLEAN',
        :'in_person' => :'BOOLEAN',
        :'order' => :'Integer',
        :'placeholders' => :'Array<Placeholder>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'signer_index')
        self.signer_index = attributes[:'signer_index']
      end

      if attributes.has_key?(:'needs_to_sign')
        self.needs_to_sign = attributes[:'needs_to_sign']
      end

      if attributes.has_key?(:'approve_only')
        self.approve_only = attributes[:'approve_only']
      end

      if attributes.has_key?(:'notify_only')
        self.notify_only = attributes[:'notify_only']
      end

      if attributes.has_key?(:'in_person')
        self.in_person = attributes[:'in_person']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.has_key?(:'placeholders')
        if (value = attributes[:'placeholders']).is_a?(Array)
          self.placeholders = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@signer_index.nil? && @signer_index > 2147483647
        invalid_properties.push("invalid value for 'signer_index', must be smaller than or equal to 2147483647.")
      end

      if !@signer_index.nil? && @signer_index < -2147483648
        invalid_properties.push("invalid value for 'signer_index', must be greater than or equal to -2147483648.")
      end

      if !@order.nil? && @order > 2147483647
        invalid_properties.push("invalid value for 'order', must be smaller than or equal to 2147483647.")
      end

      if !@order.nil? && @order < 0
        invalid_properties.push("invalid value for 'order', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@signer_index.nil? && @signer_index > 2147483647
      return false if !@signer_index.nil? && @signer_index < -2147483648
      return false if !@order.nil? && @order > 2147483647
      return false if !@order.nil? && @order < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] signer_index Value to be assigned
    def signer_index=(signer_index)

      if !signer_index.nil? && signer_index > 2147483647
        fail ArgumentError, "invalid value for 'signer_index', must be smaller than or equal to 2147483647."
      end

      if !signer_index.nil? && signer_index < -2147483648
        fail ArgumentError, "invalid value for 'signer_index', must be greater than or equal to -2147483648."
      end

      @signer_index = signer_index
    end

    # Custom attribute writer method with validation
    # @param [Object] order Value to be assigned
    def order=(order)

      if !order.nil? && order > 2147483647
        fail ArgumentError, "invalid value for 'order', must be smaller than or equal to 2147483647."
      end

      if !order.nil? && order < 0
        fail ArgumentError, "invalid value for 'order', must be greater than or equal to 0."
      end

      @order = order
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          signer_index == o.signer_index &&
          needs_to_sign == o.needs_to_sign &&
          approve_only == o.approve_only &&
          notify_only == o.notify_only &&
          in_person == o.in_person &&
          order == o.order &&
          placeholders == o.placeholders
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [signer_index, needs_to_sign, approve_only, notify_only, in_person, order, placeholders].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = SignRequestClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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
