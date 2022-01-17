require './lib/enigma'
require './lib/shift'
require './lib/encode'
require './lib/key'
require './lib/decode'
require './lib/offset'
require 'timecop'

RSpec.describe 'Enigma' do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_a(Enigma)
  end

  it 'can encrypt' do
    key = Key.new('02715')
    offset = Offset.new(Timecop.freeze(Time.local(1995, 8, 4)))
    enigma = Enigma.new
    actual = enigma.encrypt('hello world', key.key, offset.date_format)
    expected = { encryption: 'keder ohulw', key: '02715', date: '040895' }
    expect(actual).to eq(expected)
  end

  it 'can encrypt with no date' do
    key = Key.new('02715')
    Timecop.freeze(Time.local(2022, 1, 16))
    offset = Offset.new
    enigma = Enigma.new
    actual = enigma.encrypt('hello world', key.key)
    expected = { encryption: 'nmjduhugxtb', key: '02715', date: '160122' }
    expect(actual).to eq(expected)
  end

  it 'can decrypt' do
    key = Key.new('02715')
    offset = Offset.new(Timecop.travel('950804'))
    enigma = Enigma.new
    actual = enigma.decrypt('keder ohulw', key.key, offset.date_format)
    expected = { decryption: 'hello world', key: '02715', date: '040895' }
    expect(actual).to eq(expected)
  end

  it 'can decrypt with no date' do
    key = Key.new('02715')
    Timecop.freeze(Time.local(2022, 1, 16))
    offset = Offset.new
    enigma = Enigma.new
    actual = enigma.decrypt('nmjduhugxtb', key.key)
    expected = { decryption: 'hello world', key: '02715', date: '160122' }
    expect(actual).to eq(expected)
  end
end
