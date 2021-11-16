require 'date'
require './lib/enigma'

RSpec.describe 'Enigma' do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_a(Enigma)
  end

  describe '#encrypt/3' do
    context 'when all three arguments are supplied' do
      xit 'can encrypt messages' do
        enigma = Enigma.new

        actual = enigma.encrypt('hello world', '02715', '040895')
        expected = {
          encryption: 'keder ohulw',
          key: '02715',
          date: '040895'
        }
        expect(actual).to eq(expected)
      end
    end

    context 'when date is not supplied' do
      xit 'can encrypt messages' do
        date = '111121'
        enigma = Enigma.new
        actual = enigma.encrypt('hello world', '02715')
        expected = {
          encryption: 'keder ohulw',
          key: '02715',
          date: date
        }
        expect(actual).to eq(expected)
      end
    end

    context 'when date and key are not supplied' do
      xit 'can encrypt messages' do
        enigma = Enigma.new
        date = enigma.generated_date
        key = enigma.generated_key
        actual = enigma.encrypt('hello world')
        expected = {
          encryption: 'keder ohulw',
          key: key,
          date: date
        }
        expect(actual).to eq(expected)
      end
    end
  end

  it 'turns the key into a shift' do
    enigma = Enigma.new
    key = '02715'
    actual = enigma.key_shift(key)
    expected = %w[02 27 71 15]
    expect(actual).to eq(expected)
  end
end
