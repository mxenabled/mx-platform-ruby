# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby::Client do
  let(:client_custom_params) { described_class.new('base_url', 'password', 'username') }
  let(:client_default_params) { described_class.new }
  let(:error_response) { ::OpenStruct.new('status' => 500, 'body' => 'error_message') }
  let(:file_response) { ::OpenStruct.new('status' => 200, 'body' => sample_pdf_binary) }
  let(:ok_response) { ::OpenStruct.new('status' => 200, 'body' => '{ "key": "value" }') }
  let(:sample_pdf) { ::File.open('spec/sample.pdf') }
  let(:sample_pdf_binary) { ::IO.binread(sample_pdf) }

  describe '#http_client' do
    it 'returns a HTTPClient' do
      expect(client_custom_params.http_client).to be_a(::HTTPClient)
    end
  end

  describe '#initialize' do
    context 'with default params' do
      it 'sets password to param default' do
        expect(client_default_params.password).to eq(nil)
      end

      it 'sets username to param default' do
        expect(client_default_params.username).to eq(nil)
      end

      it 'sets base_url to param default' do
        expect(client_default_params.base_url).to eq('https://int-api.mx.com')
      end
    end

    context 'with params' do
      it 'sets password to param' do
        expect(client_custom_params.password).to eq('password')
      end

      it 'sets username to param' do
        expect(client_custom_params.username).to eq('username')
      end

      it 'sets base_url to param' do
        expect(client_custom_params.base_url).to eq('base_url')
      end
    end
  end

  describe '#make_request' do
    before do
      allow(client_custom_params.http_client).to receive(:get).and_return(ok_response)
    end

    it 'builds the request url' do
      expect(client_custom_params.http_client).to receive(:get).with('base_url/endpoint', any_args)
      client_custom_params.make_request(:get, '/endpoint')
    end

    it 'sends authentication headers' do
      expect(client_custom_params.http_client).to receive(:get).with(
        anything,
        anything,
        hash_including('Authorization' => 'Basic dXNlcm5hbWU6cGFzc3dvcmQ=')
      )
      client_custom_params.make_request(:get, '/endpoint')
    end

    it 'sends the body as json' do
      expect(client_custom_params.http_client).to receive(:get).with(anything, '{"key":"value"}', any_args)
      client_custom_params.make_request(:get, '/endpoint', key: :value)
    end

    context 'when the response is json' do
      it 'parses the json response' do
        allow(client_custom_params.http_client).to receive(:get).and_return(ok_response)
        parsed_response = client_custom_params.make_request(:get, '/endpoint', key: :value)
        expect(parsed_response['key']).to eq('value')
      end
    end

    context 'when the response is not json' do
      it 'formats the response as a ::TempFile' do
        allow(client_custom_params.http_client).to receive(:get).and_return(file_response)
        temp_file = client_custom_params.make_request(:get, '/endpoint', key: :value)

        expect(temp_file).to be_kind_of(::Tempfile)
        expect(::IO.read(temp_file)).to eq(::IO.read(sample_pdf))
      end
    end

    context 'with error' do
      it 'raises a ::MXPlatformRuby::Error' do
        allow(client_custom_params.http_client).to receive(:get).and_return(error_response)
        expect { client_custom_params.make_request(:get, '/endpoint', key: :value) }.to raise_error(
          ::MXPlatformRuby::Error
        )
      end
    end
  end
end
