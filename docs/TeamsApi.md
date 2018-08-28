# SignRequestClient::TeamsApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**teams_create**](TeamsApi.md#teams_create) | **POST** /teams/ | 
[**teams_invite_member**](TeamsApi.md#teams_invite_member) | **POST** /teams/{subdomain}/invite_member/ | 
[**teams_list**](TeamsApi.md#teams_list) | **GET** /teams/ | 
[**teams_partial_update**](TeamsApi.md#teams_partial_update) | **PATCH** /teams/{subdomain}/ | 
[**teams_read**](TeamsApi.md#teams_read) | **GET** /teams/{subdomain}/ | 
[**teams_update**](TeamsApi.md#teams_update) | **PUT** /teams/{subdomain}/ | 


# **teams_create**
> Team teams_create(data)



If your application requires to create Teams and act on behalf of them you need to become an integration partner.  Required fields are **name** and **subdomain** where the subdomain is globally unique. Use **POST** to create a Team. To update a field on a Team use **PATCH**.  To use the API on behalf of a particular team change the endpoint to: *https://**{{ subdomain }}**.signrequest.com/api/v1/...*  To invite new team members you can use **POST** {\"email\":\"**email-of-member-to-invite@example.com**\",\"is_admin\":false,\"is_owner\":false} to: *https://signrequest.com/api/v1/teams/**{{ subdomain }}**/invite_member/*

### Example
```ruby
# load the gem
require 'signrequest_client'
# setup authorization
SignRequestClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SignRequestClient::TeamsApi.new

data = SignRequestClient::Team.new # Team | 


begin
  result = api_instance.teams_create(data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TeamsApi->teams_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Team**](Team.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **teams_invite_member**
> InviteMember teams_invite_member(subdomain, data)



If your application requires to create Teams and act on behalf of them you need to become an integration partner.  Required fields are **name** and **subdomain** where the subdomain is globally unique. Use **POST** to create a Team. To update a field on a Team use **PATCH**.  To use the API on behalf of a particular team change the endpoint to: *https://**{{ subdomain }}**.signrequest.com/api/v1/...*  To invite new team members you can use **POST** {\"email\":\"**email-of-member-to-invite@example.com**\",\"is_admin\":false,\"is_owner\":false} to: *https://signrequest.com/api/v1/teams/**{{ subdomain }}**/invite_member/*

### Example
```ruby
# load the gem
require 'signrequest_client'
# setup authorization
SignRequestClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SignRequestClient::TeamsApi.new

subdomain = "subdomain_example" # String | 

data = SignRequestClient::InviteMember.new # InviteMember | 


begin
  result = api_instance.teams_invite_member(subdomain, data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TeamsApi->teams_invite_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subdomain** | **String**|  | 
 **data** | [**InviteMember**](InviteMember.md)|  | 

### Return type

[**InviteMember**](InviteMember.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **teams_list**
> InlineResponse2007 teams_list(opts)



If your application requires to create Teams and act on behalf of them you need to become an integration partner.  Required fields are **name** and **subdomain** where the subdomain is globally unique. Use **POST** to create a Team. To update a field on a Team use **PATCH**.  To use the API on behalf of a particular team change the endpoint to: *https://**{{ subdomain }}**.signrequest.com/api/v1/...*  To invite new team members you can use **POST** {\"email\":\"**email-of-member-to-invite@example.com**\",\"is_admin\":false,\"is_owner\":false} to: *https://signrequest.com/api/v1/teams/**{{ subdomain }}**/invite_member/*

### Example
```ruby
# load the gem
require 'signrequest_client'
# setup authorization
SignRequestClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SignRequestClient::TeamsApi.new

opts = { 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.teams_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TeamsApi->teams_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **teams_partial_update**
> Team teams_partial_update(subdomain, data)



If your application requires to create Teams and act on behalf of them you need to become an integration partner.  Required fields are **name** and **subdomain** where the subdomain is globally unique. Use **POST** to create a Team. To update a field on a Team use **PATCH**.  To use the API on behalf of a particular team change the endpoint to: *https://**{{ subdomain }}**.signrequest.com/api/v1/...*  To invite new team members you can use **POST** {\"email\":\"**email-of-member-to-invite@example.com**\",\"is_admin\":false,\"is_owner\":false} to: *https://signrequest.com/api/v1/teams/**{{ subdomain }}**/invite_member/*

### Example
```ruby
# load the gem
require 'signrequest_client'
# setup authorization
SignRequestClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SignRequestClient::TeamsApi.new

subdomain = "subdomain_example" # String | 

data = SignRequestClient::Team.new # Team | 


begin
  result = api_instance.teams_partial_update(subdomain, data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TeamsApi->teams_partial_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subdomain** | **String**|  | 
 **data** | [**Team**](Team.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **teams_read**
> Team teams_read(subdomain, )



If your application requires to create Teams and act on behalf of them you need to become an integration partner.  Required fields are **name** and **subdomain** where the subdomain is globally unique. Use **POST** to create a Team. To update a field on a Team use **PATCH**.  To use the API on behalf of a particular team change the endpoint to: *https://**{{ subdomain }}**.signrequest.com/api/v1/...*  To invite new team members you can use **POST** {\"email\":\"**email-of-member-to-invite@example.com**\",\"is_admin\":false,\"is_owner\":false} to: *https://signrequest.com/api/v1/teams/**{{ subdomain }}**/invite_member/*

### Example
```ruby
# load the gem
require 'signrequest_client'
# setup authorization
SignRequestClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SignRequestClient::TeamsApi.new

subdomain = "subdomain_example" # String | 


begin
  result = api_instance.teams_read(subdomain, )
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TeamsApi->teams_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subdomain** | **String**|  | 

### Return type

[**Team**](Team.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **teams_update**
> Team teams_update(subdomain, data)



If your application requires to create Teams and act on behalf of them you need to become an integration partner.  Required fields are **name** and **subdomain** where the subdomain is globally unique. Use **POST** to create a Team. To update a field on a Team use **PATCH**.  To use the API on behalf of a particular team change the endpoint to: *https://**{{ subdomain }}**.signrequest.com/api/v1/...*  To invite new team members you can use **POST** {\"email\":\"**email-of-member-to-invite@example.com**\",\"is_admin\":false,\"is_owner\":false} to: *https://signrequest.com/api/v1/teams/**{{ subdomain }}**/invite_member/*

### Example
```ruby
# load the gem
require 'signrequest_client'
# setup authorization
SignRequestClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SignRequestClient::TeamsApi.new

subdomain = "subdomain_example" # String | 

data = SignRequestClient::Team.new # Team | 


begin
  result = api_instance.teams_update(subdomain, data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TeamsApi->teams_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subdomain** | **String**|  | 
 **data** | [**Team**](Team.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


