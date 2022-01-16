require './lib/offset'
require 'timecop'

RSpec.describe 'offset' do
  it 'exists' do
    offset = Offset.new
    expect(offset).to be_a(Offset)
  end

  it 'can reformat the date' do
    date = Timecop.travel('220113')
    offset = Offset.new(date)
    expect(offset.todays_date).to eq('130122')
  end

  it 'squares the date' do
    date = Timecop.travel('220113')
    offset = Offset.new(date)
    expect(offset.squared).to eq('16931734884')
  end

  it 'takes the last four digits from the squared number' do
    date = Timecop.travel('220113')
    offset = Offset.new(date)
    expect(offset.last_four).to eq('4884')
  end
end
