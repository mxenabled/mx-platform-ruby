=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module MxPlatformRuby
  class MicrodepositsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Verify a Microdeposit
    # Use this endpoint to verify the amounts deposited into the account during a microdeposit verification. The verification has not successfully completed until the `status` is `VERIFIED`. Poll the `/users/{user_guid}/micro_deposits/{micro_deposit_guid}` (read microdeposit) endpoint until you see this status or an error state.
    # @param microdeposit_guid [String] The unique identifier for the microdeposit. Defined by MX.
    # @param [Hash] opts the optional parameters
    # @option opts [MicrodepositVerifyRequestBody] :microdeposit_verify_request_body 
    # @return [MicrodepositResponseBody]
    def micro_deposits_microdeposit_guid_verify_put(microdeposit_guid, opts = {})
      data, _status_code, _headers = micro_deposits_microdeposit_guid_verify_put_with_http_info(microdeposit_guid, opts)
      data
    end

    # Verify a Microdeposit
    # Use this endpoint to verify the amounts deposited into the account during a microdeposit verification. The verification has not successfully completed until the &#x60;status&#x60; is &#x60;VERIFIED&#x60;. Poll the &#x60;/users/{user_guid}/micro_deposits/{micro_deposit_guid}&#x60; (read microdeposit) endpoint until you see this status or an error state.
    # @param microdeposit_guid [String] The unique identifier for the microdeposit. Defined by MX.
    # @param [Hash] opts the optional parameters
    # @option opts [MicrodepositVerifyRequestBody] :microdeposit_verify_request_body 
    # @return [Array<(MicrodepositResponseBody, Integer, Hash)>] MicrodepositResponseBody data, response status code and response headers
    def micro_deposits_microdeposit_guid_verify_put_with_http_info(microdeposit_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrodepositsApi.micro_deposits_microdeposit_guid_verify_put ...'
      end
      # verify the required parameter 'microdeposit_guid' is set
      if @api_client.config.client_side_validation && microdeposit_guid.nil?
        fail ArgumentError, "Missing the required parameter 'microdeposit_guid' when calling MicrodepositsApi.micro_deposits_microdeposit_guid_verify_put"
      end
      # resource path
      local_var_path = '/micro_deposits/{microdeposit_guid}/verify'.sub('{' + 'microdeposit_guid' + '}', CGI.escape(microdeposit_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'microdeposit_verify_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'MicrodepositResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"MicrodepositsApi.micro_deposits_microdeposit_guid_verify_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MicrodepositsApi#micro_deposits_microdeposit_guid_verify_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all microdeposits for a user
    # Use this endpoint to read the attributes of a specific microdeposit according to its unique GUID.
    # @param user_guid [String] The unique identifier for the user. Defined by MX.
    # @param [Hash] opts the optional parameters
    # @return [MicrodepositsResponseBody]
    def users_user_guid_micro_deposits_get(user_guid, opts = {})
      data, _status_code, _headers = users_user_guid_micro_deposits_get_with_http_info(user_guid, opts)
      data
    end

    # List all microdeposits for a user
    # Use this endpoint to read the attributes of a specific microdeposit according to its unique GUID.
    # @param user_guid [String] The unique identifier for the user. Defined by MX.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MicrodepositsResponseBody, Integer, Hash)>] MicrodepositsResponseBody data, response status code and response headers
    def users_user_guid_micro_deposits_get_with_http_info(user_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrodepositsApi.users_user_guid_micro_deposits_get ...'
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling MicrodepositsApi.users_user_guid_micro_deposits_get"
      end
      # resource path
      local_var_path = '/users/{user_guid}/micro_deposits'.sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MicrodepositsResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"MicrodepositsApi.users_user_guid_micro_deposits_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MicrodepositsApi#users_user_guid_micro_deposits_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a microdeposit
    # Use this endpoint to delete the specified microdeposit.
    # @param micro_deposit_guid [String] The unique identifier for the microdeposit. Defined by MX.
    # @param user_guid [String] The unique id for a &#x60;user&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_user_guid_micro_deposits_micro_deposit_guid_delete(micro_deposit_guid, user_guid, opts = {})
      users_user_guid_micro_deposits_micro_deposit_guid_delete_with_http_info(micro_deposit_guid, user_guid, opts)
      nil
    end

    # Delete a microdeposit
    # Use this endpoint to delete the specified microdeposit.
    # @param micro_deposit_guid [String] The unique identifier for the microdeposit. Defined by MX.
    # @param user_guid [String] The unique id for a &#x60;user&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_user_guid_micro_deposits_micro_deposit_guid_delete_with_http_info(micro_deposit_guid, user_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrodepositsApi.users_user_guid_micro_deposits_micro_deposit_guid_delete ...'
      end
      # verify the required parameter 'micro_deposit_guid' is set
      if @api_client.config.client_side_validation && micro_deposit_guid.nil?
        fail ArgumentError, "Missing the required parameter 'micro_deposit_guid' when calling MicrodepositsApi.users_user_guid_micro_deposits_micro_deposit_guid_delete"
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling MicrodepositsApi.users_user_guid_micro_deposits_micro_deposit_guid_delete"
      end
      # resource path
      local_var_path = '/users/{user_guid}/micro_deposits/{micro_deposit_guid}'.sub('{' + 'micro_deposit_guid' + '}', CGI.escape(micro_deposit_guid.to_s)).sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"MicrodepositsApi.users_user_guid_micro_deposits_micro_deposit_guid_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MicrodepositsApi#users_user_guid_micro_deposits_micro_deposit_guid_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read a microdeposit for a user
    # Use this endpoint to read the attributes of a specific microdeposit according to its unique GUID. <br></br> Webhooks for microdeposit status changes are triggered when a status changes. The actual status of the microdeposit guid updates every minute. You may force a status update by calling the read microdeposit endpoint.
    # @param user_guid [String] The unique identifier for the user. Defined by MX.
    # @param micro_deposit_guid [String] The unique identifier for the microdeposit. Defined by MX.
    # @param [Hash] opts the optional parameters
    # @return [MicrodepositResponseBody]
    def users_user_guid_micro_deposits_micro_deposit_guid_get(user_guid, micro_deposit_guid, opts = {})
      data, _status_code, _headers = users_user_guid_micro_deposits_micro_deposit_guid_get_with_http_info(user_guid, micro_deposit_guid, opts)
      data
    end

    # Read a microdeposit for a user
    # Use this endpoint to read the attributes of a specific microdeposit according to its unique GUID. &lt;br&gt;&lt;/br&gt; Webhooks for microdeposit status changes are triggered when a status changes. The actual status of the microdeposit guid updates every minute. You may force a status update by calling the read microdeposit endpoint.
    # @param user_guid [String] The unique identifier for the user. Defined by MX.
    # @param micro_deposit_guid [String] The unique identifier for the microdeposit. Defined by MX.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MicrodepositResponseBody, Integer, Hash)>] MicrodepositResponseBody data, response status code and response headers
    def users_user_guid_micro_deposits_micro_deposit_guid_get_with_http_info(user_guid, micro_deposit_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrodepositsApi.users_user_guid_micro_deposits_micro_deposit_guid_get ...'
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling MicrodepositsApi.users_user_guid_micro_deposits_micro_deposit_guid_get"
      end
      # verify the required parameter 'micro_deposit_guid' is set
      if @api_client.config.client_side_validation && micro_deposit_guid.nil?
        fail ArgumentError, "Missing the required parameter 'micro_deposit_guid' when calling MicrodepositsApi.users_user_guid_micro_deposits_micro_deposit_guid_get"
      end
      # resource path
      local_var_path = '/users/{user_guid}/micro_deposits/{micro_deposit_guid}'.sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s)).sub('{' + 'micro_deposit_guid' + '}', CGI.escape(micro_deposit_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MicrodepositResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"MicrodepositsApi.users_user_guid_micro_deposits_micro_deposit_guid_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MicrodepositsApi#users_user_guid_micro_deposits_micro_deposit_guid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a microdeposit
    # Use this endpoint to create a microdeposit. The response will include the new microdeposit record with a status of INITIATED.
    # @param user_guid [String] The unique identifier for the user. Defined by MX.
    # @param microdeposit_request_body [MicrodepositRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [MicrodepositResponseBody]
    def users_user_guid_micro_deposits_post(user_guid, microdeposit_request_body, opts = {})
      data, _status_code, _headers = users_user_guid_micro_deposits_post_with_http_info(user_guid, microdeposit_request_body, opts)
      data
    end

    # Create a microdeposit
    # Use this endpoint to create a microdeposit. The response will include the new microdeposit record with a status of INITIATED.
    # @param user_guid [String] The unique identifier for the user. Defined by MX.
    # @param microdeposit_request_body [MicrodepositRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MicrodepositResponseBody, Integer, Hash)>] MicrodepositResponseBody data, response status code and response headers
    def users_user_guid_micro_deposits_post_with_http_info(user_guid, microdeposit_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MicrodepositsApi.users_user_guid_micro_deposits_post ...'
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling MicrodepositsApi.users_user_guid_micro_deposits_post"
      end
      # verify the required parameter 'microdeposit_request_body' is set
      if @api_client.config.client_side_validation && microdeposit_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'microdeposit_request_body' when calling MicrodepositsApi.users_user_guid_micro_deposits_post"
      end
      # resource path
      local_var_path = '/users/{user_guid}/micro_deposits'.sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(microdeposit_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'MicrodepositResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"MicrodepositsApi.users_user_guid_micro_deposits_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MicrodepositsApi#users_user_guid_micro_deposits_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
