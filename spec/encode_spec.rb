RSpec.describe 'encode' do
  it 'exists' do
    encode = Encode.new('hello world', { A: 13, B: 106, C: 92, D: 49 })
    expect(encode).to be_a(Encode)
  end
end
