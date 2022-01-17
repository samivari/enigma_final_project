require './lib/offset'

class Enigma
  def encrypt(message, key = rand(10_000..99_999).to_s, date = Time.now.strftime('%d%m%y'))
    shift = Shift.new(key, date)
    encode = Encode.new(message, shift.shifts)
    {
      encryption: encode.encode,
      key: key,
      date: date
    }
  end

  def decrypt(encryption, key = rand(10_000..99_999).to_s, date = Time.now.strftime('%d%m%y'))
    shift = Shift.new(key, date)
    decode = Decode.new(encryption, shift.shifts)
    {
      decryption: decode.decode,
      key: key,
      date: date
    }
  end
end
