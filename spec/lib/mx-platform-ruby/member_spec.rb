# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby::Member do
  let(:member_attributes) do
    {
      'aggregated_at' => '2016-10-13T18:07:57.000Z',
      'connection_status' => 'CONNECTED',
      'guid' => 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      'id' => 'unique_id',
      'institution_code' => 'chase',
      'is_being_aggregated' => false,
      'is_oauth' => false,
      'metadata' => '\"credentials_last_refreshed_at\": \"2015-10-15\"',
      'name' => 'Chase Bank',
      'successfully_aggregated_at' => '2016-10-13T17:57:38.000Z',
      'user_guid' => 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:member_response) { { 'member' => member_attributes } }
  let(:aggregate_member_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:check_balances_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:create_member_request_body_parameters) do
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
      metadata: '\"credentials_last_refreshed_at\": \"2015-10-15\"'
    }
  end
  let(:create_member_request_body) do
    {
      member:
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
        metadata: '\"credentials_last_refreshed_at\": \"2015-10-15\"'
      }
    }
  end
  let(:create_member_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:delete_member_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:extend_history_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:identify_member_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:list_members_path_parameters) do
    {
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:read_member_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:resume_aggregation_request_body_parameters) do
    {
      challenges: [
        {
          guid: 'CRD-2378634-33ub5bhk54kjb',
          value: 'user-entered-value'
        }
      ]
    }
  end
  let(:resume_aggregation_request_body) do
    {
      member:
      {
        challenges: [
          {
            guid: 'CRD-2378634-33ub5bhk54kjb',
            value: 'user-entered-value'
          }
        ]
      }
    }
  end
  let(:resume_aggregation_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:update_member_request_body_parameters) do
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
      metadata: '\"credentials_last_refreshed_at\": \"2015-10-15\"'
    }
  end
  let(:update_member_request_body) do
    {
      member:
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
        metadata: '\"credentials_last_refreshed_at\": \"2015-10-15\"'
      }
    }
  end
  let(:update_member_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:verify_member_path_parameters) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end
  let(:members_response) do
    {
      'members' => [member_attributes],
      'pagination' => pagination_attributes
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

  before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(members_response) }

  describe 'aggregate_member' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(member_response) }

    it 'returns member' do
      response = described_class.aggregate_member

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end

  describe 'check_balances' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(member_response) }

    it 'returns member' do
      response = described_class.check_balances

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end

  describe 'create_member' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(member_response) }

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :post,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members',
        create_member_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.create_member(
        create_member_request_body_parameters.merge(create_member_path_parameters)
      )
    end

    it 'returns member' do
      response = described_class.create_member

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end

  describe 'delete_member' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(nil) }

    it 'returns nil' do
      response = described_class.delete_member

      expect(response).to be(nil)
    end
  end

  describe 'extend_history' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(member_response) }

    it 'returns member' do
      response = described_class.extend_history

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end

  describe 'identify_member' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(member_response) }

    it 'returns member' do
      response = described_class.identify_member

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end

  describe 'list_members' do
    it 'returns a list of members' do
      response = described_class.list_members

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.first.aggregated_at).to eq(
        member_attributes['aggregated_at']
      )
      expect(response.first.connection_status).to eq(
        member_attributes['connection_status']
      )
      expect(response.first.guid).to eq(
        member_attributes['guid']
      )
      expect(response.first.id).to eq(
        member_attributes['id']
      )
      expect(response.first.institution_code).to eq(
        member_attributes['institution_code']
      )
      expect(response.first.is_being_aggregated).to eq(
        member_attributes['is_being_aggregated']
      )
      expect(response.first.is_oauth).to eq(
        member_attributes['is_oauth']
      )
      expect(response.first.metadata).to eq(
        member_attributes['metadata']
      )
      expect(response.first.name).to eq(
        member_attributes['name']
      )
      expect(response.first.successfully_aggregated_at).to eq(
        member_attributes['successfully_aggregated_at']
      )
      expect(response.first.user_guid).to eq(
        member_attributes['user_guid']
      )
      expect(response.length).to eq(1)
    end
  end

  describe 'list_members_each' do
    it 'yields a member' do
      response = nil

      described_class.list_members_each do |member|
        response = member
      end

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end

  describe 'list_members_in_batches' do
    it 'yields a batch of members' do
      response = nil

      described_class.list_members_in_batches do |batch|
        response = batch
      end

      expect(response).to be_kind_of(::MxPlatformRuby::PaginationBatch)
      expect(response.first).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.first.aggregated_at).to eq(
        member_attributes['aggregated_at']
      )
      expect(response.first.connection_status).to eq(
        member_attributes['connection_status']
      )
      expect(response.first.guid).to eq(
        member_attributes['guid']
      )
      expect(response.first.id).to eq(
        member_attributes['id']
      )
      expect(response.first.institution_code).to eq(
        member_attributes['institution_code']
      )
      expect(response.first.is_being_aggregated).to eq(
        member_attributes['is_being_aggregated']
      )
      expect(response.first.is_oauth).to eq(
        member_attributes['is_oauth']
      )
      expect(response.first.metadata).to eq(
        member_attributes['metadata']
      )
      expect(response.first.name).to eq(
        member_attributes['name']
      )
      expect(response.first.successfully_aggregated_at).to eq(
        member_attributes['successfully_aggregated_at']
      )
      expect(response.first.user_guid).to eq(
        member_attributes['user_guid']
      )
      expect(response.length).to eq(1)
    end
  end

  describe 'read_member' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(member_response) }

    it 'returns member' do
      response = described_class.read_member

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end

  describe 'resume_aggregation' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(member_response) }

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :put,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/resume',
        resume_aggregation_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.resume_aggregation(
        resume_aggregation_request_body_parameters.merge(resume_aggregation_path_parameters)
      )
    end

    it 'returns member' do
      response = described_class.resume_aggregation

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end

  describe 'update_member' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(member_response) }

    it 'makes a client request with the expected params' do
      expect(::MxPlatformRuby.client).to receive(:make_request).with(
        :put,
        '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
        update_member_request_body,
        'Accept' => 'application/vnd.mx.api.v1+json'
      )
      described_class.update_member(
        update_member_request_body_parameters.merge(update_member_path_parameters)
      )
    end

    it 'returns member' do
      response = described_class.update_member

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end

  describe 'verify_member' do
    before { allow(::MxPlatformRuby.client).to receive(:make_request).and_return(member_response) }

    it 'returns member' do
      response = described_class.verify_member

      expect(response).to be_kind_of(::MxPlatformRuby::Member)
      expect(response.aggregated_at).to eq(member_attributes['aggregated_at'])
      expect(response.connection_status).to eq(member_attributes['connection_status'])
      expect(response.guid).to eq(member_attributes['guid'])
      expect(response.id).to eq(member_attributes['id'])
      expect(response.institution_code).to eq(member_attributes['institution_code'])
      expect(response.is_being_aggregated).to eq(member_attributes['is_being_aggregated'])
      expect(response.is_oauth).to eq(member_attributes['is_oauth'])
      expect(response.metadata).to eq(member_attributes['metadata'])
      expect(response.name).to eq(member_attributes['name'])
      expect(response.successfully_aggregated_at).to eq(member_attributes['successfully_aggregated_at'])
      expect(response.user_guid).to eq(member_attributes['user_guid'])
    end
  end
end
