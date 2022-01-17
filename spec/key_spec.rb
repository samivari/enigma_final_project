require './lib/key'
require 'spec_helper'

RSpec.describe 'Key' do
  it 'exists' do
    key = Key.new('09845')
    expect(key).to be_a(Key)
  end

  it 'has keys' do
    key = Key.new('09845')
    expect(key.keys[:A]).to eq('09')
    expect(key.keys[:B]).to eq('98')
    expect(key.keys[:C]).to eq('84')
    expect(key.keys[:D]).to eq('45')
  end

  it 'can gen a rand key' do
    key = Key.new
    expect(key.key.length).to eq(5)
  end
end
