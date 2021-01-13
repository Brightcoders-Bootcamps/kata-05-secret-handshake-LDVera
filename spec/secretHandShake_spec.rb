# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../app/secretHandShake')

RSpec.describe 'rules' do
  it 'wink' do
    hash = { "1": 'wink' }
    handshake = SecretHandShake.new(1, hash)
    expect(handshake.verify).to  eq 'wink'
  end

  it 'double blink' do
    hash = { "10": 'double blink' }
    handshake = SecretHandShake.new(2, hash)
    expect(handshake.verify).to  eq 'double blink'
  end

  it 'close your eyes' do
    hash = { "100": 'close your eyes' }
    handshake = SecretHandShake.new(4, hash)
    expect(handshake.verify).to  eq 'close your eyes'
  end
end
