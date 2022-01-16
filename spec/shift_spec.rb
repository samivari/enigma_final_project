require './lib/shift'
require 'timecop'
require './key'
require './offset'

RSpec.describe 'shift' do
  it 'exists' do
    shift = Shift.new('09845', '130122')
    expect(shift).to be_a(Shift)
  end

  it 'has a key ' do
    shift = Shift.new('09845', '130122')
    expect(shift.key.key).to eq('09845')
  end

  it 'takes in a date' do
    key = Key.new('09845')
    timestamp = Timecop.travel('220113')
    offset = Offset.new(timestamp)
    date = offset.todays_date
    shift = Shift.new(key, date)
    expect(shift.date).to eq('130122')
  end

  it 'has a shift' do
    timestamp = Timecop.travel('220113')
    offset = Offset.new(timestamp)
    date = offset.todays_date
    shift = Shift.new('09845', date)
    expect(shift.shifts).to eq({ A: 13, B: 106, C: 92, D: 49 })
  end
end
