require './lib/offset'

RSpec.describe 'offset' do
  it 'exists' do
    offset = Offset.new
    expect(offset).to be_a(Offset)
  end
end
