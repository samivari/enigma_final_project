require 'date'
require './lib/enigma'
require 'timecop'

RSpec.describe 'Enigma' do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_a(Enigma)
  end

  describe '#encrypt/3' do
    context 'when all three arguments are supplied' do
      it 'can encrypt messages' do
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
        expect = {
          encryption: 'keder ohulw',
          key: '02715',
          date: date
        }
        expect(actual).to eq(expected)
      end
    end

    context 'when date and key are not supplied' do
      xit 'can encrypt messages' do
        date = '111121'
        key = '01234'
        enigma = Enigma.new
        actual = enigma.encrypt('hello world')
        expect = {
          encryption: 'keder ohulw',
          key: key,
          date: date
        }
        expect(actual).to eq(expected)
      end
    end
  end
end
