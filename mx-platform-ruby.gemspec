# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'mx-platform-ruby/version'

Gem::Specification.new do |s|
  s.name        = 'mx-platform-ruby'
  s.version     = MxPlatformRuby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['MX']
  s.email       = ['platform']
  s.homepage    = 'https://www.mx.com/products/platform-api'
  s.summary     = 'Mx Platform Ruby Gem'
  s.description = 'A Ruby library for the MX Platform API.'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.6'

  s.add_runtime_dependency 'active_attr'
  s.add_runtime_dependency 'httpclient'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
end
