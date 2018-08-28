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

# Unit tests for SignRequestClient::DocumentsSearchApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DocumentsSearchApi' do
  before do
    # run before each test
    @instance = SignRequestClient::DocumentsSearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DocumentsSearchApi' do
    it 'should create an instance of DocumentsSearchApi' do
      expect(@instance).to be_instance_of(SignRequestClient::DocumentsSearchApi)
    end
  end

  # unit tests for documents_search_list
  # 
  # ## Search interface for fast (autocomplete) searching of documents.  This can be useful to have your users search for a document in your interface.  Document names are tokenized on whitespace, hyphens and underscores to also match partial document names.  *Normal search:*  - ?**q**&#x3D;{{query}}  *Autocomplete search:*  - ?**autocomplete**&#x3D;{{partial query}}  *Search in document name:*  - ?**name**&#x3D;{{query}}  *Available (extra) filters:*  - ?**subdomain**&#x3D;{{ team_subdomain }} or use this endpoint with team_subdomain.signrequest.com (when not provided only personal documents are shown) - ?**signer_emails**&#x3D;{{ signer@email.com }} (will filter documents that an email needed to sign/approve) - ?**status**&#x3D;{{ si }} - ?**who**&#x3D;{{ mo }}  To include multiple values for a filter field separate the values with a pipe (|). For example to only search for completed documents use **status&#x3D;se|vi** (sent and viewed).  *Pagination:*  - ?**page**&#x3D;{{ page_number: default 1 }} - ?**limit**&#x3D;{{ limit results: default 10, max 100 }}  *Format:*  By default json is returned, to export data as csv or xls use the format parameter.  - ?**format**&#x3D;csv - ?**format**&#x3D;xls  For csv and xls the data can also be exported with each signer on a separate row. In this mode also the signer inputs that have an *external_id* specified on a tag will be exported. All external_id&#39;s found will be exported as columns. To use this mode add the **signer_data** parameter.  - ?**format**&#x3D;csv&amp;**signer_data**&#x3D;1 - ?**format**&#x3D;xls&amp;**signer_data**&#x3D;1  Note that all documents are only ordered by **created** (newest first) when **q**, **autocomplete** or **name** are not used, else they are ordered by the strenght of the match.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :limit Number of results to return per page.
  # @return [InlineResponse2002]
  describe 'documents_search_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for documents_search_read
  # 
  # ## Search interface for fast (autocomplete) searching of documents.  This can be useful to have your users search for a document in your interface.  Document names are tokenized on whitespace, hyphens and underscores to also match partial document names.  *Normal search:*  - ?**q**&#x3D;{{query}}  *Autocomplete search:*  - ?**autocomplete**&#x3D;{{partial query}}  *Search in document name:*  - ?**name**&#x3D;{{query}}  *Available (extra) filters:*  - ?**subdomain**&#x3D;{{ team_subdomain }} or use this endpoint with team_subdomain.signrequest.com (when not provided only personal documents are shown) - ?**signer_emails**&#x3D;{{ signer@email.com }} (will filter documents that an email needed to sign/approve) - ?**status**&#x3D;{{ si }} - ?**who**&#x3D;{{ mo }}  To include multiple values for a filter field separate the values with a pipe (|). For example to only search for completed documents use **status&#x3D;se|vi** (sent and viewed).  *Pagination:*  - ?**page**&#x3D;{{ page_number: default 1 }} - ?**limit**&#x3D;{{ limit results: default 10, max 100 }}  *Format:*  By default json is returned, to export data as csv or xls use the format parameter.  - ?**format**&#x3D;csv - ?**format**&#x3D;xls  For csv and xls the data can also be exported with each signer on a separate row. In this mode also the signer inputs that have an *external_id* specified on a tag will be exported. All external_id&#39;s found will be exported as columns. To use this mode add the **signer_data** parameter.  - ?**format**&#x3D;csv&amp;**signer_data**&#x3D;1 - ?**format**&#x3D;xls&amp;**signer_data**&#x3D;1  Note that all documents are only ordered by **created** (newest first) when **q**, **autocomplete** or **name** are not used, else they are ordered by the strenght of the match.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [DocumentSearch]
  describe 'documents_search_read test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
