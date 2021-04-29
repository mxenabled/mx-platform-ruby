# frozen_string_literal: true

module MxPlatformRuby
  class Challenge
    extend ::MxPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :field_name
    attribute :guid
    attribute :image_data
    attribute :image_options
    attribute :label
    attribute :options
    attribute :type

    def self.list_member_challenges(options = {})
      options = list_member_challenges_pagination_options(options)
      paginate(options)
    end

    def self.list_member_challenges_each(options = {}, &block)
      options = list_member_challenges_pagination_options(options)
      paginate_each(options, &block)
    end

    def self.list_member_challenges_in_batches(options = {}, &block)
      options = list_member_challenges_pagination_options(options)
      paginate_in_batches(options, &block)
    end

    # Private class methods

    def self.list_member_challenges_pagination_options(options)
      {
        accept_header: 'application/vnd.mx.api.v1+json',
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/challenges",
        resource: 'challenges',
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }
      }
    end
    private_class_method :list_member_challenges_pagination_options
  end
end
