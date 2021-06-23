# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::MemberStatus do
  let(:member_status_attributes) do
    {
      aggregated_at: '2016-10-13T18:07:57.000Z',
      challenges: [
        {
          field_name: 'Who is this guy?',
          guid: 'CRD-ce76d2e3-86bd-ec4a-ec52-eb53b5194bf5',
          image_data: 'Who is this guy?',
          image_options: [
            {
              data_uri: 'data:image/png;base64,iVBORw0KGgoAAAANSUh ... more image data ...',
              label: 'IMAGE_1',
              value: 'image_data'
            }
          ],
          label: 'Who is this guy?',
          options: [
            {
              label: 'IMAGE_1',
              value: 'image_data'
            }
          ],
          type: 'IMAGE_DATA'
        }
      ],
      connection_status: 'CONNECTED',
      guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      has_processed_accounts: true,
      has_processed_transactions: false,
      is_authenticated: false,
      is_being_aggregated: false,
      successfully_aggregated_at: '2016-10-13T17:57:38.000Z'
    }
  end
  let(:read_member_status_options) do
    {
      member_guid: 'MBR-7c6f361b-e582-15b6-60c0-358f12466b4b',
      user_guid: 'USR-fa7537f3-48aa-a683-a02a-b18940482f54'
    }
  end

  describe 'read_member_status' do
    let(:read_member_status_response) { { 'member' => member_status_attributes } }
    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(read_member_status_response) }

    it 'returns member_status' do
      response = described_class.read_member_status

      expect(response).to be_kind_of(::MXPlatformRuby::MemberStatus)
      expect(response.aggregated_at).to eq(member_status_attributes[:aggregated_at])
      expect(response.challenges).to eq(member_status_attributes[:challenges])
      expect(response.connection_status).to eq(member_status_attributes[:connection_status])
      expect(response.guid).to eq(member_status_attributes[:guid])
      expect(response.has_processed_accounts).to eq(member_status_attributes[:has_processed_accounts])
      expect(response.has_processed_transactions).to eq(member_status_attributes[:has_processed_transactions])
      expect(response.is_authenticated).to eq(member_status_attributes[:is_authenticated])
      expect(response.is_being_aggregated).to eq(member_status_attributes[:is_being_aggregated])
      expect(response.successfully_aggregated_at).to eq(member_status_attributes[:successfully_aggregated_at])
    end

    it 'makes a client request with the expected params' do
      expect(::MXPlatformRuby.client).to receive(:make_request).with(
        {
          endpoint: '/users/USR-fa7537f3-48aa-a683-a02a-b18940482f54/members/MBR-7c6f361b-e582-15b6-60c0-358f12466b4b/status',
          http_method: :get
        }
      )
      described_class.read_member_status(read_member_status_options)
    end
  end
end
