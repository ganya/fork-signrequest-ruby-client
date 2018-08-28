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

  class Document
    attr_accessor :url

    attr_accessor :team

    attr_accessor :uuid

    attr_accessor :user

    attr_accessor :file_as_pdf

    attr_accessor :name

    attr_accessor :external_id

    attr_accessor :frontend_id

    attr_accessor :file

    attr_accessor :file_from_url

    attr_accessor :events_callback_url

    attr_accessor :file_from_content

    attr_accessor :file_from_content_name

    attr_accessor :template

    attr_accessor :prefill_tags

    attr_accessor :integrations

    attr_accessor :file_from_sf

    attr_accessor :auto_delete_days

    attr_accessor :pdf

    attr_accessor :status

    attr_accessor :signrequest

    attr_accessor :api_used

    attr_accessor :signing_log

    attr_accessor :security_hash

    attr_accessor :attachments

    attr_accessor :auto_delete_after

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'url' => :'url',
        :'team' => :'team',
        :'uuid' => :'uuid',
        :'user' => :'user',
        :'file_as_pdf' => :'file_as_pdf',
        :'name' => :'name',
        :'external_id' => :'external_id',
        :'frontend_id' => :'frontend_id',
        :'file' => :'file',
        :'file_from_url' => :'file_from_url',
        :'events_callback_url' => :'events_callback_url',
        :'file_from_content' => :'file_from_content',
        :'file_from_content_name' => :'file_from_content_name',
        :'template' => :'template',
        :'prefill_tags' => :'prefill_tags',
        :'integrations' => :'integrations',
        :'file_from_sf' => :'file_from_sf',
        :'auto_delete_days' => :'auto_delete_days',
        :'pdf' => :'pdf',
        :'status' => :'status',
        :'signrequest' => :'signrequest',
        :'api_used' => :'api_used',
        :'signing_log' => :'signing_log',
        :'security_hash' => :'security_hash',
        :'attachments' => :'attachments',
        :'auto_delete_after' => :'auto_delete_after'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'url' => :'String',
        :'team' => :'InlineTeam',
        :'uuid' => :'String',
        :'user' => :'User',
        :'file_as_pdf' => :'String',
        :'name' => :'String',
        :'external_id' => :'String',
        :'frontend_id' => :'String',
        :'file' => :'String',
        :'file_from_url' => :'String',
        :'events_callback_url' => :'String',
        :'file_from_content' => :'String',
        :'file_from_content_name' => :'String',
        :'template' => :'String',
        :'prefill_tags' => :'Array<InlinePrefillTags>',
        :'integrations' => :'Array<InlineIntegrationData>',
        :'file_from_sf' => :'FileFromSf',
        :'auto_delete_days' => :'Integer',
        :'pdf' => :'String',
        :'status' => :'String',
        :'signrequest' => :'InlineSignRequest',
        :'api_used' => :'BOOLEAN',
        :'signing_log' => :'SigningLog',
        :'security_hash' => :'String',
        :'attachments' => :'Array<DocumentAttachment>',
        :'auto_delete_after' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.has_key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'file_as_pdf')
        self.file_as_pdf = attributes[:'file_as_pdf']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.has_key?(:'frontend_id')
        self.frontend_id = attributes[:'frontend_id']
      end

      if attributes.has_key?(:'file')
        self.file = attributes[:'file']
      end

      if attributes.has_key?(:'file_from_url')
        self.file_from_url = attributes[:'file_from_url']
      end

      if attributes.has_key?(:'events_callback_url')
        self.events_callback_url = attributes[:'events_callback_url']
      end

      if attributes.has_key?(:'file_from_content')
        self.file_from_content = attributes[:'file_from_content']
      end

      if attributes.has_key?(:'file_from_content_name')
        self.file_from_content_name = attributes[:'file_from_content_name']
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'prefill_tags')
        if (value = attributes[:'prefill_tags']).is_a?(Array)
          self.prefill_tags = value
        end
      end

      if attributes.has_key?(:'integrations')
        if (value = attributes[:'integrations']).is_a?(Array)
          self.integrations = value
        end
      end

      if attributes.has_key?(:'file_from_sf')
        self.file_from_sf = attributes[:'file_from_sf']
      end

      if attributes.has_key?(:'auto_delete_days')
        self.auto_delete_days = attributes[:'auto_delete_days']
      end

      if attributes.has_key?(:'pdf')
        self.pdf = attributes[:'pdf']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'signrequest')
        self.signrequest = attributes[:'signrequest']
      end

      if attributes.has_key?(:'api_used')
        self.api_used = attributes[:'api_used']
      end

      if attributes.has_key?(:'signing_log')
        self.signing_log = attributes[:'signing_log']
      end

      if attributes.has_key?(:'security_hash')
        self.security_hash = attributes[:'security_hash']
      end

      if attributes.has_key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.has_key?(:'auto_delete_after')
        self.auto_delete_after = attributes[:'auto_delete_after']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@uuid.nil? && @uuid.to_s.length < 1
        invalid_properties.push("invalid value for 'uuid', the character length must be great than or equal to 1.")
      end

      if !@file_as_pdf.nil? && @file_as_pdf.to_s.length < 1
        invalid_properties.push("invalid value for 'file_as_pdf', the character length must be great than or equal to 1.")
      end

      if !@name.nil? && @name.to_s.length > 255
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 255.")
      end

      if !@external_id.nil? && @external_id.to_s.length > 255
        invalid_properties.push("invalid value for 'external_id', the character length must be smaller than or equal to 255.")
      end

      if !@frontend_id.nil? && @frontend_id.to_s.length > 255
        invalid_properties.push("invalid value for 'frontend_id', the character length must be smaller than or equal to 255.")
      end

      if !@file_from_url.nil? && @file_from_url.to_s.length > 2100
        invalid_properties.push("invalid value for 'file_from_url', the character length must be smaller than or equal to 2100.")
      end

      if !@events_callback_url.nil? && @events_callback_url.to_s.length > 2100
        invalid_properties.push("invalid value for 'events_callback_url', the character length must be smaller than or equal to 2100.")
      end

      if !@auto_delete_days.nil? && @auto_delete_days > 730
        invalid_properties.push("invalid value for 'auto_delete_days', must be smaller than or equal to 730.")
      end

      if !@auto_delete_days.nil? && @auto_delete_days < 1
        invalid_properties.push("invalid value for 'auto_delete_days', must be greater than or equal to 1.")
      end

      if !@security_hash.nil? && @security_hash.to_s.length < 1
        invalid_properties.push("invalid value for 'security_hash', the character length must be great than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@uuid.nil? && @uuid.to_s.length < 1
      return false if !@file_as_pdf.nil? && @file_as_pdf.to_s.length < 1
      return false if !@name.nil? && @name.to_s.length > 255
      return false if !@external_id.nil? && @external_id.to_s.length > 255
      return false if !@frontend_id.nil? && @frontend_id.to_s.length > 255
      return false if !@file_from_url.nil? && @file_from_url.to_s.length > 2100
      return false if !@events_callback_url.nil? && @events_callback_url.to_s.length > 2100
      return false if !@auto_delete_days.nil? && @auto_delete_days > 730
      return false if !@auto_delete_days.nil? && @auto_delete_days < 1
      status_validator = EnumAttributeValidator.new('String', ["co", "ne", "se", "vi", "si", "do", "sd", "ca", "de", "ec", "es"])
      return false unless status_validator.valid?(@status)
      return false if !@security_hash.nil? && @security_hash.to_s.length < 1
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] uuid Value to be assigned
    def uuid=(uuid)

      if !uuid.nil? && uuid.to_s.length < 1
        fail ArgumentError, "invalid value for 'uuid', the character length must be great than or equal to 1."
      end

      @uuid = uuid
    end

    # Custom attribute writer method with validation
    # @param [Object] file_as_pdf Value to be assigned
    def file_as_pdf=(file_as_pdf)

      if !file_as_pdf.nil? && file_as_pdf.to_s.length < 1
        fail ArgumentError, "invalid value for 'file_as_pdf', the character length must be great than or equal to 1."
      end

      @file_as_pdf = file_as_pdf
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 255
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 255."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] external_id Value to be assigned
    def external_id=(external_id)

      if !external_id.nil? && external_id.to_s.length > 255
        fail ArgumentError, "invalid value for 'external_id', the character length must be smaller than or equal to 255."
      end

      @external_id = external_id
    end

    # Custom attribute writer method with validation
    # @param [Object] frontend_id Value to be assigned
    def frontend_id=(frontend_id)

      if !frontend_id.nil? && frontend_id.to_s.length > 255
        fail ArgumentError, "invalid value for 'frontend_id', the character length must be smaller than or equal to 255."
      end

      @frontend_id = frontend_id
    end

    # Custom attribute writer method with validation
    # @param [Object] file_from_url Value to be assigned
    def file_from_url=(file_from_url)

      if !file_from_url.nil? && file_from_url.to_s.length > 2100
        fail ArgumentError, "invalid value for 'file_from_url', the character length must be smaller than or equal to 2100."
      end

      @file_from_url = file_from_url
    end

    # Custom attribute writer method with validation
    # @param [Object] events_callback_url Value to be assigned
    def events_callback_url=(events_callback_url)

      if !events_callback_url.nil? && events_callback_url.to_s.length > 2100
        fail ArgumentError, "invalid value for 'events_callback_url', the character length must be smaller than or equal to 2100."
      end

      @events_callback_url = events_callback_url
    end

    # Custom attribute writer method with validation
    # @param [Object] auto_delete_days Value to be assigned
    def auto_delete_days=(auto_delete_days)

      if !auto_delete_days.nil? && auto_delete_days > 730
        fail ArgumentError, "invalid value for 'auto_delete_days', must be smaller than or equal to 730."
      end

      if !auto_delete_days.nil? && auto_delete_days < 1
        fail ArgumentError, "invalid value for 'auto_delete_days', must be greater than or equal to 1."
      end

      @auto_delete_days = auto_delete_days
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["co", "ne", "se", "vi", "si", "do", "sd", "ca", "de", "ec", "es"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] security_hash Value to be assigned
    def security_hash=(security_hash)

      if !security_hash.nil? && security_hash.to_s.length < 1
        fail ArgumentError, "invalid value for 'security_hash', the character length must be great than or equal to 1."
      end

      @security_hash = security_hash
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          team == o.team &&
          uuid == o.uuid &&
          user == o.user &&
          file_as_pdf == o.file_as_pdf &&
          name == o.name &&
          external_id == o.external_id &&
          frontend_id == o.frontend_id &&
          file == o.file &&
          file_from_url == o.file_from_url &&
          events_callback_url == o.events_callback_url &&
          file_from_content == o.file_from_content &&
          file_from_content_name == o.file_from_content_name &&
          template == o.template &&
          prefill_tags == o.prefill_tags &&
          integrations == o.integrations &&
          file_from_sf == o.file_from_sf &&
          auto_delete_days == o.auto_delete_days &&
          pdf == o.pdf &&
          status == o.status &&
          signrequest == o.signrequest &&
          api_used == o.api_used &&
          signing_log == o.signing_log &&
          security_hash == o.security_hash &&
          attachments == o.attachments &&
          auto_delete_after == o.auto_delete_after
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [url, team, uuid, user, file_as_pdf, name, external_id, frontend_id, file, file_from_url, events_callback_url, file_from_content, file_from_content_name, template, prefill_tags, integrations, file_from_sf, auto_delete_days, pdf, status, signrequest, api_used, signing_log, security_hash, attachments, auto_delete_after].hash
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