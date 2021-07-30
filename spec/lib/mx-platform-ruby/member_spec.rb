# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Member do
  let(:member_attributes) do
    {
      aggregated_at: '2016-10-13T18:07:57.000Z',
      connection_status: 'CONNECTED',
      guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      id: 'unique_id',
      institution_code: 'chase',
      is_being_aggregated: false,
      is_oauth: false,
      metadata: '\"credentials_last_refreshed_at\": \"2015-10-15\"',
      name: 'Chase Bank',
      oauth_window_uri: 'int-widgets.moneydesktop.com/oauth/predirect_to/MBR-df96fd60-7122-4464-b3c2-ff11d8c74f6f/p8v7rxpxg3pdAsfgwxcrwxwhz3Zbygxfr6wAb931qv91hpb57k6bkr6t6m9djrfrfd467p8xkgqp6w7k1r9g8k8bfxqbfw2lq5tdwjq2sngAx76fm0jrw0dpmbtlkxchgjsw3r7r0hhq6A8sshqptfxql2rt123shfpkyhhpfvy67yvprbkb7lmlyrpwsd9yj0s22pmsyjhcw7d2q44d9fsxn5kfsmr2zqc79c2AxAx5gkjgbczf22A1sjx70t2pvnggzyh55s7bh62dd5wq7f1r4x90mcxn1tfhhrq5b09mjkt5hg66cjn700pcf6fgA42lbsp7v1pdch85mswycrp21c6j2sxffm14Asg3?skip_aggregation=false&referral_source=APP&ui_message_webview_url_scheme=myapp',
      successfully_aggregated_at: '2016-10-13T17:57:38.000Z',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:aggregate_member_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:check_balances_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:create_member_options) do
    {
      background_aggregation_is_disabled: false,
      credentials: [
        {
          guid: 'CRD-27d0edb8-1d50-5b90-bcbc-be270ca42b9f',
          value: 'password'
        }
      ],
      id: 'unique_id',
      institution_code: 'chase',
      is_oauth: false,
      metadata: '\"credentials_last_refreshed_at\": \"2015-10-15\"',
      referral_source: 'APP',
      skip_aggregation: false,
      ui_message_webview_url_scheme: 'mx',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:delete_member_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:extend_history_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:fetch_statements_by_member_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:identify_member_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_members_options) do
    {
      page: 1,
      records_per_page: 10,
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_member_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:resume_aggregation_options) do
    {
      challenges: [
        {
          guid: 'CRD-2378634-33ub5bhk54kjb',
          value: 'user-entered-value'
        }
      ],
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_member_options) do
    {
      background_aggregation_is_disabled: false,
      credentials: [
        {
          guid: 'CRD-27d0edb8-1d50-5b90-bcbc-be270ca42b9f',
          value: 'password'
        }
      ],
      id: 'unique_id',
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      metadata: '\"credentials_last_refreshed_at\": \"2015-10-15\"',
      skip_aggregation: false,
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:verify_member_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:pagination_attributes) do
    {
      'current_page' => 1,
      'per_page' => 25,
      'total_pages' => 1,
      'total_entries' => 1
    }
  end

  describe 'aggregate_member' do
    let(:aggregate_member_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(aggregate_member_response) }

    it 'returns member' do
      response = described_class.aggregate_member

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/aggregate',
          http_method: :post
        }
      )
      described_class.aggregate_member(aggregate_member_options)
    end
  end

  describe 'check_balances' do
    let(:check_balances_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(check_balances_response) }

    it 'returns member' do
      response = described_class.check_balances

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/check_balance',
          http_method: :post
        }
      )
      described_class.check_balances(check_balances_options)
    end
  end

  describe 'create_member' do
    let(:create_member_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(create_member_response) }

    it 'returns member' do
      response = described_class.create_member

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members',
          http_method: :post,
          request_body: {
            member: {
              background_aggregation_is_disabled: false,
              credentials: [
                {
                  guid: 'CRD-27d0edb8-1d50-5b90-bcbc-be270ca42b9f',
                  value: 'password'
                }
              ],
              id: 'unique_id',
              institution_code: 'chase',
              is_oauth: false,
              metadata: '\"credentials_last_refreshed_at\": \"2015-10-15\"',
              skip_aggregation: false
            },
            referral_source: 'APP',
            ui_message_webview_url_scheme: 'mx'
          }
        }
      )
      described_class.create_member(create_member_options)
    end
  end

  describe 'delete_member' do
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(nil) }

    it 'returns nil' do
      response = described_class.delete_member

      expect(response).to be(nil)
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
          http_method: :delete
        }
      )
      described_class.delete_member(delete_member_options)
    end
  end

  describe 'extend_history' do
    let(:extend_history_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(extend_history_response) }

    it 'returns member' do
      response = described_class.extend_history

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/extend_history',
          http_method: :post
        }
      )
      described_class.extend_history(extend_history_options)
    end
  end

  describe 'fetch_statements_by_member' do
    let(:fetch_statements_by_member_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(fetch_statements_by_member_response) }

    it 'returns member' do
      response = described_class.fetch_statements_by_member

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/fetch_statements',
          http_method: :post
        }
      )
      described_class.fetch_statements_by_member(fetch_statements_by_member_options)
    end
  end

  describe 'identify_member' do
    let(:identify_member_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(identify_member_response) }

    it 'returns member' do
      response = described_class.identify_member

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/identify',
          http_method: :post
        }
      )
      described_class.identify_member(identify_member_options)
    end
  end

  context 'list_members endpoints' do
    let(:list_members_response) do
      {
        'members' => [member_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_members_response) }

    describe 'list_members' do
      it 'returns a list of members' do
        response = described_class.list_members

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Member)
        expect(response.first.aggregated_at).to eq(member_attributes[:aggregated_at])
        expect(response.first.connection_status).to eq(member_attributes[:connection_status])
        expect(response.first.guid).to eq(member_attributes[:guid])
        expect(response.first.id).to eq(member_attributes[:id])
        expect(response.first.institution_code).to eq(member_attributes[:institution_code])
        expect(response.first.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
        expect(response.first.is_oauth).to eq(member_attributes[:is_oauth])
        expect(response.first.metadata).to eq(member_attributes[:metadata])
        expect(response.first.name).to eq(member_attributes[:name])
        expect(response.first.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
        expect(response.first.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
        expect(response.first.user_guid).to eq(member_attributes[:user_guid])
        expect(response.length).to eq(1)
      end
    end
  end

  describe 'read_member' do
    let(:read_member_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(read_member_response) }

    it 'returns member' do
      response = described_class.read_member

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
          http_method: :get
        }
      )
      described_class.read_member(read_member_options)
    end
  end

  describe 'resume_aggregation' do
    let(:resume_aggregation_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(resume_aggregation_response) }

    it 'returns member' do
      response = described_class.resume_aggregation

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/resume',
          http_method: :put,
          request_body: {
            member: {
              challenges: [
                {
                  guid: 'CRD-2378634-33ub5bhk54kjb',
                  value: 'user-entered-value'
                }
              ]
            }
          }
        }
      )
      described_class.resume_aggregation(resume_aggregation_options)
    end
  end

  describe 'update_member' do
    let(:update_member_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(update_member_response) }

    it 'returns member' do
      response = described_class.update_member

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
          http_method: :put,
          request_body: {
            member: {
              background_aggregation_is_disabled: false,
              credentials: [
                {
                  guid: 'CRD-27d0edb8-1d50-5b90-bcbc-be270ca42b9f',
                  value: 'password'
                }
              ],
              id: 'unique_id',
              metadata: '\"credentials_last_refreshed_at\": \"2015-10-15\"',
              skip_aggregation: false
            }
          }
        }
      )
      described_class.update_member(update_member_options)
    end
  end

  describe 'verify_member' do
    let(:verify_member_response) { { 'member' => member_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(verify_member_response) }

    it 'returns member' do
      response = described_class.verify_member

      expect(response).to be_kind_of(::MXPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes[:aggregated_at])
      expect(response.connection_status).to eq(member_attributes[:connection_status])
      expect(response.guid).to eq(member_attributes[:guid])
      expect(response.id).to eq(member_attributes[:id])
      expect(response.institution_code).to eq(member_attributes[:institution_code])
      expect(response.is_being_aggregated).to eq(member_attributes[:is_being_aggregated])
      expect(response.is_oauth).to eq(member_attributes[:is_oauth])
      expect(response.metadata).to eq(member_attributes[:metadata])
      expect(response.name).to eq(member_attributes[:name])
      expect(response.oauth_window_uri).to eq(member_attributes[:oauth_window_uri])
      expect(response.successfully_aggregated_at).to eq(member_attributes[:successfully_aggregated_at])
      expect(response.user_guid).to eq(member_attributes[:user_guid])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/verify',
          http_method: :post
        }
      )
      described_class.verify_member(verify_member_options)
    end
  end
end
