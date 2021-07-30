*This project is currently in **Beta**. Please open up an issue [here](https://github.com/mxenabled/mx-platform-ruby/issues) to report issues using the MX Platform API Ruby Library.*

# MX Platform API Ruby Library
#### Version 0.1.1

A Ruby library for the [MX Platform API](https://www.mx.com/products/platform-api).

## Documentation

See the [MX Platform API docs](https://docs.mx.com/api).

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

In order to make API requests, you will need to [sign up for the MX Platform API](https://dashboard.mx.com/sign_up) and get a `Client ID` and `API Key`.
```ruby
::MXPlatformRuby.configure do |config|
  config.username = 'Client ID'
  config.password = 'API Key'
  config.base_url = 'https://int-api.mx.com' # in production, use 'https://api.mx.com'
end
```

## Paginated endpoints

For paginated endpoints, the pagination values can be accessed through the returned `::MXPlatformRuby::Page` array as follows

```ruby
institutions = ::MXPlatformRuby::Institution.list_institutions(options)

puts "Current page: #{institutions.current_page}"
puts "Per page: #{institutions.per_page}"
puts "Total entries: #{institutions.total_entries}"
puts "Total pages: #{institutions.total_pages}"

institutions.each do |institution|
  p institution
end
```


## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/mxenabled/mx-platform-ruby).
