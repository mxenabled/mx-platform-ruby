=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module MxPlatformRuby
  class GoalsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List goals
    # List all goals a user can set.
    # @param user_guid [String] The unique identifier for the user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page Results are returned in paginated sets, this is the page of the results you would like to view. Defaults to page 1 if no page is specified.
    # @option opts [String] :records_per_age The supported range is from 10 to 1000. If the records_per_page parameter is not specified or is outside this range, a default of 25 records per page will be used.
    # @return [GoalsResponseBody]
    def users_user_guid_goals_get(user_guid, opts = {})
      data, _status_code, _headers = users_user_guid_goals_get_with_http_info(user_guid, opts)
      data
    end

    # List goals
    # List all goals a user can set.
    # @param user_guid [String] The unique identifier for the user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page Results are returned in paginated sets, this is the page of the results you would like to view. Defaults to page 1 if no page is specified.
    # @option opts [String] :records_per_age The supported range is from 10 to 1000. If the records_per_page parameter is not specified or is outside this range, a default of 25 records per page will be used.
    # @return [Array<(GoalsResponseBody, Integer, Hash)>] GoalsResponseBody data, response status code and response headers
    def users_user_guid_goals_get_with_http_info(user_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GoalsApi.users_user_guid_goals_get ...'
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling GoalsApi.users_user_guid_goals_get"
      end
      # resource path
      local_var_path = '/users/{user_guid}/goals'.sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'records_per_age'] = opts[:'records_per_age'] if !opts[:'records_per_age'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GoalsResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"GoalsApi.users_user_guid_goals_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GoalsApi#users_user_guid_goals_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a goal
    # Delete a goal.
    # @param goal_guid [String] The unique identifier for a goal. Defined by MX.
    # @param user_guid [String] The unique identifier for a user.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_user_guid_goals_goal_guid_delete(goal_guid, user_guid, opts = {})
      users_user_guid_goals_goal_guid_delete_with_http_info(goal_guid, user_guid, opts)
      nil
    end

    # Delete a goal
    # Delete a goal.
    # @param goal_guid [String] The unique identifier for a goal. Defined by MX.
    # @param user_guid [String] The unique identifier for a user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def users_user_guid_goals_goal_guid_delete_with_http_info(goal_guid, user_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GoalsApi.users_user_guid_goals_goal_guid_delete ...'
      end
      # verify the required parameter 'goal_guid' is set
      if @api_client.config.client_side_validation && goal_guid.nil?
        fail ArgumentError, "Missing the required parameter 'goal_guid' when calling GoalsApi.users_user_guid_goals_goal_guid_delete"
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling GoalsApi.users_user_guid_goals_goal_guid_delete"
      end
      # resource path
      local_var_path = '/users/{user_guid}/goals/{goal_guid}'.sub('{' + 'goal_guid' + '}', CGI.escape(goal_guid.to_s)).sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s))

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
        :operation => :"GoalsApi.users_user_guid_goals_goal_guid_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GoalsApi#users_user_guid_goals_goal_guid_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read a goal
    # Read a specific goal.
    # @param goal_guid [String] The unique identifier for a goal. Defined by MX.
    # @param user_guid [String] The unique identifier for a user.
    # @param [Hash] opts the optional parameters
    # @return [GoalResponseBody]
    def users_user_guid_goals_goal_guid_get(goal_guid, user_guid, opts = {})
      data, _status_code, _headers = users_user_guid_goals_goal_guid_get_with_http_info(goal_guid, user_guid, opts)
      data
    end

    # Read a goal
    # Read a specific goal.
    # @param goal_guid [String] The unique identifier for a goal. Defined by MX.
    # @param user_guid [String] The unique identifier for a user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GoalResponseBody, Integer, Hash)>] GoalResponseBody data, response status code and response headers
    def users_user_guid_goals_goal_guid_get_with_http_info(goal_guid, user_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GoalsApi.users_user_guid_goals_goal_guid_get ...'
      end
      # verify the required parameter 'goal_guid' is set
      if @api_client.config.client_side_validation && goal_guid.nil?
        fail ArgumentError, "Missing the required parameter 'goal_guid' when calling GoalsApi.users_user_guid_goals_goal_guid_get"
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling GoalsApi.users_user_guid_goals_goal_guid_get"
      end
      # resource path
      local_var_path = '/users/{user_guid}/goals/{goal_guid}'.sub('{' + 'goal_guid' + '}', CGI.escape(goal_guid.to_s)).sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s))

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
      return_type = opts[:debug_return_type] || 'GoalResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"GoalsApi.users_user_guid_goals_goal_guid_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GoalsApi#users_user_guid_goals_goal_guid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a goal
    # This endpoint updates a specific goal.
    # @param goal_guid [String] The unique identifier for a goal. Defined by MX.
    # @param user_guid [String] The unique identifier for a user.
    # @param update_goal_request_body [UpdateGoalRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [GoalResponseBody]
    def users_user_guid_goals_goal_guid_put(goal_guid, user_guid, update_goal_request_body, opts = {})
      data, _status_code, _headers = users_user_guid_goals_goal_guid_put_with_http_info(goal_guid, user_guid, update_goal_request_body, opts)
      data
    end

    # Update a goal
    # This endpoint updates a specific goal.
    # @param goal_guid [String] The unique identifier for a goal. Defined by MX.
    # @param user_guid [String] The unique identifier for a user.
    # @param update_goal_request_body [UpdateGoalRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GoalResponseBody, Integer, Hash)>] GoalResponseBody data, response status code and response headers
    def users_user_guid_goals_goal_guid_put_with_http_info(goal_guid, user_guid, update_goal_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GoalsApi.users_user_guid_goals_goal_guid_put ...'
      end
      # verify the required parameter 'goal_guid' is set
      if @api_client.config.client_side_validation && goal_guid.nil?
        fail ArgumentError, "Missing the required parameter 'goal_guid' when calling GoalsApi.users_user_guid_goals_goal_guid_put"
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling GoalsApi.users_user_guid_goals_goal_guid_put"
      end
      # verify the required parameter 'update_goal_request_body' is set
      if @api_client.config.client_side_validation && update_goal_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'update_goal_request_body' when calling GoalsApi.users_user_guid_goals_goal_guid_put"
      end
      # resource path
      local_var_path = '/users/{user_guid}/goals/{goal_guid}'.sub('{' + 'goal_guid' + '}', CGI.escape(goal_guid.to_s)).sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_goal_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'GoalResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"GoalsApi.users_user_guid_goals_goal_guid_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GoalsApi#users_user_guid_goals_goal_guid_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a goal
    # Create a goal. This endpoint accepts the optional `MX-Skip-Webhook` header and `skip_webhook` parameter.
    # @param user_guid [String] The unique identifier for the user.
    # @param goal_request_body [GoalRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [GoalResponseBody]
    def users_user_guid_goals_post(user_guid, goal_request_body, opts = {})
      data, _status_code, _headers = users_user_guid_goals_post_with_http_info(user_guid, goal_request_body, opts)
      data
    end

    # Create a goal
    # Create a goal. This endpoint accepts the optional &#x60;MX-Skip-Webhook&#x60; header and &#x60;skip_webhook&#x60; parameter.
    # @param user_guid [String] The unique identifier for the user.
    # @param goal_request_body [GoalRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GoalResponseBody, Integer, Hash)>] GoalResponseBody data, response status code and response headers
    def users_user_guid_goals_post_with_http_info(user_guid, goal_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GoalsApi.users_user_guid_goals_post ...'
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling GoalsApi.users_user_guid_goals_post"
      end
      # verify the required parameter 'goal_request_body' is set
      if @api_client.config.client_side_validation && goal_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'goal_request_body' when calling GoalsApi.users_user_guid_goals_post"
      end
      # resource path
      local_var_path = '/users/{user_guid}/goals'.sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(goal_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'GoalResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"GoalsApi.users_user_guid_goals_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GoalsApi#users_user_guid_goals_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reposition goals
    # This endpoint repositions goal priority levels. If one goal is set to a lower priority, then any other goals need to be adjusted accordingly.
    # @param user_guid [String] The unique identifier for the user.
    # @param reposition_request_body [RepositionRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [RepositionResponseBody]
    def users_user_guid_goals_reposition_put(user_guid, reposition_request_body, opts = {})
      data, _status_code, _headers = users_user_guid_goals_reposition_put_with_http_info(user_guid, reposition_request_body, opts)
      data
    end

    # Reposition goals
    # This endpoint repositions goal priority levels. If one goal is set to a lower priority, then any other goals need to be adjusted accordingly.
    # @param user_guid [String] The unique identifier for the user.
    # @param reposition_request_body [RepositionRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RepositionResponseBody, Integer, Hash)>] RepositionResponseBody data, response status code and response headers
    def users_user_guid_goals_reposition_put_with_http_info(user_guid, reposition_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GoalsApi.users_user_guid_goals_reposition_put ...'
      end
      # verify the required parameter 'user_guid' is set
      if @api_client.config.client_side_validation && user_guid.nil?
        fail ArgumentError, "Missing the required parameter 'user_guid' when calling GoalsApi.users_user_guid_goals_reposition_put"
      end
      # verify the required parameter 'reposition_request_body' is set
      if @api_client.config.client_side_validation && reposition_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'reposition_request_body' when calling GoalsApi.users_user_guid_goals_reposition_put"
      end
      # resource path
      local_var_path = '/users/{user_guid}/goals/reposition'.sub('{' + 'user_guid' + '}', CGI.escape(user_guid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(reposition_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'RepositionResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"GoalsApi.users_user_guid_goals_reposition_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GoalsApi#users_user_guid_goals_reposition_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end