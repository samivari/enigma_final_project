require './lib/enigma'
require './lib/shift'
require './lib/encode'
require './lib/key'
require 'timecop'

RSpec.describe 'Enigma' do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_a(Enigma)
  end

  it 'can encrypt' do
    key = Key.new('02715')
    timestamp = Timecop.travel('950804')
    offset = Offset.new(timestamp)
    date = offset.todays_date
    shift = Shift.new(key, date)
    enigma = Enigma.new
    actual = enigma.encrypt('hello world', key.key, offset.todays_date)
    expected = { encryption: 'keder ohulw', key: '02715', date: '040895' }
    expect(actual).to eq(expected)
  end
end
