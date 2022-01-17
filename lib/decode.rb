class Decode
  attr_accessor :message, :shifts

  def initialize(message, shifts)
    @message = message
    @shifts = shifts
  end

  def alphabet
    ('a'..'z').to_a << ' '
  end

  def decode_letter(shifts)
    alphabet.rotate(shifts).first
  end
end
