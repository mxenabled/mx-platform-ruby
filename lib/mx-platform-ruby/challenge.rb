# frozen_string_literal: true

module MXPlatformRuby
  class Challenge
    extend ::MXPlatformRuby::Pageable
    include ::ActiveAttr::Model

    attribute :field_name
    attribute :guid
    attribute :image_data
    attribute :image_options
    attribute :label
    attribute :options
    attribute :type

    def self.list_member_challenges_page(options = {})
      options = list_member_challenges_options(options)

      paginate(options)
    end

    def self.list_member_challenges_each(options = {}, &block)
      options = list_member_challenges_options(options)

      paginate_each(options, &block)
    end

    def self.list_member_challenges_pages_each(options = {}, &block)
      options = list_member_challenges_options(options)

      paginate_pages(options, &block)
    end

    # Private class methods

    def self.list_member_challenges_options(options)
      {
        endpoint: "/users/#{options[:user_guid]}/members/#{options[:member_guid]}/challenges",
        http_method: :get,
        query_params: {
          page: options[:page],
          records_per_page: options[:records_per_page]
        }.compact,
        resource: 'challenges'
      }
    end
    private_class_method :list_member_challenges_options
  end
end
