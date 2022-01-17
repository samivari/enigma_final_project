require './lib/encode'
require 'spec_helper'

RSpec.describe 'encode' do
  it 'exists' do
    encode = Encode.new('hello world', { A: 13, B: 106, C: 92, D: 49 })
    expect(encode).to be_a(Encode)
  end

  it 'has a message' do
    encode = Encode.new('hello world', { A: 13, B: 106, C: 92, D: 49 })
    expect(encode.message).to eq('hello world')
  end

  it 'has shifts' do
    encode = Encode.new('hello world', { A: 13, B: 106, C: 92, D: 49 })
    expect(encode.shifts).to eq({ A: 13, B: 106, C: 92, D: 49 })
  end

  it 'has an alphabet set' do
    encode = Encode.new('hello world', { A: 13, B: 106, C: 92, D: 49 })
    expect(encode.alphabet).to eq('abcdefghijklmnopqrstuvwxyz '.split(''))
  end

  it 'can shift one letter' do
    encode = Encode.new('hello world', { A: 3, B: 27, C: 73, D: 20 })
    expect(encode.encode_letter(10)).to eq('k')
  end

  it 'can encode a message' do
    encode = Encode.new('hello world', { A: 3, B: 27, C: 73, D: 20 })

    expect(encode.encode).to eq('keder ohulw')
  end
end
