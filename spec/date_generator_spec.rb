require './lib/date_generator'
require 'timecop'

RSpec.describe 'DateGenerator' do
  it 'exists' do
    date_generator = DateGenerator.new
    expect(date_generator).to be_a(DateGenerator)
  end
end
