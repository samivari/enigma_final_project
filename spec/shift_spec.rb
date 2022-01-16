require './lib/shift'
require 'timecop'

RSpec.describe 'shift' do
  it 'exists' do
    shift = Shift.new('09845', '130122')
    expect(shift).to be_a(Shift)
  end

  it 'has a key ' do
    key = Key.new('09845')
    shift = Shift.new(key, '130122')
    expect(shift.key.key).to eq('09845')
  end

  it 'has an offset ' do
    key = Key.new('09845')
    date = Timecop.travel('220113')
    offset = Offset.new(date)
    shift = Shift.new(key, offset)
    expect(shift.offset.last_four).to eq('4884')
  end

  it 'has a shift' do
    key = Key.new('09845')
    date = Timecop.travel('220113')
    offset = Offset.new(date)
    shift = Shift.new(key, offset)
    expect(shift.shifts).to eq({ A: 13, B: 106, C: 92, D: 49 })
  end
end
