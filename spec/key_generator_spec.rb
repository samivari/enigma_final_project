require './lib/key_generator'

RSpec.describe 'KeyGenerator' do
  it 'exists' do
    key_generator = KeyGenerator.new
    expect(key_generator).to be_a(KeyGenerator)
  end

  describe '.generate' do
    it 'generates a key' do
      key_generator = KeyGenerator
      actual = key_generator.generate.length
      expected = 5
      expect(actual).to eq(expected)
    end

    it 'generates a key' do
      key_generator = KeyGenerator
      valid_elements = %w[0 1 2 3 4 5 6 7 8 9]
      actual = key_generator.generate
      actual.split('').each do |act|
        expect(valid_elements).to include(act)
      end
    end
  end
end
