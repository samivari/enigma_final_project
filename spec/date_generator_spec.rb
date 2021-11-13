require './lib/date_generator'
require 'timecop'

RSpec.describe 'DateGenerator' do
  it 'exists' do
    date_generator = DateGenerator.new
    expect(date_generator).to be_a(DateGenerator)
  end

  describe '.generate' do
    it 'generates a date' do
      date_generator = DateGenerator
      Timecop.travel('211111')
      actual = date_generator.generate

      expected = '111121'

      expect(actual).to eq(expected)
    end

    it 'generates a different date' do
      date_generator = DateGenerator
      Timecop.travel('950802')
      actual = date_generator.generate

      expected = '080295'

      expect(actual).to eq(expected)
    end
  end
end
