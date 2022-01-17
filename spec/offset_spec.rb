require './lib/offset'
require 'timecop'

RSpec.describe 'offset' do
  it 'exists' do
    offset = Offset.new
    expect(offset).to be_a(Offset)
  end

  it 'can reformat the date' do
    timestamp = Timecop.travel('220113')
    offset = Offset.new(timestamp)
    expect(offset.date_format).to eq('130122')
  end

  it 'squares the date' do
    timestamp = Timecop.travel('220113')
    offset = Offset.new(timestamp)
    expect(offset.squared).to eq('16931734884')
  end

  it 'takes the last four digits from the squared number' do
    timestamp = Timecop.travel('220113')
    offset = Offset.new(timestamp)
    expect(offset.last_four).to eq('4884')
  end

  it 'generates todays date' do
    Timecop.freeze(Time.local(2022, 1, 16))
    offset = Offset.new
    expect(offset.date).to eq('160122')
  end
end
