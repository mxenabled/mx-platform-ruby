# frozen_string_literal: true

require 'active_attr'
require 'base64'
require 'httpclient'
require 'json'

require 'mx-platform-ruby/client'
require 'mx-platform-ruby/error'
require 'mx-platform-ruby/pageable'
require 'mx-platform-ruby/version'

require 'mx-platform-ruby/account'
require 'mx-platform-ruby/account_number'
require 'mx-platform-ruby/account_owner'
require 'mx-platform-ruby/challenge'
require 'mx-platform-ruby/connect_widget'
require 'mx-platform-ruby/credential'
require 'mx-platform-ruby/enhance_transaction'
require 'mx-platform-ruby/holding'
require 'mx-platform-ruby/institution'
require 'mx-platform-ruby/member'
require 'mx-platform-ruby/member_status'
require 'mx-platform-ruby/merchant'
require 'mx-platform-ruby/tag'
require 'mx-platform-ruby/tagging'
require 'mx-platform-ruby/transaction'
require 'mx-platform-ruby/user'
require 'mx-platform-ruby/widget'

module MxPlatformRuby
  class << self
    attr_reader :client

    def configure
      @client = ::MxPlatformRuby::Client.new
      yield @client
    end
  end
end
