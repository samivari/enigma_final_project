require './lib/key_generator'

RSpec.describe 'KeyGenerator' do
  it 'exists' do
    key_generator = KeyGenerator.new('09845')
    expect(key_generator).to be_a(KeyGenerator)
  end

  it 'has key offset' do
    key_generator = KeyGenerator.new('09845')
    expect(key_generator.keys[:A]).to eq('09')
    expect(key_generator.keys[:B]).to eq('98')
    expect(key_generator.keys[:C]).to eq('84')
    expect(key_generator.keys[:D]).to eq('45')
  end

  it 'can gen a rand key' do
    key_generator = KeyGenerator.new
    expect(key_generator.key.length).to eq(5)
    require 'pry'
    binding.pry
  end
end
