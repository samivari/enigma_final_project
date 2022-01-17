require './lib/offset'

class Enigma
  def encrypt(message, key = random_num, date = Time.now.strftime('%d%m%y'))
    shift = Shift.new(key, date)

    encode = Encode.new(message, shift.shifts)

    {
      encryption: encode.encode,
      key: key,
      date: date
    }
  end
end
