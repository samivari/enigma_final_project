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
    date = Timecop.travel('950804')
    offset = Offset.new(date)
    shift = Shift.new(key, offset)
    enigma = Enigma.new
    require 'pry'
    binding.pry
    expect(enigma.encrypt('hello world', key, offset.todays_date)).to
    eq({ encryption: 'keder ohulw', key: '02715', date: '040895' })
  end
end
