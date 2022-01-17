require './lib/decode'

RSpec.describe 'decode' do
  it 'exists' do
    decode = Decode.new('keder ohulw', { A: 13, B: 106, C: 92, D: 49 })
    expect(decode).to be_a(Decode)
  end

  it 'has a message' do
    decode = Decode.new('keder ohulw', { A: 13, B: 106, C: 92, D: 49 })
    expect(decode.message).to eq('keder ohulw')
  end

  it 'has shifts' do
    decode = Decode.new('keder ohulw', { A: 13, B: 106, C: 92, D: 49 })
    expect(decode.shifts).to eq({ A: 13, B: 106, C: 92, D: 49 })
  end

  it 'has an alphabet set' do
    decode = Decode.new('keder ohulw', { A: 13, B: 106, C: 92, D: 49 })
    expect(decode.alphabet).to eq('abcdefghijklmnopqrstuvwxyz '.split(''))
  end

  xit 'can shift one letter' do
    decode = Decode.new('keder ohulw', { A: 3, B: 27, C: 73, D: 20 })
    expect(decode.decode_letter(10)).to eq('k')
  end

  xit 'can decode a message' do
    decode = Decode.new('keder ohulw', { A: 3, B: 27, C: 73, D: 20 })

    expect(decode.decode).to eq('keder ohulw')
  end
end
