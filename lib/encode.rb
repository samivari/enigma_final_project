class Encode
  attr_accessor :message, :shifts

  def initialize(message, shifts)
    @message = message
    @shifts = shifts
  end

  def alphabet
    ('a'..'z').to_a << ' '
  end

  def encode_letter(shifts)
    alphabet.rotate(shifts).first
  end

  def encode
    shifts_array = %i[A B C D]
    message.split('').map do |letter|
      letter_index = alphabet.find_index(letter)
      shift = shifts_array.first
      shifts_array.rotate!

      encode_letter(letter_index + shifts[shift])
    end.join
  end
end
