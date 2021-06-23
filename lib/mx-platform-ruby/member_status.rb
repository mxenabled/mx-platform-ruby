# frozen_string_literal: true

module MXPlatformRuby
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
      read_member_status_options = read_member_status_options(options)
      response = ::MXPlatformRuby.client.make_request(read_member_status_options)

      member_params = response['member']
      ::MXPlatformRuby::MemberStatus.new(member_params)
    end

    # Private class methods

    def self.read_member_status_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/status",
        http_method: :get
      }
    end
    private_class_method :read_member_status_options
  end
end
