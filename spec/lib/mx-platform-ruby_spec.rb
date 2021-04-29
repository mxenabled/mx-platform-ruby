# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MxPlatformRuby do
  it 'has a client' do
    expect(described_class).to respond_to(:client)
  end

  describe '.configure' do
    it 'yields a ::MxPlatformRuby::Client' do
      expect { |block| described_class.configure(&block) }.to yield_with_args(::MxPlatformRuby::Client)
    end
  end
end
