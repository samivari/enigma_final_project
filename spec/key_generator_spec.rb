require './lib/key_generator'

RSpec.describe 'KeyGenerator' do
  it 'exists' do
    key_generator = KeyGenerator.new('09845')
    expect(key_generator).to be_a(KeyGenerator)
  end
end
