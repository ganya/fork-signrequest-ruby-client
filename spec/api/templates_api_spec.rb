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

# Unit tests for SignRequestClient::TemplatesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TemplatesApi' do
  before do
    # run before each test
    @instance = SignRequestClient::TemplatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TemplatesApi' do
    it 'should create an instance of TemplatesApi' do
      expect(@instance).to be_instance_of(SignRequestClient::TemplatesApi)
    end
  end

  # unit tests for templates_list
  # 
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :limit Number of results to return per page.
  # @return [InlineResponse2008]
  describe 'templates_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for templates_read
  # 
  # 
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [Template]
  describe 'templates_read test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end