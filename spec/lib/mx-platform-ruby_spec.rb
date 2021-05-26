# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ::MXPlatformRuby do
  it 'has a client' do
    expect(described_class).to respond_to(:client)
  end

  describe '.configure' do
    it 'yields a ::MXPlatformRuby::Client' do
      expect { |block| described_class.configure(&block) }.to yield_with_args(::MXPlatformRuby::Client)
    end
  end
end
