# MX Platform API Ruby Library
### Version 0.1.0

A Ruby library for the [MX Platform API](https://dashboard.mx.com). In order to make API requests, you will need to [sign up for the MX Platform API](https://dashboard.mx.com/sign_up) and
get a `Client ID` and `API Key`.

## Documentation

See the [MX Platform API docs](https://docs.mx.com/api)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mx-platform-ruby'
```

And then execute:
```shell
$ bundle
```
Or install it yourself with:
```shell
$ gem install mx-platform-ruby
```

## Configuration

We provide a development environment that will allow you to create and test your changes before they go to
production. In order to test against the development environment, use `https://int-api.mx.com` as the `base_url`
in your configuration.

Once you have access to the production environment, you can update your `base_url` to `https://api.mx.com`.

```ruby
::MxPlatformRuby.configure do |config|
  config.username = "Client ID"
  config.password = "API Key"
  config.base_url = "https://int-api.mx.com"
end
```

## Examples

### Pagination

The following demonstrates how you can read data back from the API in a memory efficient way using built-in pagination
helpers.

```ruby
::MxPlatformRuby::User.list_users
```

```ruby
::MxPlatformRuby::User.list_users_each do |user|
  p user
end
```

```ruby
::MxPlatformRuby::User.list_users_in_batches do |user_batch|
  user_batch.each do |user|
    p user
  end
end
```

### Pagination methods

We also provide these built-in pagination methods that you can call on the response for all of our list endpoints.

```ruby
response = ::MxPlatformRuby::User.list_users

puts response.current_page
puts response.records_per_page
puts response.total_entries
puts response.total_pages
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mxenabled/mx-platform-ruby
