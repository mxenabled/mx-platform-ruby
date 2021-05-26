# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Challenge do
  let(:challenge_attributes) do
    {
      'field_name' => 'Who is this guy?',
      'guid' => 'CRD-ce76d2e3-86bd-ec4a-ec52-eb53b5194bf5',
      'image_data' => 'Who is this guy?',
      'image_options' => [
        {
          'data_uri' => 'data:image/png;base64,iVBORw0KGgoAAAANSUh ... more image data ...',
          'label' => 'IMAGE_1',
          'value' => 'image_data'
        }
      ],
      'label' => 'Who is this guy?',
      'options' => [
        {
          'label' => 'IMAGE_1',
          'value' => 'image_data'
        }
      ],
      'type' => 'IMAGE_DATA'
    }
  end
  let(:list_member_challenges_path_parameters) do
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

  context 'list_member_challenges endpoints' do
    let(:list_member_challenges_response) do
      {
        'challenges' => [challenge_attributes],
        'pagination' => pagination_attributes
      }
    end

    before { allow(::MXPlatformRuby.client).to receive(:make_request).and_return(list_member_challenges_response) }

    describe 'list_member_challenges_page' do
      it 'returns a list of challenges' do
        response = described_class.list_member_challenges_page

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Challenge)
        expect(response.first.field_name).to eq(challenge_attributes['field_name'])
        expect(response.first.guid).to eq(challenge_attributes['guid'])
        expect(response.first.image_data).to eq(challenge_attributes['image_data'])
        expect(response.first.image_options).to eq(challenge_attributes['image_options'])
        expect(response.first.label).to eq(challenge_attributes['label'])
        expect(response.first.options).to eq(challenge_attributes['options'])
        expect(response.first.type).to eq(challenge_attributes['type'])
        expect(response.length).to eq(1)
      end
    end

    describe 'list_member_challenges_each' do
      it 'yields a challenge' do
        response = nil

        described_class.list_member_challenges_each do |challenge|
          response = challenge
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Challenge)
        expect(response.field_name).to eq(challenge_attributes['field_name'])
        expect(response.guid).to eq(challenge_attributes['guid'])
        expect(response.image_data).to eq(challenge_attributes['image_data'])
        expect(response.image_options).to eq(challenge_attributes['image_options'])
        expect(response.label).to eq(challenge_attributes['label'])
        expect(response.options).to eq(challenge_attributes['options'])
        expect(response.type).to eq(challenge_attributes['type'])
      end
    end

    describe 'list_member_challenges_pages_each' do
      it 'yields a page of challenges' do
        response = nil

        described_class.list_member_challenges_pages_each do |page|
          response = page
        end

        expect(response).to be_kind_of(::MXPlatformRuby::Page)
        expect(response.first).to be_kind_of(::MXPlatformRuby::Challenge)
        expect(response.first.field_name).to eq(challenge_attributes['field_name'])
        expect(response.first.guid).to eq(challenge_attributes['guid'])
        expect(response.first.image_data).to eq(challenge_attributes['image_data'])
        expect(response.first.image_options).to eq(challenge_attributes['image_options'])
        expect(response.first.label).to eq(challenge_attributes['label'])
        expect(response.first.options).to eq(challenge_attributes['options'])
        expect(response.first.type).to eq(challenge_attributes['type'])
        expect(response.length).to eq(1)
      end
    end
  end
end
