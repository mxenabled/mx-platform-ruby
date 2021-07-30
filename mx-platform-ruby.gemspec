# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'mx-platform-ruby/version'

Gem::Specification.new do |s|
  s.name                  = 'mx-platform-ruby'
  s.version               = MXPlatformRuby::VERSION
  s.platform              = Gem::Platform::RUBY
  s.authors               = ['MX']
  s.email                 = ['devexperience@mx.com']
  s.files                 = `git ls-files`.split("\n")
  s.homepage              = 'https://www.mx.com/products/platform-api'
  s.summary               = 'MX Platform Ruby Gem'
  s.description           = 'A Ruby library for the MX Platform API.'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.6'
  s.metadata = {
    'documentation_uri' => 'https://docs.mx.com/api'
  }

  s.add_runtime_dependency 'active_attr'
  s.add_runtime_dependency 'httpclient'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
end
