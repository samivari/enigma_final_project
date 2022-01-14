require './lib/key_generator'

RSpec.describe 'KeyGenerator' do
  it 'exists' do
    key_generator = KeyGenerator.new('09845')
    expect(key_generator).to be_a(KeyGenerator)
  end

  it 'has key offset' do
    key_generator = KeyGenerator.new('09845')
    expect(key_generator.key_offset[:A]).to eq('09')
    expect(key_generator.key_offset[:B]).to eq('98')
    expect(key_generator.key_offset[:C]).to eq('84')
    expect(key_generator.key_offset[:D]).to eq('45')
  end
end
