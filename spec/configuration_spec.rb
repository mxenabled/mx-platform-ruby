=begin
#MX Platform API

#The MX Platform API is a powerful, fully-featured API designed to make aggregating and enhancing financial data easy and reliable. It can seamlessly connect your app or website to tens of thousands of financial institutions.

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'

describe MxPlatformRuby::Configuration do
  let(:config) { MxPlatformRuby::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.mx.com")
    # MxPlatformRuby.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.mx.com")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.mx.com")
      end
    end
  end
end
