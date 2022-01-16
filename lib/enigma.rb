class Enigma
  def encrypt(message, key = random_num, date = todays_date)
    shift = Shift.new(key, date)

    encode = Encode.new(message, shift.shifts)
    {
      encryption: encode.encode_message,
      key: key,
      date: date
    }
  end
end
