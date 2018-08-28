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

  class SignRequestQuickCreate
    attr_accessor :from_email

    attr_accessor :from_email_name

    attr_accessor :is_being_prepared

    attr_accessor :prepare_url

    attr_accessor :redirect_url

    attr_accessor :required_attachments

    attr_accessor :disable_attachments

    attr_accessor :disable_text_signatures

    attr_accessor :disable_text

    attr_accessor :disable_date

    attr_accessor :disable_emails

    attr_accessor :disable_upload_signatures

    attr_accessor :subject

    attr_accessor :message

    attr_accessor :who

    attr_accessor :send_reminders

    attr_accessor :signers

    attr_accessor :uuid

    attr_accessor :url

    attr_accessor :document

    attr_accessor :integration

    attr_accessor :integration_data

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
        :'from_email' => :'from_email',
        :'from_email_name' => :'from_email_name',
        :'is_being_prepared' => :'is_being_prepared',
        :'prepare_url' => :'prepare_url',
        :'redirect_url' => :'redirect_url',
        :'required_attachments' => :'required_attachments',
        :'disable_attachments' => :'disable_attachments',
        :'disable_text_signatures' => :'disable_text_signatures',
        :'disable_text' => :'disable_text',
        :'disable_date' => :'disable_date',
        :'disable_emails' => :'disable_emails',
        :'disable_upload_signatures' => :'disable_upload_signatures',
        :'subject' => :'subject',
        :'message' => :'message',
        :'who' => :'who',
        :'send_reminders' => :'send_reminders',
        :'signers' => :'signers',
        :'uuid' => :'uuid',
        :'url' => :'url',
        :'document' => :'document',
        :'integration' => :'integration',
        :'integration_data' => :'integration_data',
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
        :'auto_delete_days' => :'auto_delete_days'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'from_email' => :'String',
        :'from_email_name' => :'String',
        :'is_being_prepared' => :'BOOLEAN',
        :'prepare_url' => :'String',
        :'redirect_url' => :'String',
        :'required_attachments' => :'Array<RequiredAttachment>',
        :'disable_attachments' => :'BOOLEAN',
        :'disable_text_signatures' => :'BOOLEAN',
        :'disable_text' => :'BOOLEAN',
        :'disable_date' => :'BOOLEAN',
        :'disable_emails' => :'BOOLEAN',
        :'disable_upload_signatures' => :'BOOLEAN',
        :'subject' => :'String',
        :'message' => :'String',
        :'who' => :'String',
        :'send_reminders' => :'BOOLEAN',
        :'signers' => :'Array<Signer>',
        :'uuid' => :'String',
        :'url' => :'String',
        :'document' => :'String',
        :'integration' => :'String',
        :'integration_data' => :'String',
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
        :'auto_delete_days' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'from_email')
        self.from_email = attributes[:'from_email']
      end

      if attributes.has_key?(:'from_email_name')
        self.from_email_name = attributes[:'from_email_name']
      end

      if attributes.has_key?(:'is_being_prepared')
        self.is_being_prepared = attributes[:'is_being_prepared']
      end

      if attributes.has_key?(:'prepare_url')
        self.prepare_url = attributes[:'prepare_url']
      end

      if attributes.has_key?(:'redirect_url')
        self.redirect_url = attributes[:'redirect_url']
      end

      if attributes.has_key?(:'required_attachments')
        if (value = attributes[:'required_attachments']).is_a?(Array)
          self.required_attachments = value
        end
      end

      if attributes.has_key?(:'disable_attachments')
        self.disable_attachments = attributes[:'disable_attachments']
      end

      if attributes.has_key?(:'disable_text_signatures')
        self.disable_text_signatures = attributes[:'disable_text_signatures']
      end

      if attributes.has_key?(:'disable_text')
        self.disable_text = attributes[:'disable_text']
      end

      if attributes.has_key?(:'disable_date')
        self.disable_date = attributes[:'disable_date']
      end

      if attributes.has_key?(:'disable_emails')
        self.disable_emails = attributes[:'disable_emails']
      end

      if attributes.has_key?(:'disable_upload_signatures')
        self.disable_upload_signatures = attributes[:'disable_upload_signatures']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'who')
        self.who = attributes[:'who']
      else
        self.who = "o"
      end

      if attributes.has_key?(:'send_reminders')
        self.send_reminders = attributes[:'send_reminders']
      end

      if attributes.has_key?(:'signers')
        if (value = attributes[:'signers']).is_a?(Array)
          self.signers = value
        end
      end

      if attributes.has_key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'document')
        self.document = attributes[:'document']
      end

      if attributes.has_key?(:'integration')
        self.integration = attributes[:'integration']
      end

      if attributes.has_key?(:'integration_data')
        self.integration_data = attributes[:'integration_data']
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

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@from_email.nil? && @from_email.to_s.length > 255
        invalid_properties.push("invalid value for 'from_email', the character length must be smaller than or equal to 255.")
      end

      if !@from_email.nil? && @from_email.to_s.length < 1
        invalid_properties.push("invalid value for 'from_email', the character length must be great than or equal to 1.")
      end

      if !@from_email_name.nil? && @from_email_name.to_s.length > 255
        invalid_properties.push("invalid value for 'from_email_name', the character length must be smaller than or equal to 255.")
      end

      if !@prepare_url.nil? && @prepare_url.to_s.length < 1
        invalid_properties.push("invalid value for 'prepare_url', the character length must be great than or equal to 1.")
      end

      if !@redirect_url.nil? && @redirect_url.to_s.length > 2100
        invalid_properties.push("invalid value for 'redirect_url', the character length must be smaller than or equal to 2100.")
      end

      if !@subject.nil? && @subject.to_s.length > 512
        invalid_properties.push("invalid value for 'subject', the character length must be smaller than or equal to 512.")
      end

      if @signers.nil?
        invalid_properties.push("invalid value for 'signers', signers cannot be nil.")
      end

      if !@uuid.nil? && @uuid.to_s.length < 1
        invalid_properties.push("invalid value for 'uuid', the character length must be great than or equal to 1.")
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

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@from_email.nil? && @from_email.to_s.length > 255
      return false if !@from_email.nil? && @from_email.to_s.length < 1
      return false if !@from_email_name.nil? && @from_email_name.to_s.length > 255
      return false if !@prepare_url.nil? && @prepare_url.to_s.length < 1
      return false if !@redirect_url.nil? && @redirect_url.to_s.length > 2100
      return false if !@subject.nil? && @subject.to_s.length > 512
      who_validator = EnumAttributeValidator.new('String', ["m", "mo", "o"])
      return false unless who_validator.valid?(@who)
      return false if @signers.nil?
      return false if !@uuid.nil? && @uuid.to_s.length < 1
      integration_validator = EnumAttributeValidator.new('String', ["mfiles", "salesforce", "formdesk", "zapier", "txhash"])
      return false unless integration_validator.valid?(@integration)
      return false if !@name.nil? && @name.to_s.length > 255
      return false if !@external_id.nil? && @external_id.to_s.length > 255
      return false if !@frontend_id.nil? && @frontend_id.to_s.length > 255
      return false if !@file_from_url.nil? && @file_from_url.to_s.length > 2100
      return false if !@events_callback_url.nil? && @events_callback_url.to_s.length > 2100
      return false if !@auto_delete_days.nil? && @auto_delete_days > 730
      return false if !@auto_delete_days.nil? && @auto_delete_days < 1
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] from_email Value to be assigned
    def from_email=(from_email)

      if !from_email.nil? && from_email.to_s.length > 255
        fail ArgumentError, "invalid value for 'from_email', the character length must be smaller than or equal to 255."
      end

      if !from_email.nil? && from_email.to_s.length < 1
        fail ArgumentError, "invalid value for 'from_email', the character length must be great than or equal to 1."
      end

      @from_email = from_email
    end

    # Custom attribute writer method with validation
    # @param [Object] from_email_name Value to be assigned
    def from_email_name=(from_email_name)

      if !from_email_name.nil? && from_email_name.to_s.length > 255
        fail ArgumentError, "invalid value for 'from_email_name', the character length must be smaller than or equal to 255."
      end

      @from_email_name = from_email_name
    end

    # Custom attribute writer method with validation
    # @param [Object] prepare_url Value to be assigned
    def prepare_url=(prepare_url)

      if !prepare_url.nil? && prepare_url.to_s.length < 1
        fail ArgumentError, "invalid value for 'prepare_url', the character length must be great than or equal to 1."
      end

      @prepare_url = prepare_url
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_url Value to be assigned
    def redirect_url=(redirect_url)

      if !redirect_url.nil? && redirect_url.to_s.length > 2100
        fail ArgumentError, "invalid value for 'redirect_url', the character length must be smaller than or equal to 2100."
      end

      @redirect_url = redirect_url
    end

    # Custom attribute writer method with validation
    # @param [Object] subject Value to be assigned
    def subject=(subject)

      if !subject.nil? && subject.to_s.length > 512
        fail ArgumentError, "invalid value for 'subject', the character length must be smaller than or equal to 512."
      end

      @subject = subject
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] who Object to be assigned
    def who=(who)
      validator = EnumAttributeValidator.new('String', ["m", "mo", "o"])
      unless validator.valid?(who)
        fail ArgumentError, "invalid value for 'who', must be one of #{validator.allowable_values}."
      end
      @who = who
    end

    # Custom attribute writer method with validation
    # @param [Object] uuid Value to be assigned
    def uuid=(uuid)

      if !uuid.nil? && uuid.to_s.length < 1
        fail ArgumentError, "invalid value for 'uuid', the character length must be great than or equal to 1."
      end

      @uuid = uuid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] integration Object to be assigned
    def integration=(integration)
      validator = EnumAttributeValidator.new('String', ["mfiles", "salesforce", "formdesk", "zapier", "txhash"])
      unless validator.valid?(integration)
        fail ArgumentError, "invalid value for 'integration', must be one of #{validator.allowable_values}."
      end
      @integration = integration
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          from_email == o.from_email &&
          from_email_name == o.from_email_name &&
          is_being_prepared == o.is_being_prepared &&
          prepare_url == o.prepare_url &&
          redirect_url == o.redirect_url &&
          required_attachments == o.required_attachments &&
          disable_attachments == o.disable_attachments &&
          disable_text_signatures == o.disable_text_signatures &&
          disable_text == o.disable_text &&
          disable_date == o.disable_date &&
          disable_emails == o.disable_emails &&
          disable_upload_signatures == o.disable_upload_signatures &&
          subject == o.subject &&
          message == o.message &&
          who == o.who &&
          send_reminders == o.send_reminders &&
          signers == o.signers &&
          uuid == o.uuid &&
          url == o.url &&
          document == o.document &&
          integration == o.integration &&
          integration_data == o.integration_data &&
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
          auto_delete_days == o.auto_delete_days
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [from_email, from_email_name, is_being_prepared, prepare_url, redirect_url, required_attachments, disable_attachments, disable_text_signatures, disable_text, disable_date, disable_emails, disable_upload_signatures, subject, message, who, send_reminders, signers, uuid, url, document, integration, integration_data, name, external_id, frontend_id, file, file_from_url, events_callback_url, file_from_content, file_from_content_name, template, prefill_tags, integrations, file_from_sf, auto_delete_days].hash
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
