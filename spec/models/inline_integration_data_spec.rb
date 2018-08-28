=begin
#SignRequest API

#API for SignRequest.com

OpenAPI spec version: v1
Contact: tech-support@signrequest.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SignRequestClient::InlineIntegrationData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineIntegrationData' do
  before do
    # run before each test
    @instance = SignRequestClient::InlineIntegrationData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineIntegrationData' do
    it 'should create an instance of InlineIntegrationData' do
      expect(@instance).to be_instance_of(SignRequestClient::InlineIntegrationData)
    end
  end
  describe 'test attribute "integration"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["mfiles", "salesforce", "formdesk", "zapier", "txhash"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.integration = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "integration_data"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

