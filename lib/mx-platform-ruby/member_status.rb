# frozen_string_literal: true

module MxPlatformRuby
  class MemberStatus
    include ::ActiveAttr::Model

    attribute :aggregated_at
    attribute :challenges
    attribute :connection_status
    attribute :guid
    attribute :has_processed_accounts
    attribute :has_processed_transactions
    attribute :is_authenticated
    attribute :is_being_aggregated
    attribute :successfully_aggregated_at

    def self.read_member_status(options = {})
      headers = {
        'Accept' => 'application/vnd.mx.api.v1+json'
      }
      endpoint = "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/status"
      response = ::MxPlatformRuby.client.make_request(:get, endpoint, nil, headers)

      member_params = response['member']
      ::MxPlatformRuby::MemberStatus.new(member_params)
    end
  end
end
