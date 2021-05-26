# MX Platform API Ruby Library
#### Version 0.1.0

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

## List endpoints

The simplest way to read back all objects from the list endpoints is through the "_each" methods. These methods yield one object at a time.

```ruby
::MXPlatformRuby::Institution.list_institutions_each do |institution|
  p institution
end
```

#### Additional control

For additional control when working with the `page` and `records_per_page` parameters, we've also surfaced "pagination" endpoints.

To retrieve a single page,
```ruby
page = ::MXPlatformRuby::Institution.list_institutions_page(page: 1, records_per_page: 10)

puts page.current_page
puts page.records_per_page
puts page.total_entries
puts page.total_pages

page.each do |institution|
  p institution
end
```

To retrieve multiple pages,
```ruby
::MXPlatformRuby::Institution.list_institutions_pages_each(page: 1, records_per_page: 10) do |page|
  puts page.current_page
  puts page.records_per_page
  puts page.total_entries
  puts page.total_pages

  page.each do |institution|
    p institution
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mxenabled/mx-platform-ruby
