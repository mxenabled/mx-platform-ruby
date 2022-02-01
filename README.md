*This project is currently in **Beta**. Please open up an issue [here](https://github.com/mxenabled/mx-platform-ruby/issues) to report issues using the MX Platform Ruby library.*

# MX Platform Ruby

The [MX Platform API](https://www.mx.com/products/platform-api) is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

## Documentation

Examples for the API endpoints can be found [here.](https://docs.mx.com/api)

## Requirements

- Ruby >= 2.6

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mx-platform-ruby'
```

And then execute:
```shell
bundle
```

Or install it yourself with:
```shell
gem install mx-platform-ruby
```

## Getting Started

In order to make requests, you will need to [sign up](https://dashboard.mx.com/sign_up) for the MX Platform API and get a `Client ID` and `API Key`.

Please follow the [installation](#installation) procedure and then run the following code to create your first User:
```ruby
require 'mx-platform-ruby'

MxPlatformRuby.configure do |config|
  # Configure with your Client ID/API Key from https://dashboard.mx.com
  config.username = 'Your Client ID'
  config.password = 'Your API Key'

  # Configure environment. 0 for production, 1 for development
  config.server_index = 1
end

api_instance = MxPlatformRuby::MxPlatformApi.new
user_create_request_body = MxPlatformRuby::UserCreateRequestBody.new(
  user: MxPlatformRuby::UserCreateRequest.new(
    metadata: "Creating a user!"
  )
)

begin
  result = api_instance.create_user(user_create_request_body)
  p result
rescue MxPlatformRuby::ApiError => e
  puts "Error when calling MxPlatformApi->create_user: #{e}"
end
```

## Development

This project was generated by the [OpenAPI Generator](https://openapi-generator.tech). To generate this library, verify you have the latest version of the `openapi-generator-cli` found [here.](https://github.com/OpenAPITools/openapi-generator#17---npm)

Running the following command in this repo's directory will generate this library using the [MX Platform API OpenAPI spec](https://github.com/mxenabled/openapi/blob/master/openapi/mx_platform_api.yml) with our [configuration and templates.](https://github.com/mxenabled/mx-platform-ruby/tree/master/openapi)
```shell
openapi-generator-cli generate \
-i https://raw.githubusercontent.com/mxenabled/openapi/master/openapi/mx_platform_api.yml \
-g ruby \
-c ./openapi/config.yml \
-t ./openapi/templates
```

## Contributing

Please [open an issue](https://github.com/mxenabled/mx-platform-ruby/issues) or [submit a pull request.](https://github.com/mxenabled/mx-platform-ruby/pulls)
